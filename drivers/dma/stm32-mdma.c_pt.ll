; ModuleID = '/llk/IR/drivers/dma/stm32-mdma.c_pt.bc'
source_filename = "../drivers/dma/stm32-mdma.c"
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
%struct.stm32_mdma_device = type { %struct.dma_device, ptr, ptr, i32, i32, i32, i32, [63 x %struct.stm32_mdma_chan], [0 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.stm32_mdma_chan = type { %struct.virt_dma_chan, ptr, i32, ptr, i32, %struct.dma_slave_config, %struct.stm32_mdma_chan_config, i8, i32, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.stm32_mdma_chan_config = type { i32, i32, i32, i32, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.stm32_mdma_desc = type { %struct.virt_dma_desc, i32, i8, i32, [0 x %struct.stm32_mdma_desc_node] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.stm32_mdma_desc_node = type { ptr, i32 }
%struct.stm32_mdma_hwdesc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_stm32_mdma__414_1739_stm32_mdma_init4 = internal global ptr @stm32_mdma_init, section ".initcall4.init", align 4
@__UNIQUE_ID_description415 = internal constant [56 x i8] c"stm32_mdma.description=Driver for STM32 MDMA controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author416 = internal constant [71 x i8] c"stm32_mdma.author=M'boumba Cedric Madianga <cedric.madianga@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author417 = internal constant [67 x i8] c"stm32_mdma.author=Pierre-Yves Mordret <pierre-yves.mordret@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file418 = internal constant [39 x i8] c"stm32_mdma.file=drivers/dma/stm32-mdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license419 = internal constant [26 x i8] c"stm32_mdma.license=GPL v2\00", section ".modinfo", align 1
@stm32_mdma_driver = internal global %struct.platform_driver { ptr @stm32_mdma_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_mdma_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_mdma_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"stm32-mdma\00", align 1
@stm32_mdma_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-mdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stm32_mdma_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_mdma_pm_suspend, ptr @stm32_mdma_pm_resume, ptr @stm32_mdma_pm_suspend, ptr @stm32_mdma_pm_resume, ptr @stm32_mdma_pm_suspend, ptr @stm32_mdma_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_mdma_runtime_suspend, ptr @stm32_mdma_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"MDMA defaulting on %i channels\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"dma-requests\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"MDMA defaulting on %i request lines\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"st,ahb-addr-masks\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Missing clock controller\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"clk_prep_enable error: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"STM32 MDMA DMA OF registration failed %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"STM32 MDMA driver registered\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"failed to allocate descriptor pool\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"%s: timeout!\0A\00", align 1
@__func__.stm32_mdma_disable_chan = private unnamed_addr constant [24 x i8] c"stm32_mdma_disable_chan\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Request not allowed when dma in cyclic mode\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Failed to allocate descriptor\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Invalid block len\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"burst size * bus width higher than %d bytes\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"burst size must be a power of 2\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Dma direction is not supported\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Dma bus width %i not supported\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Invalid buffer/period len\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"buf_len not multiple of period_len\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"MDMA channel not initialized\0A\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"spurious it (status=0x%04x, ien=0x%04x)\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Transfer Err: stat=0x%08x\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"DMA error: status=0x%08x\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"chan disabled by HW\0A\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"Bad number of args\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Bad request line\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Priority level not supported\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"No more channels available\0A\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"Suspend is prevented by Chan %i\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"failed to prepare_enable clock\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author416, ptr @__UNIQUE_ID_author417, ptr @__UNIQUE_ID_description415, ptr @__UNIQUE_ID_file418, ptr @__UNIQUE_ID_license419, ptr @__initcall__kmod_stm32_mdma__414_1739_stm32_mdma_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32_mdma_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_mdma_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_mdma_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %131, label %8

8:                                                ; preds = %1
  %9 = call i32 @device_property_read_u32_array(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i32 63, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef 63) #10
  br label %12

12:                                               ; preds = %11, %8
  %13 = call i32 @device_property_read_u32_array(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 256, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef 256) #10
  br label %16

16:                                               ; preds = %15, %12
  %17 = call i32 @device_property_read_u32_array(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0) #9
  %18 = call i32 @llvm.smax.i32(i32 %17, i32 0)
  %19 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 4) #9
  %20 = extractvalue { i32, i1 } %19, 1
  %21 = extractvalue { i32, i1 } %19, 0
  %22 = call i32 @llvm.uadd.sat.i32(i32 %21, i32 15144) #9
  %23 = select i1 %20, i32 -1, i32 %22
  %24 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %23, i32 noundef 3520) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %131, label %26

26:                                               ; preds = %16
  %27 = load i32, ptr %2, align 4
  %28 = getelementptr inbounds %struct.stm32_mdma_device, ptr %24, i32 0, i32 4
  store i32 %27, ptr %28, align 4
  %29 = load i32, ptr %3, align 4
  %30 = getelementptr inbounds %struct.stm32_mdma_device, ptr %24, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.stm32_mdma_device, ptr %24, i32 0, i32 8
  %32 = call i32 @device_property_read_u32_array(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef %31, i32 noundef %18) #9
  %33 = getelementptr inbounds %struct.stm32_mdma_device, ptr %24, i32 0, i32 6
  store i32 %18, ptr %33, align 4
  %34 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %35 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %34) #9
  %36 = getelementptr inbounds %struct.stm32_mdma_device, ptr %24, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = ptrtoint ptr %35 to i32
  br label %131

40:                                               ; preds = %26
  %41 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #9
  %42 = getelementptr inbounds %struct.stm32_mdma_device, ptr %24, i32 0, i32 2
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = ptrtoint ptr %41 to i32
  %46 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %45, ptr noundef nonnull @.str.6) #9
  br label %131

47:                                               ; preds = %40
  %48 = call i32 @clk_prepare(ptr noundef %41) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = call i32 @clk_enable(ptr noundef %41) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  call void @clk_unprepare(ptr noundef %41) #9
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi i32 [ %48, %47 ], [ %51, %53 ]
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %55) #10
  br label %131

58:                                               ; preds = %54, %50
  %59 = call ptr @__devm_reset_control_get(ptr noundef %4, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = icmp eq ptr %59, inttoptr (i32 -517 to ptr)
  br i1 %62, label %128, label %67

63:                                               ; preds = %58
  %64 = call i32 @reset_control_assert(ptr noundef %59) #9
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %65(i32 noundef 429496) #9
  %66 = call i32 @reset_control_deassert(ptr noundef %59) #9
  br label %67

67:                                               ; preds = %63, %61
  %68 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 6
  call void @_set_bit(i32 noundef 11, ptr noundef %68) #9
  call void @_set_bit(i32 noundef 9, ptr noundef %68) #9
  call void @_set_bit(i32 noundef 12, ptr noundef %68) #9
  call void @_set_bit(i32 noundef 0, ptr noundef %68) #9
  %69 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 27
  store ptr @stm32_mdma_alloc_chan_resources, ptr %69, align 4
  %70 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 29
  store ptr @stm32_mdma_free_chan_resources, ptr %70, align 4
  %71 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 49
  store ptr @stm32_mdma_tx_status, ptr %71, align 4
  %72 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 50
  store ptr @stm32_mdma_issue_pending, ptr %72, align 4
  %73 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 39
  store ptr @stm32_mdma_prep_slave_sg, ptr %73, align 4
  %74 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 40
  store ptr @stm32_mdma_prep_dma_cyclic, ptr %74, align 4
  %75 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 30
  store ptr @stm32_mdma_prep_dma_memcpy, ptr %75, align 4
  %76 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 44
  store ptr @stm32_mdma_slave_config, ptr %76, align 4
  %77 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 45
  store ptr @stm32_mdma_pause, ptr %77, align 4
  %78 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 46
  store ptr @stm32_mdma_resume, ptr %78, align 4
  %79 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 47
  store ptr @stm32_mdma_terminate_all, ptr %79, align 4
  %80 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 48
  store ptr @stm32_mdma_synchronize, ptr %80, align 4
  %81 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 25
  store i8 1, ptr %81, align 4
  %82 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 19
  store i32 278, ptr %82, align 4
  %83 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 20
  store i32 278, ptr %83, align 4
  %84 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 21
  store i32 7, ptr %84, align 4
  %85 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 26
  store i32 2, ptr %85, align 4
  %86 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 23
  store i32 128, ptr %86, align 4
  %87 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 15
  store ptr %4, ptr %87, align 4
  %88 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 3
  store volatile ptr %88, ptr %88, align 4
  %89 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 3, i32 1
  store ptr %88, ptr %89, align 4
  %90 = load i32, ptr %28, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %92, %67
  %93 = phi i32 [ %97, %92 ], [ 0, %67 ]
  %94 = getelementptr %struct.stm32_mdma_device, ptr %24, i32 0, i32 7, i32 %93
  %95 = getelementptr %struct.stm32_mdma_device, ptr %24, i32 0, i32 7, i32 %93, i32 2
  store i32 %93, ptr %95, align 4
  %96 = getelementptr inbounds %struct.virt_dma_chan, ptr %94, i32 0, i32 2
  store ptr @stm32_mdma_desc_free, ptr %96, align 4
  call void @vchan_init(ptr noundef %94, ptr noundef nonnull %24) #9
  %97 = add nuw i32 %93, 1
  %98 = load i32, ptr %28, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %92, label %100

100:                                              ; preds = %92, %67
  %101 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %102 = getelementptr inbounds %struct.stm32_mdma_device, ptr %24, i32 0, i32 3
  store i32 %101, ptr %102, align 4
  %103 = icmp slt i32 %101, 0
  br i1 %103, label %128, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load ptr, ptr %4, align 4
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi ptr [ %109, %108 ], [ %106, %104 ]
  %112 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %101, ptr noundef nonnull @stm32_mdma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %111, ptr noundef %24) #9
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #10
  br label %128

115:                                              ; preds = %110
  %116 = call i32 @dmaenginem_async_device_register(ptr noundef nonnull %24) #9
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = call i32 @of_dma_controller_register(ptr noundef nonnull %6, ptr noundef nonnull @stm32_mdma_of_xlate, ptr noundef nonnull %24) #9
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %119) #10
  br label %128

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %24, ptr %123, align 8
  %124 = call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 0) #9
  call void @pm_runtime_enable(ptr noundef %4) #9
  %125 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %125) #9, !srcloc !9
  %126 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %125, ptr %125, i32 1, ptr elementtype(i32) %125) #9, !srcloc !10
  %127 = call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 5) #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.10) #10
  br label %131

128:                                              ; preds = %121, %115, %114, %100, %61
  %129 = phi i32 [ -517, %61 ], [ %112, %114 ], [ %116, %115 ], [ %119, %121 ], [ %101, %100 ]
  %130 = load ptr, ptr %42, align 4
  call void @clk_disable(ptr noundef %130) #9
  call void @clk_unprepare(ptr noundef %130) #9
  br label %131

