; ModuleID = '/llk/IR/drivers/spi/spi-tegra114.c_pt.bc'
source_filename = "../drivers/spi/spi-tegra114.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.tegra_spi_soc_data = type { i8 }
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
%struct.tegra_spi_data = type { ptr, ptr, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %struct.completion, %struct.completion, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, %struct.completion, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.tegra_spi_client_data = type { i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_tegra114__245_1530_tegra_spi_driver_init6 = internal global ptr @tegra_spi_driver_init, section ".initcall6.init", align 4
@tegra_spi_driver = internal global %struct.platform_driver { ptr @tegra_spi_probe, ptr @tegra_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_spi_driver_exit = internal global ptr @tegra_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias246 = internal constant [41 x i8] c"spi_tegra114.alias=platform:spi-tegra114\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [63 x i8] c"spi_tegra114.description=NVIDIA Tegra114 SPI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [59 x i8] c"spi_tegra114.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [43 x i8] c"spi_tegra114.file=drivers/spi/spi-tegra114\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [28 x i8] c"spi_tegra114.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"spi-tegra114\00", align 1
@tegra_spi_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_spi_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_spi_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_spi_soc_data }, %struct.of_device_id zeroinitializer], align 4
@tegra_spi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_spi_suspend, ptr @tegra_spi_resume, ptr @tegra_spi_suspend, ptr @tegra_spi_resume, ptr @tegra_spi_suspend, ptr @tegra_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_spi_runtime_suspend, ptr @tegra_spi_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"master allocation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"spi-max-frequency\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"unsupported tegra\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"can not get clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"can not get reset\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"pm runtime get failed, e = %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"Failed to register ISR for IRQ %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"can not register to master err %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"pm runtime failed, e = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"nvidia,tx-clk-tap-delay\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"nvidia,rx-clk-tap-delay\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.13 = private unnamed_addr constant [36 x i8] c"spi can not start transfer, err %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"drivers/spi/spi-tegra114.c\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"spi transfer timeout\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Error in Transfer\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"DMA slave config failed: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Starting tx dma failed, err %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Starting rx dma failed, err %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Not able to get desc for Tx\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"Not able to get desc for Rx\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.22 = private unnamed_addr constant [32 x i8] c"timeout waiting for fifo flush\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"Invalid delay unit %d, should be SPI_DELAY_UNIT_SCK\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Dma channel is not available\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c" Not able to allocate the dma buffer\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"clk_prepare failed: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"CpuXfer ERROR bit set 0x%x\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"CpuXfer 0x%08x:0x%08x\0A\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"TxDma Xfer failed\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"RxDma Xfer failed\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"DmaXfer: ERROR bit set 0x%x\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"DmaXfer 0x%08x:0x%08x\0A\00", align 1
@tegra114_spi_soc_data = internal global %struct.tegra_spi_soc_data zeroinitializer, align 1
@tegra124_spi_soc_data = internal global %struct.tegra_spi_soc_data zeroinitializer, align 1
@tegra210_spi_soc_data = internal global %struct.tegra_spi_soc_data { i8 1 }, align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias246, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_tegra_spi_driver_exit, ptr @__initcall__kmod_spi_tegra114__245_1530_tegra_spi_driver_init6, ptr @tegra_spi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_spi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_spi_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_spi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_spi_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_spi_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @__spi_alloc_controller(ptr noundef %2, i32 noundef 216, i1 noundef zeroext false) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #10
  br label %195

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 9
  %13 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.2, ptr noundef %12, i32 noundef 1, i32 noundef 0) #9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  store i32 25000000, ptr %12, align 8
  br label %16

16:                                               ; preds = %15, %6
  %17 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 56
  store i8 1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 5
  store i32 1311, ptr %18, align 8
  %19 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 7
  store i32 -8, ptr %19, align 8
  %20 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 20
  store ptr @tegra_spi_setup, ptr %20, align 4
  %21 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 23
  store ptr @tegra_spi_cleanup, ptr %21, align 8
  %22 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 45
  store ptr @tegra_spi_transfer_one_message, ptr %22, align 4
  %23 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 21
  store ptr @tegra_spi_set_hw_cs_timing, ptr %23, align 8
  %24 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 3
  store i16 4, ptr %24, align 2
  %25 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 36
  store i8 1, ptr %25, align 4
  %26 = load ptr, ptr %10, align 8
  %27 = tail call i32 @of_alias_get_id(ptr noundef %26, ptr noundef nonnull @.str.3) #9
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = trunc i32 %27 to i16
  %31 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 2
  store i16 %30, ptr %31, align 8
  br label %32

32:                                               ; preds = %29, %16
  %33 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 1
  store ptr %3, ptr %33, align 4
  store ptr %2, ptr %9, align 4
  %34 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 2
  store i32 0, ptr %34, align 4
  %35 = tail call ptr @of_device_get_match_data(ptr noundef %2) #9
  %36 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 45
  store ptr %35, ptr %36, align 4
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #10
  br label %193

39:                                               ; preds = %32
  %40 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %41 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %40) #9
  %42 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 5
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = ptrtoint ptr %41 to i32
  br label %193

46:                                               ; preds = %39
  %47 = load i32, ptr %40, align 4
  %48 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 6
  store i32 %47, ptr %48, align 4
  %49 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %50 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 7
  store i32 %49, ptr %50, align 4
  %51 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #9
  %52 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 3
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #10
  %55 = load ptr, ptr %52, align 4
  %56 = ptrtoint ptr %55 to i32
  br label %193

57:                                               ; preds = %46
  %58 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %59 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 4
  store ptr %58, ptr %59, align 4
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #10
  %62 = load ptr, ptr %59, align 4
  %63 = ptrtoint ptr %62 to i32
  br label %193

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 19
  store i32 256, ptr %65, align 4
  %66 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 18
  store i32 16384, ptr %66, align 4
  %67 = tail call fastcc i32 @tegra_spi_init_dma_param(ptr noundef %9, i1 noundef zeroext true)
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %193, label %69

69:                                               ; preds = %64
  %70 = tail call fastcc i32 @tegra_spi_init_dma_param(ptr noundef %9, i1 noundef zeroext false)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %181, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %66, align 4
  store i32 %73, ptr %65, align 4
  %74 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 23
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 23, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %75, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #9
  %76 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 22
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 22, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %77, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #9
  %78 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 35
  store i32 0, ptr %78, align 4
  %79 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 35, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %79, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #9
  tail call void @pm_runtime_enable(ptr noundef %2) #9
  %80 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %81 = load i16, ptr %80, align 8
  %82 = and i16 %81, 7
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %72
  %85 = load ptr, ptr %7, align 8
  %86 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 8
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.tegra_spi_data, ptr %87, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 @clk_prepare(ptr noundef %89) #9
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = tail call i32 @clk_enable(ptr noundef %89) #9
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  tail call void @clk_unprepare(ptr noundef %89) #9
  br label %96

96:                                               ; preds = %95, %84
  %97 = phi i32 [ %90, %84 ], [ %93, %95 ]
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load ptr, ptr %87, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.29, i32 noundef %97) #10
  br label %156

101:                                              ; preds = %96, %92, %72
  %102 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #9
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %102) #10
  %105 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %105) #9, !srcloc !9
  %106 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %105, ptr %105, i32 0, i32 -1, ptr elementtype(i32) %105) #9, !srcloc !10
  %107 = extractvalue { i32, i32, i32 } %106, 0
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %156, label %109

109:                                              ; preds = %104
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  br label %156

110:                                              ; preds = %101
  %111 = load ptr, ptr %59, align 4
  %112 = tail call i32 @reset_control_assert(ptr noundef %111) #9
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 429496) #9
  %114 = load ptr, ptr %59, align 4
  %115 = tail call i32 @reset_control_deassert(ptr noundef %114) #9
  %116 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 30
  store i32 1073741824, ptr %116, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %117 = load ptr, ptr %42, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 1073741824) #9, !srcloc !13
  %118 = load ptr, ptr %42, align 4
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %120 = load ptr, ptr %42, align 4
  %121 = getelementptr i8, ptr %120, i32 8
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %123 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 32
  store i32 %122, ptr %123, align 4
  %124 = load ptr, ptr %42, align 4
  %125 = getelementptr i8, ptr %124, i32 12
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %127 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 33
  store i32 %126, ptr %127, align 4
  %128 = load ptr, ptr %42, align 4
  %129 = getelementptr i8, ptr %128, i32 4
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %131 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 31
  store i32 %130, ptr %131, align 4
  %132 = load i16, ptr %24, align 2
  %133 = trunc i16 %132 to i8
  %134 = add i8 %133, 1
  %135 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 34
  store i8 %134, ptr %135, align 4
  %136 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #9
  %137 = load i32, ptr %50, align 4
  %138 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %110
  %142 = load ptr, ptr %2, align 4
  br label %143

143:                                              ; preds = %141, %110
  %144 = phi ptr [ %142, %141 ], [ %139, %110 ]
  %145 = tail call i32 @request_threaded_irq(i32 noundef %137, ptr noundef nonnull @tegra_spi_isr, ptr noundef nonnull @tegra_spi_isr_thread, i32 noundef 8192, ptr noundef %144, ptr noundef %9) #9
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32, ptr %50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %148) #10
  br label %156

149:                                              ; preds = %143
  %150 = load ptr, ptr %10, align 8
  %151 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  store ptr %150, ptr %151, align 8
  %152 = tail call i32 @devm_spi_register_controller(ptr noundef %2, ptr noundef nonnull %3) #9
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %195

154:                                              ; preds = %149
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %152) #10
  %155 = tail call ptr @free_irq(i32 noundef %49, ptr noundef %9) #9
  br label %156

156:                                              ; preds = %154, %147, %109, %104, %99
  %157 = phi i32 [ %145, %147 ], [ %152, %154 ], [ %97, %99 ], [ %102, %104 ], [ %102, %109 ]
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #9
  %158 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %170, label %161

161:                                              ; preds = %156
  %162 = load ptr, ptr %7, align 8
  %163 = getelementptr inbounds %struct.device, ptr %162, i32 0, i32 8
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr inbounds %struct.tegra_spi_data, ptr %164, i32 0, i32 5
  %166 = load ptr, ptr %165, align 4
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %168 = getelementptr inbounds %struct.tegra_spi_data, ptr %164, i32 0, i32 3
  %169 = load ptr, ptr %168, align 4
  tail call void @clk_disable(ptr noundef %169) #9
  tail call void @clk_unprepare(ptr noundef %169) #9
  br label %170

170:                                              ; preds = %161, %156
  %171 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 42
  %172 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 41
  %173 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 43
  %174 = load ptr, ptr %172, align 4
  %175 = load ptr, ptr %171, align 4
  %176 = load i32, ptr %173, align 4
  store ptr null, ptr %171, align 4
  store ptr null, ptr %172, align 4
  %177 = icmp eq ptr %174, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %170
  %179 = load ptr, ptr %9, align 4
  %180 = load i32, ptr %66, align 4
  tail call void @dma_free_attrs(ptr noundef %179, i32 noundef %180, ptr noundef %175, i32 noundef %176, i32 noundef 0) #9
  tail call void @dma_release_channel(ptr noundef nonnull %174) #9
  br label %181

