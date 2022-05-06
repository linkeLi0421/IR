; ModuleID = '/llk/IR/drivers/dma/stm32-dma.c_pt.bc'
source_filename = "../drivers/dma/stm32-dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.stm32_dma_device = type { %struct.dma_device, ptr, ptr, i8, [8 x %struct.stm32_dma_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.stm32_dma_chan = type { %struct.virt_dma_chan, i8, i8, i32, i32, ptr, i32, %struct.dma_slave_config, %struct.stm32_dma_chan_reg, i32, i32, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.stm32_dma_chan_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.stm32_dma_desc = type { %struct.virt_dma_desc, i8, i32, [0 x %struct.stm32_dma_sg_req] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.stm32_dma_sg_req = type { i32, %struct.stm32_dma_chan_reg }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_stm32_dma__232_1533_stm32_dma_init4 = internal global ptr @stm32_dma_init, section ".initcall4.init", align 4
@stm32_dma_driver = internal global %struct.platform_driver { ptr @stm32_dma_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dma_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dma_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"stm32-dma\00", align 1
@stm32_dma_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stm32_dma_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_dma_suspend, ptr @stm32_dma_resume, ptr @stm32_dma_suspend, ptr @stm32_dma_resume, ptr @stm32_dma_suspend, ptr @stm32_dma_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dma_runtime_suspend, ptr @stm32_dma_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Can't get clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"clk_prep_enable error: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"st,mem2mem\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"request_irq failed with err %d channel %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"STM32 DMA DMA OF registration failed %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"STM32 DMA driver registered\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"dma channel is not configured\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Invalid segment length %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"nb items not supported\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Dma direction is not supported\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Dma bus width not supported\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Dma burst size not supported\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Invalid buffer/period len\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"buf_len not multiple of period_len\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Request not allowed when dma busy\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"number of items not supported\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"FIFO Error\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"DMA error: status=0x%08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"chan disabled by HW\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Bad number of cells\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Bad channel and/or request id\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"No more channels available\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"Suspend is prevented by Chan %i\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"failed to prepare_enable clock\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_stm32_dma__232_1533_stm32_dma_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32_dma_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_dma_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dma_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @stm32_dma_of_match, ptr noundef %2) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #11
  br label %147

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 2344, i32 noundef 3520) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %147, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #10
  %11 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %10) #10
  %12 = getelementptr inbounds %struct.stm32_dma_device, ptr %7, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i32
  br label %147

16:                                               ; preds = %9
  %17 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #10
  %18 = getelementptr inbounds %struct.stm32_dma_device, ptr %7, i32 0, i32 2
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = ptrtoint ptr %17 to i32
  %22 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %21, ptr noundef nonnull @.str.2) #10
  br label %147

23:                                               ; preds = %16
  %24 = tail call i32 @clk_prepare(ptr noundef %17) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = tail call i32 @clk_enable(ptr noundef %17) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  tail call void @clk_unprepare(ptr noundef %17) #10
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi i32 [ %24, %23 ], [ %27, %29 ]
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %31) #11
  br label %147

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %36 = load ptr, ptr %35, align 8
  %37 = tail call ptr @of_find_property(ptr noundef %36, ptr noundef nonnull @.str.4, ptr noundef null) #10
  %38 = icmp ne ptr %37, null
  %39 = getelementptr inbounds %struct.stm32_dma_device, ptr %7, i32 0, i32 3
  %40 = zext i1 %38 to i8
  store i8 %40, ptr %39, align 4
  %41 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = icmp eq ptr %41, inttoptr (i32 -517 to ptr)
  br i1 %44, label %144, label %49

45:                                               ; preds = %34
  %46 = tail call i32 @reset_control_assert(ptr noundef %41) #10
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 429496) #10
  %48 = tail call i32 @reset_control_deassert(ptr noundef %41) #10
  br label %49

49:                                               ; preds = %45, %43
  %50 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 20
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 65520, ptr %51, align 4
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %55) #10
  tail call void @_set_bit(i32 noundef 9, ptr noundef %55) #10
  tail call void @_set_bit(i32 noundef 12, ptr noundef %55) #10
  %56 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 27
  store ptr @stm32_dma_alloc_chan_resources, ptr %56, align 4
  %57 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 29
  store ptr @stm32_dma_free_chan_resources, ptr %57, align 4
  %58 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 49
  store ptr @stm32_dma_tx_status, ptr %58, align 4
  %59 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 50
  store ptr @stm32_dma_issue_pending, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 39
  store ptr @stm32_dma_prep_slave_sg, ptr %60, align 4
  %61 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 40
  store ptr @stm32_dma_prep_dma_cyclic, ptr %61, align 4
  %62 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 44
  store ptr @stm32_dma_slave_config, ptr %62, align 4
  %63 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  store ptr @stm32_dma_terminate_all, ptr %63, align 4
  %64 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 48
  store ptr @stm32_dma_synchronize, ptr %64, align 4
  %65 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 19
  store i32 22, ptr %65, align 4
  %66 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 20
  store i32 22, ptr %66, align 4
  %67 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 21
  store i32 6, ptr %67, align 4
  %68 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 26
  store i32 2, ptr %68, align 4
  %69 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 10
  store i32 5, ptr %69, align 4
  %70 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 23
  store i32 16, ptr %70, align 4
  %71 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 25
  store i8 1, ptr %71, align 4
  %72 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  store ptr %2, ptr %72, align 4
  %73 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 3
  store volatile ptr %73, ptr %73, align 4
  %74 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 3, i32 1
  store ptr %73, ptr %74, align 4
  %75 = load i8, ptr %39, align 4, !range !8
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %54
  tail call void @_set_bit(i32 noundef 0, ptr noundef %55) #10
  %78 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 30
  store ptr @stm32_dma_prep_dma_memcpy, ptr %78, align 4
  %79 = load i32, ptr %67, align 4
  %80 = or i32 %79, 1
  store i32 %80, ptr %67, align 4
  br label %81

81:                                               ; preds = %77, %54
  %82 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 0
  %83 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 0, i32 3
  store i32 0, ptr %83, align 4
  %84 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 0, i32 0, i32 2
  store ptr @stm32_dma_desc_free, ptr %84, align 4
  tail call void @vchan_init(ptr noundef %82, ptr noundef nonnull %7) #10
  %85 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 1
  %86 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 1, i32 3
  store i32 1, ptr %86, align 4
  %87 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 1, i32 0, i32 2
  store ptr @stm32_dma_desc_free, ptr %87, align 4
  tail call void @vchan_init(ptr noundef %85, ptr noundef nonnull %7) #10
  %88 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 2
  %89 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 2, i32 3
  store i32 2, ptr %89, align 4
  %90 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 2, i32 0, i32 2
  store ptr @stm32_dma_desc_free, ptr %90, align 4
  tail call void @vchan_init(ptr noundef %88, ptr noundef nonnull %7) #10
  %91 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 3
  %92 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 3, i32 3
  store i32 3, ptr %92, align 4
  %93 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 3, i32 0, i32 2
  store ptr @stm32_dma_desc_free, ptr %93, align 4
  tail call void @vchan_init(ptr noundef %91, ptr noundef nonnull %7) #10
  %94 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 4
  %95 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 4, i32 3
  store i32 4, ptr %95, align 4
  %96 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 4, i32 0, i32 2
  store ptr @stm32_dma_desc_free, ptr %96, align 4
  tail call void @vchan_init(ptr noundef %94, ptr noundef nonnull %7) #10
  %97 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 5
  %98 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 5, i32 3
  store i32 5, ptr %98, align 4
  %99 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 5, i32 0, i32 2
  store ptr @stm32_dma_desc_free, ptr %99, align 4
  tail call void @vchan_init(ptr noundef %97, ptr noundef nonnull %7) #10
  %100 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 6
  %101 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 6, i32 3
  store i32 6, ptr %101, align 4
  %102 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 6, i32 0, i32 2
  store ptr @stm32_dma_desc_free, ptr %102, align 4
  tail call void @vchan_init(ptr noundef %100, ptr noundef nonnull %7) #10
  %103 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 7
  %104 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 7, i32 3
  store i32 7, ptr %104, align 4
  %105 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 7, i32 0, i32 2
  store ptr @stm32_dma_desc_free, ptr %105, align 4
  tail call void @vchan_init(ptr noundef %103, ptr noundef nonnull %7) #10
  %106 = tail call i32 @dma_async_device_register(ptr noundef nonnull %7) #10
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %144

108:                                              ; preds = %128, %81
  %109 = phi i32 [ %129, %128 ], [ 0, %81 ]
  %110 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef %109) #10
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %142, label %112

112:                                              ; preds = %108
  %113 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 %109
  %114 = getelementptr %struct.stm32_dma_device, ptr %7, i32 0, i32 4, i32 %109, i32 4
  store i32 %110, ptr %114, align 4
  %115 = getelementptr inbounds %struct.dma_chan, ptr %113, i32 0, i32 5
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.dma_chan_dev, ptr %116, i32 0, i32 1, i32 3
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = getelementptr inbounds %struct.dma_chan_dev, ptr %116, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  br label %123

123:                                              ; preds = %120, %112
  %124 = phi ptr [ %122, %120 ], [ %118, %112 ]
  %125 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %110, ptr noundef nonnull @stm32_dma_chan_irq, ptr noundef null, i32 noundef 0, ptr noundef %124, ptr noundef %113) #10
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %125, i32 noundef %109) #11
  br label %142

128:                                              ; preds = %123
  %129 = add nuw nsw i32 %109, 1
  %130 = icmp eq i32 %129, 8
  br i1 %130, label %131, label %108

131:                                              ; preds = %128
  %132 = load ptr, ptr %35, align 8
  %133 = tail call i32 @of_dma_controller_register(ptr noundef %132, ptr noundef nonnull @stm32_dma_of_xlate, ptr noundef nonnull %7) #10
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %133) #11
  br label %142

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %137, align 8
  %138 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #10
  tail call void @pm_runtime_enable(ptr noundef %2) #10
  %139 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %139) #10, !srcloc !9
  %140 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %139, ptr %139, i32 1, ptr elementtype(i32) %139) #10, !srcloc !10
  %141 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.7) #11
  br label %147

142:                                              ; preds = %135, %127, %108
  %143 = phi i32 [ %125, %127 ], [ %133, %135 ], [ %110, %108 ]
  tail call void @dma_async_device_unregister(ptr noundef nonnull %7) #10
  br label %144

