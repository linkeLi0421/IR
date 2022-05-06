; ModuleID = '/llk/IR/drivers/spi/spi-tegra20-slink.c_pt.bc'
source_filename = "../drivers/spi/spi-tegra20-slink.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.tegra_slink_chip_data = type { i8 }
%struct.tegra_core_opp_params = type { i8 }
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
%struct.tegra_slink_data = type { ptr, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.completion, %struct.completion, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, %struct.completion, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_tegra20_slink__239_1232_tegra_slink_driver_init6 = internal global ptr @tegra_slink_driver_init, section ".initcall6.init", align 4
@tegra_slink_driver = internal global %struct.platform_driver { ptr @tegra_slink_probe, ptr @tegra_slink_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_slink_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @slink_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_slink_driver_exit = internal global ptr @tegra_slink_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias240 = internal constant [49 x i8] c"spi_tegra20_slink.alias=platform:spi-tegra-slink\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [77 x i8] c"spi_tegra20_slink.description=NVIDIA Tegra20/Tegra30 SLINK Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [64 x i8] c"spi_tegra20_slink.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [53 x i8] c"spi_tegra20_slink.file=drivers/spi/spi-tegra20-slink\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [33 x i8] c"spi_tegra20_slink.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"spi-tegra-slink\00", align 1
@tegra_slink_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-slink\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_spi_cdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-slink\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_spi_cdata }, %struct.of_device_id zeroinitializer], align 4
@slink_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_slink_suspend, ptr @tegra_slink_resume, ptr @tegra_slink_suspend, ptr @tegra_slink_resume, ptr @tegra_slink_suspend, ptr @tegra_slink_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_slink_runtime_suspend, ptr @tegra_slink_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"master allocation failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"spi-max-frequency\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"No IO memory resource\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Can not get clock %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"can not get reset\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"pm runtime get failed, e = %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"Failed to register ISR for IRQ %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"can not register to master err %d\0A\00", align 1
@tegra_slink_setup.cs_pol_bit = internal unnamed_addr constant [4 x i32] [i32 8192, i32 1048576, i32 4194304, i32 8388608], align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"pm runtime failed, e = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"spi can not start transfer, err %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"drivers/spi/spi-tegra20-slink.c\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"spi transfer timeout, err %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Rx/Tx fifo are not empty status 0x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Starting tx dma failed, err %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Starting rx dma failed, err %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Not able to get desc for Tx\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Not able to get desc for Rx\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Dma channel is not available\0A\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c" Not able to allocate the dma buffer\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"CpuXfer ERROR bit set 0x%x\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"CpuXfer 0x%08x:0x%08x:0x%08x\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"TxDma Xfer failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"RxDma Xfer failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"DmaXfer: ERROR bit set 0x%x\0A\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"DmaXfer 0x%08x:0x%08x:0x%08x\0A\00", align 1
@tegra30_spi_cdata = internal constant %struct.tegra_slink_chip_data { i8 1 }, align 1
@tegra20_spi_cdata = internal constant %struct.tegra_slink_chip_data zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"clk_prepare failed: %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias240, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_tegra_slink_driver_exit, ptr @__initcall__kmod_spi_tegra20_slink__239_1232_tegra_slink_driver_init6, ptr @tegra_slink_driver_exit], section "llvm.metadata"
@switch.table.tegra_slink_isr_thread.32 = private unnamed_addr constant [4 x i32] [i32 2097152, i32 4194304, i32 0, i32 6291456], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_slink_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_slink_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_slink_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_slink_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_slink_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.tegra_core_opp_params, align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_match_device(ptr noundef nonnull @tegra_slink_of_match, ptr noundef %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  br label %148

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @__spi_alloc_controller(ptr noundef %3, i32 noundef 212, i1 noundef zeroext false) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #9
  br label %148

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 5
  store i32 7, ptr %14, align 8
  %15 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 20
  store ptr @tegra_slink_setup, ptr %15, align 4
  %16 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 47
  store ptr @tegra_slink_prepare_message, ptr %16, align 4
  %17 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 51
  store ptr @tegra_slink_transfer_one, ptr %17, align 4
  %18 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 48
  store ptr @tegra_slink_unprepare_message, ptr %18, align 8
  %19 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 36
  store i8 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 3
  store i16 4, ptr %20, align 2
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %21, align 8
  %22 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 1
  store ptr %10, ptr %24, align 4
  store ptr %3, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 2
  store ptr %9, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 3
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 9
  %30 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %28, ptr noundef nonnull @.str.3, ptr noundef %29, i32 noundef 1, i32 noundef 0) #8
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %33, label %32

32:                                               ; preds = %13
  store i32 25000000, ptr %29, align 8
  br label %33

33:                                               ; preds = %32, %13
  %34 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #9
  br label %146

37:                                               ; preds = %33
  %38 = load i32, ptr %34, align 4
  %39 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 7
  store i32 %38, ptr %39, align 4
  %40 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %34) #8
  %41 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 6
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = ptrtoint ptr %40 to i32
  br label %146

45:                                               ; preds = %37
  %46 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #8
  %47 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 4
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = ptrtoint ptr %46 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %50) #9
  br label %146

51:                                               ; preds = %45
  %52 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %53 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 5
  store ptr %52, ptr %53, align 4
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #9
  %56 = load ptr, ptr %53, align 4
  %57 = ptrtoint ptr %56 to i32
  br label %146

58:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 1, ptr %2, align 1
  %59 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %3, ptr noundef nonnull %2) #8
  %60 = icmp eq i32 %59, -19
  %61 = select i1 %60, i32 0, i32 %59
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %146

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 20
  store i32 128, ptr %64, align 4
  %65 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 19
  store i32 16384, ptr %65, align 4
  %66 = call fastcc i32 @tegra_slink_init_dma_param(ptr noundef %23, i1 noundef zeroext true)
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %146, label %68

68:                                               ; preds = %63
  %69 = call fastcc i32 @tegra_slink_init_dma_param(ptr noundef %23, i1 noundef zeroext false)
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %134, label %71

71:                                               ; preds = %68
  %72 = load i32, ptr %65, align 4
  store i32 %72, ptr %64, align 4
  %73 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 23
  store i32 0, ptr %73, align 4
  %74 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 23, i32 1
  call void @__init_swait_queue_head(ptr noundef %74, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #8
  %75 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 22
  store i32 0, ptr %75, align 4
  %76 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 22, i32 1
  call void @__init_swait_queue_head(ptr noundef %76, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #8
  %77 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 34
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 34, i32 1
  call void @__init_swait_queue_head(ptr noundef %78, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #8
  call void @pm_runtime_enable(ptr noundef %3) #8
  %79 = call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #8, !srcloc !9
  %83 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 0, i32 -1, ptr elementtype(i32) %82) #8, !srcloc !10
  %84 = extractvalue { i32, i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  br label %87

87:                                               ; preds = %86, %81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %79) #9
  br label %131

88:                                               ; preds = %71
  %89 = load ptr, ptr %53, align 4
  %90 = call i32 @reset_control_assert(ptr noundef %89) #8
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %91(i32 noundef 429496) #8
  %92 = load ptr, ptr %53, align 4
  %93 = call i32 @reset_control_deassert(ptr noundef %92) #8
  %94 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %95 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 8
  store i32 %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load ptr, ptr %3, align 4
  br label %101

101:                                              ; preds = %99, %88
  %102 = phi ptr [ %100, %99 ], [ %97, %88 ]
  %103 = call i32 @request_threaded_irq(i32 noundef %94, ptr noundef nonnull @tegra_slink_isr, ptr noundef nonnull @tegra_slink_isr_thread, i32 noundef 8192, ptr noundef %102, ptr noundef %23) #8
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, ptr %95, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %106) #9
  br label %128

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 32
  store i32 268435456, ptr %108, align 4
  %109 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 33
  store i32 131072, ptr %109, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  call void @arm_heavy_mb() #8
  %110 = load ptr, ptr %41, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 268435456) #8, !srcloc !13
  %111 = load ptr, ptr %41, align 4
  %112 = getelementptr i8, ptr %111, i32 16
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #8, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %114 = load i32, ptr %109, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  call void @arm_heavy_mb() #8
  %115 = load ptr, ptr %41, align 4
  %116 = getelementptr i8, ptr %115, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #8, !srcloc !13
  %117 = load ptr, ptr %41, align 4
  %118 = getelementptr i8, ptr %117, i32 16
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #8, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %120 = load ptr, ptr %27, align 8
  %121 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  store ptr %120, ptr %121, align 8
  %122 = call i32 @spi_register_controller(ptr noundef nonnull %10) #8
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %107
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %122) #9
  %125 = call ptr @free_irq(i32 noundef %94, ptr noundef %23) #8
  br label %128