181:                                              ; preds = %178, %170, %69
  %182 = phi i32 [ %70, %69 ], [ %157, %170 ], [ %157, %178 ]
  %183 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 38
  %184 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 37
  %185 = getelementptr inbounds %struct.tegra_spi_data, ptr %9, i32 0, i32 39
  %186 = load ptr, ptr %184, align 4
  %187 = load ptr, ptr %183, align 4
  %188 = load i32, ptr %185, align 4
  store ptr null, ptr %184, align 4
  store ptr null, ptr %183, align 4
  %189 = icmp eq ptr %186, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %181
  %191 = load ptr, ptr %9, align 4
  %192 = load i32, ptr %66, align 4
  tail call void @dma_free_attrs(ptr noundef %191, i32 noundef %192, ptr noundef %187, i32 noundef %188, i32 noundef 0) #9
  tail call void @dma_release_channel(ptr noundef nonnull %186) #9
  br label %193

193:                                              ; preds = %190, %181, %64, %61, %54, %44, %38
  %194 = phi i32 [ %45, %44 ], [ %56, %54 ], [ %63, %61 ], [ %67, %64 ], [ -19, %38 ], [ %182, %181 ], [ %182, %190 ]
  tail call void @put_device(ptr noundef nonnull %3) #9
  br label %195

195:                                              ; preds = %193, %149, %5
  %196 = phi i32 [ %194, %193 ], [ -12, %5 ], [ %152, %149 ]
  ret i32 %196
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_spi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %5) #9
  %9 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 41
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 42
  %14 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 43
  %15 = load ptr, ptr %13, align 4
  %16 = load i32, ptr %14, align 4
  store ptr null, ptr %13, align 4
  store ptr null, ptr %9, align 4
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 18
  %19 = load i32, ptr %18, align 4
  tail call void @dma_free_attrs(ptr noundef %17, i32 noundef %19, ptr noundef %15, i32 noundef %16, i32 noundef 0) #9
  tail call void @dma_release_channel(ptr noundef nonnull %10) #9
  br label %20

20:                                               ; preds = %12, %1
  %21 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 37
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 38
  %26 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 39
  %27 = load ptr, ptr %25, align 4
  %28 = load i32, ptr %26, align 4
  store ptr null, ptr %21, align 4
  store ptr null, ptr %25, align 4
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 18
  %31 = load i32, ptr %30, align 4
  tail call void @dma_free_attrs(ptr noundef %29, i32 noundef %31, ptr noundef %27, i32 noundef %28, i32 noundef 0) #9
  tail call void @dma_release_channel(ptr noundef nonnull %22) #9
  br label %32

32:                                               ; preds = %24, %20
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %33, i1 noundef zeroext true) #9
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.tegra_spi_data, ptr %40, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %44 = getelementptr inbounds %struct.tegra_spi_data, ptr %40, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  tail call void @clk_disable(ptr noundef %45) #9
  tail call void @clk_unprepare(ptr noundef %45) #9
  br label %46

46:                                               ; preds = %37, %32
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_spi_setup(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 8) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.11, ptr noundef nonnull %15, i32 noundef 1, i32 noundef 0) #9
  %19 = getelementptr inbounds %struct.tegra_spi_client_data, ptr %15, i32 0, i32 1
  %20 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.12, ptr noundef %19, i32 noundef 1, i32 noundef 0) #9
  br label %21

21:                                               ; preds = %17, %13, %9
  %22 = phi ptr [ %15, %17 ], [ null, %9 ], [ null, %13 ]
  store ptr %22, ptr %6, align 4
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi ptr [ %7, %1 ], [ %22, %21 ]
  %25 = load ptr, ptr %5, align 4
  %26 = tail call i32 @__pm_runtime_resume(ptr noundef %25, i32 noundef 4) #9
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #9, !srcloc !9
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 0, i32 -1, ptr elementtype(i32) %30) #9, !srcloc !10
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  br label %35

35:                                               ; preds = %34, %28
  %36 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.10, i32 noundef %26) #10
  %37 = icmp eq ptr %24, null
  br i1 %37, label %87, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %6, align 4
  store ptr null, ptr %6, align 4
  %40 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %87, label %43

43:                                               ; preds = %38
  tail call void @kfree(ptr noundef %39) #9
  br label %87

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 45
  %46 = load ptr, ptr %45, align 4
  %47 = load i8, ptr %46, align 1, !range !17
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 396
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %54 = and i32 %53, -1040187393
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %55 = load ptr, ptr %50, align 4
  %56 = getelementptr i8, ptr %55, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #9, !srcloc !13
  %57 = load ptr, ptr %50, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %59

59:                                               ; preds = %49, %44
  %60 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 2
  %61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %60) #9
  %62 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 14
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  tail call void @gpiod_set_value(ptr noundef nonnull %63, i32 noundef 0) #9
  br label %66

66:                                               ; preds = %65, %59
  %67 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 30
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 4
  %72 = icmp eq i32 %71, 0
  %73 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %74 = load i8, ptr %73, align 4
  %75 = zext i8 %74 to i32
  %76 = shl i32 4194304, %75
  %77 = xor i32 %76, -1
  %78 = and i32 %68, %77
  %79 = or i32 %76, %68
  %80 = select i1 %72, i32 %79, i32 %78
  store i32 %80, ptr %67, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %81 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #9, !srcloc !13
  %83 = load ptr, ptr %81, align 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %60, i32 noundef %61) #9
  %85 = load ptr, ptr %5, align 4
  %86 = tail call i32 @__pm_runtime_idle(ptr noundef %85, i32 noundef 5) #9
  br label %87

87:                                               ; preds = %66, %43, %38, %35
  %88 = phi i32 [ 0, %66 ], [ %26, %35 ], [ %26, %38 ], [ %26, %43 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_spi_cleanup(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @kfree(ptr noundef %3) #9
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_spi_transfer_one_message(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 7
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 6
  store i32 0, ptr %8, align 4
  %9 = load volatile ptr, ptr %1, align 4
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %368, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %9, %13
  %15 = getelementptr inbounds %struct.tegra_spi_data, ptr %4, i32 0, i32 35
  %16 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 10
  %18 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 7
  %19 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 14
  %20 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 4
  %21 = getelementptr inbounds %struct.tegra_spi_data, ptr %4, i32 0, i32 24
  %22 = getelementptr inbounds %struct.tegra_spi_data, ptr %4, i32 0, i32 25
  %23 = getelementptr inbounds %struct.tegra_spi_data, ptr %4, i32 0, i32 10
  br label %24

24:                                               ; preds = %365, %11
  %25 = phi ptr [ %9, %11 ], [ %366, %365 ]
  %26 = phi i1 [ true, %11 ], [ false, %365 ]
  %27 = getelementptr i8, ptr %25, i32 -84
  store i32 0, ptr %15, align 4
  %28 = load ptr, ptr %16, align 4
  %29 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 8
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %17, align 4
  %32 = getelementptr i8, ptr %25, i32 -24
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %25, i32 -39
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr inbounds %struct.tegra_spi_data, ptr %30, i32 0, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.tegra_spi_data, ptr %30, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @clk_set_rate(ptr noundef %41, i32 noundef %33) #9
  store i32 %33, ptr %36, align 4
  br label %43

43:                                               ; preds = %39, %24
  %44 = getelementptr inbounds %struct.tegra_spi_data, ptr %30, i32 0, i32 9
  store ptr %6, ptr %44, align 4
  %45 = getelementptr inbounds %struct.tegra_spi_data, ptr %30, i32 0, i32 11
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.tegra_spi_data, ptr %30, i32 0, i32 16
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.tegra_spi_data, ptr %30, i32 0, i32 17
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.tegra_spi_data, ptr %30, i32 0, i32 36
  store ptr %27, ptr %48, align 4
  br i1 %26, label %49, label %158

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.tegra_spi_data, ptr %30, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 16
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %54 = load ptr, ptr %50, align 4
  %55 = getelementptr i8, ptr %54, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #9, !srcloc !13
  %56 = load ptr, ptr %50, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %58 = load ptr, ptr %50, align 4
  %59 = getelementptr i8, ptr %58, i32 20
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %61 = and i32 %60, 256
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %64 = load ptr, ptr %50, align 4
  %65 = getelementptr i8, ptr %64, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 496) #9, !srcloc !13
  %66 = load ptr, ptr %50, align 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %68

68:                                               ; preds = %63, %49
  %69 = getelementptr inbounds %struct.tegra_spi_data, ptr %30, i32 0, i32 30
  %70 = load i32, ptr %69, align 4
  %71 = add i8 %35, 31
  %72 = and i8 %71, 31
  %73 = zext i8 %72 to i32
  %74 = and i32 %70, -805306369
  %75 = or i32 %74, %73
  %76 = load i32, ptr %18, align 8
  %77 = and i32 %76, 3
  switch i32 %77, label %82 [
    i32 0, label %84
    i32 1, label %78
    i32 2, label %80
  ]

78:                                               ; preds = %68
  %79 = or i32 %75, 268435456
  br label %84

80:                                               ; preds = %68
  %81 = or i32 %75, 536870912
  br label %84

82:                                               ; preds = %68
  %83 = or i32 %75, 805306368
  br label %84

84:                                               ; preds = %82, %80, %78, %68
  %85 = phi i32 [ %79, %78 ], [ %81, %80 ], [ %83, %82 ], [ %75, %68 ]
  %86 = and i32 %85, -196609
  %87 = shl i32 %76, 13
  %88 = and i32 %87, 196608
  %89 = or i32 %86, %88
  %90 = getelementptr inbounds %struct.tegra_spi_data, ptr %30, i32 0, i32 10
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %84
  %94 = icmp eq ptr %91, %6
  br i1 %94, label %99, label %95

95:                                               ; preds = %93
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %96 = load ptr, ptr %50, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %89) #9, !srcloc !13
  %97 = load ptr, ptr %50, align 4
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %99

99:                                               ; preds = %95, %93
  store ptr null, ptr %90, align 4
  br label %104

100:                                              ; preds = %84
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %101 = load ptr, ptr %50, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %89) #9, !srcloc !13
  %102 = load ptr, ptr %50, align 4
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %104

104:                                              ; preds = %100, %99
  %105 = load ptr, ptr %19, align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  tail call void @gpiod_set_value(ptr noundef nonnull %105, i32 noundef 1) #9
  br label %108

108:                                              ; preds = %107, %104
  br i1 %14, label %109, label %117

109:                                              ; preds = %108
  %110 = getelementptr i8, ptr %25, i32 -40
  %111 = load i8, ptr %110, align 4
  %112 = and i8 %111, 2
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.tegra_spi_data, ptr %30, i32 0, i32 21
  store i8 1, ptr %115, align 1
  %116 = and i32 %89, -3145729
  br label %127

