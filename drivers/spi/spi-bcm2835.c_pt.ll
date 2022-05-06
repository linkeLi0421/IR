; ModuleID = '/llk/IR/drivers/spi/spi-bcm2835.c_pt.bc'
source_filename = "../drivers/spi/spi-bcm2835.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.63 }
%union.anon.63 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.bcm2835_spi = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, ptr, i32, i32, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.bcm2835_spidev = type { i32, ptr, i32, [52 x i8], i32, [60 x i8] }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__param_str_polling_limit_us = internal constant [29 x i8] c"spi_bcm2835.polling_limit_us\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@polling_limit_us = internal global i32 30, align 4
@__param_polling_limit_us = internal constant %struct.kernel_param { ptr @__param_str_polling_limit_us, ptr null, ptr @param_ops_uint, i16 436, i8 -1, i8 0, %union.anon.63 { ptr @polling_limit_us } }, section "__param", align 4
@__UNIQUE_ID_polling_limit_ustype230 = internal constant [43 x i8] c"spi_bcm2835.parmtype=polling_limit_us:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_polling_limit_us231 = internal constant [80 x i8] c"spi_bcm2835.parm=polling_limit_us:time in us to run a transfer in polling mode\0A\00", section ".modinfo", align 1
@__initcall__kmod_spi_bcm2835__240_1437_bcm2835_spi_driver_init6 = internal global ptr @bcm2835_spi_driver_init, section ".initcall6.init", align 4
@bcm2835_spi_driver = internal global %struct.platform_driver { ptr @bcm2835_spi_probe, ptr @bcm2835_spi_remove, ptr @bcm2835_spi_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm2835_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm2835_spi_driver_exit = internal global ptr @bcm2835_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [67 x i8] c"spi_bcm2835.description=SPI controller driver for Broadcom BCM2835\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [48 x i8] c"spi_bcm2835.author=Chris Boot <bootc@bootc.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [41 x i8] c"spi_bcm2835.file=drivers/spi/spi-bcm2835\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [24 x i8] c"spi_bcm2835.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"spi-bcm2835\00", align 1
@bcm2835_spi_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"could not get clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"could not request IRQ: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"could not register SPI controller: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"setup: only two native chip-selects are supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"pinctrl-bcm2835\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"setting up native-CS%i to use GPIO\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"cannot map clear_rx_cs\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"cannot prepare clear_rx_desc\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"cannot reuse clear_rx_desc\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.12 = private unnamed_addr constant [57 x i8] c"could not get DMA-register address - not using dma mode\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"no tx-dma configuration found - not using dma mode\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"no rx-dma configuration found - not using dma mode\0A\00", align 1
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@.str.17 = private unnamed_addr constant [43 x i8] c"cannot map zero page - not using DMA mode\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"cannot prepare fill_tx_desc - not using DMA mode\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"cannot reuse fill_tx_desc - not using DMA mode\0A\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"issue configuring dma: %d - not using DMA mode\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"spi-bcm2835-%s\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"count_transfer_polling\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"count_transfer_irq\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"count_transfer_irq_after_polling\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"count_transfer_dma\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__UNIQUE_ID_polling_limit_us231, ptr @__UNIQUE_ID_polling_limit_ustype230, ptr @__exitcall_bcm2835_spi_driver_exit, ptr @__initcall__kmod_spi_bcm2835__240_1437_bcm2835_spi_driver_init6, ptr @__param_polling_limit_us, ptr @bcm2835_spi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm2835_spi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_spi_driver, ptr noundef null) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm2835_spi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_spi_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_spi_probe(ptr noundef %0) #2 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca %struct.dma_slave_caps, align 4
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call ptr @__devm_spi_alloc_controller(ptr noundef %5, i32 noundef 112, i1 noundef zeroext false) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %188, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %9, align 8
  %10 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 56
  store i8 1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 5
  store i32 87, ptr %11, align 8
  %12 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 7
  store i32 128, ptr %12, align 8
  %13 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 3
  store i16 3, ptr %13, align 2
  %14 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 20
  store ptr @bcm2835_spi_setup, ptr %14, align 4
  %15 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 23
  store ptr @bcm2835_spi_cleanup, ptr %15, align 8
  %16 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 51
  store ptr @bcm2835_spi_transfer_one, ptr %16, align 4
  %17 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 52
  store ptr @bcm2835_spi_handle_err, ptr %17, align 8
  %18 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 47
  store ptr @bcm2835_spi_prepare_message, ptr %18, align 4
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  store ptr %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.bcm2835_spi, ptr %23, i32 0, i32 5
  store ptr %6, ptr %24, align 4
  %25 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #13
  store ptr %25, ptr %23, align 8
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %8
  %28 = ptrtoint ptr %25 to i32
  br label %188

29:                                               ; preds = %8
  %30 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef null) #13
  %31 = getelementptr inbounds %struct.bcm2835_spi, ptr %23, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = ptrtoint ptr %30 to i32
  %35 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %34, ptr noundef nonnull @.str.1) #13
  br label %188

36:                                               ; preds = %29
  %37 = tail call i32 @clk_get_rate(ptr noundef %30) #13
  %38 = lshr i32 %37, 1
  %39 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 9
  store i32 %38, ptr %39, align 8
  %40 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #13
  %41 = getelementptr inbounds %struct.bcm2835_spi, ptr %23, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  %42 = icmp slt i32 %40, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = icmp eq i32 %40, 0
  %45 = select i1 %44, i32 -19, i32 %40
  br label %188

46:                                               ; preds = %36
  %47 = load ptr, ptr %31, align 4
  %48 = tail call i32 @clk_prepare(ptr noundef %47) #13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = tail call i32 @clk_enable(ptr noundef %47) #13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @clk_unprepare(ptr noundef %47) #13
  br label %54

54:                                               ; preds = %53, %50, %46
  %55 = load ptr, ptr %31, align 4
  %56 = tail call i32 @clk_get_rate(ptr noundef %55) #13
  %57 = getelementptr inbounds %struct.bcm2835_spi, ptr %23, i32 0, i32 2
  store i32 %56, ptr %57, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 48, i1 false) #13, !annotation !8
  %58 = load ptr, ptr %21, align 8
  %59 = tail call ptr @__of_get_address(ptr noundef %58, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #13
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12) #14
  br label %152

62:                                               ; preds = %54
  %63 = load i32, ptr %59, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #13
  %65 = tail call ptr @dma_request_chan(ptr noundef %5, ptr noundef nonnull @.str.13) #13
  %66 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 60
  store ptr %65, ptr %66, align 8
  %67 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14) #14
  %69 = load ptr, ptr %66, align 8
  %70 = ptrtoint ptr %69 to i32
  store ptr null, ptr %66, align 8
  br label %148

71:                                               ; preds = %62
  %72 = tail call ptr @dma_request_chan(ptr noundef %5, ptr noundef nonnull @.str.15) #13
  %73 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 61
  store ptr %72, ptr %73, align 4
  %74 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.16) #14
  %76 = load ptr, ptr %73, align 4
  %77 = ptrtoint ptr %76 to i32
  store ptr null, ptr %73, align 4
  br label %146

78:                                               ; preds = %71
  %79 = add i32 %64, 4
  %80 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 2
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  store i32 4, ptr %81, align 4
  %82 = load ptr, ptr %66, align 8
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.dma_device, ptr %83, i32 0, i32 44
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %144, label %87

87:                                               ; preds = %78
  %88 = call i32 %85(ptr noundef %82, ptr noundef nonnull %4) #13
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %144

90:                                               ; preds = %87
  %91 = load ptr, ptr %66, align 8
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.dma_device, ptr %92, i32 0, i32 15
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr @empty_zero_page, align 4
  %96 = call i32 @dma_map_page_attrs(ptr noundef %94, ptr noundef %95, i32 noundef 0, i32 noundef 4, i32 noundef 1, i32 noundef 32) #13
  %97 = getelementptr inbounds %struct.bcm2835_spi, ptr %23, i32 0, i32 22
  store i32 %96, ptr %97, align 8
  %98 = icmp eq i32 %96, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.17) #14
  store i32 0, ptr %97, align 8
  br label %146

100:                                              ; preds = %90
  %101 = load ptr, ptr %66, align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %101, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.dma_device, ptr %104, i32 0, i32 40
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %106, %103, %100
  %111 = getelementptr inbounds %struct.bcm2835_spi, ptr %23, i32 0, i32 21
  store ptr null, ptr %111, align 4
  br label %116

112:                                              ; preds = %106
  %113 = call ptr %108(ptr noundef nonnull %101, i32 noundef %96, i32 noundef 4, i32 noundef 0, i32 noundef 1, i32 noundef 0) #13
  %114 = getelementptr inbounds %struct.bcm2835_spi, ptr %23, i32 0, i32 21
  store ptr %113, ptr %114, align 4
  %115 = icmp eq ptr %113, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %112, %110
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.18) #14
  br label %146

117:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false) #13, !annotation !8
  %118 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %113, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = call i32 @dma_get_slave_caps(ptr noundef %119, ptr noundef nonnull %3) #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.dma_slave_caps, ptr %3, i32 0, i32 10
  %124 = load i8, ptr %123, align 4, !range !9
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122, %117
  %127 = phi i32 [ -1, %122 ], [ %120, %117 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.19) #14
  br label %146

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %113, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = or i32 %130, 64
  store i32 %131, ptr %129, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #13
  %132 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 1
  store i32 %79, ptr %132, align 4
  %133 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 3
  store i32 4, ptr %133, align 4
  store i32 %64, ptr %80, align 4
  store i32 4, ptr %81, align 4
  %134 = load ptr, ptr %73, align 4
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.dma_device, ptr %135, i32 0, i32 44
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %144, label %139

139:                                              ; preds = %128
  %140 = call i32 %137(ptr noundef %134, ptr noundef nonnull %4) #13
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.spi_controller, ptr %6, i32 0, i32 24
  store ptr @bcm2835_spi_can_dma, ptr %143, align 4
  br label %152

144:                                              ; preds = %139, %128, %87, %78
  %145 = phi i32 [ %88, %87 ], [ %140, %139 ], [ -38, %78 ], [ -38, %128 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %145) #14
  br label %146

146:                                              ; preds = %144, %126, %116, %99, %75
  %147 = phi i32 [ %77, %75 ], [ %145, %144 ], [ -12, %99 ], [ %127, %126 ], [ -12, %116 ]
  call fastcc void @bcm2835_dma_release(ptr noundef nonnull %6, ptr noundef %23) #13
  br label %148

148:                                              ; preds = %146, %68
  %149 = phi i32 [ %70, %68 ], [ %147, %146 ]
  %150 = icmp eq i32 %149, -517
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  br label %185

152:                                              ; preds = %148, %142, %61
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  call void @arm_heavy_mb() #13
  %153 = load ptr, ptr %23, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 48) #13, !srcloc !11
  %154 = load i32, ptr %41, align 4
  %155 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load ptr, ptr %5, align 4
  br label %160

160:                                              ; preds = %158, %152
  %161 = phi ptr [ %159, %158 ], [ %156, %152 ]
  %162 = call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %154, ptr noundef nonnull @bcm2835_spi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %161, ptr noundef %23) #13
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %162) #14
  br label %183

165:                                              ; preds = %160
  %166 = call i32 @spi_register_controller(ptr noundef nonnull %6) #13
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %166) #14
  br label %183

169:                                              ; preds = %165
  %170 = load ptr, ptr %155, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load ptr, ptr %5, align 4
  br label %174

174:                                              ; preds = %172, %169
  %175 = phi ptr [ %173, %172 ], [ %170, %169 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i32 64, i1 false) #13, !annotation !8
  %176 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 64, ptr noundef nonnull @.str.21, ptr noundef %175) #13
  %177 = call ptr @debugfs_create_dir(ptr noundef nonnull %2, ptr noundef null) #13
  %178 = getelementptr inbounds %struct.bcm2835_spi, ptr %23, i32 0, i32 13
  store ptr %177, ptr %178, align 4
  %179 = getelementptr inbounds %struct.bcm2835_spi, ptr %23, i32 0, i32 14
  call void @debugfs_create_u64(ptr noundef nonnull @.str.22, i16 noundef zeroext 292, ptr noundef %177, ptr noundef %179) #13
  %180 = getelementptr inbounds %struct.bcm2835_spi, ptr %23, i32 0, i32 15
  call void @debugfs_create_u64(ptr noundef nonnull @.str.23, i16 noundef zeroext 292, ptr noundef %177, ptr noundef %180) #13
  %181 = getelementptr inbounds %struct.bcm2835_spi, ptr %23, i32 0, i32 16
  call void @debugfs_create_u64(ptr noundef nonnull @.str.24, i16 noundef zeroext 292, ptr noundef %177, ptr noundef %181) #13
  %182 = getelementptr inbounds %struct.bcm2835_spi, ptr %23, i32 0, i32 17
  call void @debugfs_create_u64(ptr noundef nonnull @.str.25, i16 noundef zeroext 292, ptr noundef %177, ptr noundef %182) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  br label %188

183:                                              ; preds = %168, %164
  %184 = phi i32 [ %162, %164 ], [ %166, %168 ]
  call fastcc void @bcm2835_dma_release(ptr noundef nonnull %6, ptr noundef %23)
  br label %185

185:                                              ; preds = %183, %151
  %186 = phi i32 [ -517, %151 ], [ %184, %183 ]
  %187 = load ptr, ptr %31, align 4
  call void @clk_disable(ptr noundef %187) #13
  call void @clk_unprepare(ptr noundef %187) #13
  br label %188

188:                                              ; preds = %185, %174, %43, %33, %27, %1
  %189 = phi i32 [ %28, %27 ], [ %35, %33 ], [ %45, %43 ], [ %186, %185 ], [ 0, %174 ], [ -12, %1 ]
  ret i32 %189
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_spi_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcm2835_spi, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  tail call void @debugfs_remove(ptr noundef %7) #13
  store ptr null, ptr %6, align 4
  tail call void @spi_unregister_controller(ptr noundef %3) #13
  tail call fastcc void @bcm2835_dma_release(ptr noundef %3, ptr noundef %5)
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %8 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 48) #13, !srcloc !11
  %9 = getelementptr inbounds %struct.bcm2835_spi, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #13
  tail call void @clk_unprepare(ptr noundef %10) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_spi_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcm2835_spi, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  tail call void @debugfs_remove(ptr noundef %7) #13
  store ptr null, ptr %6, align 4
  tail call void @spi_unregister_controller(ptr noundef %3) #13
  tail call fastcc void @bcm2835_dma_release(ptr noundef %3, ptr noundef %5) #13
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %8 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 48) #13, !srcloc !11
  %9 = getelementptr inbounds %struct.bcm2835_spi, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #13
  tail call void @clk_unprepare(ptr noundef %10) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_spi_setup(ptr noundef %0) #2 {
  %2 = alloca %struct.dma_slave_caps, align 4
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %81

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 128) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %157, label %12

12:                                               ; preds = %8
  store ptr %10, ptr %5, align 8
  %13 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 61
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %81, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.bcm2835_spidev, ptr %10, i32 0, i32 4
  %21 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %20) #13
  %22 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %34, !prof !12

25:                                               ; preds = %16
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %26 = tail call ptr @dev_driver_string(ptr noundef %19) #13
  %27 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load ptr, ptr %19, align 4
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi ptr [ %31, %30 ], [ %28, %25 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %26, ptr noundef %33) #13
  br label %34

34:                                               ; preds = %32, %16
  br i1 %21, label %35, label %37

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.bcm2835_spidev, ptr %10, i32 0, i32 2
  store i32 -1, ptr %36, align 8
  br label %47

37:                                               ; preds = %34
  %38 = load ptr, ptr @mem_map, align 4
  %39 = ptrtoint ptr %20 to i32
  %40 = add i32 %39, 1073741824
  %41 = lshr i32 %40, 12
  %42 = getelementptr %struct.page, ptr %38, i32 %41
  %43 = and i32 %39, 4088
  %44 = tail call i32 @dma_map_page_attrs(ptr noundef %19, ptr noundef %42, i32 noundef %43, i32 noundef 4, i32 noundef 1, i32 noundef 0) #13
  %45 = getelementptr inbounds %struct.bcm2835_spidev, ptr %10, i32 0, i32 2
  store i32 %44, ptr %45, align 8
  %46 = icmp eq i32 %44, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %37, %35
  %48 = phi ptr [ %36, %35 ], [ %45, %37 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #14
  store i32 0, ptr %48, align 8
  br label %130

49:                                               ; preds = %37
  %50 = load ptr, ptr %13, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %50, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.dma_device, ptr %53, i32 0, i32 40
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %52, %49
  %60 = getelementptr inbounds %struct.bcm2835_spidev, ptr %10, i32 0, i32 1
  store ptr null, ptr %60, align 4
  br label %65

61:                                               ; preds = %55
  %62 = tail call ptr %57(ptr noundef nonnull %50, i32 noundef %44, i32 noundef 4, i32 noundef 0, i32 noundef 1, i32 noundef 0) #13
  %63 = getelementptr inbounds %struct.bcm2835_spidev, ptr %10, i32 0, i32 1
  store ptr %62, ptr %63, align 4
  %64 = icmp eq ptr %62, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %59
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8) #14
  br label %130

66:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false) #13, !annotation !8
  %67 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %62, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 @dma_get_slave_caps(ptr noundef %68, ptr noundef nonnull %2) #13
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.dma_slave_caps, ptr %2, i32 0, i32 10
  %73 = load i8, ptr %72, align 4, !range !9
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %62, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = or i32 %77, 64
  store i32 %78, ptr %76, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #13
  br label %81

79:                                               ; preds = %71, %66
  %80 = phi i32 [ -1, %71 ], [ %69, %66 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9) #14
  br label %130