126:                                              ; preds = %107
  %127 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #8
  br label %148

128:                                              ; preds = %124, %105
  %129 = phi i32 [ %103, %105 ], [ %122, %124 ]
  %130 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #8
  br label %131

131:                                              ; preds = %128, %87
  %132 = phi i32 [ %79, %87 ], [ %129, %128 ]
  %133 = call i32 @pm_runtime_force_suspend(ptr noundef %3) #8
  call fastcc void @tegra_slink_deinit_dma_param(ptr noundef %23, i1 noundef zeroext false)
  br label %134

134:                                              ; preds = %131, %68
  %135 = phi i32 [ %69, %68 ], [ %132, %131 ]
  %136 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 37
  %137 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 36
  %138 = getelementptr inbounds %struct.tegra_slink_data, ptr %23, i32 0, i32 38
  %139 = load ptr, ptr %137, align 4
  %140 = load ptr, ptr %136, align 4
  %141 = load i32, ptr %138, align 4
  store ptr null, ptr %137, align 4
  store ptr null, ptr %136, align 4
  %142 = icmp eq ptr %139, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %134
  %144 = load ptr, ptr %23, align 4
  %145 = load i32, ptr %65, align 4
  call void @dma_free_attrs(ptr noundef %144, i32 noundef %145, ptr noundef %140, i32 noundef %141, i32 noundef 0) #8
  call void @dma_release_channel(ptr noundef nonnull %139) #8
  br label %146

146:                                              ; preds = %143, %134, %63, %58, %55, %49, %43, %36
  %147 = phi i32 [ %44, %43 ], [ %50, %49 ], [ %57, %55 ], [ %61, %58 ], [ %66, %63 ], [ -19, %36 ], [ %135, %134 ], [ %135, %143 ]
  call void @put_device(ptr noundef nonnull %10) #8
  br label %148

148:                                              ; preds = %146, %126, %12, %6
  %149 = phi i32 [ %147, %146 ], [ %122, %126 ], [ -12, %12 ], [ -19, %6 ]
  ret i32 %149
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_slink_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @spi_unregister_controller(ptr noundef %3) #8
  %6 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %5) #8
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %10 = tail call i32 @pm_runtime_force_suspend(ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 40
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 41
  %16 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 42
  %17 = load ptr, ptr %15, align 4
  %18 = load i32, ptr %16, align 4
  store ptr null, ptr %15, align 4
  store ptr null, ptr %11, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 19
  %21 = load i32, ptr %20, align 4
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef %21, ptr noundef %17, i32 noundef %18, i32 noundef 0) #8
  tail call void @dma_release_channel(ptr noundef nonnull %12) #8
  br label %22

22:                                               ; preds = %14, %1
  %23 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 36
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 37
  %28 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 38
  %29 = load ptr, ptr %27, align 4
  %30 = load i32, ptr %28, align 4
  store ptr null, ptr %23, align 4
  store ptr null, ptr %27, align 4
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 19
  %33 = load i32, ptr %32, align 4
  tail call void @dma_free_attrs(ptr noundef %31, i32 noundef %33, ptr noundef %29, i32 noundef %30, i32 noundef 0) #8
  tail call void @dma_release_channel(ptr noundef nonnull %24) #8
  br label %34

34:                                               ; preds = %26, %22
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_slink_setup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #8, !srcloc !9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #8, !srcloc !10
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  br label %16

16:                                               ; preds = %15, %9
  %17 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.11, i32 noundef %7) #9
  br label %43

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 3
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #8
  %21 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 32
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  %30 = getelementptr [4 x i32], ptr @tegra_slink_setup.cs_pol_bit, i32 0, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, %22
  %33 = xor i32 %31, -1
  %34 = and i32 %22, %33
  %35 = select i1 %26, i32 %34, i32 %32
  store i32 %35, ptr %21, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %36 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #8, !srcloc !13
  %38 = load ptr, ptr %36, align 4
  %39 = getelementptr i8, ptr %38, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #8
  %41 = load ptr, ptr %5, align 4
  %42 = tail call i32 @__pm_runtime_idle(ptr noundef %41, i32 noundef 5) #8
  br label %43

43:                                               ; preds = %18, %16
  %44 = phi i32 [ %7, %16 ], [ 0, %18 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_slink_prepare_message(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_slink_data, ptr %4, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1124859904) #8, !srcloc !13
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %16 = getelementptr inbounds %struct.tegra_slink_data, ptr %4, i32 0, i32 32
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tegra_slink_data, ptr %4, i32 0, i32 29
  %19 = or i32 %17, 6144
  store i32 %19, ptr %18, align 4
  %20 = getelementptr inbounds %struct.tegra_slink_data, ptr %4, i32 0, i32 33
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tegra_slink_data, ptr %4, i32 0, i32 30
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 4
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, 3
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 18
  %28 = or i32 %27, %21
  store i32 %28, ptr %22, align 4
  %29 = and i32 %19, -52428801
  store i32 %29, ptr %18, align 4
  %30 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 7
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = or i32 %29, 2097152
  store i32 %35, ptr %18, align 4
  %36 = load i32, ptr %30, align 8
  br label %37

37:                                               ; preds = %34, %2
  %38 = phi i32 [ %35, %34 ], [ %29, %2 ]
  %39 = phi i32 [ %36, %34 ], [ %31, %2 ]
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = or i32 %38, 16777216
  store i32 %43, ptr %18, align 4
  br label %44

44:                                               ; preds = %42, %37
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_slink_transfer_one(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 34
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 8
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load ptr, ptr %10, align 4
  %20 = shl i32 %14, 2
  %21 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %19, i32 noundef %20) #8
  store i32 %14, ptr %15, align 4
  br label %22

22:                                               ; preds = %18, %3
  %23 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 10
  store ptr %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 11
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 17
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 18
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 35
  store ptr %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = load i8, ptr %11, align 1
  %31 = zext i8 %30 to i32
  %32 = add nuw nsw i32 %31, 7
  %33 = lshr i32 %32, 3
  %34 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 14
  store i32 %33, ptr %34, align 4
  switch i8 %30, label %39 [
    i8 16, label %35
    i8 8, label %35
  ]

35:                                               ; preds = %22, %22
  %36 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 27
  store i8 1, ptr %36, align 4
  %37 = udiv i8 32, %30
  %38 = zext i8 %37 to i32
  br label %41

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 27
  store i8 0, ptr %40, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i32 [ 1, %39 ], [ %38, %35 ]
  %43 = phi i1 [ true, %39 ], [ false, %35 ]
  %44 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 13
  store i32 %42, ptr %44, align 4
  %45 = add nsw i32 %33, -1
  %46 = icmp ult i32 %45, 4
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = getelementptr inbounds [4 x i32], ptr @switch.table.tegra_slink_isr_thread.32, i32 0, i32 %45
  %49 = load i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i32 [ 0, %41 ], [ %49, %47 ]
  %52 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 28
  store i32 %51, ptr %52, align 4
  br i1 %43, label %59, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 20
  %55 = load i32, ptr %54, align 4
  %56 = tail call i32 @llvm.umin.i32(i32 %29, i32 %55) #8
  %57 = udiv i32 %56, %33
  %58 = lshr i32 %56, 2
  br label %67

59:                                               ; preds = %50
  %60 = add i32 %29, -1
  %61 = udiv i32 %60, %33
  %62 = add i32 %61, 1
  %63 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 20
  %64 = load i32, ptr %63, align 4
  %65 = lshr i32 %64, 2
  %66 = tail call i32 @llvm.umin.i32(i32 %62, i32 %65) #8
  br label %67

67:                                               ; preds = %59, %53
  %68 = phi i32 [ %66, %59 ], [ %57, %53 ]
  %69 = phi i32 [ %66, %59 ], [ %58, %53 ]
  %70 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 15
  store i32 %68, ptr %70, align 4
  %71 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 29
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, -32
  %74 = add i8 %12, 31
  %75 = and i8 %74, 31
  %76 = zext i8 %75 to i32
  %77 = or i32 %73, %76
  %78 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 30
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 1073741823
  %81 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 16
  store i32 0, ptr %81, align 4
  %82 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %67
  %86 = or i32 %80, -2147483648
  store i32 2, ptr %81, align 4
  br label %87

87:                                               ; preds = %85, %67
  %88 = phi i32 [ 3, %85 ], [ 1, %67 ]
  %89 = phi i32 [ %86, %85 ], [ %80, %67 ]
  %90 = load ptr, ptr %2, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = or i32 %89, 1073741824
  store i32 %88, ptr %81, align 4
  br label %94

94:                                               ; preds = %92, %87
  %95 = phi i32 [ %93, %92 ], [ %89, %87 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %96 = getelementptr inbounds %struct.tegra_slink_data, ptr %10, i32 0, i32 6
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr i8, ptr %97, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %95) #8, !srcloc !13
  %99 = load ptr, ptr %96, align 4
  %100 = getelementptr i8, ptr %99, i32 16
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  store i32 %95, ptr %78, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %102 = load ptr, ptr %96, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %77) #8, !srcloc !13
  %103 = load ptr, ptr %96, align 4
  %104 = getelementptr i8, ptr %103, i32 16
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  store i32 %77, ptr %71, align 4
  %106 = icmp ugt i32 %69, 32
  br i1 %106, label %108, label %107