131:                                              ; preds = %128, %122, %57, %44, %38, %16, %1
  %132 = phi i32 [ %39, %38 ], [ %46, %44 ], [ %55, %57 ], [ %129, %128 ], [ 0, %122 ], [ -19, %1 ], [ -12, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %132
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_mdma_alloc_chan_resources(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ %6, %1 ]
  %13 = getelementptr inbounds %struct.dma_device, ptr %2, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @dmam_pool_create(ptr noundef %12, ptr noundef %14, i32 noundef 64, i32 noundef 64, i32 noundef 0) #9
  %16 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.dma_chan_dev, ptr %19, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.11) #10
  br label %37

21:                                               ; preds = %11
  %22 = load ptr, ptr %13, align 4
  %23 = tail call i32 @__pm_runtime_resume(ptr noundef %22, i32 noundef 4) #9
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #9, !srcloc !9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 0, i32 -1, ptr elementtype(i32) %26) #9, !srcloc !12
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  br label %37

31:                                               ; preds = %21
  %32 = tail call fastcc i32 @stm32_mdma_disable_chan(ptr noundef %0)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load ptr, ptr %13, align 4
  %36 = tail call i32 @__pm_runtime_idle(ptr noundef %35, i32 noundef 5) #9
  br label %37

37:                                               ; preds = %34, %31, %30, %25, %18
  %38 = phi i32 [ -12, %18 ], [ %32, %34 ], [ %32, %31 ], [ %23, %25 ], [ %23, %30 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_mdma_free_chan_resources(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 7
  %5 = load i8, ptr %4, align 4, !range !14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #9
  %10 = load ptr, ptr %0, align 4
  %11 = tail call fastcc i32 @stm32_mdma_disable_chan(ptr noundef %0) #9
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %15, 6
  %17 = add i32 %16, 64
  %18 = getelementptr inbounds %struct.stm32_mdma_device, ptr %10, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %17
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %13
  %24 = load i32, ptr %14, align 4
  %25 = shl i32 %24, 6
  %26 = add i32 %25, 68
  %27 = load ptr, ptr %18, align 4
  %28 = getelementptr i8, ptr %27, i32 %26
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !15
  %30 = or i32 %29, %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %30) #9, !srcloc !16
  br label %31

31:                                               ; preds = %23, %13
  store i8 0, ptr %4, align 4
  br label %32

32:                                               ; preds = %31, %7
  %33 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 3
  store ptr null, ptr %33, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #9
  br label %34

34:                                               ; preds = %32, %1
  %35 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @__pm_runtime_idle(ptr noundef %36, i32 noundef 5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store ptr %2, ptr %2, align 8
  %38 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %40 = call i32 @_raw_spin_lock_irqsave(ptr noundef %39) #9
  %41 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  %45 = load ptr, ptr %38, align 4
  %46 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %45, ptr %48, align 4
  store ptr %42, ptr %45, align 4
  store ptr %2, ptr %47, align 4
  store ptr %47, ptr %38, align 4
  store volatile ptr %41, ptr %41, align 4
  store ptr %41, ptr %46, align 4
  br label %49

49:                                               ; preds = %44, %34
  %50 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %38, align 4
  %55 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %54, ptr %57, align 4
  store ptr %51, ptr %54, align 4
  store ptr %2, ptr %56, align 4
  store ptr %56, ptr %38, align 4
  store volatile ptr %50, ptr %50, align 4
  store ptr %50, ptr %55, align 4
  br label %58

58:                                               ; preds = %53, %49
  %59 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %60 = load volatile ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %59
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %38, align 4
  %64 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %63, ptr %66, align 4
  store ptr %60, ptr %63, align 4
  store ptr %2, ptr %65, align 4
  store ptr %65, ptr %38, align 4
  store volatile ptr %59, ptr %59, align 4
  store ptr %59, ptr %64, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %38, align 4
  %73 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %72, ptr %75, align 4
  store ptr %69, ptr %72, align 4
  store ptr %2, ptr %74, align 4
  store ptr %74, ptr %38, align 4
  store volatile ptr %68, ptr %68, align 4
  store ptr %68, ptr %73, align 4
  br label %76

76:                                               ; preds = %71, %67
  %77 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %78 = load volatile ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %77
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %38, align 4
  %82 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  store ptr %81, ptr %84, align 4
  store ptr %78, ptr %81, align 4
  store ptr %2, ptr %83, align 4
  store ptr %83, ptr %38, align 4
  store volatile ptr %77, ptr %77, align 4
  store ptr %77, ptr %82, align 4
  br label %85

85:                                               ; preds = %80, %76
  %86 = load ptr, ptr %2, align 8
  %87 = icmp eq ptr %86, %2
  br i1 %87, label %95, label %88

88:                                               ; preds = %88, %85
  %89 = phi ptr [ %93, %88 ], [ %86, %85 ]
  %90 = getelementptr i8, ptr %89, i32 -64
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, -65
  store i32 %92, ptr %90, align 4
  %93 = load ptr, ptr %89, align 4
  %94 = icmp eq ptr %93, %2
  br i1 %94, label %95, label %88

95:                                               ; preds = %88, %85
  call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %40) #9
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  %96 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  call void @dmam_pool_destroy(ptr noundef %97) #9
  store ptr null, ptr %96, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_mdma_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
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
  br i1 %19, label %123, label %25

21:                                               ; preds = %13
  %22 = and i1 %16, %15
  %23 = or i1 %22, %8
  %24 = xor i1 %22, true
  br i1 %23, label %123, label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #9
  %28 = tail call ptr @vchan_find_desc(ptr noundef %0, i32 noundef %1) #9
  %29 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %78, label %32

32:                                               ; preds = %25
  %33 = load i32, ptr %30, align 4
  %34 = icmp eq i32 %33, %1
  br i1 %34, label %35, label %78

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %30, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %37, 1
  %42 = icmp ult i32 %41, %40
  br i1 %42, label %43, label %54

43:                                               ; preds = %43, %35
  %44 = phi i32 [ %52, %43 ], [ %41, %35 ]
  %45 = phi i32 [ %51, %43 ], [ 0, %35 ]
  %46 = getelementptr %struct.stm32_mdma_desc, ptr %30, i32 0, i32 4, i32 %44
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 131071
  %51 = add i32 %50, %45
  %52 = add i32 %44, 1
  %53 = icmp eq i32 %52, %40
  br i1 %53, label %54, label %43

54:                                               ; preds = %43, %35
  %55 = phi i32 [ 0, %35 ], [ %51, %43 ]
  %56 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = shl i32 %57, 6
  %59 = add i32 %58, 84
  %60 = getelementptr inbounds %struct.stm32_mdma_device, ptr %38, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 %59
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #9, !srcloc !15
  %64 = and i32 %63, 131071
  %65 = add i32 %64, %55
  %66 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 8
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %120, label %69

69:                                               ; preds = %54
  %70 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 9
  %71 = load i32, ptr %70, align 4
  %72 = mul i32 %71, %67
  %73 = urem i32 %65, %72
  %74 = icmp eq i32 %73, 0
  %75 = sub i32 %65, %73
  %76 = add i32 %75, %72
  %77 = select i1 %74, i32 %65, i32 %76
  br label %120

78:                                               ; preds = %32, %25
  %79 = icmp eq ptr %28, null
  br i1 %79, label %120, label %80

80:                                               ; preds = %78
  %81 = load ptr, ptr %0, align 4
  %82 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %28, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = icmp ugt i32 %83, 1
  br i1 %84, label %85, label %96

85:                                               ; preds = %85, %80
  %86 = phi i32 [ %94, %85 ], [ 1, %80 ]
  %87 = phi i32 [ %93, %85 ], [ 0, %80 ]
  %88 = getelementptr %struct.stm32_mdma_desc, ptr %28, i32 0, i32 4, i32 %86
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %89, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 131071
  %93 = add i32 %92, %87
  %94 = add nuw i32 %86, 1
  %95 = icmp eq i32 %94, %83
  br i1 %95, label %96, label %85

96:                                               ; preds = %85, %80
  %97 = phi i32 [ 0, %80 ], [ %93, %85 ]
  %98 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = shl i32 %99, 6
  %101 = add i32 %100, 84
  %102 = getelementptr inbounds %struct.stm32_mdma_device, ptr %81, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr i8, ptr %103, i32 %101
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #9, !srcloc !15
  %106 = and i32 %105, 131071
  %107 = add i32 %106, %97
  %108 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 8
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %96
  %112 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 9
  %113 = load i32, ptr %112, align 4
  %114 = mul i32 %113, %109
  %115 = urem i32 %107, %114
  %116 = icmp eq i32 %115, 0
  %117 = sub i32 %107, %115
  %118 = add i32 %117, %114
  %119 = select i1 %116, i32 %107, i32 %118
  br label %120

120:                                              ; preds = %111, %96, %78, %69, %54
  %121 = phi i32 [ 0, %78 ], [ %77, %69 ], [ %65, %54 ], [ %119, %111 ], [ %107, %96 ]
  %122 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %121, ptr %122, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #9
  br label %123

123:                                              ; preds = %120, %21, %17
  %124 = phi i1 [ true, %120 ], [ %20, %17 ], [ %24, %21 ]
  %125 = zext i1 %124 to i32
  ret i32 %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_mdma_issue_pending(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
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
  %18 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 7
  %23 = load i8, ptr %22, align 4, !range !14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call fastcc void @stm32_mdma_start_transfer(ptr noundef %0)
  br label %26

26:                                               ; preds = %25, %21, %17, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @stm32_mdma_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %11, i32 0, i32 2
  %15 = load i8, ptr %14, align 4, !range !14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dma_chan_dev, ptr %19, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.13) #10
  br label %159

21:                                               ; preds = %13, %6
  %22 = tail call fastcc ptr @stm32_mdma_alloc_desc(ptr noundef %0, i32 noundef %2)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %159, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4, !annotation !8
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %129, label %27

27:                                               ; preds = %24
  %28 = icmp eq i32 %3, 1
  %29 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 5, i32 1
  %30 = getelementptr inbounds %struct.stm32_mdma_device, ptr %25, i32 0, i32 6
  %31 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 5, i32 2
  %32 = add i32 %2, -1
  %33 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 6, i32 3
  %34 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 6, i32 4
  br label %35

35:                                               ; preds = %115, %27
  %36 = phi i32 [ 0, %27 ], [ %95, %115 ]
  %37 = phi ptr [ %1, %27 ], [ %118, %115 ]
  %38 = getelementptr inbounds %struct.scatterlist, ptr %37, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, 65536
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dma_chan_dev, ptr %43, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.15) #10
  br label %123

45:                                               ; preds = %35
  br i1 %28, label %46, label %66

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.scatterlist, ptr %37, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr %31, align 4
  %50 = call fastcc i32 @stm32_mdma_set_xfer_param(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %48, i32 noundef %39) #9
  %51 = load i32, ptr %9, align 4
  %52 = and i32 %51, -65537
  store i32 %52, ptr %9, align 4
  %53 = and i32 %48, -268435456
  %54 = load i32, ptr %30, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %86, label %59

56:                                               ; preds = %59
  %57 = add nuw i32 %60, 1
  %58 = icmp eq i32 %57, %54
  br i1 %58, label %86, label %59

59:                                               ; preds = %56, %46
  %60 = phi i32 [ %57, %56 ], [ 0, %46 ]
  %61 = getelementptr %struct.stm32_mdma_device, ptr %25, i32 0, i32 8, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %53, %62
  br i1 %63, label %64, label %56