144:                                              ; preds = %142, %81, %43
  %145 = phi i32 [ -517, %43 ], [ %106, %81 ], [ %143, %142 ]
  %146 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %146) #10
  tail call void @clk_unprepare(ptr noundef %146) #10
  br label %147

147:                                              ; preds = %144, %136, %33, %20, %14, %6, %5
  %148 = phi i32 [ %15, %14 ], [ %22, %20 ], [ %31, %33 ], [ %145, %144 ], [ 0, %136 ], [ -19, %5 ], [ -12, %6 ]
  ret i32 %148
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dma_alloc_chan_resources(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 1
  store i8 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dma_device, ptr %2, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #10, !srcloc !9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 -1, ptr elementtype(i32) %9) #10, !srcloc !12
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %56, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  br label %56

14:                                               ; preds = %1
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, 24
  %19 = add i32 %18, 16
  %20 = getelementptr inbounds %struct.stm32_dma_device, ptr %15, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %19
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !14
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %14
  %27 = and i32 %23, -2
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr i8, ptr %28, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #10, !srcloc !15
  %30 = tail call i64 @ktime_get() #10
  %31 = add i64 %30, 1000000000
  %32 = load ptr, ptr %20, align 4
  %33 = getelementptr i8, ptr %32, i32 %19
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #10, !srcloc !14
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %40, %26
  %38 = tail call i64 @ktime_get() #10
  %39 = icmp sgt i64 %38, %31
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 2147480) #10
  %42 = load ptr, ptr %20, align 4
  %43 = getelementptr i8, ptr %42, i32 %19
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #10, !srcloc !14
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %37

47:                                               ; preds = %37
  %48 = load ptr, ptr %20, align 4
  %49 = getelementptr i8, ptr %48, i32 %19
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #10, !srcloc !14
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %4, align 4
  %55 = tail call i32 @__pm_runtime_idle(ptr noundef %54, i32 noundef 5) #10
  br label %56

56:                                               ; preds = %53, %47, %40, %26, %14, %13, %8
  %57 = phi i32 [ -110, %53 ], [ %6, %8 ], [ %6, %13 ], [ 0, %14 ], [ 0, %47 ], [ 0, %26 ], [ 0, %40 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_dma_free_chan_resources(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #10
  tail call fastcc void @stm32_dma_stop(ptr noundef %0)
  %10 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 5
  store ptr null, ptr %10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #10
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store ptr %2, ptr %2, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %17 = call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #10
  %18 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %26, label %21

21:                                               ; preds = %11
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %22, ptr %25, align 4
  store ptr %19, ptr %22, align 4
  store ptr %2, ptr %24, align 4
  store ptr %24, ptr %15, align 4
  store volatile ptr %18, ptr %18, align 4
  store ptr %18, ptr %23, align 4
  br label %26

26:                                               ; preds = %21, %11
  %27 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %15, align 4
  %32 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %31, ptr %34, align 4
  store ptr %28, ptr %31, align 4
  store ptr %2, ptr %33, align 4
  store ptr %33, ptr %15, align 4
  store volatile ptr %27, ptr %27, align 4
  store ptr %27, ptr %32, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %15, align 4
  %41 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %40, ptr %43, align 4
  store ptr %37, ptr %40, align 4
  store ptr %2, ptr %42, align 4
  store ptr %42, ptr %15, align 4
  store volatile ptr %36, ptr %36, align 4
  store ptr %36, ptr %41, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %15, align 4
  %50 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %49, ptr %52, align 4
  store ptr %46, ptr %49, align 4
  store ptr %2, ptr %51, align 4
  store ptr %51, ptr %15, align 4
  store volatile ptr %45, ptr %45, align 4
  store ptr %45, ptr %50, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %15, align 4
  %59 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %58, ptr %61, align 4
  store ptr %55, ptr %58, align 4
  store ptr %2, ptr %60, align 4
  store ptr %60, ptr %15, align 4
  store volatile ptr %54, ptr %54, align 4
  store ptr %54, ptr %59, align 4
  br label %62

62:                                               ; preds = %57, %53
  %63 = load ptr, ptr %2, align 8
  %64 = icmp eq ptr %63, %2
  br i1 %64, label %72, label %65

65:                                               ; preds = %65, %62
  %66 = phi ptr [ %70, %65 ], [ %63, %62 ]
  %67 = getelementptr i8, ptr %66, i32 -64
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, -65
  store i32 %69, ptr %67, align 4
  %70 = load ptr, ptr %66, align 4
  %71 = icmp eq ptr %70, %2
  br i1 %71, label %72, label %65

72:                                               ; preds = %65, %62
  call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #10
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %73 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %73, i8 0, i64 44, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dma_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
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
  br i1 %19, label %46, label %25

21:                                               ; preds = %13
  %22 = and i1 %16, %15
  %23 = or i1 %22, %8
  %24 = xor i1 %22, true
  br i1 %23, label %46, label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #10
  %28 = tail call ptr @vchan_find_desc(ptr noundef %0, i32 noundef %1) #10
  %29 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load i32, ptr %30, align 4
  %34 = icmp eq i32 %33, %1
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = tail call fastcc i32 @stm32_dma_desc_residue(ptr noundef %0, ptr noundef nonnull %30, i32 noundef %37)
  br label %43

39:                                               ; preds = %32, %25
  %40 = icmp eq ptr %28, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = tail call fastcc i32 @stm32_dma_desc_residue(ptr noundef %0, ptr noundef nonnull %28, i32 noundef 0)
  br label %43

43:                                               ; preds = %41, %39, %35
  %44 = phi i32 [ %38, %35 ], [ %42, %41 ], [ 0, %39 ]
  %45 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #10
  br label %46

46:                                               ; preds = %43, %21, %17
  %47 = phi i1 [ true, %43 ], [ %20, %17 ], [ %24, %21 ]
  %48 = zext i1 %47 to i32
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_dma_issue_pending(ptr noundef %0) #2 {
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
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 2
  %23 = load i8, ptr %22, align 1, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call fastcc void @stm32_dma_start_transfer(ptr noundef %0)
  br label %26

26:                                               ; preds = %25, %21, %17, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @stm32_dma_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !17
  %8 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 1
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.8) #11
  br label %92

15:                                               ; preds = %6
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dma_chan_dev, ptr %19, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.9, i32 noundef 0) #11
  br label %92

21:                                               ; preds = %15
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 44) #10
  %23 = extractvalue { i32, i1 } %22, 1
  %24 = extractvalue { i32, i1 } %22, 0
  %25 = tail call i32 @llvm.uadd.sat.i32(i32 %24, i32 84) #10
  %26 = select i1 %23, i32 -1, i32 %25
  %27 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %26, i32 noundef 2304) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %92, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 7, i32 9
  %31 = load i8, ptr %30, align 4, !range !8
  %32 = icmp eq i8 %31, 0
  %33 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 8, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, -33
  %36 = select i1 %32, i32 0, i32 32
  %37 = or i32 %35, %36
  store i32 %37, ptr %33, align 4
  %38 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 8, i32 4
  %39 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 8, i32 9
  %40 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 8, i32 6
  br label %41

41:                                               ; preds = %60, %29
  %42 = phi i32 [ 0, %29 ], [ %73, %60 ]
  %43 = phi ptr [ %1, %29 ], [ %74, %60 ]
  %44 = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = call fastcc i32 @stm32_dma_set_xfer_param(ptr noundef %0, i32 noundef %3, ptr noundef nonnull %7, i32 noundef %45, i32 noundef %47)
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %91, label %50

50:                                               ; preds = %41
  %51 = load i32, ptr %44, align 4
  %52 = getelementptr %struct.stm32_dma_desc, ptr %27, i32 0, i32 3, i32 %42
  store i32 %51, ptr %52, align 4
  %53 = load i32, ptr %7, align 4
  %54 = udiv i32 %51, %53
  %55 = icmp ugt i32 %54, 65520
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dma_chan_dev, ptr %58, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.10) #11
  br label %91

60:                                               ; preds = %50
  %61 = getelementptr %struct.stm32_dma_desc, ptr %27, i32 0, i32 3, i32 %42, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %61, i8 0, i32 40, i1 false) #10
  %62 = load i32, ptr %38, align 4
  %63 = getelementptr %struct.stm32_dma_desc, ptr %27, i32 0, i32 3, i32 %42, i32 1, i32 4
  store i32 %62, ptr %63, align 4
  %64 = load i32, ptr %39, align 4
  %65 = getelementptr %struct.stm32_dma_desc, ptr %27, i32 0, i32 3, i32 %42, i32 1, i32 9
  store i32 %64, ptr %65, align 4
  %66 = load i32, ptr %40, align 4
  %67 = getelementptr %struct.stm32_dma_desc, ptr %27, i32 0, i32 3, i32 %42, i32 1, i32 6
  store i32 %66, ptr %67, align 4
  %68 = load i32, ptr %46, align 4
  %69 = getelementptr %struct.stm32_dma_desc, ptr %27, i32 0, i32 3, i32 %42, i32 1, i32 7
  store i32 %68, ptr %69, align 4
  %70 = load i32, ptr %46, align 4
  %71 = getelementptr %struct.stm32_dma_desc, ptr %27, i32 0, i32 3, i32 %42, i32 1, i32 8
  store i32 %70, ptr %71, align 4
  %72 = getelementptr %struct.stm32_dma_desc, ptr %27, i32 0, i32 3, i32 %42, i32 1, i32 5
  store i32 %54, ptr %72, align 4
  %73 = add nuw i32 %42, 1
  %74 = tail call ptr @sg_next(ptr noundef %43) #10
  %75 = icmp eq i32 %73, %2
  br i1 %75, label %76, label %41

76:                                               ; preds = %60
  %77 = getelementptr inbounds %struct.stm32_dma_desc, ptr %27, i32 0, i32 2
  store i32 %2, ptr %77, align 16
  %78 = getelementptr inbounds %struct.stm32_dma_desc, ptr %27, i32 0, i32 1
  store i8 0, ptr %78, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %27, ptr noundef %0) #10
  %79 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %27, i32 0, i32 1
  store i32 %4, ptr %79, align 4
  %80 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %27, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %80, align 16
  %81 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %27, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %81, align 4
  %82 = getelementptr inbounds %struct.virt_dma_desc, ptr %27, i32 0, i32 1
  store i32 0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.virt_dma_desc, ptr %27, i32 0, i32 1, i32 1
  store i32 0, ptr %83, align 64
  %84 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %84) #10
  %86 = getelementptr inbounds %struct.virt_dma_desc, ptr %27, i32 0, i32 2
  %87 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %88 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %89 = load ptr, ptr %88, align 4
  store ptr %86, ptr %88, align 4
  store ptr %87, ptr %86, align 4
  %90 = getelementptr inbounds %struct.virt_dma_desc, ptr %27, i32 0, i32 2, i32 1
  store ptr %89, ptr %90, align 8
  store volatile ptr %86, ptr %89, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %84, i32 noundef %85) #10
  br label %92