107:                                              ; preds = %94
  tail call fastcc void @tegra_slink_start_cpu_based_transfer(ptr noundef %10, ptr noundef %2) #8
  br label %113

108:                                              ; preds = %94
  %109 = tail call fastcc i32 @tegra_slink_start_dma_based_transfer(ptr noundef %10, ptr noundef %2) #8
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.12, i32 noundef %109) #9
  br label %125

113:                                              ; preds = %108, %107
  %114 = tail call i32 @wait_for_completion_timeout(ptr noundef %6, i32 noundef 100) #8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118, !prof !17

116:                                              ; preds = %113
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 816, i32 noundef 9, ptr noundef null) #8
  %117 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.14, i32 noundef 0) #9
  br label %125

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 24
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 25
  %124 = load i32, ptr %123, align 4
  br label %125

125:                                              ; preds = %122, %118, %116, %111
  %126 = phi i32 [ %109, %111 ], [ -5, %116 ], [ %120, %118 ], [ %124, %122 ]
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_slink_unprepare_message(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_slink_data, ptr %4, i32 0, i32 32
  %6 = load i32, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %7 = getelementptr inbounds %struct.tegra_slink_data, ptr %4, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #8, !srcloc !13
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %12 = getelementptr inbounds %struct.tegra_slink_data, ptr %4, i32 0, i32 33
  %13 = load i32, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #8, !srcloc !13
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr i8, ptr %16, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_slink_init_dma_param(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_slave_config, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 48, i1 false), !annotation !18
  %5 = load ptr, ptr %0, align 4
  %6 = select i1 %1, ptr @.str.20, ptr @.str.21
  %7 = tail call ptr @dma_request_chan(ptr noundef %5, ptr noundef nonnull %6) #8
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %9 = load ptr, ptr %0, align 4
  br i1 %8, label %10, label %13

10:                                               ; preds = %2
  %11 = ptrtoint ptr %7 to i32
  %12 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %9, i32 noundef %11, ptr noundef nonnull @.str.22) #8
  br label %58

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 19
  %15 = load i32, ptr %14, align 4
  %16 = call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef %15, ptr noundef nonnull %3, i32 noundef 3264, i32 noundef 0) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.23) #9
  call void @dma_release_channel(ptr noundef %7) #8
  br label %58

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  br i1 %1, label %23, label %28

23:                                               ; preds = %20
  %24 = add i32 %22, 384
  %25 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 3
  store i32 4, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 5
  br label %33

28:                                               ; preds = %20
  %29 = add i32 %22, 256
  %30 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  store i32 4, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 6
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi ptr [ %32, %28 ], [ %27, %23 ]
  store i32 0, ptr %34, align 4
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 44
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %33
  %40 = call i32 %37(ptr noundef %7, ptr noundef nonnull %4) #8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  br i1 %1, label %43, label %48

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 36
  store ptr %7, ptr %44, align 4
  %45 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 37
  store ptr %16, ptr %45, align 4
  %46 = load i32, ptr %3, align 4
  %47 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 38
  store i32 %46, ptr %47, align 4
  br label %58

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 40
  store ptr %7, ptr %49, align 4
  %50 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 41
  store ptr %16, ptr %50, align 4
  %51 = load i32, ptr %3, align 4
  %52 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 42
  store i32 %51, ptr %52, align 4
  br label %58

53:                                               ; preds = %39, %33
  %54 = phi i32 [ %40, %39 ], [ -38, %33 ]
  %55 = load ptr, ptr %0, align 4
  %56 = load i32, ptr %14, align 4
  %57 = load i32, ptr %3, align 4
  call void @dma_free_attrs(ptr noundef %55, i32 noundef %56, ptr noundef nonnull %16, i32 noundef %57, i32 noundef 0) #8
  call void @dma_release_channel(ptr noundef %7) #8
  br label %58

58:                                               ; preds = %53, %48, %43, %18, %10
  %59 = phi i32 [ %12, %10 ], [ %54, %53 ], [ -12, %18 ], [ 0, %48 ], [ 0, %43 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_slink_isr(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %7 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 26
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = and i32 %6, 17301504
  %14 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 24
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = and i32 %9, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = and i32 %6, 33816576
  %20 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 25
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 1124859904) #8, !srcloc !13
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr i8, ptr %27, i32 16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_slink_isr_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 21
  %4 = load i8, ptr %3, align 4, !range !19
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 35
  %7 = load ptr, ptr %6, align 4
  br i1 %5, label %8, label %200

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 3
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 24
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 25
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 26
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %40, label %22

22:                                               ; preds = %18, %14, %8
  %23 = load ptr, ptr %1, align 4
  %24 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 26
  %25 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.25, i32 noundef %25) #9
  %26 = load ptr, ptr %1, align 4
  %27 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 29
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 30
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 31
  %32 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.26, i32 noundef %28, i32 noundef %30, i32 noundef %32) #9
  %33 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @reset_control_assert(ptr noundef %34) #8
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 429496) #8
  %37 = load ptr, ptr %33, align 4
  %38 = tail call i32 @reset_control_deassert(ptr noundef %37) #8
  %39 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 34
  tail call void @complete(ptr noundef %39) #8
  br label %199

40:                                               ; preds = %18
  %41 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 16
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %143, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 17
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i8, ptr %47, i32 %49
  %51 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 28
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 63
  %57 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 27
  %58 = load i8, ptr %57, align 4, !range !19
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = icmp eq i32 %56, 0
  %62 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 14
  br i1 %61, label %63, label %112

63:                                               ; preds = %60
  %64 = load i32, ptr %62, align 4
  br label %135

65:                                               ; preds = %45
  %66 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 15
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 14
  %69 = load i32, ptr %68, align 4
  %70 = mul i32 %69, %67
  %71 = icmp eq i32 %56, 0
  br i1 %71, label %138, label %72

72:                                               ; preds = %103, %65
  %73 = phi ptr [ %105, %103 ], [ %50, %65 ]
  %74 = phi i32 [ %104, %103 ], [ %70, %65 ]
  %75 = phi i32 [ %106, %103 ], [ 0, %65 ]
  %76 = load ptr, ptr %51, align 4
  %77 = getelementptr i8, ptr %76, i32 384
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %79 = icmp eq i32 %74, 0
  br i1 %79, label %103, label %80