64:                                               ; preds = %59
  %65 = or i32 %51, 65536
  store i32 %65, ptr %9, align 4
  br label %86

66:                                               ; preds = %45
  %67 = load i32, ptr %29, align 4
  %68 = getelementptr inbounds %struct.scatterlist, ptr %37, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = call fastcc i32 @stm32_mdma_set_xfer_param(ptr noundef %0, i32 noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %69, i32 noundef %39) #9
  %71 = load i32, ptr %9, align 4
  %72 = and i32 %71, -131073
  store i32 %72, ptr %9, align 4
  %73 = and i32 %69, -268435456
  %74 = load i32, ptr %30, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %86, label %79

76:                                               ; preds = %79
  %77 = add nuw i32 %80, 1
  %78 = icmp eq i32 %77, %74
  br i1 %78, label %86, label %79

79:                                               ; preds = %76, %66
  %80 = phi i32 [ %77, %76 ], [ 0, %66 ]
  %81 = getelementptr %struct.stm32_mdma_device, ptr %25, i32 0, i32 8, i32 %80
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %73, %82
  br i1 %83, label %84, label %76

84:                                               ; preds = %79
  %85 = or i32 %71, 131072
  store i32 %85, ptr %9, align 4
  br label %86

86:                                               ; preds = %84, %76, %66, %64, %56, %46
  %87 = phi i32 [ %52, %46 ], [ %65, %64 ], [ %72, %66 ], [ %85, %84 ], [ %52, %56 ], [ %72, %76 ]
  %88 = phi i32 [ %48, %46 ], [ %48, %64 ], [ %67, %66 ], [ %67, %84 ], [ %48, %56 ], [ %67, %76 ]
  %89 = phi i32 [ %49, %46 ], [ %49, %64 ], [ %69, %66 ], [ %69, %84 ], [ %49, %56 ], [ %69, %76 ]
  %90 = phi i32 [ %50, %46 ], [ %50, %64 ], [ %70, %66 ], [ %70, %84 ], [ %50, %56 ], [ %70, %76 ]
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %123, label %92

92:                                               ; preds = %86
  %93 = load i32, ptr %38, align 4
  %94 = load i32, ptr %8, align 4
  %95 = add nuw i32 %36, 1
  %96 = getelementptr %struct.stm32_mdma_desc, ptr %22, i32 0, i32 4, i32 %36
  %97 = load ptr, ptr %96, align 4
  store i32 %94, ptr %97, align 64
  %98 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %97, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, 131072
  %101 = icmp eq i32 %36, %32
  %102 = and i32 %93, 131071
  %103 = or i32 %100, %102
  store i32 %103, ptr %98, align 4
  %104 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %97, i32 0, i32 2
  store i32 %88, ptr %104, align 8
  %105 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %97, i32 0, i32 3
  store i32 %89, ptr %105, align 4
  %106 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %97, i32 0, i32 4
  store i32 0, ptr %106, align 16
  %107 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %97, i32 0, i32 6
  store i32 %87, ptr %107, align 8
  %108 = load i32, ptr %33, align 4
  %109 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %97, i32 0, i32 8
  store i32 %108, ptr %109, align 32
  %110 = load i32, ptr %34, align 4
  %111 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %97, i32 0, i32 9
  store i32 %110, ptr %111, align 4
  br i1 %101, label %115, label %112

112:                                              ; preds = %92
  %113 = getelementptr %struct.stm32_mdma_desc, ptr %22, i32 0, i32 4, i32 %95, i32 1
  %114 = load i32, ptr %113, align 4
  br label %115

115:                                              ; preds = %112, %92
  %116 = phi i32 [ %114, %112 ], [ 0, %92 ]
  %117 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %97, i32 0, i32 5
  store i32 %116, ptr %117, align 4
  %118 = tail call ptr @sg_next(ptr noundef %37) #9
  %119 = icmp eq i32 %95, %2
  br i1 %119, label %120, label %35

120:                                              ; preds = %115
  %121 = load i32, ptr %7, align 4
  %122 = and i32 %121, -63
  br label %129

123:                                              ; preds = %86, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  %124 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %22, i32 0, i32 3
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %158, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 1
  br label %148

129:                                              ; preds = %120, %24
  %130 = phi i32 [ %122, %120 ], [ 0, %24 ]
  %131 = icmp ugt i32 %2, 1
  %132 = select i1 %131, i32 22, i32 6
  %133 = or i32 %130, %132
  %134 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %22, i32 0, i32 1
  store i32 %133, ptr %134, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  %135 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %22, i32 0, i32 2
  store i8 0, ptr %135, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %22, ptr noundef %0) #9
  %136 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 1
  store i32 %4, ptr %136, align 4
  %137 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %137, align 4
  %138 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %138, align 4
  %139 = getelementptr inbounds %struct.virt_dma_desc, ptr %22, i32 0, i32 1
  store i32 0, ptr %139, align 4
  %140 = getelementptr inbounds %struct.virt_dma_desc, ptr %22, i32 0, i32 1, i32 1
  store i32 0, ptr %140, align 4
  %141 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %142 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %141) #9
  %143 = getelementptr inbounds %struct.virt_dma_desc, ptr %22, i32 0, i32 2
  %144 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %145 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %146 = load ptr, ptr %145, align 4
  store ptr %143, ptr %145, align 4
  store ptr %144, ptr %143, align 4
  %147 = getelementptr inbounds %struct.virt_dma_desc, ptr %22, i32 0, i32 2, i32 1
  store ptr %146, ptr %147, align 4
  store volatile ptr %143, ptr %146, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %141, i32 noundef %142) #9
  br label %159

148:                                              ; preds = %148, %127
  %149 = phi i32 [ 0, %127 ], [ %155, %148 ]
  %150 = load ptr, ptr %128, align 4
  %151 = getelementptr %struct.stm32_mdma_desc, ptr %22, i32 0, i32 4, i32 %149
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr %struct.stm32_mdma_desc, ptr %22, i32 0, i32 4, i32 %149, i32 1
  %154 = load i32, ptr %153, align 4
  tail call void @dma_pool_free(ptr noundef %150, ptr noundef %152, i32 noundef %154) #9
  %155 = add nuw i32 %149, 1
  %156 = load i32, ptr %124, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %148, label %158

158:                                              ; preds = %148, %123
  tail call void @kfree(ptr noundef nonnull %22) #9
  br label %159

159:                                              ; preds = %158, %129, %21, %17
  %160 = phi ptr [ null, %17 ], [ null, %158 ], [ %22, %129 ], [ null, %21 ]
  ret ptr %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @stm32_mdma_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %12, i32 0, i32 2
  %16 = load i8, ptr %15, align 4, !range !14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dma_chan_dev, ptr %20, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.13) #10
  br label %166

22:                                               ; preds = %14, %6
  %23 = icmp eq i32 %2, 0
  %24 = add i32 %3, -65537
  %25 = icmp ult i32 %24, -65536
  %26 = or i1 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dma_chan_dev, ptr %29, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.20) #10
  br label %166

31:                                               ; preds = %22
  %32 = udiv i32 %2, %3
  %33 = mul i32 %32, %3
  %34 = sub i32 %2, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dma_chan_dev, ptr %38, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.21) #10
  br label %166

40:                                               ; preds = %31
  %41 = tail call fastcc ptr @stm32_mdma_alloc_desc(ptr noundef %0, i32 noundef %32)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %166, label %43

43:                                               ; preds = %40
  %44 = icmp eq i32 %4, 1
  br i1 %44, label %45, label %63

45:                                               ; preds = %43
  %46 = call fastcc i32 @stm32_mdma_set_xfer_param(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %1, i32 noundef %3)
  %47 = load i32, ptr %9, align 4
  %48 = and i32 %47, -65537
  %49 = and i32 %1, -268435456
  %50 = getelementptr inbounds %struct.stm32_mdma_device, ptr %10, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %81, label %56

53:                                               ; preds = %56
  %54 = add nuw i32 %57, 1
  %55 = icmp eq i32 %54, %51
  br i1 %55, label %81, label %56

56:                                               ; preds = %53, %45
  %57 = phi i32 [ %54, %53 ], [ 0, %45 ]
  %58 = getelementptr %struct.stm32_mdma_device, ptr %10, i32 0, i32 8, i32 %57
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %49, %59
  br i1 %60, label %61, label %53

61:                                               ; preds = %56
  %62 = or i32 %47, 65536
  store i32 %62, ptr %9, align 4
  br label %81

63:                                               ; preds = %43
  %64 = call fastcc i32 @stm32_mdma_set_xfer_param(ptr noundef %0, i32 noundef %4, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %1, i32 noundef %3)
  %65 = load i32, ptr %9, align 4
  %66 = and i32 %65, -131073
  %67 = and i32 %1, -268435456
  %68 = getelementptr inbounds %struct.stm32_mdma_device, ptr %10, i32 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %81, label %74

71:                                               ; preds = %74
  %72 = add nuw i32 %75, 1
  %73 = icmp eq i32 %72, %69
  br i1 %73, label %81, label %74

74:                                               ; preds = %71, %63
  %75 = phi i32 [ %72, %71 ], [ 0, %63 ]
  %76 = getelementptr %struct.stm32_mdma_device, ptr %10, i32 0, i32 8, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %67, %77
  br i1 %78, label %79, label %71

79:                                               ; preds = %74
  %80 = or i32 %65, 131072
  store i32 %80, ptr %9, align 4
  br label %81

81:                                               ; preds = %79, %71, %63, %61, %53, %45
  %82 = phi i32 [ %48, %45 ], [ %62, %61 ], [ %66, %63 ], [ %80, %79 ], [ %48, %53 ], [ %66, %71 ]
  %83 = phi i32 [ %46, %45 ], [ %46, %61 ], [ %64, %63 ], [ %64, %79 ], [ %46, %53 ], [ %64, %71 ]
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %41, i32 0, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %165, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 1
  br label %155

91:                                               ; preds = %81
  %92 = load i32, ptr %7, align 4
  %93 = and i32 %92, -63
  %94 = or i32 %93, 22
  store i32 %94, ptr %7, align 4
  %95 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %41, i32 0, i32 1
  store i32 %94, ptr %95, align 4
  %96 = icmp ugt i32 %3, %2
  br i1 %96, label %141, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 5, i32 1
  %99 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 5, i32 2
  %100 = load i32, ptr %8, align 4
  %101 = add i32 %32, -1
  %102 = and i32 %3, 131071
  %103 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 6, i32 3
  %104 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 6, i32 4
  %105 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %41, i32 1, i32 0, i32 0, i32 1
  %106 = call i32 @llvm.umax.i32(i32 %32, i32 1)
  br label %107

107:                                              ; preds = %117, %97
  %108 = phi i32 [ 0, %97 ], [ %125, %117 ]
  br i1 %44, label %109, label %113

109:                                              ; preds = %107
  %110 = mul i32 %108, %3
  %111 = add i32 %110, %1
  %112 = load i32, ptr %99, align 4
  br label %117

113:                                              ; preds = %107
  %114 = load i32, ptr %98, align 4
  %115 = mul i32 %108, %3
  %116 = add i32 %115, %1
  br label %117