81:                                               ; preds = %75, %12, %1
  %82 = phi ptr [ %6, %1 ], [ %10, %12 ], [ %10, %75 ]
  %83 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 2
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 3, i32 11
  %88 = shl i32 %84, 2
  %89 = and i32 %88, 4
  %90 = or i32 %87, %89
  store i32 %90, ptr %82, align 64
  %91 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 61
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %81
  %95 = or i32 %90, 416
  %96 = getelementptr inbounds %struct.bcm2835_spidev, ptr %82, i32 0, i32 4
  store i32 %95, ptr %96, align 64
  %97 = load ptr, ptr %91, align 4
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.dma_device, ptr %98, i32 0, i32 15
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.bcm2835_spidev, ptr %82, i32 0, i32 2
  %102 = load i32, ptr %101, align 8
  call void @dma_sync_single_for_device(ptr noundef %100, i32 noundef %102, i32 noundef 4, i32 noundef 1) #13
  br label %103

103:                                              ; preds = %94, %81
  %104 = load i32, ptr %83, align 8
  %105 = and i32 %104, 64
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %157

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 14
  %109 = load ptr, ptr %108, align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %157

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %113 = load i8, ptr %112, align 4
  %114 = icmp ugt i8 %113, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #14
  br label %130

116:                                              ; preds = %111
  %117 = call ptr @gpiochip_find(ptr noundef nonnull @.str.5, ptr noundef nonnull @chip_match_name) #13
  %118 = icmp eq ptr %117, null
  br i1 %118, label %157, label %119

119:                                              ; preds = %116
  %120 = load i8, ptr %112, align 4
  %121 = zext i8 %120 to i32
  %122 = sub nsw i32 8, %121
  %123 = call ptr @gpiochip_request_own_desc(ptr noundef nonnull %117, i32 noundef %122, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 3) #13
  store ptr %123, ptr %108, align 8
  %124 = icmp ugt ptr %123, inttoptr (i32 -4096 to ptr)
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = ptrtoint ptr %123 to i32
  br label %130

127:                                              ; preds = %119
  %128 = load i8, ptr %112, align 4
  %129 = zext i8 %128 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %129) #14
  br label %157

130:                                              ; preds = %125, %115, %79, %65, %47
  %131 = phi i32 [ -22, %115 ], [ %126, %125 ], [ -12, %65 ], [ %80, %79 ], [ -12, %47 ]
  %132 = load ptr, ptr %5, align 8
  %133 = load ptr, ptr %3, align 8
  %134 = getelementptr inbounds %struct.bcm2835_spidev, ptr %132, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %146, label %137

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %135, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 64
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %135, i32 0, i32 5
  %144 = load ptr, ptr %143, align 4
  %145 = call i32 %144(ptr noundef nonnull %135) #13
  br label %146

146:                                              ; preds = %142, %137, %130
  %147 = getelementptr inbounds %struct.bcm2835_spidev, ptr %132, i32 0, i32 2
  %148 = load i32, ptr %147, align 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.spi_controller, ptr %133, i32 0, i32 61
  %152 = load ptr, ptr %151, align 4
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.dma_device, ptr %153, i32 0, i32 15
  %155 = load ptr, ptr %154, align 4
  call void @dma_unmap_page_attrs(ptr noundef %155, i32 noundef %148, i32 noundef 4, i32 noundef 1, i32 noundef 0) #13
  br label %156

156:                                              ; preds = %150, %146
  call void @kfree(ptr noundef %132) #13
  br label %157

157:                                              ; preds = %156, %127, %116, %107, %103, %8
  %158 = phi i32 [ %131, %156 ], [ 0, %127 ], [ -12, %8 ], [ 0, %103 ], [ 0, %107 ], [ 0, %116 ]
  ret i32 %158
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_spi_cleanup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcm2835_spidev, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef nonnull %7) #13
  br label %18

18:                                               ; preds = %14, %9, %1
  %19 = getelementptr inbounds %struct.bcm2835_spidev, ptr %3, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 61
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %27, i32 noundef %20, i32 noundef 4, i32 noundef 1, i32 noundef 0) #13
  br label %28

28:                                               ; preds = %22, %18
  tail call void @kfree(ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_spi_transfer_one(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 9
  %10 = load ptr, ptr %9, align 8
  %11 = load i32, ptr %10, align 64
  %12 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bcm2835_spi, ptr %8, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 1
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = icmp eq i32 %13, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %18
  %21 = add i32 %13, -1
  %22 = add i32 %21, %15
  %23 = udiv i32 %22, %13
  %24 = and i32 %23, 1
  %25 = add i32 %24, %23
  %26 = add i32 %25, -65536
  %27 = icmp ult i32 %26, -65535
  br i1 %27, label %31, label %28

28:                                               ; preds = %20, %3
  %29 = phi i32 [ 2, %3 ], [ %25, %20 ]
  %30 = udiv i32 %15, %29
  br label %33

31:                                               ; preds = %20, %18
  %32 = lshr i32 %15, 16
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ %29, %28 ], [ 0, %31 ]
  %35 = phi i32 [ %30, %28 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 13
  store i32 %35, ptr %36, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %37 = load ptr, ptr %8, align 8
  %38 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %34) #13, !srcloc !11
  %39 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  %47 = or i32 %11, 4096
  %48 = select i1 %46, i32 %11, i32 %47
  br label %49

49:                                               ; preds = %43, %33
  %50 = phi i32 [ %11, %33 ], [ %48, %43 ]
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr inbounds %struct.bcm2835_spi, ptr %8, i32 0, i32 6
  store ptr %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.bcm2835_spi, ptr %8, i32 0, i32 7
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.bcm2835_spi, ptr %8, i32 0, i32 8
  store i32 %57, ptr %58, align 8
  %59 = load i32, ptr %56, align 4
  %60 = getelementptr inbounds %struct.bcm2835_spi, ptr %8, i32 0, i32 9
  store i32 %59, ptr %60, align 4
  %61 = load i32, ptr @polling_limit_us, align 4
  %62 = add i32 %61, -9000001
  %63 = icmp ult i32 %62, -9000000
  br i1 %63, label %68, label %64

64:                                               ; preds = %49
  %65 = udiv i32 9000000, %61
  %66 = load i32, ptr %36, align 4
  %67 = udiv i32 %66, %65
  br label %68

68:                                               ; preds = %64, %49
  %69 = phi i32 [ %67, %64 ], [ 1, %49 ]
  %70 = load i32, ptr %56, align 4
  %71 = icmp ult i32 %70, %69
  br i1 %71, label %72, label %173

72:                                               ; preds = %68
  %73 = load ptr, ptr %7, align 8
  %74 = getelementptr inbounds %struct.bcm2835_spi, ptr %73, i32 0, i32 14
  %75 = load i64, ptr %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, ptr %74, align 8
  %77 = or i32 %50, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %78 = load ptr, ptr %73, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %77) #13, !srcloc !11
  %79 = getelementptr inbounds %struct.bcm2835_spi, ptr %73, i32 0, i32 8
  %80 = load i32, ptr %79, align 8
  %81 = tail call i32 @llvm.smin.i32(i32 %80, i32 64) #13
  %82 = sub i32 %80, %81
  store i32 %82, ptr %79, align 8
  %83 = getelementptr inbounds %struct.bcm2835_spi, ptr %73, i32 0, i32 6
  br label %84

84:                                               ; preds = %91, %72
  %85 = phi i32 [ %81, %72 ], [ %96, %91 ]
  %86 = load ptr, ptr %83, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr i8, ptr %86, i32 1
  store ptr %89, ptr %83, align 8
  %90 = load i8, ptr %86, align 1
  br label %91

91:                                               ; preds = %88, %84
  %92 = phi i8 [ %90, %88 ], [ 0, %84 ]
  %93 = zext i8 %92 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %94 = load ptr, ptr %73, align 8
  %95 = getelementptr i8, ptr %94, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #13, !srcloc !11
  %96 = add i32 %85, -1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %84

98:                                               ; preds = %91
  %99 = load volatile i32, ptr @jiffies, align 64
  %100 = add i32 %99, 2
  %101 = load i32, ptr @polling_limit_us, align 4
  %102 = mul i32 %101, 100
  %103 = udiv i32 %102, 1000000
  %104 = add i32 %100, %103
  %105 = getelementptr inbounds %struct.bcm2835_spi, ptr %73, i32 0, i32 9
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %165, label %108

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.bcm2835_spi, ptr %73, i32 0, i32 7
  br label %110

110:                                              ; preds = %157, %108
  %111 = load i32, ptr %79, align 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %135, label %113

113:                                              ; preds = %124, %110
  %114 = load ptr, ptr %73, align 8
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %116 = and i32 %115, 262144
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %132, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr %83, align 8
  %120 = icmp eq ptr %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = getelementptr i8, ptr %119, i32 1
  store ptr %122, ptr %83, align 8
  %123 = load i8, ptr %119, align 1
  br label %124