117:                                              ; preds = %109, %108
  %118 = getelementptr inbounds %struct.tegra_spi_data, ptr %30, i32 0, i32 21
  store i8 0, ptr %118, align 1
  %119 = load i32, ptr %18, align 8
  %120 = and i32 %119, 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %117
  %123 = or i32 %89, 3145728
  br label %127

124:                                              ; preds = %117
  %125 = and i32 %89, -3145729
  %126 = or i32 %125, 2097152
  br label %127

127:                                              ; preds = %124, %122, %114
  %128 = phi i32 [ %123, %122 ], [ %126, %124 ], [ %116, %114 ]
  %129 = getelementptr inbounds %struct.tegra_spi_data, ptr %30, i32 0, i32 34
  %130 = load i8, ptr %129, align 4
  %131 = load i8, ptr %20, align 4
  %132 = icmp eq i8 %130, %131
  br i1 %132, label %166, label %133

133:                                              ; preds = %127
  %134 = icmp eq ptr %31, null
  br i1 %134, label %145, label %135

135:                                              ; preds = %133
  %136 = load i32, ptr %31, align 4
  %137 = icmp eq i32 %136, 0
  %138 = shl i32 %136, 6
  %139 = and i32 %138, 4032
  %140 = select i1 %137, i32 0, i32 %139
  %141 = getelementptr inbounds %struct.tegra_spi_client_data, ptr %31, i32 0, i32 1
  %142 = load i32, ptr %141, align 4
  %143 = and i32 %142, 63
  %144 = or i32 %140, %143
  br label %145

145:                                              ; preds = %135, %133
  %146 = phi i32 [ %144, %135 ], [ 0, %133 ]
  %147 = getelementptr inbounds %struct.tegra_spi_data, ptr %30, i32 0, i32 31
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %156, label %150

150:                                              ; preds = %145
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %151 = load ptr, ptr %50, align 4
  %152 = getelementptr i8, ptr %151, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %146) #9, !srcloc !13
  %153 = load ptr, ptr %50, align 4
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %155 = load i8, ptr %20, align 4
  br label %156

156:                                              ; preds = %150, %145
  %157 = phi i8 [ %155, %150 ], [ %131, %145 ]
  store i8 %157, ptr %129, align 4
  br label %166

158:                                              ; preds = %43
  %159 = getelementptr inbounds %struct.tegra_spi_data, ptr %30, i32 0, i32 28
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %160, -32
  %162 = add i8 %35, 31
  %163 = and i8 %162, 31
  %164 = zext i8 %163 to i32
  %165 = or i32 %161, %164
  br label %166

166:                                              ; preds = %158, %156, %127
  %167 = phi i32 [ %128, %156 ], [ %128, %127 ], [ %165, %158 ]
  %168 = getelementptr i8, ptr %25, i32 -76
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %346, label %171

171:                                              ; preds = %166
  %172 = load ptr, ptr %16, align 4
  %173 = getelementptr inbounds %struct.device, ptr %172, i32 0, i32 8
  %174 = load ptr, ptr %173, align 8
  %175 = getelementptr inbounds %struct.tegra_spi_data, ptr %174, i32 0, i32 11
  %176 = load i32, ptr %175, align 4
  %177 = sub i32 %169, %176
  %178 = load i8, ptr %34, align 1
  %179 = zext i8 %178 to i32
  %180 = add nuw nsw i32 %179, 7
  %181 = lshr i32 %180, 3
  %182 = getelementptr inbounds %struct.tegra_spi_data, ptr %174, i32 0, i32 13
  store i32 %181, ptr %182, align 4
  switch i8 %178, label %197 [
    i8 32, label %183
    i8 16, label %183
    i8 8, label %183
  ]

183:                                              ; preds = %171, %171, %171
  %184 = load i32, ptr %168, align 4
  %185 = icmp ugt i32 %184, 3
  br i1 %185, label %186, label %197

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.tegra_spi_data, ptr %174, i32 0, i32 27
  store i8 1, ptr %187, align 4
  %188 = udiv i8 32, %178
  %189 = zext i8 %188 to i32
  %190 = getelementptr inbounds %struct.tegra_spi_data, ptr %174, i32 0, i32 12
  store i32 %189, ptr %190, align 4
  %191 = getelementptr inbounds %struct.tegra_spi_data, ptr %174, i32 0, i32 19
  %192 = load i32, ptr %191, align 4
  %193 = tail call i32 @llvm.umin.i32(i32 %177, i32 %192) #9
  %194 = udiv i32 %193, %181
  %195 = add i32 %193, 3
  %196 = lshr i32 %195, 2
  br label %207

197:                                              ; preds = %183, %171
  %198 = getelementptr inbounds %struct.tegra_spi_data, ptr %174, i32 0, i32 27
  store i8 0, ptr %198, align 4
  %199 = getelementptr inbounds %struct.tegra_spi_data, ptr %174, i32 0, i32 12
  store i32 1, ptr %199, align 4
  %200 = add i32 %177, -1
  %201 = udiv i32 %200, %181
  %202 = add i32 %201, 1
  %203 = getelementptr inbounds %struct.tegra_spi_data, ptr %174, i32 0, i32 19
  %204 = load i32, ptr %203, align 4
  %205 = lshr i32 %204, 2
  %206 = tail call i32 @llvm.umin.i32(i32 %202, i32 %205) #9
  br label %207

207:                                              ; preds = %197, %186
  %208 = phi i32 [ 32, %186 ], [ 0, %197 ]
  %209 = phi i32 [ %194, %186 ], [ %206, %197 ]
  %210 = phi i32 [ %196, %186 ], [ %206, %197 ]
  %211 = getelementptr inbounds %struct.tegra_spi_data, ptr %174, i32 0, i32 14
  store i32 %209, ptr %211, align 4
  %212 = getelementptr i8, ptr %25, i32 -40
  %213 = load i8, ptr %212, align 4
  %214 = and i8 %213, -32
  %215 = icmp eq i8 %214, 64
  %216 = and i8 %213, 28
  %217 = icmp eq i8 %216, 8
  %218 = or i1 %215, %217
  %219 = and i32 %167, -201349153
  %220 = select i1 %218, i32 16384, i32 0
  %221 = or i32 %208, %219
  %222 = or i32 %221, %220
  %223 = getelementptr inbounds %struct.tegra_spi_data, ptr %174, i32 0, i32 15
  store i32 0, ptr %223, align 4
  %224 = getelementptr i8, ptr %25, i32 -80
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %207
  %228 = or i32 %222, 4096
  store i32 2, ptr %223, align 4
  br label %229

229:                                              ; preds = %227, %207
  %230 = phi i32 [ 3, %227 ], [ 1, %207 ]
  %231 = phi i32 [ %228, %227 ], [ %222, %207 ]
  %232 = load ptr, ptr %27, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %236, label %234

234:                                              ; preds = %229
  %235 = or i32 %231, 2048
  store i32 %230, ptr %223, align 4
  br label %236

236:                                              ; preds = %234, %229
  %237 = phi i32 [ %235, %234 ], [ %231, %229 ]
  %238 = load i8, ptr %20, align 4
  %239 = and i8 %238, 3
  %240 = zext i8 %239 to i32
  %241 = shl nuw nsw i32 %240, 26
  %242 = or i32 %241, %237
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %243 = getelementptr inbounds %struct.tegra_spi_data, ptr %174, i32 0, i32 5
  %244 = load ptr, ptr %243, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %242) #9, !srcloc !13
  %245 = load ptr, ptr %243, align 4
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %245) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %247 = getelementptr inbounds %struct.tegra_spi_data, ptr %174, i32 0, i32 28
  store i32 %242, ptr %247, align 4
  %248 = load volatile i32, ptr @jiffies, align 64
  %249 = add i32 %248, 100
  %250 = load ptr, ptr %243, align 4
  %251 = getelementptr i8, ptr %250, i32 20
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %251) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %253 = and i32 %252, 5
  %254 = icmp eq i32 %253, 5
  br i1 %254, label %274, label %255

255:                                              ; preds = %236
  %256 = or i32 %252, 49152
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %257 = load ptr, ptr %243, align 4
  %258 = getelementptr i8, ptr %257, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %258, i32 %256) #9, !srcloc !13
  %259 = load ptr, ptr %243, align 4
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %259) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %261

261:                                              ; preds = %268, %255
  %262 = load ptr, ptr %243, align 4
  %263 = getelementptr i8, ptr %262, i32 20
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %263) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %265 = load volatile i32, ptr @jiffies, align 64
  %266 = sub i32 %249, %265
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %261
  %269 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %269(i32 noundef 214748) #9
  %270 = and i32 %264, 5
  %271 = icmp eq i32 %270, 5
  br i1 %271, label %274, label %261

272:                                              ; preds = %261
  %273 = load ptr, ptr %174, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %273, ptr noundef nonnull @.str.22) #10
  br label %280

274:                                              ; preds = %268, %236
  %275 = icmp ugt i32 %210, 64
  br i1 %275, label %277, label %276

276:                                              ; preds = %274
  tail call fastcc void @tegra_spi_start_cpu_based_transfer(ptr noundef %174, ptr noundef %27) #9
  br label %283

277:                                              ; preds = %274
  %278 = tail call fastcc i32 @tegra_spi_start_dma_based_transfer(ptr noundef %174, ptr noundef %27) #9
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %277, %272
  %281 = phi i32 [ -5, %272 ], [ %278, %277 ]
  %282 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %282, ptr noundef nonnull @.str.13, i32 noundef %281) #10
  br label %346

283:                                              ; preds = %277, %276
  %284 = tail call i32 @wait_for_completion_timeout(ptr noundef %15, i32 noundef 100) #9
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %333, !prof !18

286:                                              ; preds = %283
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1073, i32 noundef 9, ptr noundef null) #9
  %287 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %287, ptr noundef nonnull @.str.15) #10
  %288 = getelementptr inbounds %struct.tegra_spi_data, ptr %4, i32 0, i32 20
  %289 = load i8, ptr %288, align 4, !range !17
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %320, label %291

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.tegra_spi_data, ptr %4, i32 0, i32 15
  %293 = load i32, ptr %292, align 4
  %294 = and i32 %293, 1
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %307, label %296

296:                                              ; preds = %291
  %297 = getelementptr inbounds %struct.tegra_spi_data, ptr %4, i32 0, i32 41
  %298 = load ptr, ptr %297, align 4
  %299 = load ptr, ptr %298, align 4
  %300 = getelementptr inbounds %struct.dma_device, ptr %299, i32 0, i32 47
  %301 = load ptr, ptr %300, align 4
  %302 = icmp eq ptr %301, null
  br i1 %302, label %307, label %303

303:                                              ; preds = %296
  %304 = tail call i32 %301(ptr noundef %298) #9
  %305 = load i8, ptr %288, align 4
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %320, label %307

307:                                              ; preds = %303, %296, %291
  %308 = load i32, ptr %292, align 4
  %309 = and i32 %308, 2
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %320, label %311

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.tegra_spi_data, ptr %4, i32 0, i32 37
  %313 = load ptr, ptr %312, align 4
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr inbounds %struct.dma_device, ptr %314, i32 0, i32 47
  %316 = load ptr, ptr %315, align 4
  %317 = icmp eq ptr %316, null
  br i1 %317, label %320, label %318