117:                                              ; preds = %113, %109
  %118 = phi i32 [ %111, %109 ], [ %114, %113 ]
  %119 = phi i32 [ %112, %109 ], [ %116, %113 ]
  %120 = getelementptr %struct.stm32_mdma_desc, ptr %41, i32 0, i32 4, i32 %108
  %121 = load ptr, ptr %120, align 4
  store i32 %100, ptr %121, align 64
  %122 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %121, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, 131072
  %125 = add nuw i32 %108, 1
  %126 = icmp eq i32 %108, %101
  %127 = or i32 %124, %102
  store i32 %127, ptr %122, align 4
  %128 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %121, i32 0, i32 2
  store i32 %118, ptr %128, align 8
  %129 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %121, i32 0, i32 3
  store i32 %119, ptr %129, align 4
  %130 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %121, i32 0, i32 4
  store i32 0, ptr %130, align 16
  %131 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %121, i32 0, i32 6
  store i32 %82, ptr %131, align 8
  %132 = load i32, ptr %103, align 4
  %133 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %121, i32 0, i32 8
  store i32 %132, ptr %133, align 32
  %134 = load i32, ptr %104, align 4
  %135 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %121, i32 0, i32 9
  store i32 %134, ptr %135, align 4
  %136 = getelementptr %struct.stm32_mdma_desc, ptr %41, i32 0, i32 4, i32 %125, i32 1
  %137 = select i1 %126, ptr %105, ptr %136
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %121, i32 0, i32 5
  store i32 %138, ptr %139, align 4
  %140 = icmp eq i32 %125, %106
  br i1 %140, label %141, label %107

141:                                              ; preds = %117, %91
  %142 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %41, i32 0, i32 2
  store i8 1, ptr %142, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %41, ptr noundef %0) #9
  %143 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %41, i32 0, i32 1
  store i32 %5, ptr %143, align 4
  %144 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %41, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %144, align 4
  %145 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %41, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %145, align 4
  %146 = getelementptr inbounds %struct.virt_dma_desc, ptr %41, i32 0, i32 1
  store i32 0, ptr %146, align 4
  %147 = getelementptr inbounds %struct.virt_dma_desc, ptr %41, i32 0, i32 1, i32 1
  store i32 0, ptr %147, align 4
  %148 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %149 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %148) #9
  %150 = getelementptr inbounds %struct.virt_dma_desc, ptr %41, i32 0, i32 2
  %151 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %152 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %153 = load ptr, ptr %152, align 4
  store ptr %150, ptr %152, align 4
  store ptr %151, ptr %150, align 4
  %154 = getelementptr inbounds %struct.virt_dma_desc, ptr %41, i32 0, i32 2, i32 1
  store ptr %153, ptr %154, align 4
  store volatile ptr %150, ptr %153, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %148, i32 noundef %149) #9
  br label %166

155:                                              ; preds = %155, %89
  %156 = phi i32 [ 0, %89 ], [ %162, %155 ]
  %157 = load ptr, ptr %90, align 4
  %158 = getelementptr %struct.stm32_mdma_desc, ptr %41, i32 0, i32 4, i32 %156
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr %struct.stm32_mdma_desc, ptr %41, i32 0, i32 4, i32 %156, i32 1
  %161 = load i32, ptr %160, align 4
  tail call void @dma_pool_free(ptr noundef %157, ptr noundef %159, i32 noundef %161) #9
  %162 = add nuw i32 %156, 1
  %163 = load i32, ptr %86, align 4
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %155, label %165

165:                                              ; preds = %155, %85
  tail call void @kfree(ptr noundef nonnull %41) #9
  br label %166

166:                                              ; preds = %165, %141, %40, %36, %27, %18
  %167 = phi ptr [ null, %18 ], [ null, %27 ], [ null, %36 ], [ null, %165 ], [ %41, %141 ], [ null, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  ret ptr %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @stm32_mdma_prep_dma_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %8, i32 0, i32 2
  %12 = load i8, ptr %11, align 4, !range !14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.13) #10
  br label %310

18:                                               ; preds = %10, %5
  %19 = add i32 %3, 65535
  %20 = lshr i32 %19, 16
  %21 = tail call fastcc ptr @stm32_mdma_alloc_desc(ptr noundef %0, i32 noundef %20)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %310, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 6
  %27 = add i32 %26, 76
  %28 = getelementptr inbounds %struct.stm32_mdma_device, ptr %6, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 %27
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !15
  %32 = load i32, ptr %24, align 4
  %33 = shl i32 %32, 6
  %34 = add i32 %33, 80
  %35 = load ptr, ptr %28, align 4
  %36 = getelementptr i8, ptr %35, i32 %34
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !15
  %38 = load i32, ptr %24, align 4
  %39 = shl i32 %38, 6
  %40 = add i32 %39, 104
  %41 = load ptr, ptr %28, align 4
  %42 = getelementptr i8, ptr %41, i32 %40
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !15
  %44 = load i32, ptr %24, align 4
  %45 = shl i32 %44, 6
  %46 = add i32 %45, 84
  %47 = load ptr, ptr %28, align 4
  %48 = getelementptr i8, ptr %47, i32 %46
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #9, !srcloc !15
  %50 = and i32 %31, -28927
  %51 = and i32 %43, -65600
  %52 = and i32 %2, -268435456
  %53 = getelementptr inbounds %struct.stm32_mdma_device, ptr %6, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %23
  %57 = and i32 %43, -196672
  br label %82

58:                                               ; preds = %61
  %59 = add nuw i32 %62, 1
  %60 = icmp eq i32 %59, %54
  br i1 %60, label %68, label %61

61:                                               ; preds = %58, %23
  %62 = phi i32 [ %59, %58 ], [ 0, %23 ]
  %63 = getelementptr %struct.stm32_mdma_device, ptr %6, i32 0, i32 8, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %52, %64
  br i1 %65, label %66, label %58

66:                                               ; preds = %61
  %67 = or i32 %51, 65536
  br label %68

68:                                               ; preds = %66, %58
  %69 = phi i32 [ %67, %66 ], [ %51, %58 ]
  %70 = and i32 %69, -131073
  %71 = and i32 %1, -268435456
  br label %75

72:                                               ; preds = %75
  %73 = add nuw i32 %76, 1
  %74 = icmp eq i32 %73, %54
  br i1 %74, label %82, label %75

75:                                               ; preds = %72, %68
  %76 = phi i32 [ %73, %72 ], [ 0, %68 ]
  %77 = getelementptr %struct.stm32_mdma_device, ptr %6, i32 0, i32 8, i32 %76
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %71, %78
  br i1 %79, label %80, label %72

80:                                               ; preds = %75
  %81 = or i32 %69, 131072
  br label %82

82:                                               ; preds = %80, %72, %56
  %83 = phi i32 [ %81, %80 ], [ %57, %56 ], [ %70, %72 ]
  %84 = icmp ult i32 %3, 65537
  br i1 %84, label %157, label %85

85:                                               ; preds = %82
  %86 = or i32 %3, %2
  %87 = and i32 %86, 7
  %88 = icmp eq i32 %87, 0
  %89 = or i32 %3, 128
  %90 = tail call i32 @llvm.cttz.i32(i32 %89, i1 true) #9, !range !18
  %91 = shl nuw i32 1, %90
  %92 = and i32 %86, 3
  %93 = icmp eq i32 %92, 0
  %94 = and i32 %86, 1
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 2, i32 1
  %97 = or i32 %3, %1
  %98 = and i32 %97, 7
  %99 = icmp eq i32 %98, 0
  %100 = and i32 %97, 3
  %101 = icmp eq i32 %100, 0
  %102 = and i32 %97, 1
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, i32 2, i32 1
  %105 = add nsw i32 %20, -1
  %106 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 6, i32 3
  %107 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 6, i32 4
  %108 = select i1 %93, i32 4, i32 %96
  %109 = select i1 %88, i32 8, i32 %108
  %110 = tail call i32 @llvm.cttz.i32(i32 %109, i1 true) #9, !range !18
  %111 = trunc i32 %109 to i8
  %112 = udiv i8 -128, %111
  %113 = zext i8 %112 to i32
  %114 = mul nuw nsw i32 %109, %113
  %115 = tail call i32 @llvm.umin.i32(i32 %91, i32 %114) #9
  %116 = trunc i32 %115 to i16
  %117 = trunc i32 %109 to i16
  %118 = udiv i16 %116, %117
  %119 = zext i16 %118 to i32
  %120 = icmp ult i32 %115, %109
  %121 = select i1 %120, i32 1, i32 %119
  %122 = icmp eq i32 %121, 0
  %123 = tail call i32 @llvm.ctlz.i32(i32 %121, i1 false) #9, !range !19
  %124 = shl nuw nsw i32 %110, 4
  %125 = and i32 %124, 48
  %126 = shl nuw nsw i32 %110, 8
  %127 = and i32 %126, 768
  %128 = select i1 %101, i32 4, i32 %104
  %129 = select i1 %99, i32 8, i32 %128
  %130 = tail call i32 @llvm.cttz.i32(i32 %129, i1 true) #9, !range !18
  %131 = trunc i32 %129 to i8
  %132 = trunc i32 %129 to i16
  %133 = shl nuw nsw i32 %130, 6
  %134 = and i32 %133, 192
  %135 = shl nuw nsw i32 %130, 10
  %136 = and i32 %135, 3072
  %137 = icmp eq i32 %130, %110
  %138 = mul nuw nsw i32 %123, 28672
  %139 = add nuw nsw i32 %138, 28672
  %140 = and i32 %139, 28672
  %141 = select i1 %122, i32 28672, i32 %140
  %142 = udiv i8 -128, %131
  %143 = zext i8 %142 to i32
  %144 = mul nuw nsw i32 %129, %143
  %145 = tail call i32 @llvm.umin.i32(i32 %91, i32 %144) #9
  %146 = icmp ult i32 %145, %129
  %147 = trunc i32 %145 to i16
  %148 = udiv i16 %147, %132
  %149 = zext i16 %148 to i32
  %150 = select i1 %146, i32 1, i32 %149
  %151 = icmp eq i32 %150, 0
  %152 = tail call i32 @llvm.ctlz.i32(i32 %150, i1 false) #9, !range !18
  %153 = mul nuw nsw i32 %152, 229376
  %154 = add nuw nsw i32 %153, 229376
  %155 = and i32 %154, 229376
  %156 = select i1 %151, i32 229376, i32 %155
  br label %253

157:                                              ; preds = %82
  %158 = and i32 %49, 131072
  %159 = or i32 %158, %3
  %160 = icmp ult i32 %3, 129
  %161 = select i1 %160, i32 1107034122, i32 1375469578
  %162 = select i1 %160, i32 38, i32 22
  %163 = or i32 %3, %2
  %164 = and i32 %163, 7
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %157
  %167 = and i32 %163, 3
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = and i32 %163, 1
  %171 = icmp eq i32 %170, 0
  %172 = select i1 %171, i32 2, i32 1
  br label %173