91:                                               ; preds = %56, %41
  tail call void @kfree(ptr noundef nonnull %27) #10
  br label %92

92:                                               ; preds = %91, %76, %21, %17, %11
  %93 = phi ptr [ null, %17 ], [ null, %91 ], [ %27, %76 ], [ null, %11 ], [ null, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  ret ptr %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @stm32_dma_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !17
  %8 = icmp ne i32 %2, 0
  %9 = icmp ne i32 %3, 0
  %10 = and i1 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.14) #11
  br label %104

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 1
  %17 = load i8, ptr %16, align 4, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dma_chan_dev, ptr %21, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.8) #11
  br label %104

23:                                               ; preds = %15
  %24 = udiv i32 %2, %3
  %25 = mul i32 %24, %3
  %26 = sub i32 %2, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dma_chan_dev, ptr %30, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.15) #11
  br label %104

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 2
  %34 = load i8, ptr %33, align 1, !range !8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dma_chan_dev, ptr %38, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.16) #11
  br label %104

40:                                               ; preds = %32
  %41 = call fastcc i32 @stm32_dma_set_xfer_param(ptr noundef %0, i32 noundef %4, ptr noundef nonnull %7, i32 noundef %3, i32 noundef %1)
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %104, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr %7, align 4
  %45 = udiv i32 %3, %44
  %46 = icmp ugt i32 %45, 65520
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.dma_chan_dev, ptr %49, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.17) #11
  br label %104

51:                                               ; preds = %43
  %52 = icmp eq i32 %2, %3
  %53 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 8, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = select i1 %52, i32 256, i32 262144
  %56 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 8, i32 4
  %57 = and i32 %54, -33
  %58 = or i32 %57, %55
  store i32 %58, ptr %56, align 4
  %59 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 44) #10
  %60 = extractvalue { i32, i1 } %59, 1
  %61 = extractvalue { i32, i1 } %59, 0
  %62 = tail call i32 @llvm.uadd.sat.i32(i32 %61, i32 84) #10
  %63 = select i1 %60, i32 -1, i32 %62
  %64 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %63, i32 noundef 2304) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %104, label %66

66:                                               ; preds = %51
  %67 = icmp ugt i32 %3, %2
  br i1 %67, label %89, label %68

68:                                               ; preds = %66
  %69 = load i32, ptr %56, align 4
  %70 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 8, i32 9
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 8, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = call i32 @llvm.umax.i32(i32 %24, i32 1)
  br label %75

75:                                               ; preds = %75, %68
  %76 = phi i32 [ 0, %68 ], [ %87, %75 ]
  %77 = phi i32 [ %1, %68 ], [ %86, %75 ]
  %78 = getelementptr %struct.stm32_dma_desc, ptr %64, i32 0, i32 3, i32 %76
  store i32 %3, ptr %78, align 4
  %79 = getelementptr %struct.stm32_dma_desc, ptr %64, i32 0, i32 3, i32 %76, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %79, i8 0, i32 40, i1 false) #10
  %80 = getelementptr %struct.stm32_dma_desc, ptr %64, i32 0, i32 3, i32 %76, i32 1, i32 4
  store i32 %69, ptr %80, align 4
  %81 = getelementptr %struct.stm32_dma_desc, ptr %64, i32 0, i32 3, i32 %76, i32 1, i32 9
  store i32 %71, ptr %81, align 4
  %82 = getelementptr %struct.stm32_dma_desc, ptr %64, i32 0, i32 3, i32 %76, i32 1, i32 6
  store i32 %73, ptr %82, align 4
  %83 = getelementptr %struct.stm32_dma_desc, ptr %64, i32 0, i32 3, i32 %76, i32 1, i32 7
  store i32 %77, ptr %83, align 4
  %84 = getelementptr %struct.stm32_dma_desc, ptr %64, i32 0, i32 3, i32 %76, i32 1, i32 8
  store i32 %77, ptr %84, align 4
  %85 = getelementptr %struct.stm32_dma_desc, ptr %64, i32 0, i32 3, i32 %76, i32 1, i32 5
  store i32 %45, ptr %85, align 4
  %86 = add i32 %77, %3
  %87 = add nuw i32 %76, 1
  %88 = icmp eq i32 %87, %74
  br i1 %88, label %89, label %75

89:                                               ; preds = %75, %66
  %90 = getelementptr inbounds %struct.stm32_dma_desc, ptr %64, i32 0, i32 2
  store i32 %24, ptr %90, align 16
  %91 = getelementptr inbounds %struct.stm32_dma_desc, ptr %64, i32 0, i32 1
  store i8 1, ptr %91, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %64, ptr noundef %0) #10
  %92 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %64, i32 0, i32 1
  store i32 %5, ptr %92, align 4
  %93 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %64, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %93, align 16
  %94 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %64, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %94, align 4
  %95 = getelementptr inbounds %struct.virt_dma_desc, ptr %64, i32 0, i32 1
  store i32 0, ptr %95, align 4
  %96 = getelementptr inbounds %struct.virt_dma_desc, ptr %64, i32 0, i32 1, i32 1
  store i32 0, ptr %96, align 64
  %97 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %98 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %97) #10
  %99 = getelementptr inbounds %struct.virt_dma_desc, ptr %64, i32 0, i32 2
  %100 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %101 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %102 = load ptr, ptr %101, align 4
  store ptr %99, ptr %101, align 4
  store ptr %100, ptr %99, align 4
  %103 = getelementptr inbounds %struct.virt_dma_desc, ptr %64, i32 0, i32 2, i32 1
  store ptr %102, ptr %103, align 8
  store volatile ptr %99, ptr %102, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %97, i32 noundef %98) #10
  br label %104

104:                                              ; preds = %89, %51, %47, %40, %36, %28, %19, %11
  %105 = phi ptr [ null, %28 ], [ null, %36 ], [ null, %47 ], [ %64, %89 ], [ null, %19 ], [ null, %11 ], [ null, %40 ], [ null, %51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  ret ptr %105
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_dma_slave_config(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %3, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  %4 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 1
  store i8 1, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dma_terminate_all(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %7, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13, !prof !18

12:                                               ; preds = %9
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !19
  unreachable

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dma_chan, ptr %15, i32 0, i32 3
  store i32 %10, ptr %16, align 4
  store i32 0, ptr %7, align 4
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.virt_dma_desc, ptr %17, i32 0, i32 2
  %21 = getelementptr inbounds %struct.virt_dma_chan, ptr %19, i32 0, i32 8
  %22 = getelementptr inbounds %struct.virt_dma_chan, ptr %19, i32 0, i32 8, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %20, ptr %22, align 4
  store ptr %21, ptr %20, align 4
  %24 = getelementptr inbounds %struct.virt_dma_desc, ptr %17, i32 0, i32 2, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %20, ptr %23, align 4
  %25 = getelementptr inbounds %struct.virt_dma_chan, ptr %19, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %17
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  store ptr null, ptr %25, align 4
  br label %29

29:                                               ; preds = %28, %13
  %30 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 2
  %31 = load i8, ptr %30, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  call fastcc void @stm32_dma_stop(ptr noundef %0)
  br label %34

34:                                               ; preds = %33, %29
  store ptr null, ptr %6, align 4
  br label %35

35:                                               ; preds = %34, %1
  %36 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %40, ptr %43, align 4
  store ptr %37, ptr %40, align 4
  store ptr %2, ptr %42, align 4
  store ptr %42, ptr %3, align 4
  store volatile ptr %36, ptr %36, align 4
  store ptr %36, ptr %41, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %49, ptr %52, align 4
  store ptr %46, ptr %49, align 4
  store ptr %2, ptr %51, align 4
  store ptr %51, ptr %3, align 4
  store volatile ptr %45, ptr %45, align 4
  store ptr %45, ptr %50, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %58, ptr %61, align 4
  store ptr %55, ptr %58, align 4
  store ptr %2, ptr %60, align 4
  store ptr %60, ptr %3, align 4
  store volatile ptr %54, ptr %54, align 4
  store ptr %54, ptr %59, align 4
  br label %62

62:                                               ; preds = %57, %53
  %63 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %64 = load volatile ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %3, align 4
  %68 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %67, ptr %70, align 4
  store ptr %64, ptr %67, align 4
  store ptr %2, ptr %69, align 4
  store ptr %69, ptr %3, align 4
  store volatile ptr %63, ptr %63, align 4
  store ptr %63, ptr %68, align 4
  br label %71

71:                                               ; preds = %66, %62
  %72 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %73 = load volatile ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %72
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %3, align 4
  %77 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  store ptr %76, ptr %79, align 4
  store ptr %73, ptr %76, align 4
  store ptr %2, ptr %78, align 4
  store ptr %78, ptr %3, align 4
  store volatile ptr %72, ptr %72, align 4
  store ptr %72, ptr %77, align 4
  br label %80

80:                                               ; preds = %75, %71
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_dma_synchronize(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %11, ptr %14, align 4
  store ptr %8, ptr %11, align 4
  store ptr %2, ptr %13, align 4
  store ptr %13, ptr %3, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %12, align 4
  br label %15

15:                                               ; preds = %10, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #10
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @stm32_dma_prep_dma_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = add i32 %3, 65519
  %7 = udiv i32 %6, 65520
  %8 = mul nuw nsw i32 %7, 44
  %9 = add nuw nsw i32 %8, 84
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 2304) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %86, label %12

12:                                               ; preds = %5
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %71, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 4
  %18 = shl i32 %16, 2
  %19 = add i32 %18, 4
  %20 = shl i32 %16, 4
  %21 = add i32 %20, 16
  %22 = lshr exact i32 %21, 2
  %23 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %24 = and i32 %16, 3
  br label %25

25:                                               ; preds = %54, %14
  %26 = phi i32 [ 0, %14 ], [ %69, %54 ]
  %27 = phi i32 [ 0, %14 ], [ %68, %54 ]
  %28 = sub i32 %3, %27
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 65520)
  br i1 %17, label %54, label %30

30:                                               ; preds = %25
  %31 = urem i32 %3, %19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %43, %30
  %34 = phi i32 [ %46, %43 ], [ 16, %30 ]
  %35 = icmp ugt i32 %34, %3
  %36 = icmp ugt i32 %34, 1
  %37 = and i1 %36, %35
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = icmp eq i32 %34, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %38
  %41 = urem i32 %22, %34
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40, %33
  %44 = icmp ugt i32 %34, 4
  %45 = lshr i32 %34, 1
  %46 = select i1 %44, i32 %45, i32 0
  br label %33

47:                                               ; preds = %40
  switch i32 %34, label %51 [
    i32 16, label %50
    i32 1, label %54
    i32 4, label %48
    i32 8, label %49
  ]

48:                                               ; preds = %47
  br label %54

49:                                               ; preds = %47
  br label %54

50:                                               ; preds = %47
  br label %54

51:                                               ; preds = %47
  %52 = load ptr, ptr %23, align 4
  %53 = getelementptr inbounds %struct.dma_chan_dev, ptr %52, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.13) #11
  br label %54

54:                                               ; preds = %51, %50, %49, %48, %47, %38, %30, %25
  %55 = phi i32 [ 20973204, %51 ], [ 31458964, %50 ], [ 20973204, %49 ], [ 10487444, %48 ], [ 1684, %47 ], [ 1684, %30 ], [ 1684, %25 ], [ 1684, %38 ]
  %56 = getelementptr %struct.stm32_dma_desc, ptr %10, i32 0, i32 3, i32 %26
  %57 = getelementptr %struct.stm32_dma_desc, ptr %10, i32 0, i32 3, i32 %26, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %57, i8 0, i32 40, i1 false) #10
  %58 = getelementptr %struct.stm32_dma_desc, ptr %10, i32 0, i32 3, i32 %26, i32 1, i32 4
  store i32 %55, ptr %58, align 4
  %59 = getelementptr %struct.stm32_dma_desc, ptr %10, i32 0, i32 3, i32 %26, i32 1, i32 9
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %24, %60
  %62 = or i32 %61, 132
  store i32 %62, ptr %59, align 4
  %63 = add i32 %27, %2
  %64 = getelementptr %struct.stm32_dma_desc, ptr %10, i32 0, i32 3, i32 %26, i32 1, i32 6
  store i32 %63, ptr %64, align 4
  %65 = add i32 %27, %1
  %66 = getelementptr %struct.stm32_dma_desc, ptr %10, i32 0, i32 3, i32 %26, i32 1, i32 7
  store i32 %65, ptr %66, align 4
  %67 = getelementptr %struct.stm32_dma_desc, ptr %10, i32 0, i32 3, i32 %26, i32 1, i32 5
  store i32 %29, ptr %67, align 4
  store i32 %29, ptr %56, align 4
  %68 = add i32 %29, %27
  %69 = add i32 %26, 1
  %70 = icmp ult i32 %68, %3
  br i1 %70, label %25, label %71