318:                                              ; preds = %311
  %319 = tail call i32 %316(ptr noundef %313) #9
  br label %320

320:                                              ; preds = %318, %311, %307, %303, %286
  %321 = tail call fastcc i32 @tegra_spi_flush_fifos(ptr noundef %4)
  %322 = getelementptr inbounds %struct.tegra_spi_data, ptr %4, i32 0, i32 4
  %323 = load ptr, ptr %322, align 4
  %324 = tail call i32 @reset_control_assert(ptr noundef %323) #9
  %325 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %325(i32 noundef 429496) #9
  %326 = load ptr, ptr %322, align 4
  %327 = tail call i32 @reset_control_deassert(ptr noundef %326) #9
  %328 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 3
  %329 = load i16, ptr %328, align 2
  %330 = trunc i16 %329 to i8
  %331 = add i8 %330, 1
  %332 = getelementptr inbounds %struct.tegra_spi_data, ptr %4, i32 0, i32 34
  store i8 %331, ptr %332, align 4
  br label %346

333:                                              ; preds = %283
  %334 = load i32, ptr %21, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %333
  %337 = load i32, ptr %22, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %341, label %339

339:                                              ; preds = %336, %333
  %340 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %340, ptr noundef nonnull @.str.16) #10
  br label %346

341:                                              ; preds = %336
  %342 = load i32, ptr %168, align 4
  %343 = load i32, ptr %8, align 4
  %344 = add i32 %343, %342
  store i32 %344, ptr %8, align 4
  %345 = icmp slt i32 %284, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %341, %339, %320, %280, %166
  %347 = phi i32 [ -5, %339 ], [ -5, %320 ], [ %281, %280 ], [ 0, %166 ], [ %284, %341 ]
  tail call fastcc void @tegra_spi_transfer_end(ptr noundef %6)
  %348 = getelementptr i8, ptr %25, i32 -38
  %349 = tail call i32 @spi_delay_exec(ptr noundef %348, ptr noundef %27) #9
  br label %368

350:                                              ; preds = %341
  %351 = load ptr, ptr %25, align 4
  %352 = icmp eq ptr %351, %1
  %353 = load i8, ptr %212, align 4
  %354 = and i8 %353, 2
  %355 = icmp eq i8 %354, 0
  br i1 %352, label %356, label %361

356:                                              ; preds = %350
  br i1 %355, label %358, label %357

357:                                              ; preds = %356
  store ptr %6, ptr %23, align 4
  br label %365

358:                                              ; preds = %356
  tail call fastcc void @tegra_spi_transfer_end(ptr noundef %6)
  %359 = getelementptr i8, ptr %25, i32 -38
  %360 = tail call i32 @spi_delay_exec(ptr noundef %359, ptr noundef %27) #9
  br label %365

361:                                              ; preds = %350
  br i1 %355, label %365, label %362

362:                                              ; preds = %361
  tail call fastcc void @tegra_spi_transfer_end(ptr noundef %6)
  %363 = getelementptr i8, ptr %25, i32 -38
  %364 = tail call i32 @spi_delay_exec(ptr noundef %363, ptr noundef %27) #9
  br label %365

365:                                              ; preds = %362, %361, %358, %357
  %366 = load ptr, ptr %25, align 4
  %367 = icmp eq ptr %366, %1
  br i1 %367, label %368, label %24

368:                                              ; preds = %365, %346, %2
  %369 = phi i32 [ %347, %346 ], [ 0, %2 ], [ 0, %365 ]
  store i32 %369, ptr %7, align 4
  tail call void @spi_finalize_current_message(ptr noundef %0) #9
  ret i32 %369
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_spi_set_hw_cs_timing(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 16
  %7 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 17
  %8 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 18
  %9 = icmp eq ptr %6, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 16, i32 1
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 2
  br i1 %13, label %14, label %26

14:                                               ; preds = %10, %1
  %15 = icmp eq ptr %7, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 17, i32 1
  %18 = load i8, ptr %17, align 2
  %19 = icmp eq i8 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %16, %14
  %21 = icmp eq ptr %8, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 18, i32 1
  %24 = load i8, ptr %23, align 2
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %16, %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef 2) #10
  br label %106

27:                                               ; preds = %22, %20
  br i1 %9, label %32, label %28

28:                                               ; preds = %27
  %29 = load i16, ptr %6, align 2
  %30 = and i16 %29, 255
  %31 = zext i16 %30 to i32
  br label %32

32:                                               ; preds = %28, %27
  %33 = phi i32 [ %31, %28 ], [ 0, %27 ]
  br i1 %15, label %38, label %34

34:                                               ; preds = %32
  %35 = load i16, ptr %7, align 2
  %36 = and i16 %35, 255
  %37 = zext i16 %36 to i32
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i32 [ %37, %34 ], [ 0, %32 ]
  br i1 %21, label %44, label %40

40:                                               ; preds = %38
  %41 = load i16, ptr %8, align 2
  %42 = and i16 %41, 255
  %43 = zext i16 %42 to i32
  br label %44

44:                                               ; preds = %40, %38
  %45 = phi i32 [ %43, %40 ], [ 0, %38 ]
  %46 = tail call i32 @llvm.umin.i32(i32 %33, i32 16)
  %47 = tail call i32 @llvm.umin.i32(i32 %39, i32 16)
  %48 = icmp ne i32 %46, 0
  %49 = icmp ne i32 %47, 0
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %75

51:                                               ; preds = %44
  %52 = shl nuw nsw i32 %46, 4
  %53 = add nuw nsw i32 %52, 240
  %54 = add nuw nsw i32 %47, 255
  %55 = or i32 %54, %53
  %56 = and i32 %55, 255
  %57 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 3
  %61 = shl i32 %56, %60
  %62 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 32
  %63 = load i32, ptr %62, align 4
  %64 = shl i32 255, %60
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = or i32 %66, %61
  %68 = icmp eq i32 %63, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %51
  store i32 %67, ptr %62, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %70 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %67) #9, !srcloc !13
  %73 = load ptr, ptr %70, align 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %75

75:                                               ; preds = %69, %51, %44
  %76 = tail call i32 @llvm.umin.i32(i32 %45, i32 32)
  %77 = icmp eq i32 %76, 0
  %78 = add nsw i32 %76, -1
  %79 = select i1 %77, i32 0, i32 %78
  %80 = icmp eq i32 %79, 0
  %81 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 33
  %82 = load i32, ptr %81, align 4
  %83 = zext i1 %80 to i32
  %84 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %85 = load i8, ptr %84, align 4
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 3
  %88 = or i32 %87, 5
  %89 = shl nuw i32 %83, %88
  %90 = shl nuw i32 1, %88
  %91 = xor i32 %90, -1
  %92 = and i32 %82, %91
  %93 = or i32 %92, %89
  %94 = shl i32 %79, %87
  %95 = shl i32 31, %87
  %96 = xor i32 %95, -1
  %97 = and i32 %93, %96
  %98 = or i32 %97, %94
  %99 = icmp eq i32 %82, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %75
  store i32 %98, ptr %81, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %101 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 5
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %98) #9, !srcloc !13
  %104 = load ptr, ptr %101, align 4
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %106

106:                                              ; preds = %100, %75, %26
  %107 = phi i32 [ -22, %26 ], [ 0, %100 ], [ 0, %75 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_spi_init_dma_param(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !19
  %4 = load ptr, ptr %0, align 4
  %5 = select i1 %1, ptr @.str.24, ptr @.str.25
  %6 = tail call ptr @dma_request_chan(ptr noundef %4, ptr noundef nonnull %5) #9
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %8 = load ptr, ptr %0, align 4
  br i1 %7, label %9, label %12

9:                                                ; preds = %2
  %10 = ptrtoint ptr %6 to i32
  %11 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %8, i32 noundef %10, ptr noundef nonnull @.str.26) #9
  br label %30

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 18
  %14 = load i32, ptr %13, align 4
  %15 = call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef %14, ptr noundef nonnull %3, i32 noundef 3264, i32 noundef 0) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.27) #10
  call void @dma_release_channel(ptr noundef %6) #9
  br label %30

19:                                               ; preds = %12
  br i1 %1, label %20, label %25

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 37
  store ptr %6, ptr %21, align 4
  %22 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 38
  store ptr %15, ptr %22, align 4
  %23 = load i32, ptr %3, align 4
  %24 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 39
  store i32 %23, ptr %24, align 4
  br label %30

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 41
  store ptr %6, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 42
  store ptr %15, ptr %27, align 4
  %28 = load i32, ptr %3, align 4
  %29 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 43
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %25, %20, %17, %9
  %31 = phi i32 [ %11, %9 ], [ -12, %17 ], [ 0, %25 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_spi_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %14

14:                                               ; preds = %13, %1
  %15 = phi i32 [ %8, %1 ], [ %11, %13 ]
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.29, i32 noundef %15) #10
  br label %19

19:                                               ; preds = %17, %14, %10
  %20 = phi i32 [ %15, %17 ], [ 0, %14 ], [ 0, %10 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_spi_isr(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %7 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 26
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = and i32 %6, 192
  %14 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 24
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = and i32 %9, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = and i32 %6, 48
  %20 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 25
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #9, !srcloc !13
  %27 = load ptr, ptr %3, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr i8, ptr %29, i32 20
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %32 = and i32 %31, 256
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr i8, ptr %35, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 496) #9, !srcloc !13
  %37 = load ptr, ptr %3, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %39

39:                                               ; preds = %34, %21
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_spi_isr_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 20
  %4 = load i8, ptr %3, align 4, !range !17
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 36
  %7 = load ptr, ptr %6, align 4
  br i1 %5, label %8, label %229

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 2
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #9
  %11 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 24
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 25
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %62, label %18

18:                                               ; preds = %14, %8
  %19 = load ptr, ptr %1, align 4
  %20 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 26
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.30, i32 noundef %21) #10
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 28
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 29
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.31, i32 noundef %24, i32 noundef %26) #10
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = add i32 %27, 100
  %29 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 20
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %33 = and i32 %32, 5
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %54, label %35

35:                                               ; preds = %18
  %36 = or i32 %32, 49152
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %37 = load ptr, ptr %29, align 4
  %38 = getelementptr i8, ptr %37, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #9, !srcloc !13
  %39 = load ptr, ptr %29, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %41

41:                                               ; preds = %50, %35
  %42 = load ptr, ptr %29, align 4
  %43 = getelementptr i8, ptr %42, i32 20
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = sub i32 %28, %45
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.22) #10
  br label %54

50:                                               ; preds = %41
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #9
  %52 = and i32 %44, 5
  %53 = icmp eq i32 %52, 5
  br i1 %53, label %54, label %41

54:                                               ; preds = %50, %48, %18
  %55 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 35
  tail call void @complete(ptr noundef %55) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #9
  %56 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @reset_control_assert(ptr noundef %57) #9
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 429496) #9
  %60 = load ptr, ptr %56, align 4
  %61 = tail call i32 @reset_control_deassert(ptr noundef %60) #9
  br label %499