124:                                              ; preds = %121, %118
  %125 = phi i8 [ %123, %121 ], [ 0, %118 ]
  %126 = zext i8 %125 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %127 = load ptr, ptr %73, align 8
  %128 = getelementptr i8, ptr %127, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %126) #13, !srcloc !11
  %129 = load i32, ptr %79, align 8
  %130 = add i32 %129, -1
  store i32 %130, ptr %79, align 8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %113

132:                                              ; preds = %124, %113
  %133 = load i32, ptr %105, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %165, label %135

135:                                              ; preds = %132, %110
  br label %136

136:                                              ; preds = %150, %135
  %137 = load ptr, ptr %73, align 8
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %139 = and i32 %138, 131072
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %154, label %141

141:                                              ; preds = %136
  %142 = load ptr, ptr %73, align 8
  %143 = getelementptr i8, ptr %142, i32 4
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %145 = load ptr, ptr %109, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %141
  %148 = trunc i32 %144 to i8
  %149 = getelementptr i8, ptr %145, i32 1
  store ptr %149, ptr %109, align 4
  store i8 %148, ptr %145, align 1
  br label %150

150:                                              ; preds = %147, %141
  %151 = load i32, ptr %105, align 4
  %152 = add i32 %151, -1
  store i32 %152, ptr %105, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %165, label %136

154:                                              ; preds = %136
  %155 = load i32, ptr %105, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %154
  %158 = load volatile i32, ptr @jiffies, align 64
  %159 = sub i32 %104, %158
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %110

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.bcm2835_spi, ptr %73, i32 0, i32 16
  %163 = load i64, ptr %162, align 8
  %164 = add i64 %163, 1
  store i64 %164, ptr %162, align 8
  tail call fastcc void @bcm2835_spi_transfer_one_irq(ptr noundef %0, i32 noundef %50, i1 noundef zeroext false) #13
  br label %582

165:                                              ; preds = %154, %150, %132, %98
  %166 = load ptr, ptr %73, align 8
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %168 = and i32 %167, -67505
  %169 = or i32 %168, 65584
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %170 = load ptr, ptr %73, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %169) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %171 = load ptr, ptr %73, align 8
  %172 = getelementptr i8, ptr %171, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 0) #13, !srcloc !11
  br label %582

173:                                              ; preds = %68
  %174 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 24
  %175 = load ptr, ptr %174, align 4
  %176 = icmp ne ptr %175, null
  %177 = icmp ugt i32 %70, 95
  %178 = select i1 %176, i1 %177, i1 false
  br i1 %178, label %179, label %581

179:                                              ; preds = %173
  %180 = load ptr, ptr %7, align 8
  %181 = getelementptr inbounds %struct.bcm2835_spi, ptr %180, i32 0, i32 17
  %182 = load i64, ptr %181, align 8
  %183 = add i64 %182, 1
  store i64 %183, ptr %181, align 8
  %184 = getelementptr inbounds %struct.bcm2835_spi, ptr %180, i32 0, i32 4
  store ptr %2, ptr %184, align 8
  %185 = getelementptr inbounds %struct.bcm2835_spi, ptr %180, i32 0, i32 10
  store i32 0, ptr %185, align 8
  %186 = getelementptr inbounds %struct.bcm2835_spi, ptr %180, i32 0, i32 11
  store i32 0, ptr %186, align 4
  %187 = getelementptr inbounds %struct.bcm2835_spi, ptr %180, i32 0, i32 12
  store i32 0, ptr %187, align 8
  %188 = getelementptr inbounds %struct.bcm2835_spi, ptr %180, i32 0, i32 6
  %189 = load ptr, ptr %188, align 8
  %190 = icmp eq ptr %189, null
  br i1 %190, label %201, label %191

191:                                              ; preds = %179
  %192 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5
  %193 = load ptr, ptr %192, align 4
  %194 = load i32, ptr %193, align 4
  %195 = and i32 %194, 2
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.scatterlist, ptr %193, i32 0, i32 4
  %199 = load i32, ptr %198, align 4
  %200 = and i32 %199, 3
  store i32 %200, ptr %185, align 8
  br label %201

201:                                              ; preds = %197, %191, %179
  %202 = phi i32 [ %200, %197 ], [ 0, %191 ], [ 0, %179 ]
  %203 = getelementptr inbounds %struct.bcm2835_spi, ptr %180, i32 0, i32 7
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %232, label %206

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 6
  %208 = load ptr, ptr %207, align 4
  %209 = load i32, ptr %208, align 4
  %210 = and i32 %209, 2
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %232

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.scatterlist, ptr %208, i32 0, i32 4
  %214 = load i32, ptr %213, align 4
  %215 = and i32 %214, 3
  store i32 %215, ptr %186, align 4
  %216 = icmp ugt i32 %215, %202
  br i1 %216, label %217, label %232

217:                                              ; preds = %212
  br i1 %190, label %224, label %218

218:                                              ; preds = %217
  %219 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5
  %220 = load ptr, ptr %219, align 4
  %221 = load i32, ptr %220, align 4
  %222 = and i32 %221, 2
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %218, %217
  store i32 %215, ptr %185, align 8
  br label %237

225:                                              ; preds = %218
  %226 = or i32 %202, 4
  store i32 %226, ptr %185, align 8
  %227 = load ptr, ptr %219, align 4
  %228 = getelementptr inbounds %struct.scatterlist, ptr %227, i32 0, i32 4
  %229 = load i32, ptr %228, align 4
  %230 = icmp ult i32 %229, 4
  %231 = zext i1 %230 to i32
  store i32 %231, ptr %187, align 8
  br label %237

232:                                              ; preds = %212, %206, %201
  %233 = phi i32 [ %215, %212 ], [ 0, %201 ], [ 0, %206 ]
  %234 = icmp eq i32 %202, 0
  br i1 %234, label %383, label %235

235:                                              ; preds = %232
  %236 = icmp eq i32 %233, 0
  br i1 %236, label %312, label %237

237:                                              ; preds = %235, %225, %224
  %238 = phi i32 [ %233, %235 ], [ %215, %225 ], [ %215, %224 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %239 = load ptr, ptr %180, align 8
  %240 = getelementptr i8, ptr %239, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 %238) #13, !srcloc !11
  %241 = or i32 %50, 384
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %242 = load ptr, ptr %180, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 %241) #13, !srcloc !11
  %243 = load i32, ptr %186, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 0, ptr %6, align 4
  %244 = getelementptr inbounds %struct.bcm2835_spi, ptr %180, i32 0, i32 8
  %245 = load i32, ptr %244, align 8
  %246 = sub i32 %245, %243
  store i32 %246, ptr %244, align 8
  br label %247

247:                                              ; preds = %256, %237
  %248 = phi i32 [ %243, %237 ], [ %260, %256 ]
  %249 = load ptr, ptr %188, align 8
  %250 = icmp eq ptr %249, null
  br i1 %250, label %255, label %251

251:                                              ; preds = %247
  %252 = tail call i32 @llvm.smin.i32(i32 %248, i32 4) #13
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %6, ptr nonnull align 1 %249, i32 %252, i1 false) #13
  %253 = getelementptr i8, ptr %249, i32 %252
  store ptr %253, ptr %188, align 8
  %254 = load i32, ptr %6, align 4
  br label %256

255:                                              ; preds = %247
  store i32 0, ptr %6, align 4
  br label %256

256:                                              ; preds = %255, %251
  %257 = phi i32 [ 0, %255 ], [ %254, %251 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %258 = load ptr, ptr %180, align 8
  %259 = getelementptr i8, ptr %258, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %257) #13, !srcloc !11
  %260 = add i32 %248, -4
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %247, label %262

262:                                              ; preds = %256
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  %263 = load ptr, ptr %180, align 8
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %263) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %265 = and i32 %264, 65536
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %267, %262
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !16
  %268 = load ptr, ptr %180, align 8
  %269 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %268) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %270 = and i32 %269, 65536
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %267, label %272

272:                                              ; preds = %267, %262
  %273 = load i32, ptr %186, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %274 = getelementptr inbounds %struct.bcm2835_spi, ptr %180, i32 0, i32 9
  %275 = load i32, ptr %274, align 4
  %276 = sub i32 %275, %273
  store i32 %276, ptr %274, align 4
  br label %277

277:                                              ; preds = %277, %272
  %278 = phi i32 [ %273, %272 ], [ %286, %277 ]
  %279 = load ptr, ptr %180, align 8
  %280 = getelementptr i8, ptr %279, i32 4
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %280) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  store i32 %281, ptr %5, align 4
  %282 = tail call i32 @llvm.smin.i32(i32 %278, i32 4) #13
  %283 = load ptr, ptr %203, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %283, ptr nonnull align 4 %5, i32 %282, i1 false) #13
  %284 = load ptr, ptr %203, align 4
  %285 = getelementptr i8, ptr %284, i32 %282
  store ptr %285, ptr %203, align 4
  %286 = add i32 %278, -4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %277, label %288