71:                                               ; preds = %54, %12
  %72 = getelementptr inbounds %struct.stm32_dma_desc, ptr %10, i32 0, i32 2
  store i32 %7, ptr %72, align 16
  %73 = getelementptr inbounds %struct.stm32_dma_desc, ptr %10, i32 0, i32 1
  store i8 0, ptr %73, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %10, ptr noundef %0) #10
  %74 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %10, i32 0, i32 1
  store i32 %4, ptr %74, align 4
  %75 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %10, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %75, align 16
  %76 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %10, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %76, align 4
  %77 = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 1
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 1, i32 1
  store i32 0, ptr %78, align 64
  %79 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %79) #10
  %81 = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 2
  %82 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %83 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %84 = load ptr, ptr %83, align 4
  store ptr %81, ptr %83, align 4
  store ptr %82, ptr %81, align 4
  %85 = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 2, i32 1
  store ptr %84, ptr %85, align 8
  store volatile ptr %81, ptr %84, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %79, i32 noundef %80) #10
  br label %86

86:                                               ; preds = %71, %5
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_dma_desc_free(ptr noundef %0) #2 {
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dma_chan_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %4) #10
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.stm32_dma_chan, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.stm32_dma_device, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  br i1 %9, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %11, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !14
  br label %17

15:                                               ; preds = %2
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !14
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %14, %12 ], [ %16, %15 ]
  %19 = load i32, ptr %6, align 4
  %20 = shl i32 %19, 3
  %21 = and i32 %20, 16
  %22 = and i32 %19, 1
  %23 = mul nuw nsw i32 %22, 6
  %24 = or i32 %21, %23
  %25 = lshr i32 %18, %24
  %26 = and i32 %25, 45
  %27 = mul i32 %19, 24
  %28 = add i32 %27, 16
  %29 = getelementptr inbounds %struct.stm32_dma_device, ptr %3, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 %28
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !14
  %33 = load i32, ptr %6, align 4
  %34 = mul i32 %33, 24
  %35 = add i32 %34, 36
  %36 = load ptr, ptr %29, align 4
  %37 = getelementptr i8, ptr %36, i32 %35
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #10, !srcloc !14
  %39 = and i32 %25, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %72, label %41

41:                                               ; preds = %17
  %42 = load ptr, ptr %1, align 4
  %43 = load i32, ptr %6, align 4
  %44 = shl i32 %43, 3
  %45 = and i32 %44, 16
  %46 = and i32 %43, 1
  %47 = mul nuw nsw i32 %46, 6
  %48 = or i32 %45, %47
  %49 = shl nuw i32 1, %48
  %50 = and i32 %43, 4
  %51 = icmp eq i32 %50, 0
  %52 = getelementptr inbounds %struct.stm32_dma_device, ptr %42, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  br i1 %51, label %56, label %54

54:                                               ; preds = %41
  %55 = getelementptr i8, ptr %53, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %49) #10, !srcloc !15
  br label %58

56:                                               ; preds = %41
  %57 = getelementptr i8, ptr %53, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %49) #10, !srcloc !15
  br label %58

58:                                               ; preds = %56, %54
  %59 = and i32 %25, 44
  %60 = and i32 %38, 128
  %61 = icmp ne i32 %60, 0
  %62 = and i32 %32, 1
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  %65 = and i32 %25, 32
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.dma_chan_dev, ptr %70, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.18) #11
  br label %72

72:                                               ; preds = %68, %58, %17
  %73 = phi i32 [ %59, %68 ], [ %59, %58 ], [ %26, %17 ]
  %74 = and i32 %73, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %1, align 4
  %78 = load i32, ptr %6, align 4
  %79 = shl i32 %78, 3
  %80 = and i32 %79, 16
  %81 = and i32 %78, 1
  %82 = mul nuw nsw i32 %81, 6
  %83 = or i32 %80, %82
  %84 = shl i32 4, %83
  %85 = and i32 %78, 4
  %86 = icmp eq i32 %85, 0
  %87 = getelementptr inbounds %struct.stm32_dma_device, ptr %77, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  br i1 %86, label %91, label %89

89:                                               ; preds = %76
  %90 = getelementptr i8, ptr %88, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %84) #10, !srcloc !15
  br label %93

91:                                               ; preds = %76
  %92 = getelementptr i8, ptr %88, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %84) #10, !srcloc !15
  br label %93

93:                                               ; preds = %91, %89
  %94 = and i32 %73, 41
  br label %95

95:                                               ; preds = %93, %72
  %96 = phi i32 [ %94, %93 ], [ %73, %72 ]
  %97 = and i32 %96, 32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %202, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %1, align 4
  %101 = load i32, ptr %6, align 4
  %102 = shl i32 %101, 3
  %103 = and i32 %102, 16
  %104 = and i32 %101, 1
  %105 = mul nuw nsw i32 %104, 6
  %106 = or i32 %103, %105
  %107 = shl i32 32, %106
  %108 = and i32 %101, 4
  %109 = icmp eq i32 %108, 0
  %110 = getelementptr inbounds %struct.stm32_dma_device, ptr %100, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  br i1 %109, label %114, label %112

112:                                              ; preds = %99
  %113 = getelementptr i8, ptr %111, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %107) #10, !srcloc !15
  br label %116

114:                                              ; preds = %99
  %115 = getelementptr i8, ptr %111, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %107) #10, !srcloc !15
  br label %116

116:                                              ; preds = %114, %112
  %117 = and i32 %32, 16
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %200, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.stm32_dma_chan, ptr %1, i32 0, i32 5
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %200, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.stm32_dma_desc, ptr %121, i32 0, i32 1
  %125 = load i8, ptr %124, align 4, !range !8
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %173, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %121, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.virt_dma_chan, ptr %129, i32 0, i32 9
  store ptr %121, ptr %130, align 4
  %131 = getelementptr inbounds %struct.virt_dma_chan, ptr %129, i32 0, i32 1, i32 1
  %132 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %131) #10
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.virt_dma_chan, ptr %129, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %135) #10
  br label %136

136:                                              ; preds = %134, %127
  %137 = getelementptr inbounds %struct.stm32_dma_chan, ptr %1, i32 0, i32 6
  %138 = load i32, ptr %137, align 4
  %139 = add i32 %138, 1
  store i32 %139, ptr %137, align 4
  %140 = load ptr, ptr %1, align 4
  %141 = load i32, ptr %6, align 4
  %142 = mul i32 %141, 24
  %143 = add i32 %142, 16
  %144 = getelementptr inbounds %struct.stm32_dma_device, ptr %140, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr i8, ptr %145, i32 %143
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #10, !srcloc !14
  %148 = and i32 %147, 262144
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %200, label %150

150:                                              ; preds = %136
  %151 = load i32, ptr %137, align 4
  %152 = load ptr, ptr %120, align 4
  %153 = getelementptr inbounds %struct.stm32_dma_desc, ptr %152, i32 0, i32 2
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %151, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  store i32 0, ptr %137, align 4
  br label %157

157:                                              ; preds = %156, %150
  %158 = phi i32 [ 0, %156 ], [ %151, %150 ]
  %159 = and i32 %147, 524288
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %157
  %162 = getelementptr %struct.stm32_dma_desc, ptr %152, i32 0, i32 3, i32 %158, i32 1, i32 7
  %163 = load i32, ptr %162, align 4
  %164 = add i32 %142, 28
  %165 = load ptr, ptr %144, align 4
  %166 = getelementptr i8, ptr %165, i32 %164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %163) #10, !srcloc !15
  br label %200

167:                                              ; preds = %157
  %168 = getelementptr %struct.stm32_dma_desc, ptr %152, i32 0, i32 3, i32 %158, i32 1, i32 8
  %169 = load i32, ptr %168, align 4
  %170 = add i32 %142, 32
  %171 = load ptr, ptr %144, align 4
  %172 = getelementptr i8, ptr %171, i32 %170
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %169) #10, !srcloc !15
  br label %200