80:                                               ; preds = %72
  %81 = add i32 %74, -1
  %82 = tail call i32 @llvm.umin.i32(i32 %81, i32 3) #8
  %83 = trunc i32 %78 to i8
  %84 = getelementptr i8, ptr %73, i32 1
  store i8 %83, ptr %73, align 1
  %85 = icmp eq i32 %82, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %80
  %87 = lshr i32 %78, 8
  %88 = trunc i32 %87 to i8
  %89 = getelementptr i8, ptr %73, i32 2
  store i8 %88, ptr %84, align 1
  %90 = icmp eq i32 %82, 1
  br i1 %90, label %100, label %91

91:                                               ; preds = %86
  %92 = lshr i32 %78, 16
  %93 = trunc i32 %92 to i8
  %94 = getelementptr i8, ptr %73, i32 3
  store i8 %93, ptr %89, align 1
  %95 = icmp eq i32 %82, 2
  br i1 %95, label %100, label %96

96:                                               ; preds = %91
  %97 = lshr i32 %78, 24
  %98 = trunc i32 %97 to i8
  %99 = getelementptr i8, ptr %73, i32 4
  store i8 %98, ptr %94, align 1
  br label %100

100:                                              ; preds = %96, %91, %86, %80
  %101 = phi ptr [ %84, %80 ], [ %89, %86 ], [ %94, %91 ], [ %99, %96 ]
  %102 = sub i32 %81, %82
  br label %103

103:                                              ; preds = %100, %72
  %104 = phi i32 [ 0, %72 ], [ %102, %100 ]
  %105 = phi ptr [ %73, %72 ], [ %101, %100 ]
  %106 = add nuw nsw i32 %75, 1
  %107 = icmp eq i32 %106, %56
  br i1 %107, label %108, label %72

108:                                              ; preds = %103
  %109 = load i32, ptr %66, align 4
  %110 = load i32, ptr %68, align 4
  %111 = mul i32 %110, %109
  br label %138

112:                                              ; preds = %130, %60
  %113 = phi ptr [ %132, %130 ], [ %50, %60 ]
  %114 = phi i32 [ %133, %130 ], [ 0, %60 ]
  %115 = load ptr, ptr %51, align 4
  %116 = getelementptr i8, ptr %115, i32 384
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %118 = load i32, ptr %62, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %120, %112
  %121 = phi ptr [ %126, %120 ], [ %113, %112 ]
  %122 = phi i32 [ %127, %120 ], [ 0, %112 ]
  %123 = shl i32 %122, 3
  %124 = lshr i32 %117, %123
  %125 = trunc i32 %124 to i8
  %126 = getelementptr i8, ptr %121, i32 1
  store i8 %125, ptr %121, align 1
  %127 = add nuw i32 %122, 1
  %128 = load i32, ptr %62, align 4
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %120, label %130

130:                                              ; preds = %120, %112
  %131 = phi i32 [ 0, %112 ], [ %128, %120 ]
  %132 = phi ptr [ %113, %112 ], [ %126, %120 ]
  %133 = add nuw nsw i32 %114, 1
  %134 = icmp eq i32 %133, %56
  br i1 %134, label %135, label %112

135:                                              ; preds = %130, %63
  %136 = phi i32 [ %64, %63 ], [ %131, %130 ]
  %137 = mul i32 %136, %56
  br label %138

138:                                              ; preds = %135, %108, %65
  %139 = phi i32 [ %137, %135 ], [ %111, %108 ], [ %70, %65 ]
  %140 = load i32, ptr %48, align 4
  %141 = add i32 %140, %139
  store i32 %141, ptr %48, align 4
  %142 = load i32, ptr %41, align 4
  br label %143

143:                                              ; preds = %138, %40
  %144 = phi i32 [ %142, %138 ], [ %42, %40 ]
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  %147 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 17
  %148 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 18
  %149 = select i1 %146, ptr %147, ptr %148
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 11
  store i32 %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, %150
  br i1 %154, label %155, label %157

155:                                              ; preds = %143
  %156 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 34
  tail call void @complete(ptr noundef %156) #8
  br label %199

157:                                              ; preds = %143
  %158 = sub i32 %153, %150
  %159 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 8
  %160 = load i8, ptr %159, align 1
  %161 = zext i8 %160 to i32
  %162 = add nuw nsw i32 %161, 7
  %163 = lshr i32 %162, 3
  %164 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 14
  store i32 %163, ptr %164, align 4
  switch i8 %160, label %169 [
    i8 16, label %165
    i8 8, label %165
  ]

165:                                              ; preds = %157, %157
  %166 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 27
  store i8 1, ptr %166, align 4
  %167 = udiv i8 32, %160
  %168 = zext i8 %167 to i32
  br label %171

169:                                              ; preds = %157
  %170 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 27
  store i8 0, ptr %170, align 4
  br label %171

171:                                              ; preds = %169, %165
  %172 = phi i32 [ 1, %169 ], [ %168, %165 ]
  %173 = phi i1 [ true, %169 ], [ false, %165 ]
  %174 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 13
  store i32 %172, ptr %174, align 4
  %175 = add nsw i32 %163, -1
  %176 = icmp ult i32 %175, 4
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = getelementptr inbounds [4 x i32], ptr @switch.table.tegra_slink_isr_thread.32, i32 0, i32 %175
  %179 = load i32, ptr %178, align 4
  br label %180

180:                                              ; preds = %177, %171
  %181 = phi i32 [ 0, %171 ], [ %179, %177 ]
  %182 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 28
  store i32 %181, ptr %182, align 4
  br i1 %173, label %188, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 20
  %185 = load i32, ptr %184, align 4
  %186 = tail call i32 @llvm.umin.i32(i32 %158, i32 %185) #8
  %187 = udiv i32 %186, %163
  br label %196

188:                                              ; preds = %180
  %189 = add i32 %158, -1
  %190 = udiv i32 %189, %163
  %191 = add i32 %190, 1
  %192 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 20
  %193 = load i32, ptr %192, align 4
  %194 = lshr i32 %193, 2
  %195 = tail call i32 @llvm.umin.i32(i32 %191, i32 %194) #8
  br label %196

196:                                              ; preds = %188, %183
  %197 = phi i32 [ %195, %188 ], [ %187, %183 ]
  %198 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 15
  store i32 %197, ptr %198, align 4
  tail call fastcc void @tegra_slink_start_cpu_based_transfer(ptr noundef %1, ptr noundef %7) #8
  br label %199

199:                                              ; preds = %196, %155, %22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #8
  br label %440

200:                                              ; preds = %2
  %201 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 16
  %202 = load i32, ptr %201, align 4
  %203 = and i32 %202, 1
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %233, label %205

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 24
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %218, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 40
  %211 = load ptr, ptr %210, align 4
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.dma_device, ptr %212, i32 0, i32 47
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %233, label %216

216:                                              ; preds = %209
  %217 = tail call i32 %214(ptr noundef %211) #8
  br label %233

218:                                              ; preds = %205
  %219 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 23
  %220 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %219, i32 noundef 100) #8
  %221 = icmp slt i32 %220, 1
  br i1 %221, label %222, label %233

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 40
  %224 = load ptr, ptr %223, align 4
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.dma_device, ptr %225, i32 0, i32 47
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %231, label %229

229:                                              ; preds = %222
  %230 = tail call i32 %227(ptr noundef %224) #8
  br label %231

231:                                              ; preds = %229, %222
  %232 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %232, ptr noundef nonnull @.str.27) #9
  br label %233

233:                                              ; preds = %231, %218, %216, %209, %200
  %234 = phi i1 [ false, %216 ], [ false, %209 ], [ false, %231 ], [ true, %218 ], [ true, %200 ]
  %235 = load i32, ptr %201, align 4
  %236 = and i32 %235, 2
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %269, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 25
  %240 = load i32, ptr %239, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %251, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 36
  %244 = load ptr, ptr %243, align 4
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr inbounds %struct.dma_device, ptr %245, i32 0, i32 47
  %247 = load ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %266, label %249

249:                                              ; preds = %242
  %250 = tail call i32 %247(ptr noundef %244) #8
  br label %266