173:                                              ; preds = %169, %166, %157
  %174 = phi i32 [ 8, %157 ], [ 4, %166 ], [ %172, %169 ]
  %175 = tail call i32 @llvm.cttz.i32(i32 %174, i1 true) #9, !range !18
  %176 = or i32 %3, 128
  %177 = tail call i32 @llvm.cttz.i32(i32 %176, i1 true) #9, !range !18
  %178 = shl nuw i32 1, %177
  %179 = trunc i32 %174 to i8
  %180 = udiv i8 -128, %179
  %181 = zext i8 %180 to i32
  %182 = mul nuw nsw i32 %174, %181
  %183 = tail call i32 @llvm.umin.i32(i32 %178, i32 %182) #9
  %184 = icmp ult i32 %183, %174
  %185 = trunc i32 %183 to i16
  %186 = trunc i32 %174 to i16
  %187 = udiv i16 %185, %186
  %188 = zext i16 %187 to i32
  %189 = select i1 %184, i32 1, i32 %188
  %190 = icmp eq i32 %189, 0
  %191 = tail call i32 @llvm.ctlz.i32(i32 %189, i1 false) #9, !range !18
  %192 = mul nuw nsw i32 %191, 28672
  %193 = add nuw nsw i32 %192, 28672
  %194 = and i32 %193, 28672
  %195 = select i1 %190, i32 28672, i32 %194
  %196 = shl nuw nsw i32 %175, 4
  %197 = and i32 %196, 48
  %198 = shl nuw nsw i32 %175, 8
  %199 = and i32 %198, 768
  %200 = or i32 %3, %1
  %201 = and i32 %200, 7
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %210, label %203

203:                                              ; preds = %173
  %204 = and i32 %200, 3
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %203
  %207 = and i32 %200, 1
  %208 = icmp eq i32 %207, 0
  %209 = select i1 %208, i32 2, i32 1
  br label %210

210:                                              ; preds = %206, %203, %173
  %211 = phi i32 [ 8, %173 ], [ 4, %203 ], [ %209, %206 ]
  %212 = tail call i32 @llvm.cttz.i32(i32 %211, i1 true) #9, !range !18
  %213 = trunc i32 %211 to i8
  %214 = udiv i8 -128, %213
  %215 = zext i8 %214 to i32
  %216 = mul nuw nsw i32 %211, %215
  %217 = tail call i32 @llvm.umin.i32(i32 %178, i32 %216) #9
  %218 = icmp ult i32 %217, %211
  %219 = trunc i32 %217 to i16
  %220 = trunc i32 %211 to i16
  %221 = udiv i16 %219, %220
  %222 = zext i16 %221 to i32
  %223 = select i1 %218, i32 1, i32 %222
  %224 = icmp eq i32 %223, 0
  %225 = tail call i32 @llvm.ctlz.i32(i32 %223, i1 false) #9, !range !18
  %226 = mul nuw nsw i32 %225, 229376
  %227 = add nuw nsw i32 %226, 229376
  %228 = and i32 %227, 229376
  %229 = select i1 %224, i32 229376, i32 %228
  %230 = shl nuw nsw i32 %212, 6
  %231 = and i32 %230, 192
  %232 = shl nuw nsw i32 %212, 10
  %233 = and i32 %232, 3072
  %234 = or i32 %197, %161
  %235 = or i32 %234, %199
  %236 = or i32 %235, %195
  %237 = or i32 %236, %231
  %238 = or i32 %237, %233
  %239 = or i32 %238, %229
  %240 = icmp eq i32 %212, %175
  %241 = or i32 %239, 33554432
  %242 = select i1 %240, i32 %239, i32 %241
  %243 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %21, i32 0, i32 4
  %244 = load ptr, ptr %243, align 4
  store i32 %242, ptr %244, align 64
  %245 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %244, i32 0, i32 1
  store i32 %159, ptr %245, align 4
  %246 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %244, i32 0, i32 2
  store i32 %2, ptr %246, align 8
  %247 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %244, i32 0, i32 3
  store i32 %1, ptr %247, align 4
  %248 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %244, i32 0, i32 4
  store i32 0, ptr %248, align 16
  %249 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %244, i32 0, i32 5
  store i32 0, ptr %249, align 4
  %250 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %244, i32 0, i32 6
  store i32 %83, ptr %250, align 8
  %251 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %244, i32 0, i32 8
  store i32 0, ptr %251, align 32
  %252 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %244, i32 0, i32 9
  store i32 0, ptr %252, align 4
  br label %293

253:                                              ; preds = %288, %85
  %254 = phi i32 [ 1912340490, %85 ], [ %266, %288 ]
  %255 = phi i32 [ 0, %85 ], [ %291, %288 ]
  %256 = phi i32 [ 0, %85 ], [ %270, %288 ]
  %257 = sub i32 %3, %255
  %258 = tail call i32 @llvm.umin.i32(i32 %257, i32 65536)
  %259 = or i32 %125, %254
  %260 = or i32 %259, %127
  %261 = or i32 %260, %141
  %262 = or i32 %261, %134
  %263 = or i32 %262, %136
  %264 = or i32 %263, %156
  %265 = or i32 %264, 33554432
  %266 = select i1 %137, i32 %264, i32 %265
  %267 = add i32 %255, %2
  %268 = add i32 %255, %1
  %269 = icmp eq i32 %256, %105
  %270 = add i32 %256, 1
  %271 = getelementptr %struct.stm32_mdma_desc, ptr %21, i32 0, i32 4, i32 %256
  %272 = load ptr, ptr %271, align 4
  store i32 %266, ptr %272, align 64
  %273 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %272, i32 0, i32 1
  %274 = load i32, ptr %273, align 4
  %275 = and i32 %274, 131072
  %276 = or i32 %275, %258
  store i32 %276, ptr %273, align 4
  %277 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %272, i32 0, i32 2
  store i32 %267, ptr %277, align 8
  %278 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %272, i32 0, i32 3
  store i32 %268, ptr %278, align 4
  %279 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %272, i32 0, i32 4
  store i32 0, ptr %279, align 16
  %280 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %272, i32 0, i32 6
  store i32 %83, ptr %280, align 8
  %281 = load i32, ptr %106, align 4
  %282 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %272, i32 0, i32 8
  store i32 %281, ptr %282, align 32
  %283 = load i32, ptr %107, align 4
  %284 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %272, i32 0, i32 9
  store i32 %283, ptr %284, align 4
  br i1 %269, label %288, label %285

285:                                              ; preds = %253
  %286 = getelementptr %struct.stm32_mdma_desc, ptr %21, i32 0, i32 4, i32 %270, i32 1
  %287 = load i32, ptr %286, align 4
  br label %288

288:                                              ; preds = %285, %253
  %289 = phi i32 [ %287, %285 ], [ 0, %253 ]
  %290 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %272, i32 0, i32 5
  store i32 %289, ptr %290, align 4
  %291 = add i32 %258, %255
  %292 = icmp ult i32 %291, %3
  br i1 %292, label %253, label %293

293:                                              ; preds = %288, %210
  %294 = phi i32 [ %162, %210 ], [ 22, %288 ]
  %295 = or i32 %294, %50
  %296 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %21, i32 0, i32 1
  store i32 %295, ptr %296, align 4
  %297 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %21, i32 0, i32 2
  store i8 0, ptr %297, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %21, ptr noundef %0) #9
  %298 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %21, i32 0, i32 1
  store i32 %4, ptr %298, align 4
  %299 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %21, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %299, align 4
  %300 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %21, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %300, align 4
  %301 = getelementptr inbounds %struct.virt_dma_desc, ptr %21, i32 0, i32 1
  store i32 0, ptr %301, align 4
  %302 = getelementptr inbounds %struct.virt_dma_desc, ptr %21, i32 0, i32 1, i32 1
  store i32 0, ptr %302, align 4
  %303 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %304 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %303) #9
  %305 = getelementptr inbounds %struct.virt_dma_desc, ptr %21, i32 0, i32 2
  %306 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %307 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %308 = load ptr, ptr %307, align 4
  store ptr %305, ptr %307, align 4
  store ptr %306, ptr %305, align 4
  %309 = getelementptr inbounds %struct.virt_dma_desc, ptr %21, i32 0, i32 2, i32 1
  store ptr %308, ptr %309, align 4
  store volatile ptr %305, ptr %308, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %303, i32 noundef %304) #9
  br label %310

310:                                              ; preds = %293, %18, %14
  %311 = phi ptr [ null, %14 ], [ %21, %293 ], [ null, %18 ]
  ret ptr %311
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_mdma_slave_config(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %3, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_mdma_pause(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %4 = tail call fastcc i32 @stm32_mdma_disable_chan(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_mdma_resume(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.stm32_mdma_desc, ptr %4, i32 0, i32 4, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #9
  %11 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 6
  %14 = add i32 %13, 76
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.stm32_mdma_device, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %17) #9, !srcloc !16
  %21 = load i32, ptr %11, align 4
  %22 = shl i32 %21, 6
  %23 = add i32 %22, 64
  %24 = load ptr, ptr %18, align 4
  %25 = getelementptr i8, ptr %24, i32 %23
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %1
  %29 = load i32, ptr %11, align 4
  %30 = shl i32 %29, 6
  %31 = add i32 %30, 68
  %32 = load ptr, ptr %18, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !15
  %35 = or i32 %34, %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %35) #9, !srcloc !16
  br label %36

36:                                               ; preds = %28, %1
  %37 = load i32, ptr %11, align 4
  %38 = shl i32 %37, 6
  %39 = add i32 %38, 76
  %40 = load ptr, ptr %18, align 4
  %41 = getelementptr i8, ptr %40, i32 %39
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !15
  %43 = or i32 %42, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %43) #9, !srcloc !16
  %44 = load i32, ptr %8, align 64
  %45 = and i32 %44, 1073741824
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %36
  %48 = load ptr, ptr %18, align 4
  %49 = getelementptr i8, ptr %48, i32 %39
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !15
  %51 = or i32 %50, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %51) #9, !srcloc !16
  br label %52

52:                                               ; preds = %47, %36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_mdma_terminate_all(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %49, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2
  %13 = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 8
  %14 = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 8, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %12, ptr %14, align 4
  store ptr %13, ptr %12, align 4
  %16 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %12, ptr %15, align 4
  %17 = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  store ptr null, ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %9
  %22 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 7
  %23 = load i8, ptr %22, align 4, !range !14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %0, align 4
  %27 = call fastcc i32 @stm32_mdma_disable_chan(ptr noundef %0) #9
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 6
  %33 = add i32 %32, 64
  %34 = getelementptr inbounds %struct.stm32_mdma_device, ptr %26, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 %33
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %29
  %40 = load i32, ptr %30, align 4
  %41 = shl i32 %40, 6
  %42 = add i32 %41, 68
  %43 = load ptr, ptr %34, align 4
  %44 = getelementptr i8, ptr %43, i32 %42
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !15
  %46 = or i32 %45, %37
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %46) #9, !srcloc !16
  br label %47

47:                                               ; preds = %39, %29
  store i8 0, ptr %22, align 4
  br label %48

48:                                               ; preds = %47, %25, %21
  store ptr null, ptr %6, align 4
  br label %49

49:                                               ; preds = %48, %1
  %50 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %3, align 4
  %55 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %54, ptr %57, align 4
  store ptr %51, ptr %54, align 4
  store ptr %2, ptr %56, align 4
  store ptr %56, ptr %3, align 4
  store volatile ptr %50, ptr %50, align 4
  store ptr %50, ptr %55, align 4
  br label %58