62:                                               ; preds = %14
  %63 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 15
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %181, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 16
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr i8, ptr %69, i32 %71
  %73 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 5
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 20
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %77 = lshr i32 %76, 23
  %78 = and i32 %77, 127
  %79 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 27
  %80 = load i8, ptr %79, align 4, !range !17
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %129, label %82

82:                                               ; preds = %67
  %83 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 14
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 13
  %86 = load i32, ptr %85, align 4
  %87 = mul i32 %86, %84
  %88 = icmp eq i32 %78, 0
  br i1 %88, label %176, label %89

89:                                               ; preds = %120, %82
  %90 = phi ptr [ %122, %120 ], [ %72, %82 ]
  %91 = phi i32 [ %121, %120 ], [ %87, %82 ]
  %92 = phi i32 [ %123, %120 ], [ 0, %82 ]
  %93 = load ptr, ptr %73, align 4
  %94 = getelementptr i8, ptr %93, i32 392
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %96 = icmp eq i32 %91, 0
  br i1 %96, label %120, label %97

97:                                               ; preds = %89
  %98 = add i32 %91, -1
  %99 = tail call i32 @llvm.umin.i32(i32 %98, i32 3) #9
  %100 = trunc i32 %95 to i8
  %101 = getelementptr i8, ptr %90, i32 1
  store i8 %100, ptr %90, align 1
  %102 = icmp eq i32 %99, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %97
  %104 = lshr i32 %95, 8
  %105 = trunc i32 %104 to i8
  %106 = getelementptr i8, ptr %90, i32 2
  store i8 %105, ptr %101, align 1
  %107 = icmp eq i32 %99, 1
  br i1 %107, label %117, label %108

108:                                              ; preds = %103
  %109 = lshr i32 %95, 16
  %110 = trunc i32 %109 to i8
  %111 = getelementptr i8, ptr %90, i32 3
  store i8 %110, ptr %106, align 1
  %112 = icmp eq i32 %99, 2
  br i1 %112, label %117, label %113

113:                                              ; preds = %108
  %114 = lshr i32 %95, 24
  %115 = trunc i32 %114 to i8
  %116 = getelementptr i8, ptr %90, i32 4
  store i8 %115, ptr %111, align 1
  br label %117

117:                                              ; preds = %113, %108, %103, %97
  %118 = phi ptr [ %101, %97 ], [ %106, %103 ], [ %111, %108 ], [ %116, %113 ]
  %119 = sub i32 %98, %99
  br label %120

120:                                              ; preds = %117, %89
  %121 = phi i32 [ 0, %89 ], [ %119, %117 ]
  %122 = phi ptr [ %90, %89 ], [ %118, %117 ]
  %123 = add nuw nsw i32 %92, 1
  %124 = icmp eq i32 %123, %78
  br i1 %124, label %125, label %89

125:                                              ; preds = %120
  %126 = load i32, ptr %83, align 4
  %127 = load i32, ptr %85, align 4
  %128 = mul i32 %127, %126
  br label %176

129:                                              ; preds = %67
  %130 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 8
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = shl nsw i32 -1, %132
  %134 = xor i32 %133, -1
  %135 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 13
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, 255
  %138 = mul nuw nsw i32 %137, %78
  %139 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 11
  %142 = load i32, ptr %141, align 4
  %143 = sub i32 %140, %142
  %144 = tail call i32 @llvm.umin.i32(i32 %138, i32 %143) #9
  %145 = icmp eq i32 %78, 0
  br i1 %145, label %176, label %146

146:                                              ; preds = %129
  %147 = icmp ne i32 %137, 0
  br label %148

148:                                              ; preds = %171, %146
  %149 = phi ptr [ %72, %146 ], [ %173, %171 ]
  %150 = phi i32 [ %144, %146 ], [ %172, %171 ]
  %151 = phi i32 [ 0, %146 ], [ %174, %171 ]
  %152 = load ptr, ptr %73, align 4
  %153 = getelementptr i8, ptr %152, i32 392
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %155 = and i32 %154, %134
  %156 = icmp ne i32 %150, 0
  %157 = select i1 %156, i1 %147, i1 false
  br i1 %157, label %158, label %171

158:                                              ; preds = %158, %148
  %159 = phi ptr [ %165, %158 ], [ %149, %148 ]
  %160 = phi i32 [ %167, %158 ], [ %150, %148 ]
  %161 = phi i32 [ %166, %158 ], [ 0, %148 ]
  %162 = shl i32 %161, 3
  %163 = lshr i32 %155, %162
  %164 = trunc i32 %163 to i8
  %165 = getelementptr i8, ptr %159, i32 1
  store i8 %164, ptr %159, align 1
  %166 = add nuw nsw i32 %161, 1
  %167 = add i32 %160, -1
  %168 = icmp ne i32 %167, 0
  %169 = icmp ult i32 %166, %137
  %170 = select i1 %168, i1 %169, i1 false
  br i1 %170, label %158, label %171

171:                                              ; preds = %158, %148
  %172 = phi i32 [ %150, %148 ], [ %167, %158 ]
  %173 = phi ptr [ %149, %148 ], [ %165, %158 ]
  %174 = add nuw nsw i32 %151, 1
  %175 = icmp eq i32 %174, %78
  br i1 %175, label %176, label %148

176:                                              ; preds = %171, %129, %125, %82
  %177 = phi i32 [ %128, %125 ], [ %87, %82 ], [ %144, %129 ], [ %144, %171 ]
  %178 = load i32, ptr %70, align 4
  %179 = add i32 %178, %177
  store i32 %179, ptr %70, align 4
  %180 = load i32, ptr %63, align 4
  br label %181

181:                                              ; preds = %176, %62
  %182 = phi i32 [ %180, %176 ], [ %64, %62 ]
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  %185 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 16
  %186 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 17
  %187 = select i1 %184, ptr %185, ptr %186
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 11
  store i32 %188, ptr %189, align 4
  %190 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, %188
  br i1 %192, label %193, label %195

193:                                              ; preds = %181
  %194 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 35
  tail call void @complete(ptr noundef %194) #9
  br label %228

195:                                              ; preds = %181
  %196 = sub i32 %191, %188
  %197 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 8
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i32
  %200 = add nuw nsw i32 %199, 7
  %201 = lshr i32 %200, 3
  %202 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 13
  store i32 %201, ptr %202, align 4
  switch i8 %198, label %215 [
    i8 32, label %203
    i8 16, label %203
    i8 8, label %203
  ]

203:                                              ; preds = %195, %195, %195
  %204 = load i32, ptr %190, align 4
  %205 = icmp ugt i32 %204, 3
  br i1 %205, label %206, label %215

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 27
  store i8 1, ptr %207, align 4
  %208 = udiv i8 32, %198
  %209 = zext i8 %208 to i32
  %210 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 12
  store i32 %209, ptr %210, align 4
  %211 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 19
  %212 = load i32, ptr %211, align 4
  %213 = tail call i32 @llvm.umin.i32(i32 %196, i32 %212) #9
  %214 = udiv i32 %213, %201
  br label %225

215:                                              ; preds = %203, %195
  %216 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 27
  store i8 0, ptr %216, align 4
  %217 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 12
  store i32 1, ptr %217, align 4
  %218 = add i32 %196, -1
  %219 = udiv i32 %218, %201
  %220 = add i32 %219, 1
  %221 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 19
  %222 = load i32, ptr %221, align 4
  %223 = lshr i32 %222, 2
  %224 = tail call i32 @llvm.umin.i32(i32 %220, i32 %223) #9
  br label %225

225:                                              ; preds = %215, %206
  %226 = phi i32 [ %224, %215 ], [ %214, %206 ]
  %227 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 14
  store i32 %226, ptr %227, align 4
  tail call fastcc void @tegra_spi_start_cpu_based_transfer(ptr noundef %1, ptr noundef %7) #9
  br label %228

228:                                              ; preds = %225, %193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #9
  br label %499

229:                                              ; preds = %2
  %230 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 15
  %231 = load i32, ptr %230, align 4
  %232 = and i32 %231, 1
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %262, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 24
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %247, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 41
  %240 = load ptr, ptr %239, align 4
  %241 = load ptr, ptr %240, align 4
  %242 = getelementptr inbounds %struct.dma_device, ptr %241, i32 0, i32 47
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %262, label %245

245:                                              ; preds = %238
  %246 = tail call i32 %243(ptr noundef %240) #9
  br label %262

247:                                              ; preds = %234
  %248 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 23
  %249 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %248, i32 noundef 100) #9
  %250 = icmp slt i32 %249, 1
  br i1 %250, label %251, label %262

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 41
  %253 = load ptr, ptr %252, align 4
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.dma_device, ptr %254, i32 0, i32 47
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %260, label %258

258:                                              ; preds = %251
  %259 = tail call i32 %256(ptr noundef %253) #9
  br label %260

260:                                              ; preds = %258, %251
  %261 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %261, ptr noundef nonnull @.str.32) #10
  br label %262

262:                                              ; preds = %260, %247, %245, %238, %229
  %263 = phi i1 [ false, %245 ], [ false, %238 ], [ false, %260 ], [ true, %247 ], [ true, %229 ]
  %264 = load i32, ptr %230, align 4
  %265 = and i32 %264, 2
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %298, label %267

267:                                              ; preds = %262
  %268 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 25
  %269 = load i32, ptr %268, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %280, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 37
  %273 = load ptr, ptr %272, align 4
  %274 = load ptr, ptr %273, align 4
  %275 = getelementptr inbounds %struct.dma_device, ptr %274, i32 0, i32 47
  %276 = load ptr, ptr %275, align 4
  %277 = icmp eq ptr %276, null
  br i1 %277, label %295, label %278

278:                                              ; preds = %271
  %279 = tail call i32 %276(ptr noundef %273) #9
  br label %295

280:                                              ; preds = %267
  %281 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 22
  %282 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %281, i32 noundef 100) #9
  %283 = icmp slt i32 %282, 1
  br i1 %283, label %284, label %298

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 37
  %286 = load ptr, ptr %285, align 4
  %287 = load ptr, ptr %286, align 4
  %288 = getelementptr inbounds %struct.dma_device, ptr %287, i32 0, i32 47
  %289 = load ptr, ptr %288, align 4
  %290 = icmp eq ptr %289, null
  br i1 %290, label %293, label %291

291:                                              ; preds = %284
  %292 = tail call i32 %289(ptr noundef %286) #9
  br label %293

293:                                              ; preds = %291, %284
  %294 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %294, ptr noundef nonnull @.str.33) #10
  br label %295

295:                                              ; preds = %293, %278, %271
  %296 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 2
  %297 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %296) #9
  br label %301

298:                                              ; preds = %280, %262
  %299 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 2
  %300 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %299) #9
  br i1 %263, label %347, label %301