288:                                              ; preds = %277
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %289 = or i32 %50, 65584
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %290 = load ptr, ptr %180, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %290, i32 %289) #13, !srcloc !11
  %291 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %292 = load ptr, ptr %291, align 4
  %293 = load ptr, ptr %292, align 4
  %294 = getelementptr inbounds %struct.dma_device, ptr %293, i32 0, i32 15
  %295 = load ptr, ptr %294, align 4
  %296 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 6
  %297 = load ptr, ptr %296, align 4
  %298 = getelementptr inbounds %struct.scatterlist, ptr %297, i32 0, i32 3
  %299 = load i32, ptr %298, align 4
  %300 = load i32, ptr %186, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %295, i32 noundef %299, i32 noundef %300, i32 noundef 2) #13
  %301 = load i32, ptr %186, align 4
  %302 = load ptr, ptr %296, align 4
  %303 = getelementptr inbounds %struct.scatterlist, ptr %302, i32 0, i32 3
  %304 = load i32, ptr %303, align 4
  %305 = add i32 %304, %301
  store i32 %305, ptr %303, align 4
  %306 = load i32, ptr %186, align 4
  %307 = load ptr, ptr %296, align 4
  %308 = getelementptr inbounds %struct.scatterlist, ptr %307, i32 0, i32 4
  %309 = load i32, ptr %308, align 4
  %310 = sub i32 %309, %306
  store i32 %310, ptr %308, align 4
  %311 = load ptr, ptr %188, align 8
  br label %312

312:                                              ; preds = %288, %235
  %313 = phi ptr [ %311, %288 ], [ %189, %235 ]
  %314 = icmp eq ptr %313, null
  br i1 %314, label %383, label %315

315:                                              ; preds = %312
  %316 = load i32, ptr %185, align 8
  %317 = load i32, ptr %186, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %356, label %319

319:                                              ; preds = %315
  %320 = sub i32 %316, %317
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %321 = load ptr, ptr %180, align 8
  %322 = getelementptr i8, ptr %321, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %322, i32 %320) #13, !srcloc !11
  %323 = or i32 %50, 384
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %324 = load ptr, ptr %180, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %324, i32 %323) #13, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 0, ptr %4, align 4
  %325 = getelementptr inbounds %struct.bcm2835_spi, ptr %180, i32 0, i32 8
  %326 = load i32, ptr %325, align 8
  %327 = sub i32 %326, %320
  store i32 %327, ptr %325, align 8
  br label %328

328:                                              ; preds = %337, %319
  %329 = phi i32 [ %320, %319 ], [ %341, %337 ]
  %330 = load ptr, ptr %188, align 8
  %331 = icmp eq ptr %330, null
  br i1 %331, label %336, label %332

332:                                              ; preds = %328
  %333 = tail call i32 @llvm.smin.i32(i32 %329, i32 4) #13
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %4, ptr nonnull align 1 %330, i32 %333, i1 false) #13
  %334 = getelementptr i8, ptr %330, i32 %333
  store ptr %334, ptr %188, align 8
  %335 = load i32, ptr %4, align 4
  br label %337

336:                                              ; preds = %328
  store i32 0, ptr %4, align 4
  br label %337

337:                                              ; preds = %336, %332
  %338 = phi i32 [ 0, %336 ], [ %335, %332 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %339 = load ptr, ptr %180, align 8
  %340 = getelementptr i8, ptr %339, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %340, i32 %338) #13, !srcloc !11
  %341 = add i32 %329, -4
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %328, label %343

343:                                              ; preds = %337
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %344 = load ptr, ptr %180, align 8
  %345 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %344) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %346 = and i32 %345, 65536
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %348, %343
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !16
  %349 = load ptr, ptr %180, align 8
  %350 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %349) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %351 = and i32 %350, 65536
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %348, label %353

353:                                              ; preds = %348, %343
  %354 = or i32 %50, 65552
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %355 = load ptr, ptr %180, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %355, i32 %354) #13, !srcloc !11
  br label %356

356:                                              ; preds = %353, %315
  %357 = load i32, ptr %187, align 8
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %371, !prof !17

359:                                              ; preds = %356
  %360 = load i32, ptr %185, align 8
  %361 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5
  %362 = load ptr, ptr %361, align 4
  %363 = getelementptr inbounds %struct.scatterlist, ptr %362, i32 0, i32 3
  %364 = load i32, ptr %363, align 4
  %365 = add i32 %364, %360
  store i32 %365, ptr %363, align 4
  %366 = load i32, ptr %185, align 8
  %367 = load ptr, ptr %361, align 4
  %368 = getelementptr inbounds %struct.scatterlist, ptr %367, i32 0, i32 4
  %369 = load i32, ptr %368, align 4
  %370 = sub i32 %369, %366
  store i32 %370, ptr %368, align 4
  br label %383

371:                                              ; preds = %356
  %372 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5
  %373 = load ptr, ptr %372, align 4
  %374 = getelementptr inbounds %struct.scatterlist, ptr %373, i32 0, i32 4
  store i32 0, ptr %374, align 4
  %375 = load ptr, ptr %372, align 4
  %376 = getelementptr %struct.scatterlist, ptr %375, i32 1, i32 3
  %377 = load i32, ptr %376, align 4
  %378 = add i32 %377, 4
  store i32 %378, ptr %376, align 4
  %379 = load ptr, ptr %372, align 4
  %380 = getelementptr %struct.scatterlist, ptr %379, i32 1, i32 4
  %381 = load i32, ptr %380, align 4
  %382 = add i32 %381, -4
  store i32 %382, ptr %380, align 4
  br label %383

383:                                              ; preds = %371, %359, %312, %232
  %384 = load ptr, ptr %188, align 8
  %385 = icmp eq ptr %384, null
  br i1 %385, label %418, label %386

386:                                              ; preds = %383
  %387 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %388 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5
  %389 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5, i32 1
  %390 = load ptr, ptr %53, align 4
  %391 = icmp eq ptr %390, null
  %392 = zext i1 %391 to i32
  %393 = load i32, ptr %389, align 4
  %394 = load ptr, ptr %388, align 4
  %395 = load ptr, ptr %387, align 4
  %396 = icmp eq ptr %395, null
  br i1 %396, label %523, label %397

397:                                              ; preds = %386
  %398 = load ptr, ptr %395, align 4
  %399 = icmp eq ptr %398, null
  br i1 %399, label %523, label %400

400:                                              ; preds = %397
  %401 = getelementptr inbounds %struct.dma_device, ptr %398, i32 0, i32 39
  %402 = load ptr, ptr %401, align 4
  %403 = icmp eq ptr %402, null
  br i1 %403, label %523, label %404

404:                                              ; preds = %400
  %405 = tail call ptr %402(ptr noundef nonnull %395, ptr noundef %394, i32 noundef %393, i32 noundef 1, i32 noundef %392, ptr noundef null) #13
  %406 = icmp eq ptr %405, null
  br i1 %406, label %523, label %407

407:                                              ; preds = %404
  %408 = load ptr, ptr %53, align 4
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %414

410:                                              ; preds = %407
  %411 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %405, i32 0, i32 6
  store ptr @bcm2835_spi_dma_tx_done, ptr %411, align 4
  %412 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %405, i32 0, i32 8
  store ptr %0, ptr %412, align 4
  %413 = getelementptr inbounds %struct.bcm2835_spi, ptr %180, i32 0, i32 18
  store ptr %10, ptr %413, align 8
  br label %414

414:                                              ; preds = %410, %407
  %415 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %405, i32 0, i32 4
  %416 = load ptr, ptr %415, align 4
  %417 = tail call i32 %416(ptr noundef nonnull %405) #13
  br label %424

418:                                              ; preds = %383
  %419 = getelementptr inbounds %struct.bcm2835_spi, ptr %180, i32 0, i32 21
  %420 = load ptr, ptr %419, align 4
  %421 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %420, i32 0, i32 4
  %422 = load ptr, ptr %421, align 4
  %423 = tail call i32 %422(ptr noundef %420) #13
  br label %424

424:                                              ; preds = %418, %414
  %425 = phi i32 [ %417, %414 ], [ %423, %418 ]
  %426 = tail call i32 @llvm.smin.i32(i32 %425, i32 0) #13
  %427 = icmp sgt i32 %425, -1
  br i1 %427, label %428, label %523

428:                                              ; preds = %424
  %429 = getelementptr inbounds %struct.bcm2835_spi, ptr %180, i32 0, i32 8
  %430 = load i32, ptr %429, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %431 = load ptr, ptr %180, align 8
  %432 = getelementptr i8, ptr %431, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %432, i32 %430) #13, !srcloc !11
  %433 = or i32 %50, 384
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %434 = load ptr, ptr %180, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %434, i32 %433) #13, !srcloc !11
  %435 = getelementptr inbounds %struct.bcm2835_spi, ptr %180, i32 0, i32 19
  store i32 1, ptr %435, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !18
  %436 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %437 = load ptr, ptr %436, align 8
  %438 = load ptr, ptr %437, align 4
  %439 = getelementptr inbounds %struct.dma_device, ptr %438, i32 0, i32 50
  %440 = load ptr, ptr %439, align 4
  tail call void %440(ptr noundef %437) #13
  %441 = load ptr, ptr %203, align 4
  %442 = icmp eq ptr %441, null
  br i1 %442, label %467, label %443