251:                                              ; preds = %238
  %252 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 22
  %253 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %252, i32 noundef 100) #8
  %254 = icmp slt i32 %253, 1
  br i1 %254, label %255, label %269

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 36
  %257 = load ptr, ptr %256, align 4
  %258 = load ptr, ptr %257, align 4
  %259 = getelementptr inbounds %struct.dma_device, ptr %258, i32 0, i32 47
  %260 = load ptr, ptr %259, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %264, label %262

262:                                              ; preds = %255
  %263 = tail call i32 %260(ptr noundef %257) #8
  br label %264

264:                                              ; preds = %262, %255
  %265 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %265, ptr noundef nonnull @.str.28) #9
  br label %266

266:                                              ; preds = %264, %249, %242
  %267 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 3
  %268 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %267) #8
  br label %272

269:                                              ; preds = %251, %233
  %270 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 3
  %271 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %270) #8
  br i1 %234, label %292, label %272

272:                                              ; preds = %269, %266
  %273 = phi i32 [ %268, %266 ], [ %271, %269 ]
  %274 = phi ptr [ %267, %266 ], [ %270, %269 ]
  %275 = load ptr, ptr %1, align 4
  %276 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 26
  %277 = load i32, ptr %276, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %275, ptr noundef nonnull @.str.29, i32 noundef %277) #9
  %278 = load ptr, ptr %1, align 4
  %279 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 29
  %280 = load i32, ptr %279, align 4
  %281 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 30
  %282 = load i32, ptr %281, align 4
  %283 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 31
  %284 = load i32, ptr %283, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %278, ptr noundef nonnull @.str.30, i32 noundef %280, i32 noundef %282, i32 noundef %284) #9
  %285 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 5
  %286 = load ptr, ptr %285, align 4
  %287 = tail call i32 @reset_control_assert(ptr noundef %286) #8
  %288 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %288(i32 noundef 429496) #8
  %289 = load ptr, ptr %285, align 4
  %290 = tail call i32 @reset_control_assert(ptr noundef %289) #8
  %291 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 34
  tail call void @complete(ptr noundef %291) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %274, i32 noundef %273) #8
  br label %440

292:                                              ; preds = %269
  %293 = load i32, ptr %201, align 4
  %294 = and i32 %293, 2
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %377, label %296

296:                                              ; preds = %292
  %297 = load ptr, ptr %1, align 4
  %298 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 38
  %299 = load i32, ptr %298, align 4
  %300 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 19
  %301 = load i32, ptr %300, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %297, i32 noundef %299, i32 noundef %301, i32 noundef 2) #8
  %302 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 27
  %303 = load i8, ptr %302, align 4, !range !19
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %319, label %305

305:                                              ; preds = %296
  %306 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 15
  %307 = load i32, ptr %306, align 4
  %308 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 14
  %309 = load i32, ptr %308, align 4
  %310 = mul i32 %309, %307
  %311 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 1
  %312 = load ptr, ptr %311, align 4
  %313 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 17
  %314 = load i32, ptr %313, align 4
  %315 = getelementptr i8, ptr %312, i32 %314
  %316 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 37
  %317 = load ptr, ptr %316, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %315, ptr align 4 %317, i32 %310, i1 false) #8
  %318 = load i32, ptr %306, align 4
  br label %365

319:                                              ; preds = %296
  %320 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 8
  %321 = load i8, ptr %320, align 1
  %322 = zext i8 %321 to i32
  %323 = shl nsw i32 -1, %322
  %324 = xor i32 %323, -1
  %325 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 15
  %326 = load i32, ptr %325, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %365, label %328

328:                                              ; preds = %319
  %329 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 1
  %330 = load ptr, ptr %329, align 4
  %331 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 17
  %332 = load i32, ptr %331, align 4
  %333 = getelementptr i8, ptr %330, i32 %332
  %334 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 37
  %335 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 14
  %336 = load i32, ptr %335, align 4
  br label %337

337:                                              ; preds = %359, %328
  %338 = phi i32 [ %326, %328 ], [ %360, %359 ]
  %339 = phi i32 [ %336, %328 ], [ %361, %359 ]
  %340 = phi ptr [ %333, %328 ], [ %362, %359 ]
  %341 = phi i32 [ 0, %328 ], [ %363, %359 ]
  %342 = load ptr, ptr %334, align 4
  %343 = getelementptr i32, ptr %342, i32 %341
  %344 = load i32, ptr %343, align 4
  %345 = and i32 %344, %324
  %346 = icmp eq i32 %339, 0
  br i1 %346, label %359, label %347

347:                                              ; preds = %347, %337
  %348 = phi ptr [ %353, %347 ], [ %340, %337 ]
  %349 = phi i32 [ %354, %347 ], [ 0, %337 ]
  %350 = shl i32 %349, 3
  %351 = lshr i32 %345, %350
  %352 = trunc i32 %351 to i8
  %353 = getelementptr i8, ptr %348, i32 1
  store i8 %352, ptr %348, align 1
  %354 = add nuw i32 %349, 1
  %355 = load i32, ptr %335, align 4
  %356 = icmp ult i32 %354, %355
  br i1 %356, label %347, label %357

357:                                              ; preds = %347
  %358 = load i32, ptr %325, align 4
  br label %359

359:                                              ; preds = %357, %337
  %360 = phi i32 [ %338, %337 ], [ %358, %357 ]
  %361 = phi i32 [ 0, %337 ], [ %355, %357 ]
  %362 = phi ptr [ %340, %337 ], [ %353, %357 ]
  %363 = add nuw i32 %341, 1
  %364 = icmp ult i32 %363, %360
  br i1 %364, label %337, label %365

365:                                              ; preds = %359, %319, %305
  %366 = phi i32 [ 0, %319 ], [ %318, %305 ], [ %360, %359 ]
  %367 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 14
  %368 = load i32, ptr %367, align 4
  %369 = mul i32 %368, %366
  %370 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 17
  %371 = load i32, ptr %370, align 4
  %372 = add i32 %371, %369
  store i32 %372, ptr %370, align 4
  %373 = load ptr, ptr %1, align 4
  %374 = load i32, ptr %298, align 4
  %375 = load i32, ptr %300, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %373, i32 noundef %374, i32 noundef %375, i32 noundef 2) #8
  %376 = load i32, ptr %201, align 4
  br label %377

377:                                              ; preds = %365, %292
  %378 = phi i32 [ %376, %365 ], [ %293, %292 ]
  %379 = and i32 %378, 1
  %380 = icmp eq i32 %379, 0
  %381 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 17
  %382 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 18
  %383 = select i1 %380, ptr %381, ptr %382
  %384 = load i32, ptr %383, align 4
  %385 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 11
  store i32 %384, ptr %385, align 4
  %386 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 2
  %387 = load i32, ptr %386, align 4
  %388 = icmp eq i32 %387, %384
  br i1 %388, label %389, label %391

389:                                              ; preds = %377
  %390 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 34
  tail call void @complete(ptr noundef %390) #8
  br label %439

391:                                              ; preds = %377
  %392 = sub i32 %387, %384
  %393 = getelementptr inbounds %struct.spi_transfer, ptr %7, i32 0, i32 8
  %394 = load i8, ptr %393, align 1
  %395 = zext i8 %394 to i32
  %396 = add nuw nsw i32 %395, 7
  %397 = lshr i32 %396, 3
  %398 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 14
  store i32 %397, ptr %398, align 4
  switch i8 %394, label %403 [
    i8 16, label %399
    i8 8, label %399
  ]

399:                                              ; preds = %391, %391
  %400 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 27
  store i8 1, ptr %400, align 4
  %401 = udiv i8 32, %394
  %402 = zext i8 %401 to i32
  br label %405

403:                                              ; preds = %391
  %404 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 27
  store i8 0, ptr %404, align 4
  br label %405

405:                                              ; preds = %403, %399
  %406 = phi i32 [ 1, %403 ], [ %402, %399 ]
  %407 = phi i1 [ true, %403 ], [ false, %399 ]
  %408 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 13
  store i32 %406, ptr %408, align 4
  %409 = add nsw i32 %397, -1
  %410 = icmp ult i32 %409, 4
  br i1 %410, label %411, label %414