173:                                              ; preds = %123
  %174 = getelementptr inbounds %struct.stm32_dma_chan, ptr %1, i32 0, i32 2
  store i8 0, ptr %174, align 1
  %175 = getelementptr inbounds %struct.stm32_dma_chan, ptr %1, i32 0, i32 6
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds %struct.stm32_dma_desc, ptr %121, i32 0, i32 2
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %199

180:                                              ; preds = %173
  %181 = load i32, ptr %121, align 4
  %182 = icmp slt i32 %181, 1
  br i1 %182, label %183, label %184, !prof !18

183:                                              ; preds = %180
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !19
  unreachable

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %121, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.dma_chan, ptr %186, i32 0, i32 3
  store i32 %181, ptr %187, align 4
  store i32 0, ptr %121, align 4
  %188 = getelementptr inbounds %struct.virt_dma_desc, ptr %121, i32 0, i32 2
  %189 = getelementptr inbounds %struct.virt_dma_chan, ptr %186, i32 0, i32 7
  %190 = getelementptr inbounds %struct.virt_dma_chan, ptr %186, i32 0, i32 7, i32 1
  %191 = load ptr, ptr %190, align 4
  store ptr %188, ptr %190, align 4
  store ptr %189, ptr %188, align 4
  %192 = getelementptr inbounds %struct.virt_dma_desc, ptr %121, i32 0, i32 2, i32 1
  store ptr %191, ptr %192, align 4
  store volatile ptr %188, ptr %191, align 4
  %193 = getelementptr inbounds %struct.virt_dma_chan, ptr %186, i32 0, i32 1, i32 1
  %194 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %193) #10
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %184
  %197 = getelementptr inbounds %struct.virt_dma_chan, ptr %186, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %197) #10
  br label %198

198:                                              ; preds = %196, %184
  store ptr null, ptr %120, align 4
  br label %199

199:                                              ; preds = %198, %173
  tail call fastcc void @stm32_dma_start_transfer(ptr noundef %1) #10
  br label %200

200:                                              ; preds = %199, %167, %161, %136, %119, %116
  %201 = and i32 %96, -33
  br label %202

202:                                              ; preds = %200, %95
  %203 = phi i32 [ %201, %200 ], [ %96, %95 ]
  %204 = and i32 %203, 16
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %219, label %206

206:                                              ; preds = %202
  %207 = load ptr, ptr %1, align 4
  %208 = load i32, ptr %6, align 4
  %209 = and i32 %208, 4
  %210 = icmp eq i32 %209, 0
  %211 = getelementptr inbounds %struct.stm32_dma_device, ptr %207, i32 0, i32 1
  %212 = load ptr, ptr %211, align 4
  br i1 %210, label %215, label %213

213:                                              ; preds = %206
  %214 = getelementptr i8, ptr %212, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 0) #10, !srcloc !15
  br label %217

215:                                              ; preds = %206
  %216 = getelementptr i8, ptr %212, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 0) #10, !srcloc !15
  br label %217

217:                                              ; preds = %215, %213
  %218 = and i32 %203, -17
  br label %219

219:                                              ; preds = %217, %202
  %220 = phi i32 [ %218, %217 ], [ %203, %202 ]
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %249, label %222

222:                                              ; preds = %219
  %223 = load ptr, ptr %1, align 4
  %224 = and i32 %220, 45
  %225 = load i32, ptr %6, align 4
  %226 = shl i32 %225, 3
  %227 = and i32 %226, 16
  %228 = and i32 %225, 1
  %229 = mul nuw nsw i32 %228, 6
  %230 = or i32 %227, %229
  %231 = shl i32 %224, %230
  %232 = and i32 %225, 4
  %233 = icmp eq i32 %232, 0
  %234 = getelementptr inbounds %struct.stm32_dma_device, ptr %223, i32 0, i32 1
  %235 = load ptr, ptr %234, align 4
  br i1 %233, label %238, label %236

236:                                              ; preds = %222
  %237 = getelementptr i8, ptr %235, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %231) #10, !srcloc !15
  br label %240

238:                                              ; preds = %222
  %239 = getelementptr i8, ptr %235, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %231) #10, !srcloc !15
  br label %240

240:                                              ; preds = %238, %236
  %241 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr inbounds %struct.dma_chan_dev, ptr %242, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %243, ptr noundef nonnull @.str.19, i32 noundef %220) #11
  %244 = and i32 %32, 1
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %240
  %247 = load ptr, ptr %241, align 4
  %248 = getelementptr inbounds %struct.dma_chan_dev, ptr %247, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %248, ptr noundef nonnull @.str.20) #11
  br label %249

249:                                              ; preds = %246, %240, %219
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %250 = load i16, ptr %4, align 4
  %251 = add i16 %250, 1
  store i16 %251, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @stm32_dma_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.21) #11
  br label %46

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %13, 7
  %21 = icmp ugt i32 %15, 7
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.22) #11
  br label %46

24:                                               ; preds = %11
  %25 = getelementptr %struct.stm32_dma_device, ptr %4, i32 0, i32 4, i32 %13
  %26 = tail call ptr @dma_get_slave_channel(ptr noundef %25) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.23) #11
  br label %46

29:                                               ; preds = %24
  %30 = getelementptr %struct.stm32_dma_device, ptr %4, i32 0, i32 4, i32 %13, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %30, i8 0, i32 40, i1 false) #10
  %31 = and i32 %17, 230912
  %32 = getelementptr %struct.stm32_dma_device, ptr %4, i32 0, i32 4, i32 %13, i32 8, i32 4
  %33 = shl nuw nsw i32 %15, 25
  %34 = and i32 %33, 234881024
  %35 = or i32 %34, %31
  %36 = or i32 %35, 20
  store i32 %36, ptr %32, align 4
  %37 = and i32 %19, 3
  %38 = getelementptr %struct.stm32_dma_device, ptr %4, i32 0, i32 4, i32 %13, i32 9
  %39 = and i32 %19, 4
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 %37, i32 4
  store i32 %41, ptr %38, align 4
  %42 = and i32 %19, 16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %29
  %45 = or i32 %35, 1048596
  store i32 %45, ptr %32, align 4
  br label %46

46:                                               ; preds = %44, %29, %28, %23, %10
  %47 = phi ptr [ null, %10 ], [ null, %23 ], [ null, %28 ], [ %26, %29 ], [ %26, %44 ]
  ret ptr %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_dma_stop(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = mul i32 %4, 24
  %6 = add i32 %5, 16
  %7 = getelementptr inbounds %struct.stm32_dma_device, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !14
  %11 = and i32 %10, -23
  %12 = load i32, ptr %3, align 4
  %13 = mul i32 %12, 24
  %14 = add i32 %13, 16
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %15, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %11) #10, !srcloc !15
  %17 = load i32, ptr %3, align 4
  %18 = mul i32 %17, 24
  %19 = add i32 %18, 36
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr i8, ptr %20, i32 %19
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !14
  %23 = and i32 %22, -129
  %24 = load i32, ptr %3, align 4
  %25 = mul i32 %24, 24
  %26 = add i32 %25, 36
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr i8, ptr %27, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %23) #10, !srcloc !15
  %29 = load ptr, ptr %0, align 4
  %30 = load i32, ptr %3, align 4
  %31 = mul i32 %30, 24
  %32 = add i32 %31, 16
  %33 = getelementptr inbounds %struct.stm32_dma_device, ptr %29, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 %32
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #10, !srcloc !14
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %1
  %40 = and i32 %36, -2
  %41 = load ptr, ptr %33, align 4
  %42 = getelementptr i8, ptr %41, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #10, !srcloc !15
  %43 = tail call i64 @ktime_get() #10
  %44 = add i64 %43, 1000000000
  %45 = load ptr, ptr %33, align 4
  %46 = getelementptr i8, ptr %45, i32 %32
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #10, !srcloc !14
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %53, %39
  %51 = tail call i64 @ktime_get() #10
  %52 = icmp sgt i64 %51, %44
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 2147480) #10
  %55 = load ptr, ptr %33, align 4
  %56 = getelementptr i8, ptr %55, i32 %32
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #10, !srcloc !14
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %50

60:                                               ; preds = %50
  %61 = load ptr, ptr %33, align 4
  %62 = getelementptr i8, ptr %61, i32 %32
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #10, !srcloc !14
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %102

66:                                               ; preds = %60, %53, %39, %1
  %67 = load ptr, ptr %0, align 4
  %68 = load i32, ptr %3, align 4
  %69 = and i32 %68, 4
  %70 = icmp eq i32 %69, 0
  %71 = getelementptr inbounds %struct.stm32_dma_device, ptr %67, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  br i1 %70, label %76, label %73

73:                                               ; preds = %66
  %74 = getelementptr i8, ptr %72, i32 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #10, !srcloc !14
  br label %78

76:                                               ; preds = %66
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #10, !srcloc !14
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i32 [ %75, %73 ], [ %77, %76 ]
  %80 = load i32, ptr %3, align 4
  %81 = shl i32 %80, 3
  %82 = and i32 %81, 16
  %83 = and i32 %80, 1
  %84 = mul nuw nsw i32 %83, 6
  %85 = or i32 %82, %84
  %86 = lshr i32 %79, %85
  %87 = and i32 %86, 45
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %78
  %90 = load ptr, ptr %0, align 4
  %91 = shl i32 %87, %85
  %92 = and i32 %80, 4
  %93 = icmp eq i32 %92, 0
  %94 = getelementptr inbounds %struct.stm32_dma_device, ptr %90, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  br i1 %93, label %98, label %96

96:                                               ; preds = %89
  %97 = getelementptr i8, ptr %95, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %91) #10, !srcloc !15
  br label %100

98:                                               ; preds = %89
  %99 = getelementptr i8, ptr %95, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %91) #10, !srcloc !15
  br label %100

100:                                              ; preds = %98, %96, %78
  %101 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 2
  store i8 0, ptr %101, align 1
  br label %102