301:                                              ; preds = %298, %295
  %302 = phi i32 [ %297, %295 ], [ %300, %298 ]
  %303 = phi ptr [ %296, %295 ], [ %299, %298 ]
  %304 = load ptr, ptr %1, align 4
  %305 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 26
  %306 = load i32, ptr %305, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %304, ptr noundef nonnull @.str.34, i32 noundef %306) #10
  %307 = load ptr, ptr %1, align 4
  %308 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 28
  %309 = load i32, ptr %308, align 4
  %310 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 29
  %311 = load i32, ptr %310, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %307, ptr noundef nonnull @.str.35, i32 noundef %309, i32 noundef %311) #10
  %312 = load volatile i32, ptr @jiffies, align 64
  %313 = add i32 %312, 100
  %314 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 5
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr i8, ptr %315, i32 20
  %317 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %316) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %318 = and i32 %317, 5
  %319 = icmp eq i32 %318, 5
  br i1 %319, label %339, label %320

320:                                              ; preds = %301
  %321 = or i32 %317, 49152
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %322 = load ptr, ptr %314, align 4
  %323 = getelementptr i8, ptr %322, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 %321) #9, !srcloc !13
  %324 = load ptr, ptr %314, align 4
  %325 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %324) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %326

326:                                              ; preds = %335, %320
  %327 = load ptr, ptr %314, align 4
  %328 = getelementptr i8, ptr %327, i32 20
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %328) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %330 = load volatile i32, ptr @jiffies, align 64
  %331 = sub i32 %313, %330
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %326
  %334 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %334, ptr noundef nonnull @.str.22) #10
  br label %339

335:                                              ; preds = %326
  %336 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %336(i32 noundef 214748) #9
  %337 = and i32 %329, 5
  %338 = icmp eq i32 %337, 5
  br i1 %338, label %339, label %326

339:                                              ; preds = %335, %333, %301
  %340 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 35
  tail call void @complete(ptr noundef %340) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %303, i32 noundef %302) #9
  %341 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 4
  %342 = load ptr, ptr %341, align 4
  %343 = tail call i32 @reset_control_assert(ptr noundef %342) #9
  %344 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %344(i32 noundef 429496) #9
  %345 = load ptr, ptr %341, align 4
  %346 = tail call i32 @reset_control_deassert(ptr noundef %345) #9
  br label %499

347:                                              ; preds = %298
  %348 = load i32, ptr %230, align 4
  %349 = and i32 %348, 2
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %444, label %351

351:                                              ; preds = %347
  %352 = load ptr, ptr %1, align 4
  %353 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 39
  %354 = load i32, ptr %353, align 4
  %355 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 18
  %356 = load i32, ptr %355, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %352, i32 noundef %354, i32 noundef %356, i32 noundef 2) #9
  %357 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 27
  %358 = load i8, ptr %357, align 4, !range !17
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %376, label %360

360:                                              ; preds = %351
  %361 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 14
  %362 = load i32, ptr %361, align 4
  %363 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 13
  %364 = load i32, ptr %363, align 4
  %365 = mul i32 %364, %362
  %366 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 1
  %367 = load ptr, ptr %366, align 4
  %368 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 16
  %369 = load i32, ptr %368, align 4
  %370 = getelementptr i8, ptr %367, i32 %369
  %371 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 38
  %372 = load ptr, ptr %371, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %370, ptr align 4 %372, i32 %365, i1 false) #9
  %373 = load i32, ptr %361, align 4
  %374 = load i32, ptr %363, align 4
  %375 = mul i32 %374, %373
  br label %435

376:                                              ; preds = %351
  %377 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 16
  %378 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 8
  %379 = load i8, ptr %378, align 1
  %380 = zext i8 %379 to i32
  %381 = shl nsw i32 -1, %380
  %382 = xor i32 %381, -1
  %383 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 14
  %384 = load i32, ptr %383, align 4
  %385 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 13
  %386 = load i32, ptr %385, align 4
  %387 = mul i32 %386, %384
  %388 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  %389 = load i32, ptr %388, align 4
  %390 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 11
  %391 = load i32, ptr %390, align 4
  %392 = sub i32 %389, %391
  %393 = tail call i32 @llvm.umin.i32(i32 %387, i32 %392) #9
  %394 = icmp eq i32 %384, 0
  br i1 %394, label %435, label %395

395:                                              ; preds = %376
  %396 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 1
  %397 = load ptr, ptr %396, align 4
  %398 = load i32, ptr %377, align 4
  %399 = getelementptr i8, ptr %397, i32 %398
  %400 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 38
  br label %401

401:                                              ; preds = %429, %395
  %402 = phi i32 [ %384, %395 ], [ %430, %429 ]
  %403 = phi i32 [ %393, %395 ], [ %432, %429 ]
  %404 = phi ptr [ %399, %395 ], [ %431, %429 ]
  %405 = phi i32 [ 0, %395 ], [ %433, %429 ]
  %406 = load ptr, ptr %400, align 4
  %407 = getelementptr i32, ptr %406, i32 %405
  %408 = load i32, ptr %407, align 4
  %409 = and i32 %408, %382
  %410 = icmp eq i32 %403, 0
  br i1 %410, label %429, label %411

411:                                              ; preds = %417, %401
  %412 = phi i32 [ %423, %417 ], [ %403, %401 ]
  %413 = phi ptr [ %421, %417 ], [ %404, %401 ]
  %414 = phi i32 [ %422, %417 ], [ 0, %401 ]
  %415 = load i32, ptr %385, align 4
  %416 = icmp ult i32 %414, %415
  br i1 %416, label %417, label %425

417:                                              ; preds = %411
  %418 = shl i32 %414, 3
  %419 = lshr i32 %409, %418
  %420 = trunc i32 %419 to i8
  %421 = getelementptr i8, ptr %413, i32 1
  store i8 %420, ptr %413, align 1
  %422 = add nuw i32 %414, 1
  %423 = add i32 %412, -1
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %411

425:                                              ; preds = %417, %411
  %426 = phi ptr [ %413, %411 ], [ %421, %417 ]
  %427 = phi i32 [ %412, %411 ], [ 0, %417 ]
  %428 = load i32, ptr %383, align 4
  br label %429

429:                                              ; preds = %425, %401
  %430 = phi i32 [ %402, %401 ], [ %428, %425 ]
  %431 = phi ptr [ %404, %401 ], [ %426, %425 ]
  %432 = phi i32 [ 0, %401 ], [ %427, %425 ]
  %433 = add nuw i32 %405, 1
  %434 = icmp ult i32 %433, %430
  br i1 %434, label %401, label %435

435:                                              ; preds = %429, %376, %360
  %436 = phi ptr [ %368, %360 ], [ %377, %376 ], [ %377, %429 ]
  %437 = phi i32 [ %375, %360 ], [ %393, %376 ], [ %393, %429 ]
  %438 = load i32, ptr %436, align 4
  %439 = add i32 %438, %437
  store i32 %439, ptr %436, align 4
  %440 = load ptr, ptr %1, align 4
  %441 = load i32, ptr %353, align 4
  %442 = load i32, ptr %355, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %440, i32 noundef %441, i32 noundef %442, i32 noundef 2) #9
  %443 = load i32, ptr %230, align 4
  br label %444

444:                                              ; preds = %435, %347
  %445 = phi i32 [ %443, %435 ], [ %348, %347 ]
  %446 = and i32 %445, 1
  %447 = icmp eq i32 %446, 0
  %448 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 16
  %449 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 17
  %450 = select i1 %447, ptr %448, ptr %449
  %451 = load i32, ptr %450, align 4
  %452 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 11
  store i32 %451, ptr %452, align 4
  %453 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  %454 = load i32, ptr %453, align 4
  %455 = icmp eq i32 %454, %451
  br i1 %455, label %456, label %458

456:                                              ; preds = %444
  %457 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 35
  tail call void @complete(ptr noundef %457) #9
  br label %498

458:                                              ; preds = %444
  %459 = sub i32 %454, %451
  %460 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 8
  %461 = load i8, ptr %460, align 1
  %462 = zext i8 %461 to i32
  %463 = add nuw nsw i32 %462, 7
  %464 = lshr i32 %463, 3
  %465 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 13
  store i32 %464, ptr %465, align 4
  switch i8 %461, label %480 [
    i8 32, label %466
    i8 16, label %466
    i8 8, label %466
  ]

466:                                              ; preds = %458, %458, %458
  %467 = load i32, ptr %453, align 4
  %468 = icmp ugt i32 %467, 3
  br i1 %468, label %469, label %480

469:                                              ; preds = %466
  %470 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 27
  store i8 1, ptr %470, align 4
  %471 = udiv i8 32, %461
  %472 = zext i8 %471 to i32
  %473 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 12
  store i32 %472, ptr %473, align 4
  %474 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 19
  %475 = load i32, ptr %474, align 4
  %476 = tail call i32 @llvm.umin.i32(i32 %459, i32 %475) #9
  %477 = udiv i32 %476, %464
  %478 = add i32 %476, 3
  %479 = lshr i32 %478, 2
  br label %490

480:                                              ; preds = %466, %458
  %481 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 27
  store i8 0, ptr %481, align 4
  %482 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 12
  store i32 1, ptr %482, align 4
  %483 = add i32 %459, -1
  %484 = udiv i32 %483, %464
  %485 = add i32 %484, 1
  %486 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 19
  %487 = load i32, ptr %486, align 4
  %488 = lshr i32 %487, 2
  %489 = tail call i32 @llvm.umin.i32(i32 %485, i32 %488) #9
  br label %490

490:                                              ; preds = %480, %469
  %491 = phi i32 [ %489, %480 ], [ %477, %469 ]
  %492 = phi i32 [ %489, %480 ], [ %479, %469 ]
  %493 = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 14
  store i32 %491, ptr %493, align 4
  %494 = icmp ugt i32 %492, 64
  br i1 %494, label %495, label %497

495:                                              ; preds = %490
  %496 = tail call fastcc i32 @tegra_spi_start_dma_based_transfer(ptr noundef %1, ptr noundef %7) #9
  br label %498

497:                                              ; preds = %490
  tail call fastcc void @tegra_spi_start_cpu_based_transfer(ptr noundef %1, ptr noundef %7) #9
  br label %498

498:                                              ; preds = %497, %495, %456
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %299, i32 noundef %300) #9
  br label %499

499:                                              ; preds = %498, %339, %228, %54
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_spi_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %9 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #9
  tail call void @clk_unprepare(ptr noundef %10) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_spi_flush_fifos(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = add i32 %2, 100
  %4 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %8 = and i32 %7, 5
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %29, label %10

10:                                               ; preds = %1
  %11 = or i32 %7, 49152
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #9, !srcloc !13
  %14 = load ptr, ptr %4, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %16

16:                                               ; preds = %25, %10
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = sub i32 %3, %20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.22) #10
  br label %29

25:                                               ; preds = %16
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #9
  %27 = and i32 %19, 5
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %29, label %16