411:                                              ; preds = %405
  %412 = getelementptr inbounds [4 x i32], ptr @switch.table.tegra_slink_isr_thread.32, i32 0, i32 %409
  %413 = load i32, ptr %412, align 4
  br label %414

414:                                              ; preds = %411, %405
  %415 = phi i32 [ 0, %405 ], [ %413, %411 ]
  %416 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 28
  store i32 %415, ptr %416, align 4
  br i1 %407, label %423, label %417

417:                                              ; preds = %414
  %418 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 20
  %419 = load i32, ptr %418, align 4
  %420 = tail call i32 @llvm.umin.i32(i32 %392, i32 %419) #8
  %421 = udiv i32 %420, %397
  %422 = lshr i32 %420, 2
  br label %431

423:                                              ; preds = %414
  %424 = add i32 %392, -1
  %425 = udiv i32 %424, %397
  %426 = add i32 %425, 1
  %427 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 20
  %428 = load i32, ptr %427, align 4
  %429 = lshr i32 %428, 2
  %430 = tail call i32 @llvm.umin.i32(i32 %426, i32 %429) #8
  br label %431

431:                                              ; preds = %423, %417
  %432 = phi i32 [ %430, %423 ], [ %421, %417 ]
  %433 = phi i32 [ %430, %423 ], [ %422, %417 ]
  %434 = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 15
  store i32 %432, ptr %434, align 4
  %435 = icmp ugt i32 %433, 32
  br i1 %435, label %436, label %438

436:                                              ; preds = %431
  %437 = tail call fastcc i32 @tegra_slink_start_dma_based_transfer(ptr noundef %1, ptr noundef %7) #8
  br label %439

438:                                              ; preds = %431
  tail call fastcc void @tegra_slink_start_cpu_based_transfer(ptr noundef %1, ptr noundef %7) #8
  br label %439

439:                                              ; preds = %438, %436, %389
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %270, i32 noundef %271) #8
  br label %440

440:                                              ; preds = %439, %272, %199
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_slink_deinit_dma_param(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  br i1 %1, label %3, label %7

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 37
  %5 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 36
  %6 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 38
  br label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 41
  %9 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 40
  %10 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 42
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi ptr [ %10, %7 ], [ %6, %3 ]
  %13 = phi ptr [ %8, %7 ], [ %5, %3 ]
  %14 = phi ptr [ %9, %7 ], [ %4, %3 ]
  %15 = phi ptr [ %8, %7 ], [ %4, %3 ]
  %16 = phi ptr [ %9, %7 ], [ %5, %3 ]
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = load i32, ptr %12, align 4
  store ptr null, ptr %13, align 4
  store ptr null, ptr %14, align 4
  %20 = icmp eq ptr %17, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 19
  %24 = load i32, ptr %23, align 4
  tail call void @dma_free_attrs(ptr noundef %22, i32 noundef %24, ptr noundef %18, i32 noundef %19, i32 noundef 0) #8
  tail call void @dma_release_channel(ptr noundef nonnull %17) #8
  br label %25

25:                                               ; preds = %21, %11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_slink_start_dma_based_transfer(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca %struct.scatterlist, align 4
  %4 = alloca %struct.scatterlist, align 4
  %5 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %9 = and i32 %8, 10485760
  %10 = icmp eq i32 %9, 10485760
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.15, i32 noundef %8) #9
  br label %262

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 15
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 65535
  %17 = and i32 %16, 65535
  %18 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 28
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %17, %19
  %21 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 27
  %22 = load i8, ptr %21, align 4, !range !19
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 14
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, %15
  %28 = add i32 %27, 3
  %29 = and i32 %28, -4
  br label %32

30:                                               ; preds = %13
  %31 = shl i32 %15, 2
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi i32 [ %29, %24 ], [ %31, %30 ]
  %34 = and i32 %33, 12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = and i32 %33, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = or i32 %20, 327680
  br label %43

41:                                               ; preds = %36
  %42 = or i32 %20, 655360
  br label %43

43:                                               ; preds = %41, %39, %32
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ], [ %20, %32 ]
  %45 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 16
  %46 = load i32, ptr %45, align 4
  %47 = shl i32 %46, 26
  %48 = and i32 %47, 67108864
  %49 = or i32 %48, %44
  %50 = and i32 %47, 134217728
  %51 = or i32 %49, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr i8, ptr %52, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #8, !srcloc !13
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr i8, ptr %54, i32 16
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %57 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 31
  store i32 %51, ptr %57, align 4
  %58 = load i32, ptr %45, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %185, label %61

61:                                               ; preds = %43
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 42
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 19
  %66 = load i32, ptr %65, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef 1) #8
  %67 = load i8, ptr %21, align 4, !range !19
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %61
  %70 = load i32, ptr %14, align 4
  %71 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 14
  %72 = load i32, ptr %71, align 4
  %73 = mul i32 %72, %70
  %74 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 41
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %1, align 4
  %77 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 11
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr i8, ptr %76, i32 %78
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %75, ptr align 1 %79, i32 %73, i1 false) #8
  %80 = load i32, ptr %14, align 4
  br label %128

81:                                               ; preds = %61
  %82 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 14
  %83 = load i32, ptr %14, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %128, label %85

85:                                               ; preds = %81
  %86 = load i32, ptr %82, align 4
  %87 = mul i32 %86, %83
  %88 = load ptr, ptr %1, align 4
  %89 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 18
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr i8, ptr %88, i32 %90
  %92 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 41
  br label %93

93:                                               ; preds = %119, %85
  %94 = phi i32 [ %87, %85 ], [ %121, %119 ]
  %95 = phi ptr [ %91, %85 ], [ %120, %119 ]
  %96 = phi i32 [ 0, %85 ], [ %125, %119 ]
  %97 = icmp eq i32 %94, 0
  br i1 %97, label %119, label %98

98:                                               ; preds = %93
  %99 = load i32, ptr %82, align 4
  %100 = add i32 %94, -1
  %101 = tail call i32 @llvm.umin.i32(i32 %99, i32 %100) #8
  %102 = getelementptr i8, ptr %95, i32 %101
  br label %103

103:                                              ; preds = %109, %98
  %104 = phi i32 [ 0, %98 ], [ %115, %109 ]
  %105 = phi i32 [ %94, %98 ], [ %117, %109 ]
  %106 = phi ptr [ %95, %98 ], [ %110, %109 ]
  %107 = phi i32 [ 0, %98 ], [ %116, %109 ]
  %108 = icmp eq i32 %107, %99
  br i1 %108, label %119, label %109

109:                                              ; preds = %103
  %110 = getelementptr i8, ptr %106, i32 1
  %111 = load i8, ptr %106, align 1
  %112 = zext i8 %111 to i32
  %113 = shl i32 %107, 3
  %114 = shl i32 %112, %113
  %115 = or i32 %114, %104
  %116 = add nuw i32 %107, 1
  %117 = add i32 %105, -1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %103

119:                                              ; preds = %109, %103, %93
  %120 = phi ptr [ %95, %93 ], [ %102, %103 ], [ %110, %109 ]
  %121 = phi i32 [ 0, %93 ], [ %105, %103 ], [ 0, %109 ]
  %122 = phi i32 [ 0, %93 ], [ %104, %103 ], [ %115, %109 ]
  %123 = load ptr, ptr %92, align 4
  %124 = getelementptr i32, ptr %123, i32 %96
  store i32 %122, ptr %124, align 4
  %125 = add nuw i32 %96, 1
  %126 = load i32, ptr %14, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %93, label %128