102:                                              ; preds = %100, %60
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dma_desc_residue(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, 24
  %12 = add i32 %11, 16
  %13 = getelementptr inbounds %struct.stm32_dma_device, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !14
  %17 = lshr i32 %16, 11
  %18 = and i32 %17, 3
  %19 = load i32, ptr %9, align 4
  %20 = mul i32 %19, 24
  %21 = add i32 %20, 20
  %22 = load ptr, ptr %13, align 4
  %23 = getelementptr i8, ptr %22, i32 %21
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !14
  %25 = shl i32 %24, %18
  %26 = load ptr, ptr %0, align 4
  %27 = load i32, ptr %9, align 4
  %28 = mul i32 %27, 24
  %29 = add i32 %28, 16
  %30 = getelementptr inbounds %struct.stm32_dma_device, ptr %26, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 %29
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #10, !srcloc !14
  %34 = and i32 %33, 262144
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %3
  %37 = load ptr, ptr %4, align 4
  %38 = load i32, ptr %6, align 4
  %39 = and i32 %33, 524288
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = add i32 %28, 28
  %43 = load ptr, ptr %30, align 4
  %44 = getelementptr i8, ptr %43, i32 %42
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #10, !srcloc !14
  %46 = getelementptr %struct.stm32_dma_desc, ptr %37, i32 0, i32 3, i32 %38, i32 1, i32 7
  br label %53

47:                                               ; preds = %36
  %48 = add i32 %28, 32
  %49 = load ptr, ptr %30, align 4
  %50 = getelementptr i8, ptr %49, i32 %48
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #10, !srcloc !14
  %52 = getelementptr %struct.stm32_dma_desc, ptr %37, i32 0, i32 3, i32 %38, i32 1, i32 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = phi ptr [ %52, %47 ], [ %46, %41 ]
  %55 = phi i32 [ %51, %47 ], [ %45, %41 ]
  %56 = load i32, ptr %54, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = getelementptr %struct.stm32_dma_desc, ptr %5, i32 0, i32 3, i32 %7
  %60 = add i32 %2, 1
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr inbounds %struct.stm32_dma_desc, ptr %61, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %60, %63
  %65 = select i1 %64, i32 0, i32 %60
  %66 = load i32, ptr %59, align 4
  br label %67

67:                                               ; preds = %58, %53, %3
  %68 = phi i32 [ %25, %53 ], [ %66, %58 ], [ %25, %3 ]
  %69 = phi i32 [ %2, %53 ], [ %65, %58 ], [ %2, %3 ]
  %70 = load ptr, ptr %4, align 4
  %71 = getelementptr inbounds %struct.stm32_dma_desc, ptr %70, i32 0, i32 1
  %72 = load i8, ptr %71, align 4, !range !8
  %73 = icmp eq i8 %72, 0
  %74 = icmp ne i32 %69, 0
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.stm32_dma_desc, ptr %1, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = icmp ult i32 %69, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %80, %76
  %81 = phi i32 [ %86, %80 ], [ %69, %76 ]
  %82 = phi i32 [ %85, %80 ], [ %68, %76 ]
  %83 = getelementptr %struct.stm32_dma_desc, ptr %1, i32 0, i32 3, i32 %81
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, %82
  %86 = add nuw i32 %81, 1
  %87 = icmp eq i32 %86, %78
  br i1 %87, label %88, label %80

88:                                               ; preds = %80, %76, %67
  %89 = phi i32 [ %68, %67 ], [ %68, %76 ], [ %85, %80 ]
  %90 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 10
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 11
  %95 = load i32, ptr %94, align 4
  %96 = mul i32 %95, %91
  %97 = urem i32 %89, %96
  %98 = icmp eq i32 %97, 0
  %99 = sub i32 %89, %97
  %100 = add i32 %99, %96
  %101 = select i1 %98, i32 %89, i32 %100
  br label %102

102:                                              ; preds = %93, %88
  %103 = phi i32 [ %101, %93 ], [ %89, %88 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_dma_start_transfer(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = mul i32 %4, 24
  %6 = add i32 %5, 16
  %7 = getelementptr inbounds %struct.stm32_dma_device, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !14
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %1
  %14 = and i32 %10, -2
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %15, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #10, !srcloc !15
  %17 = tail call i64 @ktime_get() #10
  %18 = add i64 %17, 1000000000
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr i8, ptr %19, i32 %6
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #10, !srcloc !14
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %27, %13
  %25 = tail call i64 @ktime_get() #10
  %26 = icmp sgt i64 %25, %18
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #10
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr i8, ptr %29, i32 %6
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #10, !srcloc !14
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %24

34:                                               ; preds = %24
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr i8, ptr %35, i32 %6
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #10, !srcloc !14
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %234

40:                                               ; preds = %34, %27, %13, %1
  %41 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  br label %60

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  %51 = getelementptr i8, ptr %49, i32 -68
  %52 = icmp eq ptr %51, null
  %53 = or i1 %50, %52
  br i1 %53, label %234, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %49, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %56, ptr %58, align 4
  store volatile ptr %57, ptr %56, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %49, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %55, align 4
  store ptr %51, ptr %41, align 4
  %59 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 6
  store i32 0, ptr %59, align 4
  br label %60

60:                                               ; preds = %54, %44
  %61 = phi ptr [ %42, %44 ], [ %51, %54 ]
  %62 = phi i32 [ %46, %44 ], [ 0, %54 ]
  %63 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.stm32_dma_desc, ptr %61, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 0, ptr %63, align 4
  br label %68

68:                                               ; preds = %67, %60
  %69 = phi i32 [ 0, %67 ], [ %62, %60 ]
  %70 = getelementptr %struct.stm32_dma_desc, ptr %61, i32 0, i32 3, i32 %69, i32 1, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, -2
  store i32 %72, ptr %70, align 4
  %73 = load i32, ptr %3, align 4
  %74 = mul i32 %73, 24
  %75 = add i32 %74, 16
  %76 = load ptr, ptr %7, align 4
  %77 = getelementptr i8, ptr %76, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %72) #10, !srcloc !15
  %78 = load i32, ptr %3, align 4
  %79 = mul i32 %78, 24
  %80 = add i32 %79, 24
  %81 = getelementptr %struct.stm32_dma_desc, ptr %61, i32 0, i32 3, i32 %69, i32 1, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %7, align 4
  %84 = getelementptr i8, ptr %83, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #10, !srcloc !15
  %85 = load i32, ptr %3, align 4
  %86 = mul i32 %85, 24
  %87 = add i32 %86, 28
  %88 = getelementptr %struct.stm32_dma_desc, ptr %61, i32 0, i32 3, i32 %69, i32 1, i32 7
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %7, align 4
  %91 = getelementptr i8, ptr %90, i32 %87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #10, !srcloc !15
  %92 = load i32, ptr %3, align 4
  %93 = mul i32 %92, 24
  %94 = add i32 %93, 36
  %95 = getelementptr %struct.stm32_dma_desc, ptr %61, i32 0, i32 3, i32 %69, i32 1, i32 9
  %96 = load i32, ptr %95, align 4
  %97 = load ptr, ptr %7, align 4
  %98 = getelementptr i8, ptr %97, i32 %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #10, !srcloc !15
  %99 = load i32, ptr %3, align 4
  %100 = mul i32 %99, 24
  %101 = add i32 %100, 32
  %102 = getelementptr %struct.stm32_dma_desc, ptr %61, i32 0, i32 3, i32 %69, i32 1, i32 8
  %103 = load i32, ptr %102, align 4
  %104 = load ptr, ptr %7, align 4
  %105 = getelementptr i8, ptr %104, i32 %101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #10, !srcloc !15
  %106 = load i32, ptr %3, align 4
  %107 = mul i32 %106, 24
  %108 = add i32 %107, 20
  %109 = getelementptr %struct.stm32_dma_desc, ptr %61, i32 0, i32 3, i32 %69, i32 1, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = load ptr, ptr %7, align 4
  %112 = getelementptr i8, ptr %111, i32 %108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #10, !srcloc !15
  %113 = load i32, ptr %63, align 4
  %114 = add i32 %113, 1
  store i32 %114, ptr %63, align 4
  %115 = load ptr, ptr %0, align 4
  %116 = load i32, ptr %3, align 4
  %117 = and i32 %116, 4
  %118 = icmp eq i32 %117, 0
  %119 = getelementptr inbounds %struct.stm32_dma_device, ptr %115, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  br i1 %118, label %124, label %121

121:                                              ; preds = %68
  %122 = getelementptr i8, ptr %120, i32 4
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #10, !srcloc !14
  br label %126

124:                                              ; preds = %68
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #10, !srcloc !14
  br label %126

126:                                              ; preds = %124, %121
  %127 = phi i32 [ %123, %121 ], [ %125, %124 ]
  %128 = load i32, ptr %3, align 4
  %129 = shl i32 %128, 3
  %130 = and i32 %129, 16
  %131 = and i32 %128, 1
  %132 = mul nuw nsw i32 %131, 6
  %133 = or i32 %130, %132
  %134 = lshr i32 %127, %133
  %135 = and i32 %134, 45
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %126
  %138 = load ptr, ptr %0, align 4
  %139 = shl i32 %135, %133
  %140 = and i32 %128, 4
  %141 = icmp eq i32 %140, 0
  %142 = getelementptr inbounds %struct.stm32_dma_device, ptr %138, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  br i1 %141, label %146, label %144

144:                                              ; preds = %137
  %145 = getelementptr i8, ptr %143, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %139) #10, !srcloc !15
  br label %148

146:                                              ; preds = %137
  %147 = getelementptr i8, ptr %143, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %139) #10, !srcloc !15
  br label %148

148:                                              ; preds = %146, %144, %126
  %149 = load ptr, ptr %41, align 4
  %150 = getelementptr inbounds %struct.stm32_dma_desc, ptr %149, i32 0, i32 1
  %151 = load i8, ptr %150, align 4, !range !8
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %187, label %153

153:                                              ; preds = %148
  %154 = load ptr, ptr %0, align 4
  %155 = load i32, ptr %3, align 4
  %156 = mul i32 %155, 24
  %157 = add i32 %156, 16
  %158 = getelementptr inbounds %struct.stm32_dma_device, ptr %154, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr i8, ptr %159, i32 %157
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #10, !srcloc !14
  %162 = and i32 %161, 262144
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %187, label %164

164:                                              ; preds = %153
  %165 = load i32, ptr %63, align 4
  %166 = load ptr, ptr %41, align 4
  %167 = getelementptr inbounds %struct.stm32_dma_desc, ptr %166, i32 0, i32 2
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %165, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  store i32 0, ptr %63, align 4
  br label %171

171:                                              ; preds = %170, %164
  %172 = phi i32 [ 0, %170 ], [ %165, %164 ]
  %173 = and i32 %161, 524288
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %171
  %176 = getelementptr %struct.stm32_dma_desc, ptr %166, i32 0, i32 3, i32 %172, i32 1, i32 7
  %177 = load i32, ptr %176, align 4
  %178 = add i32 %156, 28
  %179 = load ptr, ptr %158, align 4
  %180 = getelementptr i8, ptr %179, i32 %178
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %177) #10, !srcloc !15
  br label %187