58:                                               ; preds = %53, %49
  %59 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %60 = load volatile ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %59
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %3, align 4
  %64 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %63, ptr %66, align 4
  store ptr %60, ptr %63, align 4
  store ptr %2, ptr %65, align 4
  store ptr %65, ptr %3, align 4
  store volatile ptr %59, ptr %59, align 4
  store ptr %59, ptr %64, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %3, align 4
  %73 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %72, ptr %75, align 4
  store ptr %69, ptr %72, align 4
  store ptr %2, ptr %74, align 4
  store ptr %74, ptr %3, align 4
  store volatile ptr %68, ptr %68, align 4
  store ptr %68, ptr %73, align 4
  br label %76

76:                                               ; preds = %71, %67
  %77 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %78 = load volatile ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %77
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %3, align 4
  %82 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  store ptr %81, ptr %84, align 4
  store ptr %78, ptr %81, align 4
  store ptr %2, ptr %83, align 4
  store ptr %83, ptr %3, align 4
  store volatile ptr %77, ptr %77, align 4
  store ptr %77, ptr %82, align 4
  br label %85

85:                                               ; preds = %80, %76
  %86 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %87 = load volatile ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %86
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %3, align 4
  %91 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  store ptr %90, ptr %93, align 4
  store ptr %87, ptr %90, align 4
  store ptr %2, ptr %92, align 4
  store ptr %92, ptr %3, align 4
  store volatile ptr %86, ptr %86, align 4
  store ptr %86, ptr %91, align 4
  br label %94

94:                                               ; preds = %89, %85
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #9
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_mdma_synchronize(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
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
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_mdma_desc_free(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %7, i32 0, i32 1
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i32 [ 0, %5 ], [ %16, %9 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr %struct.stm32_mdma_desc, ptr %0, i32 0, i32 4, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.stm32_mdma_desc, ptr %0, i32 0, i32 4, i32 %10, i32 1
  %15 = load i32, ptr %14, align 4
  tail call void @dma_pool_free(ptr noundef %11, ptr noundef %13, i32 noundef %15) #9
  %16 = add nuw i32 %10, 1
  %17 = load i32, ptr %2, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %9, label %19

19:                                               ; preds = %9, %1
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_mdma_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.stm32_mdma_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true) #9, !range !18
  br label %17

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %167, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @llvm.cttz.i32(i32 %12, i1 true) #9, !range !18
  %16 = or i32 %15, 32
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi i32 [ %8, %7 ], [ %16, %14 ]
  %19 = getelementptr %struct.stm32_mdma_device, ptr %1, i32 0, i32 7, i32 %18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.22) #10
  br label %167

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.virt_dma_chan, ptr %19, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %25) #9
  %26 = shl nuw nsw i32 %18, 6
  %27 = add nuw nsw i32 %26, 64
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 %27
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !15
  %31 = and i32 %30, -65537
  %32 = add nuw nsw i32 %26, 76
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr i8, ptr %33, i32 %32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !15
  %36 = lshr i32 %35, 1
  %37 = and i32 %36, 31
  %38 = and i32 %37, %30
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  %41 = load i16, ptr %25, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %43 = getelementptr inbounds %struct.dma_chan, ptr %19, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.dma_chan_dev, ptr %44, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.23, i32 noundef %31, i32 noundef %37) #10
  br label %167

46:                                               ; preds = %24
  %47 = add nuw nsw i32 %26, 68
  %48 = and i32 %30, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.dma_chan, ptr %19, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.dma_chan_dev, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %3, align 4
  %55 = add nuw nsw i32 %26, 72
  %56 = getelementptr i8, ptr %54, i32 %55
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.24, i32 noundef %57) #10
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr i8, ptr %58, i32 %47
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #9, !srcloc !15
  %61 = or i32 %60, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %61) #9, !srcloc !16
  %62 = and i32 %30, -65538
  br label %63

63:                                               ; preds = %50, %46
  %64 = phi i32 [ %62, %50 ], [ %31, %46 ]
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %94, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %3, align 4
  %69 = getelementptr i8, ptr %68, i32 %47
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !15
  %71 = or i32 %70, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %71) #9, !srcloc !16
  %72 = and i32 %64, -65539
  %73 = getelementptr %struct.stm32_mdma_device, ptr %1, i32 0, i32 7, i32 %18, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = load i32, ptr %74, align 4
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %77, label %78, !prof !24

77:                                               ; preds = %67
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !25
  unreachable

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %74, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.dma_chan, ptr %80, i32 0, i32 3
  store i32 %75, ptr %81, align 4
  store i32 0, ptr %74, align 4
  %82 = getelementptr inbounds %struct.virt_dma_desc, ptr %74, i32 0, i32 2
  %83 = getelementptr inbounds %struct.virt_dma_chan, ptr %80, i32 0, i32 7
  %84 = getelementptr inbounds %struct.virt_dma_chan, ptr %80, i32 0, i32 7, i32 1
  %85 = load ptr, ptr %84, align 4
  store ptr %82, ptr %84, align 4
  store ptr %83, ptr %82, align 4
  %86 = getelementptr inbounds %struct.virt_dma_desc, ptr %74, i32 0, i32 2, i32 1
  store ptr %85, ptr %86, align 4
  store volatile ptr %82, ptr %85, align 4
  %87 = getelementptr inbounds %struct.virt_dma_chan, ptr %80, i32 0, i32 1, i32 1
  %88 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %87) #9
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = getelementptr inbounds %struct.virt_dma_chan, ptr %80, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %91) #9
  br label %92

92:                                               ; preds = %90, %78
  store ptr null, ptr %73, align 4
  %93 = getelementptr %struct.stm32_mdma_device, ptr %1, i32 0, i32 7, i32 %18, i32 7
  store i8 0, ptr %93, align 4
  tail call fastcc void @stm32_mdma_start_transfer(ptr noundef nonnull %19) #9
  br label %94

94:                                               ; preds = %92, %63
  %95 = phi i32 [ %72, %92 ], [ %64, %63 ]
  %96 = and i32 %95, 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %3, align 4
  %100 = getelementptr i8, ptr %99, i32 %47
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #9, !srcloc !15
  %102 = or i32 %101, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %102) #9, !srcloc !16
  %103 = and i32 %95, -5
  br label %104

104:                                              ; preds = %98, %94
  %105 = phi i32 [ %103, %98 ], [ %95, %94 ]
  %106 = and i32 %105, 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %138, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %3, align 4
  %110 = getelementptr i8, ptr %109, i32 %47
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #9, !srcloc !15
  %112 = or i32 %111, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %112) #9, !srcloc !16
  %113 = and i32 %105, -9
  %114 = getelementptr %struct.stm32_mdma_device, ptr %1, i32 0, i32 7, i32 %18, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 4
  %117 = getelementptr %struct.stm32_mdma_device, ptr %1, i32 0, i32 7, i32 %18, i32 3
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %138, label %120

120:                                              ; preds = %108
  %121 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %118, i32 0, i32 2
  %122 = load i8, ptr %121, align 4, !range !14
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %118, i32 0, i32 3
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %116, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 0, ptr %114, align 4
  br label %129

129:                                              ; preds = %128, %124
  %130 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %118, i32 0, i32 3
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.virt_dma_chan, ptr %131, i32 0, i32 9
  store ptr %118, ptr %132, align 4
  %133 = getelementptr inbounds %struct.virt_dma_chan, ptr %131, i32 0, i32 1, i32 1
  %134 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %133) #9
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.virt_dma_chan, ptr %131, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %137) #9
  br label %138

138:                                              ; preds = %136, %129, %120, %108, %104
  %139 = phi i32 [ %113, %120 ], [ %113, %108 ], [ %105, %104 ], [ %113, %129 ], [ %113, %136 ]
  %140 = and i32 %139, 16
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %138
  %143 = load ptr, ptr %3, align 4
  %144 = getelementptr i8, ptr %143, i32 %47
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #9, !srcloc !15
  %146 = or i32 %145, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %146) #9, !srcloc !16
  %147 = and i32 %139, -17
  br label %148

148:                                              ; preds = %142, %138
  %149 = phi i32 [ %147, %142 ], [ %139, %138 ]
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %164, label %151

151:                                              ; preds = %148
  %152 = load ptr, ptr %3, align 4
  %153 = getelementptr i8, ptr %152, i32 %47
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #9, !srcloc !15
  %155 = or i32 %154, %149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %155) #9, !srcloc !16
  %156 = getelementptr inbounds %struct.dma_chan, ptr %19, i32 0, i32 5
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.dma_chan_dev, ptr %157, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.25, i32 noundef %149) #10
  %159 = and i32 %35, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %151
  %162 = load ptr, ptr %156, align 4
  %163 = getelementptr inbounds %struct.dma_chan_dev, ptr %162, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.26) #10
  br label %164

164:                                              ; preds = %161, %151, %148
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  %165 = load i16, ptr %25, align 4
  %166 = add i16 %165, 1
  store i16 %166, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  br label %167

167:                                              ; preds = %164, %40, %21, %9
  %168 = phi i32 [ 1, %164 ], [ 0, %40 ], [ 0, %21 ], [ 0, %9 ]
  ret i32 %168
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmaenginem_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @stm32_mdma_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 5
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.27) #10
  br label %45

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.stm32_mdma_device, ptr %4, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %13, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.28) #10
  br label %45

28:                                               ; preds = %11
  %29 = icmp ugt i32 %15, 3
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 15
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.29) #10
  br label %45

33:                                               ; preds = %28
  %34 = tail call ptr @dma_get_any_slave_channel(ptr noundef %4) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.30) #10
  br label %45

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %34, i32 0, i32 6
  store i32 %13, ptr %40, align 4
  %41 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %34, i32 0, i32 6, i32 1
  store i32 %15, ptr %41, align 4
  %42 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %34, i32 0, i32 6, i32 2
  store i32 %17, ptr %42, align 4
  %43 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %34, i32 0, i32 6, i32 3
  store i32 %19, ptr %43, align 4
  %44 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %34, i32 0, i32 6, i32 4
  store i32 %21, ptr %44, align 4
  br label %45

45:                                               ; preds = %39, %36, %30, %25, %8
  %46 = phi ptr [ null, %8 ], [ null, %25 ], [ null, %30 ], [ %34, %39 ], [ null, %36 ]
  ret ptr %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_mdma_disable_chan(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 %4, 6
  %6 = add i32 %5, 76
  %7 = getelementptr inbounds %struct.stm32_mdma_device, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !15
  %11 = and i32 %10, -63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #9, !srcloc !16
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 %6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !15
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr i8, ptr %18, i32 %6
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !15
  %21 = and i32 %20, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %21) #9, !srcloc !16
  %22 = tail call i64 @ktime_get() #9
  %23 = add i64 %22, 1000000
  %24 = add i32 %5, 64
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr i8, ptr %25, i32 %24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !15
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %37, %17
  %31 = tail call i64 @ktime_get() #9
  %32 = icmp sgt i64 %31, %23
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr i8, ptr %34, i32 %24
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !15
  br label %44