128:                                              ; preds = %119, %81, %69
  %129 = phi i32 [ 0, %81 ], [ %80, %69 ], [ %126, %119 ]
  %130 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 14
  %131 = load i32, ptr %130, align 4
  %132 = mul i32 %131, %129
  %133 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 18
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, %132
  store i32 %135, ptr %133, align 4
  %136 = load ptr, ptr %0, align 4
  %137 = load i32, ptr %63, align 4
  %138 = load i32, ptr %65, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %136, i32 noundef %137, i32 noundef %138, i32 noundef 1) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %139 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 23
  store i32 0, ptr %139, align 4
  %140 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 40
  %141 = load ptr, ptr %140, align 4
  %142 = load i32, ptr %63, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #8, !annotation !18
  call void @sg_init_table(ptr noundef nonnull %4, i32 noundef 1) #8
  %143 = getelementptr inbounds %struct.scatterlist, ptr %4, i32 0, i32 3
  store i32 %142, ptr %143, align 4
  %144 = getelementptr inbounds %struct.scatterlist, ptr %4, i32 0, i32 4
  store i32 %33, ptr %144, align 4
  %145 = icmp eq ptr %141, null
  br i1 %145, label %153, label %146

146:                                              ; preds = %128
  %147 = load ptr, ptr %141, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %153, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.dma_device, ptr %147, i32 0, i32 39
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %149, %146, %128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  %154 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 43
  store ptr null, ptr %154, align 4
  br label %159

155:                                              ; preds = %149
  %156 = call ptr %151(ptr noundef nonnull %141, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  %157 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 43
  store ptr %156, ptr %157, align 4
  %158 = icmp eq ptr %156, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %155, %153
  %160 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.18) #9
  %161 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.16, i32 noundef -5) #9
  br label %262

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %156, i32 0, i32 6
  store ptr @tegra_slink_dma_complete, ptr %163, align 4
  %164 = load ptr, ptr %157, align 4
  %165 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %164, i32 0, i32 8
  store ptr %139, ptr %165, align 4
  %166 = load ptr, ptr %157, align 4
  %167 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %166, i32 0, i32 4
  %168 = load ptr, ptr %167, align 4
  %169 = call i32 %168(ptr noundef %166) #8
  %170 = load ptr, ptr %140, align 4
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.dma_device, ptr %171, i32 0, i32 50
  %173 = load ptr, ptr %172, align 4
  call void %173(ptr noundef %170) #8
  %174 = load ptr, ptr %5, align 4
  %175 = getelementptr i8, ptr %174, i32 8
  %176 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %175) #8, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %177 = and i32 %176, 1048576
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %179, %162
  %180 = load ptr, ptr %5, align 4
  %181 = getelementptr i8, ptr %180, i32 8
  %182 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #8, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %183 = and i32 %182, 1048576
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %179, label %185

185:                                              ; preds = %179, %162, %43
  %186 = load i32, ptr %45, align 4
  %187 = and i32 %186, 2
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %242, label %189

189:                                              ; preds = %185
  %190 = load ptr, ptr %0, align 4
  %191 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 38
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 19
  %194 = load i32, ptr %193, align 4
  call void @dma_sync_single_for_device(ptr noundef %190, i32 noundef %192, i32 noundef %194, i32 noundef 2) #8
  %195 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 22
  store i32 0, ptr %195, align 4
  %196 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 36
  %197 = load ptr, ptr %196, align 4
  %198 = load i32, ptr %191, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #8, !annotation !18
  call void @sg_init_table(ptr noundef nonnull %3, i32 noundef 1) #8
  %199 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 3
  store i32 %198, ptr %199, align 4
  %200 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 4
  store i32 %33, ptr %200, align 4
  %201 = icmp eq ptr %197, null
  br i1 %201, label %209, label %202

202:                                              ; preds = %189
  %203 = load ptr, ptr %197, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.dma_device, ptr %203, i32 0, i32 39
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %211

209:                                              ; preds = %205, %202, %189
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  %210 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 39
  store ptr null, ptr %210, align 4
  br label %227

211:                                              ; preds = %205
  %212 = call ptr %207(ptr noundef nonnull %197, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  %213 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 39
  store ptr %212, ptr %213, align 4
  %214 = icmp eq ptr %212, null
  br i1 %214, label %227, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %212, i32 0, i32 6
  store ptr @tegra_slink_dma_complete, ptr %216, align 4
  %217 = load ptr, ptr %213, align 4
  %218 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %217, i32 0, i32 8
  store ptr %195, ptr %218, align 4
  %219 = load ptr, ptr %213, align 4
  %220 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %219, i32 0, i32 4
  %221 = load ptr, ptr %220, align 4
  %222 = call i32 %221(ptr noundef %219) #8
  %223 = load ptr, ptr %196, align 4
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.dma_device, ptr %224, i32 0, i32 50
  %226 = load ptr, ptr %225, align 4
  call void %226(ptr noundef %223) #8
  br label %242

227:                                              ; preds = %211, %209
  %228 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %228, ptr noundef nonnull @.str.19) #9
  %229 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %229, ptr noundef nonnull @.str.17, i32 noundef -5) #9
  %230 = load i32, ptr %45, align 4
  %231 = and i32 %230, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %262, label %233

233:                                              ; preds = %227
  %234 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 40
  %235 = load ptr, ptr %234, align 4
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.dma_device, ptr %236, i32 0, i32 47
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %262, label %240

240:                                              ; preds = %233
  %241 = call i32 %238(ptr noundef %235) #8
  br label %262

242:                                              ; preds = %215, %185
  %243 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 21
  store i8 1, ptr %243, align 4
  %244 = load i8, ptr %21, align 4, !range !19
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %254, label %246

246:                                              ; preds = %242
  %247 = or i32 %51, 1048576
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  call void @arm_heavy_mb() #8
  %248 = load ptr, ptr %5, align 4
  %249 = getelementptr i8, ptr %248, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %249, i32 %247) #8, !srcloc !13
  %250 = load ptr, ptr %5, align 4
  %251 = getelementptr i8, ptr %250, i32 16
  %252 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %251) #8, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %253 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %253(i32 noundef 214748) #8
  br label %254

254:                                              ; preds = %246, %242
  %255 = phi i32 [ %247, %246 ], [ %51, %242 ]
  store i32 %255, ptr %57, align 4
  %256 = or i32 %255, -2147483648
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  call void @arm_heavy_mb() #8
  %257 = load ptr, ptr %5, align 4
  %258 = getelementptr i8, ptr %257, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %258, i32 %256) #8, !srcloc !13
  %259 = load ptr, ptr %5, align 4
  %260 = getelementptr i8, ptr %259, i32 16
  %261 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %260) #8, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  br label %262

262:                                              ; preds = %254, %240, %233, %227, %159, %11
  %263 = phi i32 [ -5, %11 ], [ -5, %159 ], [ 0, %254 ], [ -5, %227 ], [ -5, %233 ], [ -5, %240 ]
  ret i32 %263
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_slink_start_cpu_based_transfer(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 28
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 26
  %8 = and i32 %7, 67108864
  %9 = or i32 %8, %4
  %10 = and i32 %7, 134217728
  %11 = or i32 %9, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %12 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #8, !srcloc !13
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr i8, ptr %15, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %18 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 31
  store i32 %11, ptr %18, align 4
  %19 = load i32, ptr %5, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %142, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %1, align 4
  %24 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 18
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %23, i32 %25
  %27 = load ptr, ptr %12, align 4
  %28 = getelementptr i8, ptr %27, i32 28
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %30 = and i32 %29, 63
  %31 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 27
  %32 = load i8, ptr %31, align 4, !range !19
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %92, label %34

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 13
  %36 = load i32, ptr %35, align 4
  %37 = mul i32 %36, %30
  %38 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 15
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 @llvm.umin.i32(i32 %37, i32 %39) #8
  %41 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 14
  %42 = load i32, ptr %41, align 4
  %43 = mul i32 %40, %42
  %44 = add i32 %43, 3
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %135, label %46

46:                                               ; preds = %34
  %47 = lshr i32 %44, 2
  br label %48

48:                                               ; preds = %84, %46
  %49 = phi i32 [ %87, %84 ], [ %43, %46 ]
  %50 = phi i32 [ %90, %84 ], [ 0, %46 ]
  %51 = phi ptr [ %85, %84 ], [ %26, %46 ]
  %52 = icmp eq i32 %49, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %48
  %54 = add i32 %49, -1
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 3) #8
  %56 = getelementptr i8, ptr %51, i32 1
  %57 = getelementptr i8, ptr %56, i32 %55
  %58 = load i8, ptr %51, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %55, 0
  br i1 %60, label %81, label %61