181:                                              ; preds = %171
  %182 = getelementptr %struct.stm32_dma_desc, ptr %166, i32 0, i32 3, i32 %172, i32 1, i32 8
  %183 = load i32, ptr %182, align 4
  %184 = add i32 %156, 32
  %185 = load ptr, ptr %158, align 4
  %186 = getelementptr i8, ptr %185, i32 %184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %183) #10, !srcloc !15
  br label %187

187:                                              ; preds = %181, %175, %153, %148
  %188 = load ptr, ptr %0, align 4
  %189 = load i32, ptr %3, align 4
  %190 = mul i32 %189, 24
  %191 = add i32 %190, 16
  %192 = getelementptr inbounds %struct.stm32_dma_device, ptr %188, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr i8, ptr %193, i32 %191
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %194) #10, !srcloc !14
  %196 = load i32, ptr %3, align 4
  %197 = mul i32 %196, 24
  %198 = add i32 %197, 20
  %199 = load ptr, ptr %192, align 4
  %200 = getelementptr i8, ptr %199, i32 %198
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %200) #10, !srcloc !14
  %202 = load i32, ptr %3, align 4
  %203 = mul i32 %202, 24
  %204 = add i32 %203, 24
  %205 = load ptr, ptr %192, align 4
  %206 = getelementptr i8, ptr %205, i32 %204
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %206) #10, !srcloc !14
  %208 = load i32, ptr %3, align 4
  %209 = mul i32 %208, 24
  %210 = add i32 %209, 28
  %211 = load ptr, ptr %192, align 4
  %212 = getelementptr i8, ptr %211, i32 %210
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #10, !srcloc !14
  %214 = load i32, ptr %3, align 4
  %215 = mul i32 %214, 24
  %216 = add i32 %215, 32
  %217 = load ptr, ptr %192, align 4
  %218 = getelementptr i8, ptr %217, i32 %216
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #10, !srcloc !14
  %220 = load i32, ptr %3, align 4
  %221 = mul i32 %220, 24
  %222 = add i32 %221, 36
  %223 = load ptr, ptr %192, align 4
  %224 = getelementptr i8, ptr %223, i32 %222
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #10, !srcloc !14
  %226 = load i32, ptr %70, align 4
  %227 = or i32 %226, 1
  store i32 %227, ptr %70, align 4
  %228 = load i32, ptr %3, align 4
  %229 = mul i32 %228, 24
  %230 = add i32 %229, 16
  %231 = load ptr, ptr %7, align 4
  %232 = getelementptr i8, ptr %231, i32 %230
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %227) #10, !srcloc !15
  %233 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 2
  store i8 1, ptr %233, align 1
  br label %234

234:                                              ; preds = %187, %47, %34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dma_set_xfer_param(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 7, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 7, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 7, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 7, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  switch i32 %1, label %271 [
    i32 1, label %16
    i32 2, label %141
  ]

16:                                               ; preds = %5
  switch i32 %9, label %19 [
    i32 1, label %23
    i32 2, label %17
    i32 4, label %18
  ]

17:                                               ; preds = %16
  br label %23

18:                                               ; preds = %16
  br label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dma_chan_dev, ptr %21, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.12) #11
  br label %299

23:                                               ; preds = %18, %17, %16
  %24 = phi i32 [ 64, %16 ], [ 2112, %17 ], [ 4160, %18 ]
  %25 = icmp eq i32 %13, 1
  %26 = icmp eq i32 %15, 4
  %27 = or i1 %25, %26
  br i1 %27, label %61, label %28

28:                                               ; preds = %23
  %29 = shl i32 %15, 2
  %30 = add i32 %29, 4
  %31 = urem i32 %3, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = add i32 %15, 1
  br label %35

35:                                               ; preds = %49, %33
  %36 = phi i32 [ %52, %49 ], [ %13, %33 ]
  %37 = mul i32 %36, %9
  %38 = icmp ugt i32 %37, %3
  %39 = icmp ugt i32 %36, 1
  %40 = and i1 %39, %38
  br i1 %40, label %49, label %41

41:                                               ; preds = %35
  %42 = icmp eq i32 %36, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %41
  %44 = udiv i32 16, %9
  %45 = mul i32 %44, %34
  %46 = lshr i32 %45, 2
  %47 = urem i32 %46, %36
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43, %35
  %50 = icmp ugt i32 %36, 4
  %51 = lshr i32 %36, 1
  %52 = select i1 %50, i32 %51, i32 0
  br label %35

53:                                               ; preds = %43
  switch i32 %36, label %57 [
    i32 16, label %56
    i32 1, label %61
    i32 4, label %54
    i32 8, label %55
  ]

54:                                               ; preds = %53
  br label %61

55:                                               ; preds = %53
  br label %61

56:                                               ; preds = %53
  br label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dma_chan_dev, ptr %59, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.13) #11
  br label %299

61:                                               ; preds = %56, %55, %54, %53, %41, %28, %23
  %62 = phi i32 [ %36, %53 ], [ %36, %54 ], [ %36, %55 ], [ %36, %56 ], [ 0, %28 ], [ 0, %23 ], [ 0, %41 ]
  %63 = phi i32 [ 0, %53 ], [ 2097152, %54 ], [ 4194304, %55 ], [ 6291456, %56 ], [ 0, %28 ], [ 0, %23 ], [ 0, %41 ]
  %64 = icmp eq i32 %15, 3
  %65 = select i1 %64, i32 4, i32 2
  br label %66

66:                                               ; preds = %76, %61
  %67 = phi i32 [ %65, %61 ], [ %77, %76 ]
  %68 = icmp ugt i32 %67, %3
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = urem i32 %3, %67
  %71 = icmp ne i32 %70, 0
  %72 = icmp ugt i32 %67, 1
  %73 = and i1 %72, %71
  br i1 %73, label %76, label %78

74:                                               ; preds = %66
  %75 = icmp ugt i32 %67, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %74, %69
  %77 = lshr i32 %67, 1
  br label %66

78:                                               ; preds = %74, %69
  %79 = add nsw i32 %67, -1
  %80 = and i32 %79, %4
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i32 %67, i32 1
  %83 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 11
  store i32 %82, ptr %83, align 4
  switch i32 %82, label %86 [
    i32 1, label %90
    i32 2, label %84
    i32 4, label %85
  ]

84:                                               ; preds = %78
  br label %90

85:                                               ; preds = %78
  br label %90

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.dma_chan_dev, ptr %88, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.12) #11
  br label %299

90:                                               ; preds = %85, %84, %78
  %91 = phi i32 [ 0, %78 ], [ 8192, %84 ], [ 16384, %85 ]
  %92 = add i32 %3, -1
  %93 = and i32 %92, %4
  %94 = icmp ne i32 %93, 0
  %95 = or i1 %94, %26
  br i1 %95, label %129, label %96

96:                                               ; preds = %90
  %97 = shl i32 %15, 2
  %98 = add i32 %97, 4
  %99 = urem i32 %3, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %129

101:                                              ; preds = %96
  %102 = add i32 %15, 1
  br label %103

103:                                              ; preds = %117, %101
  %104 = phi i32 [ %120, %117 ], [ 16, %101 ]
  %105 = mul i32 %104, %82
  %106 = icmp ugt i32 %105, %3
  %107 = icmp ugt i32 %104, 1
  %108 = and i1 %107, %106
  br i1 %108, label %117, label %109

109:                                              ; preds = %103
  %110 = icmp eq i32 %104, 0
  br i1 %110, label %129, label %111

111:                                              ; preds = %109
  %112 = udiv i32 16, %82
  %113 = mul i32 %112, %102
  %114 = lshr i32 %113, 2
  %115 = urem i32 %114, %104
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %111, %103
  %118 = icmp ugt i32 %104, 4
  %119 = lshr i32 %104, 1
  %120 = select i1 %118, i32 %119, i32 0
  br label %103

121:                                              ; preds = %111
  switch i32 %104, label %125 [
    i32 16, label %124
    i32 1, label %129
    i32 4, label %122
    i32 8, label %123
  ]

122:                                              ; preds = %121
  br label %129

123:                                              ; preds = %121
  br label %129

124:                                              ; preds = %121
  br label %129

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.dma_chan_dev, ptr %127, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.13) #11
  br label %299

129:                                              ; preds = %124, %123, %122, %121, %109, %96, %90
  %130 = phi i32 [ %104, %121 ], [ %104, %122 ], [ %104, %123 ], [ %104, %124 ], [ 0, %96 ], [ 0, %90 ], [ 0, %109 ]
  %131 = phi i32 [ 0, %121 ], [ 8388608, %122 ], [ 16777216, %123 ], [ 25165824, %124 ], [ 0, %96 ], [ 0, %90 ], [ 0, %109 ]
  %132 = or i32 %24, %63
  %133 = or i32 %132, %91
  %134 = or i32 %133, %131
  %135 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 8, i32 9
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, -4
  %138 = and i32 %15, 3
  %139 = or i32 %137, %138
  store i32 %139, ptr %135, align 4
  %140 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 7, i32 2
  br label %275

141:                                              ; preds = %5
  switch i32 %7, label %144 [
    i32 1, label %148
    i32 2, label %142
    i32 4, label %143
  ]

142:                                              ; preds = %141
  br label %148

143:                                              ; preds = %141
  br label %148

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.dma_chan_dev, ptr %146, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.12) #11
  br label %299

148:                                              ; preds = %143, %142, %141
  %149 = phi i32 [ 0, %141 ], [ 2048, %142 ], [ 4096, %143 ]
  %150 = icmp eq i32 %11, 1
  %151 = icmp eq i32 %15, 4
  %152 = or i1 %150, %151
  br i1 %152, label %178, label %153

153:                                              ; preds = %148
  %154 = shl i32 %15, 2
  %155 = add i32 %154, 4
  %156 = urem i32 %3, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %178

158:                                              ; preds = %153
  %159 = add i32 %15, 1
  br label %160

160:                                              ; preds = %174, %158
  %161 = phi i32 [ %177, %174 ], [ %11, %158 ]
  %162 = mul i32 %161, %7
  %163 = icmp ugt i32 %162, %3
  %164 = icmp ugt i32 %161, 1
  %165 = and i1 %164, %163
  br i1 %165, label %174, label %166

166:                                              ; preds = %160
  %167 = icmp eq i32 %161, 0
  br i1 %167, label %178, label %168

168:                                              ; preds = %166
  %169 = udiv i32 16, %7
  %170 = mul i32 %169, %159
  %171 = lshr i32 %170, 2
  %172 = urem i32 %171, %161
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %168, %160
  %175 = icmp ugt i32 %161, 4
  %176 = lshr i32 %161, 1
  %177 = select i1 %175, i32 %176, i32 0
  br label %160