37:                                               ; preds = %30
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 2147480) #9
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr i8, ptr %39, i32 %24
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !15
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %30, label %44

44:                                               ; preds = %37, %33, %17
  %45 = phi i32 [ %36, %33 ], [ %27, %17 ], [ %41, %37 ]
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dma_chan_dev, ptr %50, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.stm32_mdma_disable_chan) #10
  br label %52

52:                                               ; preds = %48, %44, %1
  %53 = phi i32 [ -16, %48 ], [ 0, %44 ], [ 0, %1 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmam_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_mdma_start_transfer(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  %8 = getelementptr i8, ptr %6, i32 -68
  %9 = icmp eq ptr %8, null
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 3
  store ptr null, ptr %12, align 4
  br label %99

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  %18 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 3
  store ptr %8, ptr %18, align 4
  %19 = getelementptr i8, ptr %6, i32 20
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 4
  store i32 0, ptr %21, align 4
  %22 = shl i32 %4, 6
  %23 = add i32 %22, 76
  %24 = getelementptr i8, ptr %6, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.stm32_mdma_device, ptr %2, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #9, !srcloc !16
  %29 = add i32 %22, 80
  %30 = load i32, ptr %20, align 64
  %31 = load ptr, ptr %26, align 4
  %32 = getelementptr i8, ptr %31, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #9, !srcloc !16
  %33 = add i32 %22, 84
  %34 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %20, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %26, align 4
  %37 = getelementptr i8, ptr %36, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #9, !srcloc !16
  %38 = add i32 %22, 88
  %39 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %20, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = load ptr, ptr %26, align 4
  %42 = getelementptr i8, ptr %41, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #9, !srcloc !16
  %43 = add i32 %22, 92
  %44 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %20, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %26, align 4
  %47 = getelementptr i8, ptr %46, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #9, !srcloc !16
  %48 = add i32 %22, 96
  %49 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %20, i32 0, i32 4
  %50 = load i32, ptr %49, align 16
  %51 = load ptr, ptr %26, align 4
  %52 = getelementptr i8, ptr %51, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #9, !srcloc !16
  %53 = add i32 %22, 100
  %54 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %20, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %26, align 4
  %57 = getelementptr i8, ptr %56, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #9, !srcloc !16
  %58 = add i32 %22, 104
  %59 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %20, i32 0, i32 6
  %60 = load i32, ptr %59, align 8
  %61 = load ptr, ptr %26, align 4
  %62 = getelementptr i8, ptr %61, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #9, !srcloc !16
  %63 = add i32 %22, 112
  %64 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %20, i32 0, i32 8
  %65 = load i32, ptr %64, align 32
  %66 = load ptr, ptr %26, align 4
  %67 = getelementptr i8, ptr %66, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #9, !srcloc !16
  %68 = add i32 %22, 116
  %69 = getelementptr inbounds %struct.stm32_mdma_hwdesc, ptr %20, i32 0, i32 9
  %70 = load i32, ptr %69, align 4
  %71 = load ptr, ptr %26, align 4
  %72 = getelementptr i8, ptr %71, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #9, !srcloc !16
  %73 = add i32 %22, 64
  %74 = load ptr, ptr %26, align 4
  %75 = getelementptr i8, ptr %74, i32 %73
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #9, !srcloc !15
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %13
  %79 = add i32 %22, 68
  %80 = load ptr, ptr %26, align 4
  %81 = getelementptr i8, ptr %80, i32 %79
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #9, !srcloc !15
  %83 = or i32 %82, %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %83) #9, !srcloc !16
  br label %84

84:                                               ; preds = %78, %13
  %85 = load ptr, ptr %26, align 4
  %86 = getelementptr i8, ptr %85, i32 %23
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #9, !srcloc !15
  %88 = or i32 %87, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %88) #9, !srcloc !16
  %89 = load i32, ptr %20, align 64
  %90 = and i32 %89, 1073741824
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %84
  %93 = load ptr, ptr %26, align 4
  %94 = getelementptr i8, ptr %93, i32 %23
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #9, !srcloc !15
  %96 = or i32 %95, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %96) #9, !srcloc !16
  br label %97

97:                                               ; preds = %92, %84
  %98 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 7
  store i8 1, ptr %98, align 4
  br label %99

99:                                               ; preds = %97, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @stm32_mdma_alloc_desc(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 8) #9
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %6 = tail call i32 @llvm.uadd.sat.i32(i32 %5, i32 88) #9
  %7 = select i1 %4, i32 -1, i32 %6
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 2304) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %42, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 1
  br label %14

14:                                               ; preds = %21, %12
  %15 = phi i32 [ 0, %12 ], [ %22, %21 ]
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr %struct.stm32_mdma_desc, ptr %8, i32 0, i32 4, i32 %15
  %18 = getelementptr %struct.stm32_mdma_desc, ptr %8, i32 0, i32 4, i32 %15, i32 1
  %19 = tail call ptr @dma_pool_alloc(ptr noundef %16, i32 noundef 2048, ptr noundef %18) #9
  store ptr %19, ptr %17, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = add nuw i32 %15, 1
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %14

24:                                               ; preds = %21, %10
  %25 = getelementptr inbounds %struct.stm32_mdma_desc, ptr %8, i32 0, i32 3
  store i32 %1, ptr %25, align 4
  br label %42

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dma_chan_dev, ptr %28, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.14) #10
  %30 = add i32 %15, -1
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %41

32:                                               ; preds = %32, %26
  %33 = phi i32 [ %39, %32 ], [ %30, %26 ]
  %34 = load ptr, ptr %13, align 4
  %35 = getelementptr %struct.stm32_mdma_desc, ptr %8, i32 0, i32 4, i32 %33
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr %struct.stm32_mdma_desc, ptr %8, i32 0, i32 4, i32 %33, i32 1
  %38 = load i32, ptr %37, align 4
  tail call void @dma_pool_free(ptr noundef %34, ptr noundef %36, i32 noundef %38) #9
  %39 = add nsw i32 %33, -1
  %40 = icmp sgt i32 %33, 0
  br i1 %40, label %32, label %41

41:                                               ; preds = %32, %26
  tail call void @kfree(ptr noundef nonnull %8) #9
  br label %42

42:                                               ; preds = %41, %24, %2
  %43 = phi ptr [ null, %41 ], [ %8, %24 ], [ null, %2 ]
  ret ptr %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_mdma_set_xfer_param(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) unnamed_addr #2 {
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 5, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 5, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 5, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 5, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 6
  %21 = add i32 %20, 76
  %22 = getelementptr inbounds %struct.stm32_mdma_device, ptr %8, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %21
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !15
  %26 = load i32, ptr %18, align 4
  %27 = shl i32 %26, 6
  %28 = add i32 %27, 80
  %29 = load ptr, ptr %22, align 4
  %30 = getelementptr i8, ptr %29, i32 %28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !15
  %32 = load i32, ptr %18, align 4
  %33 = shl i32 %32, 6
  %34 = add i32 %33, 104
  %35 = load ptr, ptr %22, align 4
  %36 = getelementptr i8, ptr %35, i32 %34
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !15
  %38 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 6, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 18
  %41 = and i32 %40, 255
  %42 = and i32 %31, -1945898768
  %43 = and i32 %39, 805310223
  %44 = or i32 %43, %42
  %45 = shl nuw nsw i32 %41, 18
  %46 = add nuw nsw i32 %45, 33292288
  %47 = and i32 %46, 33292288
  %48 = or i32 %44, %47
  %49 = mul i32 %15, %11
  %50 = icmp ugt i32 %49, 128
  %51 = mul i32 %17, %13
  %52 = icmp ugt i32 %51, 128
  %53 = select i1 %50, i1 true, i1 %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %7
  %55 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.dma_chan_dev, ptr %56, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.16, i32 noundef 128) #10
  br label %289

58:                                               ; preds = %7
  %59 = icmp ne i32 %15, 0
  %60 = tail call i32 @llvm.ctpop.i32(i32 %15) #9, !range !18
  %61 = icmp ugt i32 %60, 1
  %62 = and i1 %59, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = icmp ne i32 %17, 0
  %65 = tail call i32 @llvm.ctpop.i32(i32 %17) #9, !range !18
  %66 = icmp ugt i32 %65, 1
  %67 = and i1 %64, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %63, %58
  %69 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.dma_chan_dev, ptr %70, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.17) #10
  br label %289

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 6, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %25, -94401
  %76 = shl i32 %74, 6
  %77 = and i32 %76, 192
  %78 = or i32 %77, %75
  %79 = load i32, ptr %9, align 4
  %80 = and i32 %37, -64
  %81 = and i32 %79, 63
  %82 = or i32 %81, %80
  switch i32 %1, label %282 [
    i32 1, label %83
    i32 2, label %183
  ]

83:                                               ; preds = %72
  %84 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 5, i32 2
  %85 = load i32, ptr %84, align 4
  switch i32 %13, label %86 [
    i32 1, label %90
    i32 2, label %90
    i32 4, label %90
    i32 8, label %90
  ]

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.dma_chan_dev, ptr %88, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.19, i32 noundef %13) #10
  br label %289

90:                                               ; preds = %83, %83, %83, %83
  %91 = tail call i32 @llvm.cttz.i32(i32 %13, i1 true) #9, !range !18
  %92 = and i32 %48, -1107554545
  %93 = shl nuw nsw i32 %91, 6
  %94 = and i32 %93, 192
  %95 = or i32 %41, %6
  %96 = tail call i32 @llvm.cttz.i32(i32 %95, i1 false) #9, !range !18
  %97 = shl nuw i32 1, %96
  %98 = tail call i32 @llvm.umin.i32(i32 %97, i32 %51) #9
  %99 = trunc i32 %98 to i8
  %100 = trunc i32 %13 to i8
  %101 = udiv i8 %99, %100
  %102 = zext i8 %101 to i32
  %103 = icmp ult i32 %98, %13
  %104 = select i1 %103, i32 1, i32 %102
  %105 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 8
  store i32 %104, ptr %105, align 4
  %106 = icmp eq i32 %104, 0
  %107 = tail call i32 @llvm.ctlz.i32(i32 %104, i1 false) #9, !range !18
  %108 = or i32 %6, %5
  %109 = and i32 %108, 7
  %110 = icmp ne i32 %109, 0
  %111 = icmp ult i32 %41, 8
  %112 = or i1 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %90
  %114 = and i32 %108, 3
  %115 = icmp ne i32 %114, 0
  %116 = icmp ult i32 %41, 4
  %117 = or i1 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = and i32 %108, 1
  %120 = icmp ne i32 %119, 0
  %121 = icmp ult i32 %41, 2
  %122 = or i1 %120, %121
  %123 = select i1 %122, i32 1, i32 2
  br label %124