29:                                               ; preds = %25, %23, %1
  %30 = phi i32 [ -5, %23 ], [ 0, %1 ], [ 0, %25 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_spi_transfer_end(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @gpiod_set_value(ptr noundef nonnull %9, i32 noundef 0) #9
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 21
  %14 = load i8, ptr %13, align 1, !range !17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 28
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, -1048577
  %20 = shl i32 %7, 18
  %21 = and i32 %20, 1048576
  %22 = or i32 %21, %19
  %23 = xor i32 %22, 1048576
  store i32 %23, ptr %17, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %24 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #9, !srcloc !13
  %26 = load ptr, ptr %24, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %28

28:                                               ; preds = %16, %12
  %29 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 30
  %30 = load i32, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %31 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #9, !srcloc !13
  %33 = load ptr, ptr %31, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_spi_start_dma_based_transfer(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca %struct.scatterlist, align 4
  %4 = alloca %struct.scatterlist, align 4
  %5 = alloca %struct.dma_slave_config, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, i8 0, i32 48, i1 false)
  %6 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 65535
  %9 = and i32 %8, 65535
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %10 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #9, !srcloc !13
  %13 = load ptr, ptr %10, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %15 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 27
  %16 = load i8, ptr %15, align 4, !range !17
  %17 = icmp eq i8 %16, 0
  %18 = load i32, ptr %6, align 4
  br i1 %17, label %25, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 13
  %21 = load i32, ptr %20, align 4
  %22 = mul i32 %21, %18
  %23 = add i32 %22, 3
  %24 = and i32 %23, -4
  br label %27

25:                                               ; preds = %2
  %26 = shl i32 %18, 2
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi i32 [ %24, %19 ], [ %26, %25 ]
  %29 = and i32 %28, 12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = and i32 %28, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = or i32 %9, 557056
  br label %38

36:                                               ; preds = %31
  %37 = or i32 %9, 1114112
  br label %38

38:                                               ; preds = %36, %34, %27
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ], [ %9, %27 ]
  %40 = phi i32 [ 4, %34 ], [ 8, %36 ], [ 1, %27 ]
  %41 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 45
  %42 = load ptr, ptr %41, align 4
  %43 = load i8, ptr %42, align 1, !range !17
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 15
  %47 = load i32, ptr %46, align 4
  %48 = shl i32 %47, 28
  %49 = and i32 %48, 268435456
  %50 = or i32 %49, %39
  %51 = and i32 %48, 536870912
  %52 = or i32 %50, %51
  br label %53

53:                                               ; preds = %45, %38
  %54 = phi i32 [ %39, %38 ], [ %52, %45 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %55 = load ptr, ptr %10, align 4
  %56 = getelementptr i8, ptr %55, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #9, !srcloc !13
  %57 = load ptr, ptr %10, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %59 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 29
  store i32 %54, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 9
  store i8 1, ptr %60, align 4
  %61 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 15
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %203, label %65

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, 264
  %69 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 2
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 4
  store i32 4, ptr %70, align 4
  %71 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 6
  store i32 %40, ptr %71, align 4
  %72 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 41
  %73 = load ptr, ptr %72, align 4
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.dma_device, ptr %74, i32 0, i32 44
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %65
  %79 = call i32 %76(ptr noundef %73, ptr noundef nonnull %5) #9
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78, %65
  %82 = phi i32 [ %79, %78 ], [ -38, %65 ]
  %83 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.17, i32 noundef %82) #10
  br label %285

84:                                               ; preds = %78
  %85 = load ptr, ptr %0, align 4
  %86 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 43
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 18
  %89 = load i32, ptr %88, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef 1) #9
  %90 = load i8, ptr %15, align 4, !range !17
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %84
  %93 = load i32, ptr %6, align 4
  %94 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 13
  %95 = load i32, ptr %94, align 4
  %96 = mul i32 %95, %93
  %97 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 42
  %98 = load ptr, ptr %97, align 4
  %99 = load ptr, ptr %1, align 4
  %100 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 11
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr i8, ptr %99, i32 %101
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %98, ptr align 1 %102, i32 %96, i1 false) #9
  %103 = load i32, ptr %6, align 4
  %104 = load i32, ptr %94, align 4
  %105 = mul i32 %104, %103
  %106 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 17
  br label %160

107:                                              ; preds = %84
  %108 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 17
  %109 = load i32, ptr %6, align 4
  %110 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 13
  %111 = load i32, ptr %110, align 4
  %112 = mul i32 %111, %109
  %113 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 11
  %116 = load i32, ptr %115, align 4
  %117 = sub i32 %114, %116
  %118 = call i32 @llvm.umin.i32(i32 %112, i32 %117) #9
  %119 = icmp eq i32 %109, 0
  br i1 %119, label %160, label %120

120:                                              ; preds = %107
  %121 = load ptr, ptr %1, align 4
  %122 = load i32, ptr %108, align 4
  %123 = getelementptr i8, ptr %121, i32 %122
  %124 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 42
  br label %125

125:                                              ; preds = %151, %120
  %126 = phi i32 [ %118, %120 ], [ %153, %151 ]
  %127 = phi ptr [ %123, %120 ], [ %152, %151 ]
  %128 = phi i32 [ 0, %120 ], [ %157, %151 ]
  %129 = icmp eq i32 %126, 0
  br i1 %129, label %151, label %130

130:                                              ; preds = %125
  %131 = load i32, ptr %110, align 4
  %132 = add i32 %126, -1
  %133 = call i32 @llvm.umin.i32(i32 %131, i32 %132) #9
  %134 = getelementptr i8, ptr %127, i32 %133
  br label %135

135:                                              ; preds = %141, %130
  %136 = phi i32 [ 0, %130 ], [ %147, %141 ]
  %137 = phi i32 [ %126, %130 ], [ %149, %141 ]
  %138 = phi ptr [ %127, %130 ], [ %142, %141 ]
  %139 = phi i32 [ 0, %130 ], [ %148, %141 ]
  %140 = icmp eq i32 %139, %131
  br i1 %140, label %151, label %141

141:                                              ; preds = %135
  %142 = getelementptr i8, ptr %138, i32 1
  %143 = load i8, ptr %138, align 1
  %144 = zext i8 %143 to i32
  %145 = shl i32 %139, 3
  %146 = shl i32 %144, %145
  %147 = or i32 %146, %136
  %148 = add nuw i32 %139, 1
  %149 = add i32 %137, -1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %135

151:                                              ; preds = %141, %135, %125
  %152 = phi ptr [ %127, %125 ], [ %134, %135 ], [ %142, %141 ]
  %153 = phi i32 [ 0, %125 ], [ %137, %135 ], [ 0, %141 ]
  %154 = phi i32 [ 0, %125 ], [ %136, %135 ], [ %147, %141 ]
  %155 = load ptr, ptr %124, align 4
  %156 = getelementptr i32, ptr %155, i32 %128
  store i32 %154, ptr %156, align 4
  %157 = add nuw i32 %128, 1
  %158 = load i32, ptr %6, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %125, label %160

160:                                              ; preds = %151, %107, %92
  %161 = phi ptr [ %106, %92 ], [ %108, %107 ], [ %108, %151 ]
  %162 = phi i32 [ %105, %92 ], [ %118, %107 ], [ %118, %151 ]
  %163 = load i32, ptr %161, align 4
  %164 = add i32 %163, %162
  store i32 %164, ptr %161, align 4
  %165 = load ptr, ptr %0, align 4
  %166 = load i32, ptr %86, align 4
  %167 = load i32, ptr %88, align 4
  call void @dma_sync_single_for_device(ptr noundef %165, i32 noundef %166, i32 noundef %167, i32 noundef 1) #9
  %168 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 23
  store i32 0, ptr %168, align 4
  %169 = load ptr, ptr %72, align 4
  %170 = load i32, ptr %86, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #9, !annotation !19
  call void @sg_init_table(ptr noundef nonnull %4, i32 noundef 1) #9
  %171 = getelementptr inbounds %struct.scatterlist, ptr %4, i32 0, i32 3
  store i32 %170, ptr %171, align 4
  %172 = getelementptr inbounds %struct.scatterlist, ptr %4, i32 0, i32 4
  store i32 %28, ptr %172, align 4
  %173 = icmp eq ptr %169, null
  br i1 %173, label %181, label %174

174:                                              ; preds = %160
  %175 = load ptr, ptr %169, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %181, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.dma_device, ptr %175, i32 0, i32 39
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %183

181:                                              ; preds = %177, %174, %160
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  %182 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 44
  store ptr null, ptr %182, align 4
  br label %200

183:                                              ; preds = %177
  %184 = call ptr %179(ptr noundef nonnull %169, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  %185 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 44
  store ptr %184, ptr %185, align 4
  %186 = icmp eq ptr %184, null
  br i1 %186, label %200, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %184, i32 0, i32 6
  store ptr @tegra_spi_dma_complete, ptr %188, align 4
  %189 = load ptr, ptr %185, align 4
  %190 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %189, i32 0, i32 8
  store ptr %168, ptr %190, align 4
  %191 = load ptr, ptr %185, align 4
  %192 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %191, i32 0, i32 4
  %193 = load ptr, ptr %192, align 4
  %194 = call i32 %193(ptr noundef %191) #9
  %195 = load ptr, ptr %72, align 4
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.dma_device, ptr %196, i32 0, i32 50
  %198 = load ptr, ptr %197, align 4
  call void %198(ptr noundef %195) #9
  %199 = load i32, ptr %61, align 4
  br label %203

200:                                              ; preds = %183, %181
  %201 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.20) #10
  %202 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %202, ptr noundef nonnull @.str.18, i32 noundef -5) #10
  br label %285

203:                                              ; preds = %187, %53
  %204 = phi i32 [ %199, %187 ], [ %62, %53 ]
  %205 = and i32 %204, 2
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %278, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 6
  %209 = load i32, ptr %208, align 4
  %210 = add i32 %209, 392
  %211 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 1
  store i32 %210, ptr %211, align 4
  %212 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 3
  store i32 4, ptr %212, align 4
  %213 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 5
  store i32 %40, ptr %213, align 4
  %214 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 37
  %215 = load ptr, ptr %214, align 4
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.dma_device, ptr %216, i32 0, i32 44
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %223, label %220

220:                                              ; preds = %207
  %221 = call i32 %218(ptr noundef %215, ptr noundef nonnull %5) #9
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220, %207
  %224 = phi i32 [ %221, %220 ], [ -38, %207 ]
  %225 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %225, ptr noundef nonnull @.str.17, i32 noundef %224) #10
  br label %285

226:                                              ; preds = %220
  %227 = load ptr, ptr %0, align 4
  %228 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 39
  %229 = load i32, ptr %228, align 4
  %230 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 18
  %231 = load i32, ptr %230, align 4
  call void @dma_sync_single_for_device(ptr noundef %227, i32 noundef %229, i32 noundef %231, i32 noundef 2) #9
  %232 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 22
  store i32 0, ptr %232, align 4
  %233 = load ptr, ptr %214, align 4
  %234 = load i32, ptr %228, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #9, !annotation !19
  call void @sg_init_table(ptr noundef nonnull %3, i32 noundef 1) #9
  %235 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 3
  store i32 %234, ptr %235, align 4
  %236 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 4
  store i32 %28, ptr %236, align 4
  %237 = icmp eq ptr %233, null
  br i1 %237, label %245, label %238