443:                                              ; preds = %428
  %444 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %445 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 6
  %446 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 6, i32 1
  %447 = load i32, ptr %446, align 4
  %448 = load ptr, ptr %445, align 4
  %449 = load ptr, ptr %444, align 4
  %450 = icmp eq ptr %449, null
  br i1 %450, label %477, label %451

451:                                              ; preds = %443
  %452 = load ptr, ptr %449, align 4
  %453 = icmp eq ptr %452, null
  br i1 %453, label %477, label %454

454:                                              ; preds = %451
  %455 = getelementptr inbounds %struct.dma_device, ptr %452, i32 0, i32 39
  %456 = load ptr, ptr %455, align 4
  %457 = icmp eq ptr %456, null
  br i1 %457, label %477, label %458

458:                                              ; preds = %454
  %459 = tail call ptr %456(ptr noundef nonnull %449, ptr noundef %448, i32 noundef %447, i32 noundef 2, i32 noundef 1, ptr noundef null) #13
  %460 = icmp eq ptr %459, null
  br i1 %460, label %477, label %461

461:                                              ; preds = %458
  %462 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %459, i32 0, i32 6
  store ptr @bcm2835_spi_dma_rx_done, ptr %462, align 4
  %463 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %459, i32 0, i32 8
  store ptr %0, ptr %463, align 4
  %464 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %459, i32 0, i32 4
  %465 = load ptr, ptr %464, align 4
  %466 = tail call i32 %465(ptr noundef nonnull %459) #13
  br label %473

467:                                              ; preds = %428
  %468 = getelementptr inbounds %struct.bcm2835_spidev, ptr %10, i32 0, i32 1
  %469 = load ptr, ptr %468, align 4
  %470 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %469, i32 0, i32 4
  %471 = load ptr, ptr %470, align 4
  %472 = tail call i32 %471(ptr noundef %469) #13
  br label %473

473:                                              ; preds = %467, %461
  %474 = phi i32 [ %466, %461 ], [ %472, %467 ]
  %475 = tail call i32 @llvm.smin.i32(i32 %474, i32 0) #13
  %476 = icmp sgt i32 %474, -1
  br i1 %476, label %494, label %477

477:                                              ; preds = %473, %458, %454, %451, %443
  %478 = phi i32 [ %475, %473 ], [ -22, %458 ], [ -22, %454 ], [ -22, %451 ], [ -22, %443 ]
  %479 = load ptr, ptr %436, align 8
  %480 = load ptr, ptr %479, align 4
  %481 = getelementptr inbounds %struct.dma_device, ptr %480, i32 0, i32 47
  %482 = load ptr, ptr %481, align 4
  %483 = icmp eq ptr %482, null
  br i1 %483, label %493, label %484

484:                                              ; preds = %477
  %485 = tail call i32 %482(ptr noundef %479) #13
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %493

487:                                              ; preds = %484
  %488 = load ptr, ptr %479, align 4
  %489 = getelementptr inbounds %struct.dma_device, ptr %488, i32 0, i32 48
  %490 = load ptr, ptr %489, align 4
  %491 = icmp eq ptr %490, null
  br i1 %491, label %493, label %492

492:                                              ; preds = %487
  tail call void %490(ptr noundef %479) #13
  br label %493

493:                                              ; preds = %492, %487, %484, %477
  store i32 0, ptr %435, align 4
  br label %523

494:                                              ; preds = %473
  %495 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %496 = load ptr, ptr %495, align 4
  %497 = load ptr, ptr %496, align 4
  %498 = getelementptr inbounds %struct.dma_device, ptr %497, i32 0, i32 50
  %499 = load ptr, ptr %498, align 4
  tail call void %499(ptr noundef %496) #13
  %500 = getelementptr inbounds %struct.bcm2835_spi, ptr %180, i32 0, i32 20
  store i32 1, ptr %500, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %501 = load ptr, ptr %203, align 4
  %502 = icmp eq ptr %501, null
  br i1 %502, label %503, label %582

503:                                              ; preds = %494
  %504 = load i32, ptr %435, align 4
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %582

506:                                              ; preds = %503
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %500) #13, !srcloc !21
  br label %507

507:                                              ; preds = %507, %506
  %508 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %500, i32 1, i32 0) #13, !srcloc !22
  %509 = extractvalue { i32, i32 } %508, 0
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %507

511:                                              ; preds = %507
  %512 = extractvalue { i32, i32 } %508, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %582, label %514

514:                                              ; preds = %511
  %515 = load ptr, ptr %495, align 4
  %516 = load ptr, ptr %515, align 4
  %517 = getelementptr inbounds %struct.dma_device, ptr %516, i32 0, i32 47
  %518 = load ptr, ptr %517, align 4
  %519 = icmp eq ptr %518, null
  br i1 %519, label %522, label %520

520:                                              ; preds = %514
  %521 = tail call i32 %518(ptr noundef %515) #13
  br label %522

522:                                              ; preds = %520, %514
  tail call fastcc void @bcm2835_spi_reset_hw(ptr noundef %180) #13
  br label %582

523:                                              ; preds = %493, %424, %404, %400, %397, %386
  %524 = phi i32 [ %426, %424 ], [ %478, %493 ], [ -22, %404 ], [ -22, %400 ], [ -22, %397 ], [ -22, %386 ]
  %525 = load ptr, ptr %180, align 8
  %526 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %525) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %527 = and i32 %526, -67505
  %528 = or i32 %527, 65584
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %529 = load ptr, ptr %180, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %529, i32 %528) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %530 = load ptr, ptr %180, align 8
  %531 = getelementptr i8, ptr %530, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %531, i32 0) #13, !srcloc !11
  %532 = load ptr, ptr %184, align 8
  %533 = load i32, ptr %185, align 8
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %582, label %535

535:                                              ; preds = %523
  %536 = load i32, ptr %186, align 4
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %549, label %538

538:                                              ; preds = %535
  %539 = getelementptr inbounds %struct.spi_transfer, ptr %532, i32 0, i32 6
  %540 = load ptr, ptr %539, align 4
  %541 = getelementptr inbounds %struct.scatterlist, ptr %540, i32 0, i32 3
  %542 = load i32, ptr %541, align 4
  %543 = sub i32 %542, %536
  store i32 %543, ptr %541, align 4
  %544 = load i32, ptr %186, align 4
  %545 = load ptr, ptr %539, align 4
  %546 = getelementptr inbounds %struct.scatterlist, ptr %545, i32 0, i32 4
  %547 = load i32, ptr %546, align 4
  %548 = add i32 %547, %544
  store i32 %548, ptr %546, align 4
  br label %549

549:                                              ; preds = %538, %535
  %550 = load ptr, ptr %188, align 8
  %551 = icmp eq ptr %550, null
  br i1 %551, label %580, label %552

552:                                              ; preds = %549
  %553 = load i32, ptr %187, align 8
  %554 = icmp eq i32 %553, 0
  %555 = load i32, ptr %185, align 8
  br i1 %554, label %556, label %563, !prof !17

556:                                              ; preds = %552
  %557 = getelementptr inbounds %struct.spi_transfer, ptr %532, i32 0, i32 5
  %558 = load ptr, ptr %557, align 4
  %559 = getelementptr inbounds %struct.scatterlist, ptr %558, i32 0, i32 3
  %560 = load i32, ptr %559, align 4
  %561 = sub i32 %560, %555
  store i32 %561, ptr %559, align 4
  %562 = load i32, ptr %185, align 8
  br label %572

563:                                              ; preds = %552
  %564 = add i32 %555, -4
  %565 = getelementptr inbounds %struct.spi_transfer, ptr %532, i32 0, i32 5
  %566 = load ptr, ptr %565, align 4
  %567 = getelementptr inbounds %struct.scatterlist, ptr %566, i32 0, i32 4
  store i32 %564, ptr %567, align 4
  %568 = load ptr, ptr %565, align 4
  %569 = getelementptr %struct.scatterlist, ptr %568, i32 1, i32 3
  %570 = load i32, ptr %569, align 4
  %571 = add i32 %570, -4
  store i32 %571, ptr %569, align 4
  br label %572

572:                                              ; preds = %563, %556
  %573 = phi ptr [ %565, %563 ], [ %557, %556 ]
  %574 = phi i32 [ 1, %563 ], [ 0, %556 ]
  %575 = phi i32 [ 4, %563 ], [ %562, %556 ]
  %576 = load ptr, ptr %573, align 4
  %577 = getelementptr %struct.scatterlist, ptr %576, i32 %574, i32 4
  %578 = load i32, ptr %577, align 4
  %579 = add i32 %578, %575
  store i32 %579, ptr %577, align 4
  br label %580

580:                                              ; preds = %572, %549
  store i32 0, ptr %185, align 8
  br label %582

581:                                              ; preds = %173
  tail call fastcc void @bcm2835_spi_transfer_one_irq(ptr noundef %0, i32 noundef %50, i1 noundef zeroext true)
  br label %582