178:                                              ; preds = %166, %153, %148
  %179 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 10
  store i32 0, ptr %179, align 4
  br label %189

180:                                              ; preds = %168
  %181 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 10
  store i32 %161, ptr %181, align 4
  switch i32 %161, label %185 [
    i32 16, label %184
    i32 1, label %189
    i32 4, label %182
    i32 8, label %183
  ]

182:                                              ; preds = %180
  br label %189

183:                                              ; preds = %180
  br label %189

184:                                              ; preds = %180
  br label %189

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.dma_chan_dev, ptr %187, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.13) #11
  br label %299

189:                                              ; preds = %184, %183, %182, %180, %178
  %190 = phi ptr [ %179, %178 ], [ %181, %180 ], [ %181, %182 ], [ %181, %183 ], [ %181, %184 ]
  %191 = phi i32 [ 0, %178 ], [ %161, %180 ], [ %161, %182 ], [ %161, %183 ], [ %161, %184 ]
  %192 = phi i32 [ 0, %178 ], [ 0, %180 ], [ 2097152, %182 ], [ 4194304, %183 ], [ 6291456, %184 ]
  %193 = icmp eq i32 %15, 3
  %194 = select i1 %193, i32 4, i32 2
  br label %195

195:                                              ; preds = %205, %189
  %196 = phi i32 [ %194, %189 ], [ %206, %205 ]
  %197 = icmp ugt i32 %196, %3
  br i1 %197, label %203, label %198

198:                                              ; preds = %195
  %199 = urem i32 %3, %196
  %200 = icmp ne i32 %199, 0
  %201 = icmp ugt i32 %196, 1
  %202 = and i1 %201, %200
  br i1 %202, label %205, label %207

203:                                              ; preds = %195
  %204 = icmp ugt i32 %196, 1
  br i1 %204, label %205, label %207

205:                                              ; preds = %203, %198
  %206 = lshr i32 %196, 1
  br label %195

207:                                              ; preds = %203, %198
  %208 = add nsw i32 %196, -1
  %209 = and i32 %208, %4
  %210 = icmp eq i32 %209, 0
  %211 = select i1 %210, i32 %196, i32 1
  %212 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 11
  store i32 %211, ptr %212, align 4
  switch i32 %211, label %215 [
    i32 1, label %219
    i32 2, label %213
    i32 4, label %214
  ]

213:                                              ; preds = %207
  br label %219

214:                                              ; preds = %207
  br label %219

215:                                              ; preds = %207
  %216 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.dma_chan_dev, ptr %217, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %218, ptr noundef nonnull @.str.12) #11
  br label %299

219:                                              ; preds = %214, %213, %207
  %220 = phi i32 [ 0, %207 ], [ 8192, %213 ], [ 16384, %214 ]
  %221 = add i32 %3, -1
  %222 = and i32 %221, %4
  %223 = icmp ne i32 %222, 0
  %224 = or i1 %223, %151
  br i1 %224, label %250, label %225

225:                                              ; preds = %219
  %226 = shl i32 %15, 2
  %227 = add i32 %226, 4
  %228 = urem i32 %3, %227
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %250

230:                                              ; preds = %225
  %231 = add i32 %15, 1
  br label %232

232:                                              ; preds = %246, %230
  %233 = phi i32 [ %249, %246 ], [ 16, %230 ]
  %234 = mul i32 %233, %211
  %235 = icmp ugt i32 %234, %3
  %236 = icmp ugt i32 %233, 1
  %237 = and i1 %236, %235
  br i1 %237, label %246, label %238

238:                                              ; preds = %232
  %239 = icmp eq i32 %233, 0
  br i1 %239, label %250, label %240

240:                                              ; preds = %238
  %241 = udiv i32 16, %211
  %242 = mul i32 %241, %231
  %243 = lshr i32 %242, 2
  %244 = urem i32 %243, %233
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %251, label %246

246:                                              ; preds = %240, %232
  %247 = icmp ugt i32 %233, 4
  %248 = lshr i32 %233, 1
  %249 = select i1 %247, i32 %248, i32 0
  br label %232

250:                                              ; preds = %238, %225, %219
  store i32 0, ptr %190, align 4
  br label %259

251:                                              ; preds = %240
  store i32 %233, ptr %190, align 4
  switch i32 %233, label %255 [
    i32 16, label %254
    i32 1, label %259
    i32 4, label %252
    i32 8, label %253
  ]

252:                                              ; preds = %251
  br label %259

253:                                              ; preds = %251
  br label %259

254:                                              ; preds = %251
  br label %259

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr inbounds %struct.dma_chan_dev, ptr %257, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %258, ptr noundef nonnull @.str.13) #11
  br label %299

259:                                              ; preds = %254, %253, %252, %251, %250
  %260 = phi i32 [ 0, %250 ], [ %233, %251 ], [ %233, %252 ], [ %233, %253 ], [ %233, %254 ]
  %261 = phi i32 [ 0, %250 ], [ 0, %251 ], [ 8388608, %252 ], [ 16777216, %253 ], [ 25165824, %254 ]
  %262 = or i32 %192, %149
  %263 = or i32 %262, %220
  %264 = or i32 %263, %261
  %265 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 8, i32 9
  %266 = load i32, ptr %265, align 4
  %267 = and i32 %266, -4
  %268 = and i32 %15, 3
  %269 = or i32 %267, %268
  store i32 %269, ptr %265, align 4
  %270 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 7, i32 1
  br label %275

271:                                              ; preds = %5
  %272 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %273 = load ptr, ptr %272, align 4
  %274 = getelementptr inbounds %struct.dma_chan_dev, ptr %273, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %274, ptr noundef nonnull @.str.11) #11
  br label %299

275:                                              ; preds = %259, %129
  %276 = phi ptr [ %270, %259 ], [ %140, %129 ]
  %277 = phi i32 [ %7, %259 ], [ %9, %129 ]
  %278 = phi i32 [ %191, %259 ], [ %130, %129 ]
  %279 = phi i32 [ %260, %259 ], [ %62, %129 ]
  %280 = phi i32 [ %264, %259 ], [ %134, %129 ]
  %281 = load i32, ptr %276, align 4
  %282 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 8, i32 6
  store i32 %281, ptr %282, align 4
  store i32 %277, ptr %2, align 4
  %283 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 8, i32 9
  %284 = load i32, ptr %283, align 4
  %285 = and i32 %284, -133
  store i32 %285, ptr %283, align 4
  %286 = getelementptr inbounds %struct.stm32_dma_chan, ptr %0, i32 0, i32 8, i32 4
  %287 = load i32, ptr %286, align 4
  %288 = or i32 %279, %278
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %275
  %291 = or i32 %287, 2
  br label %295

292:                                              ; preds = %275
  %293 = and i32 %287, -3
  %294 = or i32 %284, 132
  store i32 %294, ptr %283, align 4
  br label %295

295:                                              ; preds = %292, %290
  %296 = phi i32 [ %291, %290 ], [ %293, %292 ]
  %297 = and i32 %296, -31488193
  %298 = or i32 %297, %280
  store i32 %298, ptr %286, align 4
  br label %299

299:                                              ; preds = %295, %271, %255, %215, %185, %144, %125, %86, %57, %19
  %300 = phi i32 [ -22, %271 ], [ 0, %295 ], [ -22, %19 ], [ -22, %57 ], [ -22, %86 ], [ -22, %125 ], [ -22, %144 ], [ -22, %185 ], [ -22, %215 ], [ -22, %255 ]
  ret i32 %300
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dma_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #10
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stm32_dma_device, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !14
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %19

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #10, !srcloc !9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 0, i32 -1, ptr elementtype(i32) %14) #10, !srcloc !12
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %66, label %18

18:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  br label %66

19:                                               ; preds = %57, %51, %45, %39, %33, %27, %21, %6
  %20 = phi i32 [ 0, %6 ], [ 1, %21 ], [ 2, %27 ], [ 3, %33 ], [ 4, %39 ], [ 5, %45 ], [ 6, %51 ], [ 7, %57 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %20) #11
  br label %66

21:                                               ; preds = %6
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr i8, ptr %22, i32 40
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !14
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %19

27:                                               ; preds = %21
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr i8, ptr %28, i32 64
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !14
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %19

33:                                               ; preds = %27
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr i8, ptr %34, i32 88
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #10, !srcloc !14
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %19

39:                                               ; preds = %33
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr i8, ptr %40, i32 112
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #10, !srcloc !14
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %19

45:                                               ; preds = %39
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr i8, ptr %46, i32 136
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #10, !srcloc !14
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %19

51:                                               ; preds = %45
  %52 = load ptr, ptr %7, align 4
  %53 = getelementptr i8, ptr %52, i32 160
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #10, !srcloc !14
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %19

57:                                               ; preds = %51
  %58 = load ptr, ptr %7, align 4
  %59 = getelementptr i8, ptr %58, i32 184
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #10, !srcloc !14
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %19

63:                                               ; preds = %57
  %64 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #10
  %65 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #10
  br label %66

66:                                               ; preds = %63, %19, %18, %13
  %67 = phi i32 [ -16, %19 ], [ 0, %63 ], [ %4, %13 ], [ %4, %18 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dma_resume(ptr noundef %0) #2 {
  %2 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #10
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dma_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_dma_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dma_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_dma_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25) #11
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!9 = !{i64 482013, i64 2147971984, i64 2147972010, i64 2147972057, i64 2147972079, i64 2147972107, i64 2147972127}
!10 = !{i64 2147984196, i64 2147984222, i64 2147984251, i64 2147984285, i64 2147984316, i64 2147984339}
!11 = !{i64 2147983703}
!12 = !{i64 468582, i64 468607, i64 468629, i64 468645, i64 468657, i64 468677, i64 468701, i64 468717, i64 468729}
!13 = !{i64 2147983829}
!14 = !{i64 5084278}
!15 = !{i64 5083860}
!16 = !{i64 2153214564}
!17 = !{!"auto-init"}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2153213628, i64 2153214115, i64 2153213665, i64 2153213721, i64 2153213755, i64 2153213779, i64 2153213820, i64 2153213841, i64 2153213869, i64 2153213903}
!20 = !{i64 2148920565}
!21 = !{i64 2148916389}
!22 = !{i64 2148916464, i64 2148916491, i64 2148916538, i64 2148916560, i64 2148916588, i64 2148916608}
!23 = !{i64 2148943568}