238:                                              ; preds = %226
  %239 = load ptr, ptr %233, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %245, label %241

241:                                              ; preds = %238
  %242 = getelementptr inbounds %struct.dma_device, ptr %239, i32 0, i32 39
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %247

245:                                              ; preds = %241, %238, %226
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  %246 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 40
  store ptr null, ptr %246, align 4
  br label %263

247:                                              ; preds = %241
  %248 = call ptr %243(ptr noundef nonnull %233, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  %249 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 40
  store ptr %248, ptr %249, align 4
  %250 = icmp eq ptr %248, null
  br i1 %250, label %263, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %248, i32 0, i32 6
  store ptr @tegra_spi_dma_complete, ptr %252, align 4
  %253 = load ptr, ptr %249, align 4
  %254 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %253, i32 0, i32 8
  store ptr %232, ptr %254, align 4
  %255 = load ptr, ptr %249, align 4
  %256 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %255, i32 0, i32 4
  %257 = load ptr, ptr %256, align 4
  %258 = call i32 %257(ptr noundef %255) #9
  %259 = load ptr, ptr %214, align 4
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.dma_device, ptr %260, i32 0, i32 50
  %262 = load ptr, ptr %261, align 4
  call void %262(ptr noundef %259) #9
  br label %278

263:                                              ; preds = %247, %245
  %264 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %264, ptr noundef nonnull @.str.21) #10
  %265 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %265, ptr noundef nonnull @.str.19, i32 noundef -5) #10
  %266 = load i32, ptr %61, align 4
  %267 = and i32 %266, 1
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %285, label %269

269:                                              ; preds = %263
  %270 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 41
  %271 = load ptr, ptr %270, align 4
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.dma_device, ptr %272, i32 0, i32 47
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %285, label %276

276:                                              ; preds = %269
  %277 = call i32 %274(ptr noundef %271) #9
  br label %285

278:                                              ; preds = %251, %203
  %279 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 20
  store i8 1, ptr %279, align 4
  store i32 %54, ptr %59, align 4
  %280 = or i32 %54, -2147483648
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  call void @arm_heavy_mb() #9
  %281 = load ptr, ptr %10, align 4
  %282 = getelementptr i8, ptr %281, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 %280) #9, !srcloc !13
  %283 = load ptr, ptr %10, align 4
  %284 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %283) #9, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %285

285:                                              ; preds = %278, %276, %269, %263, %223, %200, %81
  %286 = phi i32 [ %82, %81 ], [ -5, %200 ], [ %224, %223 ], [ 0, %278 ], [ -5, %263 ], [ -5, %269 ], [ -5, %276 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #9
  ret i32 %286
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_spi_start_cpu_based_transfer(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %135, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 127
  %18 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 27
  %19 = load i8, ptr %18, align 4, !range !17
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %82, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 12
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, %17
  %25 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 14
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %24, i32 %26) #9
  %28 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 13
  %29 = load i32, ptr %28, align 4
  %30 = mul i32 %27, %29
  %31 = add i32 %30, 3
  %32 = icmp ult i32 %31, 4
  br i1 %32, label %130, label %33

33:                                               ; preds = %21
  %34 = lshr i32 %31, 2
  br label %35

35:                                               ; preds = %71, %33
  %36 = phi i32 [ %74, %71 ], [ %30, %33 ]
  %37 = phi i32 [ %77, %71 ], [ 0, %33 ]
  %38 = phi ptr [ %72, %71 ], [ %11, %33 ]
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %71, label %40

40:                                               ; preds = %35
  %41 = add i32 %36, -1
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 3) #9
  %43 = getelementptr i8, ptr %38, i32 1
  %44 = getelementptr i8, ptr %43, i32 %42
  %45 = load i8, ptr %38, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %42, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %40
  %49 = getelementptr i8, ptr %38, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 8
  %53 = or i32 %52, %46
  %54 = icmp eq i32 %42, 1
  br i1 %54, label %68, label %55

55:                                               ; preds = %48
  %56 = getelementptr i8, ptr %38, i32 2
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 16
  %60 = or i32 %59, %53
  %61 = icmp eq i32 %42, 2
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = getelementptr i8, ptr %38, i32 3
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl nuw i32 %65, 24
  %67 = or i32 %66, %60
  br label %68

68:                                               ; preds = %62, %55, %48, %40
  %69 = phi i32 [ %46, %40 ], [ %53, %48 ], [ %60, %55 ], [ %67, %62 ]
  %70 = sub i32 %41, %42
  br label %71

71:                                               ; preds = %68, %35
  %72 = phi ptr [ %38, %35 ], [ %44, %68 ]
  %73 = phi i32 [ 0, %35 ], [ %69, %68 ]
  %74 = phi i32 [ 0, %35 ], [ %70, %68 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %75 = load ptr, ptr %12, align 4
  %76 = getelementptr i8, ptr %75, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %73) #9, !srcloc !13
  %77 = add nuw nsw i32 %37, 1
  %78 = icmp eq i32 %77, %34
  br i1 %78, label %79, label %35

79:                                               ; preds = %71
  %80 = load i32, ptr %28, align 4
  %81 = mul i32 %80, %27
  br label %130

82:                                               ; preds = %7
  %83 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 14
  %84 = load i32, ptr %83, align 4
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 %17) #9
  %86 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 13
  %87 = load i32, ptr %86, align 4
  %88 = mul i32 %85, %87
  %89 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 11
  %92 = load i32, ptr %91, align 4
  %93 = sub i32 %90, %92
  %94 = tail call i32 @llvm.umin.i32(i32 %88, i32 %93) #9
  %95 = icmp eq i32 %85, 0
  br i1 %95, label %130, label %96

96:                                               ; preds = %122, %82
  %97 = phi i32 [ %124, %122 ], [ %94, %82 ]
  %98 = phi i32 [ %128, %122 ], [ 0, %82 ]
  %99 = phi ptr [ %123, %122 ], [ %11, %82 ]
  %100 = icmp eq i32 %97, 0
  br i1 %100, label %122, label %101

101:                                              ; preds = %96
  %102 = load i32, ptr %86, align 4
  %103 = add i32 %97, -1
  %104 = tail call i32 @llvm.umin.i32(i32 %102, i32 %103) #9
  %105 = getelementptr i8, ptr %99, i32 %104
  br label %106

106:                                              ; preds = %112, %101
  %107 = phi i32 [ 0, %101 ], [ %118, %112 ]
  %108 = phi i32 [ %97, %101 ], [ %120, %112 ]
  %109 = phi i32 [ 0, %101 ], [ %119, %112 ]
  %110 = phi ptr [ %99, %101 ], [ %113, %112 ]
  %111 = icmp eq i32 %109, %102
  br i1 %111, label %122, label %112

112:                                              ; preds = %106
  %113 = getelementptr i8, ptr %110, i32 1
  %114 = load i8, ptr %110, align 1
  %115 = zext i8 %114 to i32
  %116 = shl i32 %109, 3
  %117 = shl i32 %115, %116
  %118 = or i32 %117, %107
  %119 = add nuw i32 %109, 1
  %120 = add i32 %108, -1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %106

122:                                              ; preds = %112, %106, %96
  %123 = phi ptr [ %99, %96 ], [ %105, %106 ], [ %113, %112 ]
  %124 = phi i32 [ 0, %96 ], [ %108, %106 ], [ 0, %112 ]
  %125 = phi i32 [ 0, %96 ], [ %107, %106 ], [ %118, %112 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %126 = load ptr, ptr %12, align 4
  %127 = getelementptr i8, ptr %126, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %125) #9, !srcloc !13
  %128 = add nuw nsw i32 %98, 1
  %129 = icmp eq i32 %128, %85
  br i1 %129, label %130, label %96

130:                                              ; preds = %122, %82, %79, %21
  %131 = phi i32 [ %81, %79 ], [ %30, %21 ], [ %94, %82 ], [ %94, %122 ]
  %132 = phi i32 [ %27, %79 ], [ %27, %21 ], [ 0, %82 ], [ %85, %122 ]
  %133 = load i32, ptr %9, align 4
  %134 = add i32 %133, %131
  store i32 %134, ptr %9, align 4
  br label %138

135:                                              ; preds = %2
  %136 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 14
  %137 = load i32, ptr %136, align 4
  br label %138

138:                                              ; preds = %135, %130
  %139 = phi i32 [ %132, %130 ], [ %137, %135 ]
  %140 = add i32 %139, 65535
  %141 = and i32 %140, 65535
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %142 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 5
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr i8, ptr %143, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %141) #9, !srcloc !13
  %145 = load ptr, ptr %142, align 4
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %147 = load i32, ptr %3, align 4
  %148 = shl i32 %147, 28
  %149 = and i32 %148, 805306368
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %150 = load ptr, ptr %142, align 4
  %151 = getelementptr i8, ptr %150, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %149) #9, !srcloc !13
  %152 = load ptr, ptr %142, align 4
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %154 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 29
  store i32 %149, ptr %154, align 4
  %155 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 20
  store i8 0, ptr %155, align 4
  %156 = getelementptr inbounds %struct.tegra_spi_data, ptr %0, i32 0, i32 28
  %157 = load i32, ptr %156, align 4
  %158 = or i32 %157, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %159 = load ptr, ptr %142, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %158) #9, !srcloc !13
  %160 = load ptr, ptr %142, align 4
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_spi_dma_complete(ptr noundef %0) #2 {
  tail call void @complete(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_spi_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @spi_controller_suspend(ptr noundef %3) #9
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_spi_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #9
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #9, !srcloc !9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 -1, ptr elementtype(i32) %9) #9, !srcloc !10
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  br label %14

14:                                               ; preds = %13, %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %6) #10
  br label %35

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 28
  %17 = load i32, ptr %16, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %18 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !13
  %20 = load ptr, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %22 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 31
  %23 = load i32, ptr %22, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %24 = load ptr, ptr %18, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #9, !srcloc !13
  %26 = load ptr, ptr %18, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %28 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 3
  %29 = load i16, ptr %28, align 2
  %30 = trunc i16 %29 to i8
  %31 = add i8 %30, 1
  %32 = getelementptr inbounds %struct.tegra_spi_data, ptr %5, i32 0, i32 34
  store i8 %31, ptr %32, align 4
  %33 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #9
  %34 = tail call i32 @spi_controller_resume(ptr noundef %3) #9
  br label %35

35:                                               ; preds = %15, %14
  %36 = phi i32 [ %6, %14 ], [ %34, %15 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!8 = !{i64 2147982863}
!9 = !{i64 481173, i64 2147971144, i64 2147971170, i64 2147971217, i64 2147971239, i64 2147971267, i64 2147971287}
!10 = !{i64 467742, i64 467767, i64 467789, i64 467805, i64 467817, i64 467837, i64 467861, i64 467877, i64 467889}
!11 = !{i64 2147982989}
!12 = !{i64 2153299696}
!13 = !{i64 5083020}
!14 = !{i64 5083438}
!15 = !{i64 2153300173}
!16 = !{i64 2153299343}
!17 = !{i8 0, i8 2}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!"auto-init"}