582:                                              ; preds = %581, %580, %523, %522, %511, %503, %494, %165, %161
  %583 = phi i32 [ 1, %581 ], [ 1, %161 ], [ 0, %165 ], [ 1, %522 ], [ 1, %511 ], [ 1, %503 ], [ 1, %494 ], [ %524, %523 ], [ %524, %580 ]
  ret i32 %583
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_spi_handle_err(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = tail call i32 %9(ptr noundef %6) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 48
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void %17(ptr noundef %6) #13
  br label %20

20:                                               ; preds = %19, %14, %11, %2
  %21 = getelementptr inbounds %struct.bcm2835_spi, ptr %4, i32 0, i32 19
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 47
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %20
  %29 = tail call i32 %26(ptr noundef %23) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load ptr, ptr %23, align 4
  %33 = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 48
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  tail call void %34(ptr noundef %23) #13
  br label %37

37:                                               ; preds = %36, %31, %28, %20
  %38 = getelementptr inbounds %struct.bcm2835_spi, ptr %4, i32 0, i32 20
  store i32 0, ptr %38, align 8
  %39 = getelementptr inbounds %struct.bcm2835_spi, ptr %4, i32 0, i32 4
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.bcm2835_spi, ptr %4, i32 0, i32 10
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %93, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.bcm2835_spi, ptr %4, i32 0, i32 11
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.spi_transfer, ptr %40, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.scatterlist, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 %52, %46
  store i32 %53, ptr %51, align 4
  %54 = load i32, ptr %45, align 4
  %55 = load ptr, ptr %49, align 4
  %56 = getelementptr inbounds %struct.scatterlist, ptr %55, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, %54
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %48, %44
  %60 = getelementptr inbounds %struct.bcm2835_spi, ptr %4, i32 0, i32 6
  %61 = load ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %92, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.bcm2835_spi, ptr %4, i32 0, i32 12
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, 0
  %67 = load i32, ptr %41, align 8
  br i1 %66, label %68, label %75, !prof !17

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.spi_transfer, ptr %40, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.scatterlist, ptr %70, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = sub i32 %72, %67
  store i32 %73, ptr %71, align 4
  %74 = load i32, ptr %41, align 8
  br label %84

75:                                               ; preds = %63
  %76 = add i32 %67, -4
  %77 = getelementptr inbounds %struct.spi_transfer, ptr %40, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.scatterlist, ptr %78, i32 0, i32 4
  store i32 %76, ptr %79, align 4
  %80 = load ptr, ptr %77, align 4
  %81 = getelementptr %struct.scatterlist, ptr %80, i32 1, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, -4
  store i32 %83, ptr %81, align 4
  br label %84

84:                                               ; preds = %75, %68
  %85 = phi ptr [ %77, %75 ], [ %69, %68 ]
  %86 = phi i32 [ 1, %75 ], [ 0, %68 ]
  %87 = phi i32 [ 4, %75 ], [ %74, %68 ]
  %88 = load ptr, ptr %85, align 4
  %89 = getelementptr %struct.scatterlist, ptr %88, i32 %86, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, %87
  store i32 %91, ptr %89, align 4
  br label %92

92:                                               ; preds = %84, %59
  store i32 0, ptr %41, align 8
  br label %93

93:                                               ; preds = %92, %37
  %94 = load ptr, ptr %4, align 8
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %96 = and i32 %95, -67505
  %97 = or i32 %96, 65584
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %98 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %97) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %99 = load ptr, ptr %4, align 8
  %100 = getelementptr i8, ptr %99, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 0) #13, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_spi_prepare_message(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @spi_split_transfers_maxsize(ptr noundef %0, ptr noundef %1, i32 noundef 65532, i32 noundef 3265) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %2
  %16 = load i32, ptr %8, align 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %17 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #13, !srcloc !11
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ 0, %15 ], [ %13, %12 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_spi_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %5 = and i32 %4, 1048576
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 64) #13
  %11 = sub i32 %9, %10
  store i32 %11, ptr %8, align 4
  %12 = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 7
  br label %13

13:                                               ; preds = %23, %7
  %14 = phi i32 [ %10, %7 ], [ %24, %23 ]
  %15 = load ptr, ptr %1, align 8
  %16 = getelementptr i8, ptr %15, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %18 = load ptr, ptr %12, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = trunc i32 %17 to i8
  %22 = getelementptr i8, ptr %18, i32 1
  store ptr %22, ptr %12, align 4
  store i8 %21, ptr %18, align 1
  br label %23

23:                                               ; preds = %20, %13
  %24 = add i32 %14, -1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %48, label %13

26:                                               ; preds = %2
  %27 = and i32 %4, 524288
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @llvm.smin.i32(i32 %31, i32 48) #13
  %33 = sub i32 %31, %32
  store i32 %33, ptr %30, align 4
  %34 = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 7
  br label %35

35:                                               ; preds = %45, %29
  %36 = phi i32 [ %32, %29 ], [ %46, %45 ]
  %37 = load ptr, ptr %1, align 8
  %38 = getelementptr i8, ptr %37, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %40 = load ptr, ptr %34, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = trunc i32 %39 to i8
  %44 = getelementptr i8, ptr %40, i32 1
  store ptr %44, ptr %34, align 4
  store i8 %43, ptr %40, align 1
  br label %45

45:                                               ; preds = %42, %35
  %46 = add i32 %36, -1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %35

48:                                               ; preds = %45, %26, %23
  %49 = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 8
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  %52 = and i32 %4, 65536
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %73, label %55

55:                                               ; preds = %48
  %56 = tail call i32 @llvm.smin.i32(i32 %50, i32 64) #13
  %57 = sub i32 %50, %56
  store i32 %57, ptr %49, align 8
  %58 = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 6
  br label %59

59:                                               ; preds = %66, %55
  %60 = phi i32 [ %56, %55 ], [ %71, %66 ]
  %61 = load ptr, ptr %58, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = getelementptr i8, ptr %61, i32 1
  store ptr %64, ptr %58, align 8
  %65 = load i8, ptr %61, align 1
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi i8 [ %65, %63 ], [ 0, %59 ]
  %68 = zext i8 %67 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %69 = load ptr, ptr %1, align 8
  %70 = getelementptr i8, ptr %69, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #13, !srcloc !11
  %71 = add i32 %60, -1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %59

73:                                               ; preds = %66, %48
  %74 = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 9
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %97, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 7
  br label %79

79:                                               ; preds = %93, %77
  %80 = load ptr, ptr %1, align 8
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %82 = and i32 %81, 131072
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %1, align 8
  %86 = getelementptr i8, ptr %85, i32 4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %88 = load ptr, ptr %78, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = trunc i32 %87 to i8
  %92 = getelementptr i8, ptr %88, i32 1
  store ptr %92, ptr %78, align 4
  store i8 %91, ptr %88, align 1
  br label %93

93:                                               ; preds = %90, %84
  %94 = load i32, ptr %74, align 4
  %95 = add i32 %94, -1
  store i32 %95, ptr %74, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %79

97:                                               ; preds = %93, %79, %73
  %98 = load i32, ptr %49, align 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %121, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 6
  br label %102

102:                                              ; preds = %113, %100
  %103 = load ptr, ptr %1, align 8
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %105 = and i32 %104, 262144
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %102
  %108 = load ptr, ptr %101, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = getelementptr i8, ptr %108, i32 1
  store ptr %111, ptr %101, align 8
  %112 = load i8, ptr %108, align 1
  br label %113

113:                                              ; preds = %110, %107
  %114 = phi i8 [ %112, %110 ], [ 0, %107 ]
  %115 = zext i8 %114 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %116 = load ptr, ptr %1, align 8
  %117 = getelementptr i8, ptr %116, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #13, !srcloc !11
  %118 = load i32, ptr %49, align 8
  %119 = add i32 %118, -1
  store i32 %119, ptr %49, align 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %102

121:                                              ; preds = %113, %102, %97
  %122 = load i32, ptr %74, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load ptr, ptr %1, align 8
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %127 = and i32 %126, -67505
  %128 = or i32 %127, 65584
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %129 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %128) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %130 = load ptr, ptr %1, align 8
  %131 = getelementptr i8, ptr %130, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 0) #13, !srcloc !11
  %132 = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 5
  %133 = load ptr, ptr %132, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %133) #13
  br label %134

134:                                              ; preds = %124, %121
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm2835_dma_release(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = tail call i32 %9(ptr noundef nonnull %4) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 48
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void %17(ptr noundef nonnull %4) #13
  br label %20

20:                                               ; preds = %19, %14, %11, %6
  %21 = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 21
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef nonnull %22) #13
  br label %33

33:                                               ; preds = %29, %24, %20
  %34 = getelementptr inbounds %struct.bcm2835_spi, ptr %1, i32 0, i32 22
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %3, align 8
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dma_device, ptr %39, i32 0, i32 15
  %41 = load ptr, ptr %40, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %41, i32 noundef %35, i32 noundef 4, i32 noundef 1, i32 noundef 32) #13
  br label %42