124:                                              ; preds = %118, %113, %90
  %125 = phi i32 [ 8, %90 ], [ 4, %113 ], [ %123, %118 ]
  %126 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 9
  store i32 %125, ptr %126, align 4
  %127 = tail call i32 @llvm.cttz.i32(i32 %125, i1 true) #9, !range !18
  %128 = mul nuw nsw i32 %107, 229376
  %129 = add nuw nsw i32 %128, 229376
  %130 = and i32 %129, 229376
  %131 = select i1 %106, i32 229376, i32 %130
  %132 = shl nuw nsw i32 %127, 4
  %133 = and i32 %132, 48
  %134 = shl nuw nsw i32 %127, 8
  %135 = and i32 %134, 768
  %136 = trunc i32 %125 to i8
  %137 = udiv i8 -128, %136
  %138 = zext i8 %137 to i32
  %139 = mul nuw nsw i32 %125, %138
  %140 = tail call i32 @llvm.umin.i32(i32 %97, i32 %139) #9
  %141 = trunc i32 %140 to i16
  %142 = trunc i32 %125 to i16
  %143 = udiv i16 %141, %142
  %144 = zext i16 %143 to i32
  %145 = icmp ult i32 %140, %125
  %146 = select i1 %145, i32 1, i32 %144
  store i32 %146, ptr %105, align 4
  %147 = icmp eq i32 %146, 0
  %148 = tail call i32 @llvm.ctlz.i32(i32 %146, i1 false) #9, !range !18
  %149 = mul nuw nsw i32 %148, 28672
  %150 = add nuw nsw i32 %149, 28672
  %151 = and i32 %150, 28672
  %152 = select i1 %147, i32 28672, i32 %151
  %153 = or i32 %92, %94
  %154 = or i32 %153, %131
  %155 = or i32 %154, %135
  %156 = or i32 %155, %133
  %157 = or i32 %156, %152
  %158 = and i32 %82, -131073
  %159 = and i32 %85, -268435456
  %160 = getelementptr inbounds %struct.stm32_mdma_device, ptr %8, i32 0, i32 6
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %173, label %166

163:                                              ; preds = %166
  %164 = add nuw i32 %167, 1
  %165 = icmp eq i32 %164, %161
  br i1 %165, label %173, label %166

166:                                              ; preds = %163, %124
  %167 = phi i32 [ %164, %163 ], [ 0, %124 ]
  %168 = getelementptr %struct.stm32_mdma_device, ptr %8, i32 0, i32 8, i32 %167
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %159, %169
  br i1 %170, label %171, label %163

171:                                              ; preds = %166
  %172 = or i32 %82, 131072
  br label %173

173:                                              ; preds = %171, %163, %124
  %174 = phi i32 [ %158, %124 ], [ %172, %171 ], [ %158, %163 ]
  %175 = icmp eq i32 %91, %127
  %176 = or i32 %157, 33554432
  %177 = select i1 %175, i32 %157, i32 %176
  %178 = load i32, ptr %18, align 4
  %179 = shl i32 %178, 6
  %180 = add i32 %179, 92
  %181 = load ptr, ptr %22, align 4
  %182 = getelementptr i8, ptr %181, i32 %180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %85) #9, !srcloc !16
  br label %286

183:                                              ; preds = %72
  %184 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 5, i32 1
  %185 = load i32, ptr %184, align 4
  switch i32 %11, label %186 [
    i32 1, label %190
    i32 2, label %190
    i32 4, label %190
    i32 8, label %190
  ]

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.dma_chan_dev, ptr %188, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.19, i32 noundef %11) #10
  br label %289

190:                                              ; preds = %183, %183, %183, %183
  %191 = tail call i32 @llvm.cttz.i32(i32 %11, i1 true) #9, !range !18
  %192 = and i32 %48, -1107557617
  %193 = shl nuw nsw i32 %191, 4
  %194 = and i32 %193, 48
  %195 = or i32 %41, %6
  %196 = tail call i32 @llvm.cttz.i32(i32 %195, i1 false) #9, !range !18
  %197 = shl nuw i32 1, %196
  %198 = tail call i32 @llvm.umin.i32(i32 %197, i32 %49) #9
  %199 = trunc i32 %198 to i8
  %200 = trunc i32 %11 to i8
  %201 = udiv i8 %199, %200
  %202 = zext i8 %201 to i32
  %203 = icmp ult i32 %198, %11
  %204 = select i1 %203, i32 1, i32 %202
  %205 = icmp eq i32 %204, 0
  %206 = tail call i32 @llvm.ctlz.i32(i32 %204, i1 false) #9, !range !18
  %207 = or i32 %6, %5
  %208 = and i32 %207, 7
  %209 = icmp ne i32 %208, 0
  %210 = icmp ult i32 %41, 8
  %211 = or i1 %209, %210
  br i1 %211, label %212, label %223

212:                                              ; preds = %190
  %213 = and i32 %207, 3
  %214 = icmp ne i32 %213, 0
  %215 = icmp ult i32 %41, 4
  %216 = or i1 %214, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %212
  %218 = and i32 %207, 1
  %219 = icmp ne i32 %218, 0
  %220 = icmp ult i32 %41, 2
  %221 = or i1 %219, %220
  %222 = select i1 %221, i32 1, i32 2
  br label %223

223:                                              ; preds = %217, %212, %190
  %224 = phi i32 [ 8, %190 ], [ 4, %212 ], [ %222, %217 ]
  %225 = getelementptr inbounds %struct.stm32_mdma_chan, ptr %0, i32 0, i32 9
  store i32 %224, ptr %225, align 4
  %226 = tail call i32 @llvm.cttz.i32(i32 %224, i1 true) #9, !range !18
  %227 = mul nuw nsw i32 %206, 28672
  %228 = add nuw nsw i32 %227, 28672
  %229 = and i32 %228, 28672
  %230 = select i1 %205, i32 28672, i32 %229
  %231 = shl nuw nsw i32 %226, 6
  %232 = and i32 %231, 192
  %233 = shl nuw nsw i32 %226, 10
  %234 = and i32 %233, 3072
  %235 = trunc i32 %224 to i8
  %236 = udiv i8 -128, %235
  %237 = zext i8 %236 to i32
  %238 = mul nuw nsw i32 %224, %237
  %239 = tail call i32 @llvm.umin.i32(i32 %197, i32 %238) #9
  %240 = trunc i32 %239 to i16
  %241 = trunc i32 %224 to i16
  %242 = udiv i16 %240, %241
  %243 = zext i16 %242 to i32
  %244 = icmp ult i32 %239, %224
  %245 = select i1 %244, i32 1, i32 %243
  %246 = icmp eq i32 %245, 0
  %247 = tail call i32 @llvm.ctlz.i32(i32 %245, i1 false) #9, !range !18
  %248 = mul nuw nsw i32 %247, 229376
  %249 = add nuw nsw i32 %248, 229376
  %250 = and i32 %249, 229376
  %251 = select i1 %246, i32 229376, i32 %250
  %252 = or i32 %192, %194
  %253 = or i32 %252, %230
  %254 = or i32 %253, %234
  %255 = or i32 %254, %232
  %256 = or i32 %255, %251
  %257 = and i32 %82, -65537
  %258 = and i32 %185, -268435456
  %259 = getelementptr inbounds %struct.stm32_mdma_device, ptr %8, i32 0, i32 6
  %260 = load i32, ptr %259, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %272, label %265

262:                                              ; preds = %265
  %263 = add nuw i32 %266, 1
  %264 = icmp eq i32 %263, %260
  br i1 %264, label %272, label %265

265:                                              ; preds = %262, %223
  %266 = phi i32 [ %263, %262 ], [ 0, %223 ]
  %267 = getelementptr %struct.stm32_mdma_device, ptr %8, i32 0, i32 8, i32 %266
  %268 = load i32, ptr %267, align 4
  %269 = icmp eq i32 %258, %268
  br i1 %269, label %270, label %262

270:                                              ; preds = %265
  %271 = or i32 %82, 65536
  br label %272

272:                                              ; preds = %270, %262, %223
  %273 = phi i32 [ %257, %223 ], [ %271, %270 ], [ %257, %262 ]
  %274 = icmp eq i32 %226, %191
  %275 = or i32 %256, 33554432
  %276 = select i1 %274, i32 %256, i32 %275
  %277 = load i32, ptr %18, align 4
  %278 = shl i32 %277, 6
  %279 = add i32 %278, 88
  %280 = load ptr, ptr %22, align 4
  %281 = getelementptr i8, ptr %280, i32 %279
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 %185) #9, !srcloc !16
  br label %286

282:                                              ; preds = %72
  %283 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %284 = load ptr, ptr %283, align 4
  %285 = getelementptr inbounds %struct.dma_chan_dev, ptr %284, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %285, ptr noundef nonnull @.str.18) #10
  br label %289

286:                                              ; preds = %272, %173
  %287 = phi i32 [ %273, %272 ], [ %174, %173 ]
  %288 = phi i32 [ %276, %272 ], [ %177, %173 ]
  store i32 %78, ptr %2, align 4
  store i32 %288, ptr %3, align 4
  store i32 %287, ptr %4, align 4
  br label %289

289:                                              ; preds = %286, %282, %186, %86, %68, %54
  %290 = phi i32 [ -22, %54 ], [ -22, %68 ], [ -22, %282 ], [ 0, %286 ], [ -22, %86 ], [ -22, %186 ]
  ret i32 %290
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

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
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_mdma_pm_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stm32_mdma_device, ptr %3, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.stm32_mdma_device, ptr %3, i32 0, i32 1
  br label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #9, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 0, i32 -1, ptr elementtype(i32) %13) #9, !srcloc !12
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  br label %35

18:                                               ; preds = %28, %10
  %19 = phi i32 [ 0, %10 ], [ %29, %28 ]
  %20 = shl i32 %19, 6
  %21 = add i32 %20, 76
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr i8, ptr %22, i32 %21
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !15
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %19) #10
  br label %35

28:                                               ; preds = %18
  %29 = add nuw i32 %19, 1
  %30 = load i32, ptr %7, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %18, label %32

32:                                               ; preds = %28, %6
  %33 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #9
  %34 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #9
  br label %35

35:                                               ; preds = %32, %27, %17, %12
  %36 = phi i32 [ -16, %27 ], [ 0, %32 ], [ %4, %12 ], [ %4, %17 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_mdma_pm_resume(ptr noundef %0) #2 {
  %2 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #9
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_mdma_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_mdma_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_mdma_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_mdma_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.32) #10
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!9 = !{i64 548115, i64 2148038086, i64 2148038112, i64 2148038159, i64 2148038181, i64 2148038209, i64 2148038229}
!10 = !{i64 2148050298, i64 2148050324, i64 2148050353, i64 2148050387, i64 2148050418, i64 2148050441}
!11 = !{i64 2148049805}
!12 = !{i64 534684, i64 534709, i64 534731, i64 534747, i64 534759, i64 534779, i64 534803, i64 534819, i64 534831}
!13 = !{i64 2148049931}
!14 = !{i8 0, i8 2}
!15 = !{i64 5122813}
!16 = !{i64 5122395}
!17 = !{i64 2153255137}
!18 = !{i32 0, i32 33}
!19 = !{i32 16, i32 33}
!20 = !{i64 2148955039}
!21 = !{i64 2148950863}
!22 = !{i64 2148950938, i64 2148950965, i64 2148951012, i64 2148951034, i64 2148951062, i64 2148951082}
!23 = !{i64 2148978042}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2153254201, i64 2153254688, i64 2153254238, i64 2153254294, i64 2153254328, i64 2153254352, i64 2153254393, i64 2153254414, i64 2153254442, i64 2153254476}