61:                                               ; preds = %53
  %62 = getelementptr i8, ptr %51, i32 1
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 8
  %66 = or i32 %65, %59
  %67 = icmp eq i32 %55, 1
  br i1 %67, label %81, label %68

68:                                               ; preds = %61
  %69 = getelementptr i8, ptr %51, i32 2
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 16
  %73 = or i32 %72, %66
  %74 = icmp eq i32 %55, 2
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = getelementptr i8, ptr %51, i32 3
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl nuw i32 %78, 24
  %80 = or i32 %79, %73
  br label %81

81:                                               ; preds = %75, %68, %61, %53
  %82 = phi i32 [ %59, %53 ], [ %66, %61 ], [ %73, %68 ], [ %80, %75 ]
  %83 = sub i32 %54, %55
  br label %84

84:                                               ; preds = %81, %48
  %85 = phi ptr [ %51, %48 ], [ %57, %81 ]
  %86 = phi i32 [ 0, %48 ], [ %82, %81 ]
  %87 = phi i32 [ 0, %48 ], [ %83, %81 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %88 = load ptr, ptr %12, align 4
  %89 = getelementptr i8, ptr %88, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %86) #8, !srcloc !13
  %90 = add nuw nsw i32 %50, 1
  %91 = icmp eq i32 %90, %47
  br i1 %91, label %135, label %48

92:                                               ; preds = %22
  %93 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 15
  %94 = load i32, ptr %93, align 4
  %95 = tail call i32 @llvm.umin.i32(i32 %94, i32 %30) #8
  %96 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 14
  %97 = icmp eq i32 %95, 0
  br i1 %97, label %135, label %98

98:                                               ; preds = %92
  %99 = load i32, ptr %96, align 4
  %100 = mul i32 %99, %95
  br label %101

101:                                              ; preds = %127, %98
  %102 = phi i32 [ %129, %127 ], [ %100, %98 ]
  %103 = phi i32 [ %133, %127 ], [ 0, %98 ]
  %104 = phi ptr [ %128, %127 ], [ %26, %98 ]
  %105 = icmp eq i32 %102, 0
  br i1 %105, label %127, label %106

106:                                              ; preds = %101
  %107 = load i32, ptr %96, align 4
  %108 = add i32 %102, -1
  %109 = tail call i32 @llvm.umin.i32(i32 %107, i32 %108) #8
  %110 = getelementptr i8, ptr %104, i32 %109
  br label %111

111:                                              ; preds = %117, %106
  %112 = phi i32 [ 0, %106 ], [ %123, %117 ]
  %113 = phi i32 [ %102, %106 ], [ %125, %117 ]
  %114 = phi i32 [ 0, %106 ], [ %124, %117 ]
  %115 = phi ptr [ %104, %106 ], [ %118, %117 ]
  %116 = icmp eq i32 %114, %107
  br i1 %116, label %127, label %117

117:                                              ; preds = %111
  %118 = getelementptr i8, ptr %115, i32 1
  %119 = load i8, ptr %115, align 1
  %120 = zext i8 %119 to i32
  %121 = shl i32 %114, 3
  %122 = shl i32 %120, %121
  %123 = or i32 %122, %112
  %124 = add nuw i32 %114, 1
  %125 = add i32 %113, -1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %111

127:                                              ; preds = %117, %111, %101
  %128 = phi ptr [ %104, %101 ], [ %110, %111 ], [ %118, %117 ]
  %129 = phi i32 [ 0, %101 ], [ %113, %111 ], [ 0, %117 ]
  %130 = phi i32 [ 0, %101 ], [ %112, %111 ], [ %123, %117 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %131 = load ptr, ptr %12, align 4
  %132 = getelementptr i8, ptr %131, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #8, !srcloc !13
  %133 = add nuw nsw i32 %103, 1
  %134 = icmp eq i32 %133, %95
  br i1 %134, label %135, label %101

135:                                              ; preds = %127, %92, %84, %34
  %136 = phi i32 [ 0, %92 ], [ %40, %34 ], [ %95, %127 ], [ %40, %84 ]
  %137 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 14
  %138 = load i32, ptr %137, align 4
  %139 = mul i32 %138, %136
  %140 = load i32, ptr %24, align 4
  %141 = add i32 %140, %139
  store i32 %141, ptr %24, align 4
  br label %145

142:                                              ; preds = %2
  %143 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 15
  %144 = load i32, ptr %143, align 4
  br label %145

145:                                              ; preds = %142, %135
  %146 = phi i32 [ %136, %135 ], [ %144, %142 ]
  %147 = add i32 %146, 65535
  %148 = and i32 %147, 65535
  %149 = or i32 %148, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %150 = load ptr, ptr %12, align 4
  %151 = getelementptr i8, ptr %150, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %149) #8, !srcloc !13
  %152 = load ptr, ptr %12, align 4
  %153 = getelementptr i8, ptr %152, i32 16
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  store i32 %149, ptr %18, align 4
  %155 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 21
  store i8 0, ptr %155, align 4
  %156 = getelementptr inbounds %struct.tegra_slink_data, ptr %0, i32 0, i32 27
  %157 = load i8, ptr %156, align 4, !range !19
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %145
  %160 = or i32 %149, 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %161 = load ptr, ptr %12, align 4
  %162 = getelementptr i8, ptr %161, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #8, !srcloc !13
  %163 = load ptr, ptr %12, align 4
  %164 = getelementptr i8, ptr %163, i32 16
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %166(i32 noundef 214748) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  br label %167

167:                                              ; preds = %159, %145
  %168 = phi i32 [ %160, %159 ], [ %149, %145 ]
  store i32 %168, ptr %18, align 4
  %169 = or i32 %168, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %170 = load ptr, ptr %12, align 4
  %171 = getelementptr i8, ptr %170, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %169) #8, !srcloc !13
  %172 = load ptr, ptr %12, align 4
  %173 = getelementptr i8, ptr %172, i32 16
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_slink_dma_complete(ptr noundef %0) #2 {
  tail call void @complete(ptr noundef %0) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_slink_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @spi_controller_suspend(ptr noundef %3) #8
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_slink_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #8, !srcloc !9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 -1, ptr elementtype(i32) %9) #8, !srcloc !10
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  br label %14

14:                                               ; preds = %13, %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %6) #9
  br label %32

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 29
  %17 = load i32, ptr %16, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %18 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !13
  %20 = load ptr, ptr %18, align 4
  %21 = getelementptr i8, ptr %20, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %23 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 30
  %24 = load i32, ptr %23, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %25 = load ptr, ptr %18, align 4
  %26 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #8, !srcloc !13
  %27 = load ptr, ptr %18, align 4
  %28 = getelementptr i8, ptr %27, i32 16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %30 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #8
  %31 = tail call i32 @spi_controller_resume(ptr noundef %3) #8
  br label %32

32:                                               ; preds = %15, %14
  %33 = phi i32 [ %6, %14 ], [ %31, %15 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_slink_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %10 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_slink_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra_slink_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %14

14:                                               ; preds = %13, %1
  %15 = phi i32 [ %8, %1 ], [ %11, %13 ]
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.31, i32 noundef %15) #9
  br label %19

19:                                               ; preds = %17, %14, %10
  %20 = phi i32 [ %15, %17 ], [ 0, %14 ], [ 0, %10 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
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
!8 = !{i64 2147974476}
!9 = !{i64 472786, i64 2147962757, i64 2147962783, i64 2147962830, i64 2147962852, i64 2147962880, i64 2147962900}
!10 = !{i64 459355, i64 459380, i64 459402, i64 459418, i64 459430, i64 459450, i64 459474, i64 459490, i64 459502}
!11 = !{i64 2147974602}
!12 = !{i64 2153308575}
!13 = !{i64 5074633}
!14 = !{i64 5075051}
!15 = !{i64 2153309052}
!16 = !{i64 2153308222}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!"auto-init"}
!19 = !{i8 0, i8 2}
!20 = !{i64 2153318101}
!21 = !{i64 2153320681}