42:                                               ; preds = %37, %33
  %43 = load ptr, ptr %3, align 8
  tail call void @dma_release_channel(ptr noundef %43) #13
  store ptr null, ptr %3, align 8
  br label %44

44:                                               ; preds = %42, %2
  %45 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %64, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 4
  %50 = getelementptr inbounds %struct.dma_device, ptr %49, i32 0, i32 47
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %48
  %54 = tail call i32 %51(ptr noundef nonnull %46) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load ptr, ptr %46, align 4
  %58 = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 48
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  tail call void %59(ptr noundef nonnull %46) #13
  br label %62

62:                                               ; preds = %61, %56, %53, %48
  %63 = load ptr, ptr %45, align 4
  tail call void @dma_release_channel(ptr noundef %63) #13
  store ptr null, ptr %45, align 4
  br label %64

64:                                               ; preds = %62, %44
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @chip_match_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 4
  %4 = tail call i32 @strcmp(ptr noundef %3, ptr noundef %1)
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_request_own_desc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_slave_caps(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bcm2835_spi_can_dma(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #9 {
  %4 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 95
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm2835_spi_transfer_one_irq(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcm2835_spi, ptr %5, i32 0, i32 15
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %7, 1
  store i64 %8, ptr %6, align 8
  %9 = or i32 %1, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %10 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #13, !srcloc !11
  br i1 %2, label %11, label %31

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.bcm2835_spi, ptr %5, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 64) #13
  %15 = sub i32 %13, %14
  store i32 %15, ptr %12, align 8
  %16 = getelementptr inbounds %struct.bcm2835_spi, ptr %5, i32 0, i32 6
  br label %17

17:                                               ; preds = %24, %11
  %18 = phi i32 [ %14, %11 ], [ %29, %24 ]
  %19 = load ptr, ptr %16, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %19, i32 1
  store ptr %22, ptr %16, align 8
  %23 = load i8, ptr %19, align 1
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i8 [ %23, %21 ], [ 0, %17 ]
  %26 = zext i8 %25 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #13, !srcloc !11
  %29 = add i32 %18, -1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %17

31:                                               ; preds = %24, %3
  %32 = getelementptr inbounds %struct.bcm2835_spi, ptr %5, i32 0, i32 8
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bcm2835_spi, ptr %5, i32 0, i32 6
  br label %37

37:                                               ; preds = %48, %35
  %38 = load ptr, ptr %5, align 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %40 = and i32 %39, 262144
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %36, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = getelementptr i8, ptr %43, i32 1
  store ptr %46, ptr %36, align 8
  %47 = load i8, ptr %43, align 1
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i8 [ %47, %45 ], [ 0, %42 ]
  %50 = zext i8 %49 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %51 = load ptr, ptr %5, align 8
  %52 = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #13, !srcloc !11
  %53 = load i32, ptr %32, align 8
  %54 = add i32 %53, -1
  store i32 %54, ptr %32, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %37

56:                                               ; preds = %48, %37, %31
  %57 = or i32 %1, 1664
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %58 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %57) #13, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm2835_spi_reset_hw(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %4 = and i32 %3, -67505
  %5 = or i32 %4, 65584
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %6 = load ptr, ptr %0, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #13, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_spi_dma_rx_done(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 %8(ptr noundef %5) #13
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 19
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 20
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 10
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %69, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.spi_transfer, ptr %16, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.scatterlist, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %28, %22
  store i32 %29, ptr %27, align 4
  %30 = load i32, ptr %21, align 4
  %31 = load ptr, ptr %25, align 4
  %32 = getelementptr inbounds %struct.scatterlist, ptr %31, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %30
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %24, %20
  %36 = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 6
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %68, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 12
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  %43 = load i32, ptr %17, align 8
  br i1 %42, label %44, label %51, !prof !17

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.spi_transfer, ptr %16, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.scatterlist, ptr %46, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = sub i32 %48, %43
  store i32 %49, ptr %47, align 4
  %50 = load i32, ptr %17, align 8
  br label %60

51:                                               ; preds = %39
  %52 = add i32 %43, -4
  %53 = getelementptr inbounds %struct.spi_transfer, ptr %16, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.scatterlist, ptr %54, i32 0, i32 4
  store i32 %52, ptr %55, align 4
  %56 = load ptr, ptr %53, align 4
  %57 = getelementptr %struct.scatterlist, ptr %56, i32 1, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, -4
  store i32 %59, ptr %57, align 4
  br label %60

60:                                               ; preds = %51, %44
  %61 = phi ptr [ %53, %51 ], [ %45, %44 ]
  %62 = phi i32 [ 1, %51 ], [ 0, %44 ]
  %63 = phi i32 [ 4, %51 ], [ %50, %44 ]
  %64 = load ptr, ptr %61, align 4
  %65 = getelementptr %struct.scatterlist, ptr %64, i32 %62, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, %63
  store i32 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %60, %35
  store i32 0, ptr %17, align 8
  br label %69

69:                                               ; preds = %68, %12
  %70 = load ptr, ptr %3, align 8
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %72 = and i32 %71, -67505
  %73 = or i32 %72, 65584
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %74 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %73) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %75 = load ptr, ptr %3, align 8
  %76 = getelementptr i8, ptr %75, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 0) #13, !srcloc !11
  tail call void @spi_finalize_current_transfer(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_spi_dma_tx_done(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %6 = and i32 %5, 65536
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 18
  br label %10

10:                                               ; preds = %10, %8
  %11 = load ptr, ptr %9, align 8
  %12 = getelementptr inbounds %struct.bcm2835_spidev, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %14 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #13, !srcloc !11
  %15 = load ptr, ptr %3, align 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %17 = and i32 %16, 65536
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %10, label %19

19:                                               ; preds = %10, %1
  %20 = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 19
  store i32 0, ptr %20, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !24
  %21 = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #13, !srcloc !21
  br label %22

22:                                               ; preds = %22, %19
  %23 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %21, i32 1, i32 0) #13, !srcloc !22
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22
  %27 = extractvalue { i32, i32 } %23, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 47
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = tail call i32 %34(ptr noundef %31) #13
  br label %38

38:                                               ; preds = %36, %29, %26
  %39 = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 4
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 10
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %93, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 11
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.spi_transfer, ptr %40, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.scatterlist, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 %52, %46
  store i32 %53, ptr %51, align 4
  %54 = load i32, ptr %45, align 4
  %55 = load ptr, ptr %49, align 4
  %56 = getelementptr inbounds %struct.scatterlist, ptr %55, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, %54
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %48, %44
  %60 = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 6
  %61 = load ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %92, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.bcm2835_spi, ptr %3, i32 0, i32 12
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, 0
  %67 = load i32, ptr %41, align 8
  br i1 %66, label %68, label %75, !prof !17

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.spi_transfer, ptr %40, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.scatterlist, ptr %70, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = sub i32 %72, %67
  store i32 %73, ptr %71, align 4
  %74 = load i32, ptr %41, align 8
  br label %84

75:                                               ; preds = %63
  %76 = add i32 %67, -4
  %77 = getelementptr inbounds %struct.spi_transfer, ptr %40, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.scatterlist, ptr %78, i32 0, i32 4
  store i32 %76, ptr %79, align 4
  %80 = load ptr, ptr %77, align 4
  %81 = getelementptr %struct.scatterlist, ptr %80, i32 1, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, -4
  store i32 %83, ptr %81, align 4
  br label %84

84:                                               ; preds = %75, %68
  %85 = phi ptr [ %77, %75 ], [ %69, %68 ]
  %86 = phi i32 [ 1, %75 ], [ 0, %68 ]
  %87 = phi i32 [ 4, %75 ], [ %74, %68 ]
  %88 = load ptr, ptr %85, align 4
  %89 = getelementptr %struct.scatterlist, ptr %88, i32 %86, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, %87
  store i32 %91, ptr %89, align 4
  br label %92

92:                                               ; preds = %84, %59
  store i32 0, ptr %41, align 8
  br label %93

93:                                               ; preds = %92, %38
  %94 = load ptr, ptr %3, align 8
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %96 = and i32 %95, -67505
  %97 = or i32 %96, 65584
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %98 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %97) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %99 = load ptr, ptr %3, align 8
  %100 = getelementptr i8, ptr %99, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 0) #13, !srcloc !11
  tail call void @spi_finalize_current_transfer(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_split_transfers_maxsize(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
!10 = !{i64 2153370472}
!11 = !{i64 5065895}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 5066313}
!14 = !{i64 2153370121}
!15 = !{i64 2153374265}
!16 = !{i64 2153374107}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2153380083}
!19 = !{i64 2153380211}
!20 = !{i64 2153381133}
!21 = !{i64 481193, i64 2147971164, i64 2147971190, i64 2147971237, i64 2147971259, i64 2147971287, i64 2147971307}
!22 = !{i64 493364, i64 493385, i64 493408, i64 493427, i64 493446}
!23 = !{i64 2153381515}
!24 = !{i64 2153378612}
!25 = !{i64 2153379536}
!26 = !{i64 2153379918}
