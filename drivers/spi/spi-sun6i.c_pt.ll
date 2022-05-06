; ModuleID = '/llk/IR/drivers/spi/spi-sun6i.c_pt.bc'
source_filename = "../drivers/spi/spi-sun6i.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.sun6i_spi = type { ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.completion, ptr, ptr, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_sun6i__245_720_sun6i_spi_driver_init6 = internal global ptr @sun6i_spi_driver_init, section ".initcall6.init", align 4
@sun6i_spi_driver = internal global %struct.platform_driver { ptr @sun6i_spi_probe, ptr @sun6i_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun6i_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun6i_spi_driver_exit = internal global ptr @sun6i_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author246 = internal constant [52 x i8] c"spi_sun6i.author=Pan Nan <pannan@allwinnertech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author247 = internal constant [66 x i8] c"spi_sun6i.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [58 x i8] c"spi_sun6i.description=Allwinner A31 SPI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [37 x i8] c"spi_sun6i.file=drivers/spi/spi-sun6i\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [22 x i8] c"spi_sun6i.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"sun6i-spi\00", align 1
@sun6i_spi_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 128 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 64 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@sun6i_spi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_spi_runtime_suspend, ptr @sun6i_spi_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to allocate SPI Master\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Cannot request IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Unable to acquire AHB clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Unable to acquire module clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Couldn't get reset controller\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Failed to request TX DMA channel\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Failed to request RX DMA channel\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Couldn't resume the device\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"cannot register SPI master\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"%s: prepare DMA failed, ret=%d\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.15 = private unnamed_addr constant [52 x i8] c"%s: timeout transferring %u bytes@%iHz for %i(%i)ms\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Couldn't enable AHB clock\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Couldn't enable module clock\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Couldn't deassert the device from reset\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_sun6i_spi_driver_exit, ptr @__initcall__kmod_spi_sun6i__245_720_sun6i_spi_driver_init6, ptr @sun6i_spi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun6i_spi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun6i_spi_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun6i_spi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun6i_spi_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_spi_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @__spi_alloc_controller(ptr noundef %3, i32 noundef 60, i1 noundef zeroext false) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #10
  br label %112

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %8, align 8
  %9 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #9
  %12 = getelementptr inbounds %struct.sun6i_spi, ptr %10, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = ptrtoint ptr %11 to i32
  br label %110

16:                                               ; preds = %7
  %17 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %110, label %19

19:                                               ; preds = %16
  %20 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %17, ptr noundef nonnull @sun6i_spi_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %10) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #10
  br label %110

23:                                               ; preds = %19
  store ptr %4, ptr %10, align 4
  %24 = call ptr @of_device_get_match_data(ptr noundef %3) #9
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr inbounds %struct.sun6i_spi, ptr %10, i32 0, i32 11
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 9
  store i32 100000000, ptr %27, align 8
  %28 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 8
  store i32 3000, ptr %28, align 4
  %29 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 56
  store i8 1, ptr %29, align 8
  %30 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 50
  store ptr @sun6i_spi_set_cs, ptr %30, align 8
  %31 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 51
  store ptr @sun6i_spi_transfer_one, ptr %31, align 4
  %32 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 3
  store i16 4, ptr %32, align 2
  %33 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 5
  store i32 15, ptr %33, align 8
  %34 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 7
  store i32 128, ptr %34, align 8
  %35 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  store ptr %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 36
  store i8 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 13
  store ptr @sun6i_spi_max_transfer_size, ptr %39, align 8
  %40 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.3) #9
  %41 = getelementptr inbounds %struct.sun6i_spi, ptr %10, i32 0, i32 4
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #10
  %44 = load ptr, ptr %41, align 4
  %45 = ptrtoint ptr %44 to i32
  br label %110

46:                                               ; preds = %23
  %47 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.5) #9
  %48 = getelementptr inbounds %struct.sun6i_spi, ptr %10, i32 0, i32 5
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #10
  %51 = load ptr, ptr %48, align 4
  %52 = ptrtoint ptr %51 to i32
  br label %110

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.sun6i_spi, ptr %10, i32 0, i32 7
  store i32 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.sun6i_spi, ptr %10, i32 0, i32 7, i32 1
  call void @__init_swait_queue_head(ptr noundef %55, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #9
  %56 = call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %57 = getelementptr inbounds %struct.sun6i_spi, ptr %10, i32 0, i32 6
  store ptr %56, ptr %57, align 4
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #10
  %60 = load ptr, ptr %57, align 4
  %61 = ptrtoint ptr %60 to i32
  br label %110

62:                                               ; preds = %53
  %63 = call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.8) #9
  %64 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 60
  store ptr %63, ptr %64, align 8
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = icmp eq ptr %63, inttoptr (i32 -517 to ptr)
  br i1 %67, label %110, label %68

68:                                               ; preds = %66
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.9) #10
  store ptr null, ptr %64, align 8
  br label %69

69:                                               ; preds = %68, %62
  %70 = call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.10) #9
  %71 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 61
  store ptr %70, ptr %71, align 4
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = icmp eq ptr %70, inttoptr (i32 -517 to ptr)
  br i1 %74, label %105, label %80

75:                                               ; preds = %69
  %76 = load ptr, ptr %64, align 8
  %77 = icmp eq ptr %76, null
  %78 = icmp eq ptr %70, null
  %79 = select i1 %77, i1 true, i1 %78
  br i1 %79, label %90, label %81

80:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.11) #10
  store ptr null, ptr %71, align 4
  br label %90

81:                                               ; preds = %75
  %82 = load ptr, ptr %2, align 4
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, 512
  %85 = getelementptr inbounds %struct.sun6i_spi, ptr %10, i32 0, i32 3
  store i32 %84, ptr %85, align 4
  %86 = load i32, ptr %82, align 4
  %87 = add i32 %86, 768
  %88 = getelementptr inbounds %struct.sun6i_spi, ptr %10, i32 0, i32 2
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 24
  store ptr @sun6i_spi_can_dma, ptr %89, align 4
  br label %90

90:                                               ; preds = %81, %80, %75
  %91 = call i32 @sun6i_spi_runtime_resume(ptr noundef %3)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12) #10
  br label %100

94:                                               ; preds = %90
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef 2000) #9
  call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #9
  %95 = call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 0) #9
  call void @pm_runtime_enable(ptr noundef %3) #9
  %96 = call i32 @devm_spi_register_controller(ptr noundef %3, ptr noundef nonnull %4) #9
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %94
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13) #10
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #9
  %99 = call i32 @sun6i_spi_runtime_suspend(ptr noundef %3)
  br label %100

100:                                              ; preds = %98, %93
  %101 = phi i32 [ %91, %93 ], [ %96, %98 ]
  %102 = load ptr, ptr %71, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  call void @dma_release_channel(ptr noundef nonnull %102) #9
  br label %105

105:                                              ; preds = %104, %100, %73
  %106 = phi i32 [ %101, %104 ], [ %101, %100 ], [ -517, %73 ]
  %107 = load ptr, ptr %64, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  call void @dma_release_channel(ptr noundef nonnull %107) #9
  br label %110

110:                                              ; preds = %109, %105, %66, %59, %50, %43, %22, %16, %14
  %111 = phi i32 [ %15, %14 ], [ %20, %22 ], [ %45, %43 ], [ %52, %50 ], [ %61, %59 ], [ %106, %109 ], [ %106, %105 ], [ -6, %16 ], [ -517, %66 ]
  call void @put_device(ptr noundef nonnull %4) #9
  br label %112

112:                                              ; preds = %110, %94, %6
  %113 = phi i32 [ %111, %110 ], [ -12, %6 ], [ 0, %94 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_spi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @pm_runtime_force_suspend(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 60
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @dma_release_channel(ptr noundef nonnull %7) #9
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 61
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @dma_release_channel(ptr noundef nonnull %12) #9
  br label %15

15:                                               ; preds = %14, %10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_spi_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %7 = and i32 %6, 4096
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 4096) #9, !srcloc !12
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 9
  br label %19

19:                                               ; preds = %29, %17
  %20 = phi i32 [ %15, %17 ], [ %21, %29 ]
  %21 = add nsw i32 %20, -1
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 768
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %23) #9, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  %25 = load ptr, ptr %18, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = getelementptr i8, ptr %25, i32 1
  store ptr %28, ptr %18, align 4
  store i8 %24, ptr %25, align 1
  br label %29

29:                                               ; preds = %27, %19
  %30 = icmp eq i32 %21, 0
  br i1 %30, label %31, label %19

31:                                               ; preds = %29, %9
  %32 = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 7
  tail call void @complete(ptr noundef %32) #9
  br label %105

33:                                               ; preds = %2
  %34 = and i32 %6, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr i8, ptr %37, i32 28
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %40 = and i32 %39, 255
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 9
  br label %44

44:                                               ; preds = %54, %42
  %45 = phi i32 [ %40, %42 ], [ %46, %54 ]
  %46 = add nsw i32 %45, -1
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr i8, ptr %47, i32 768
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %48) #9, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  %50 = load ptr, ptr %43, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = getelementptr i8, ptr %50, i32 1
  store ptr %53, ptr %43, align 4
  store i8 %49, ptr %50, align 1
  br label %54

54:                                               ; preds = %52, %44
  %55 = icmp eq i32 %46, 0
  br i1 %55, label %56, label %44

56:                                               ; preds = %54, %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr i8, ptr %57, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 1) #9, !srcloc !12
  br label %105

59:                                               ; preds = %33
  %60 = and i32 %6, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %105, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 11
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr i8, ptr %65, i32 28
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = sub i32 %64, %69
  %71 = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 10
  %72 = load i32, ptr %71, align 4
  %73 = tail call i32 @llvm.smin.i32(i32 %70, i32 %72) #9
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 8
  br label %77

77:                                               ; preds = %85, %75
  %78 = phi i32 [ %73, %75 ], [ %79, %85 ]
  %79 = add i32 %78, -1
  %80 = load ptr, ptr %76, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = getelementptr i8, ptr %80, i32 1
  store ptr %83, ptr %76, align 4
  %84 = load i8, ptr %80, align 1
  br label %85

85:                                               ; preds = %82, %77
  %86 = phi i8 [ %84, %82 ], [ 0, %77 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %87 = load ptr, ptr %3, align 4
  %88 = getelementptr i8, ptr %87, i32 512
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %88, i8 %86) #9, !srcloc !16
  %89 = load i32, ptr %71, align 4
  %90 = add i32 %89, -1
  store i32 %90, ptr %71, align 4
  %91 = icmp eq i32 %79, 0
  br i1 %91, label %92, label %77

92:                                               ; preds = %85, %62
  %93 = phi i32 [ %72, %62 ], [ %90, %85 ]
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load ptr, ptr %3, align 4
  %97 = getelementptr i8, ptr %96, i32 16
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %99 = and i32 %98, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %100 = load ptr, ptr %3, align 4
  %101 = getelementptr i8, ptr %100, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #9, !srcloc !12
  br label %102

102:                                              ; preds = %95, %92
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %103 = load ptr, ptr %3, align 4
  %104 = getelementptr i8, ptr %103, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 16) #9, !srcloc !12
  br label %105

105:                                              ; preds = %102, %59, %56, %31
  %106 = phi i32 [ 1, %31 ], [ 1, %56 ], [ 1, %102 ], [ 0, %59 ]
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun6i_spi_set_cs(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sun6i_spi, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %11 = and i32 %10, -177
  %12 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 4
  %16 = and i32 %15, 48
  %17 = select i1 %1, i32 128, i32 0
  %18 = or i32 %11, %17
  %19 = or i32 %18, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #9, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_spi_transfer_one(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = alloca %struct.dma_slave_config, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 16777215
  br i1 %10, label %386, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.sun6i_spi, ptr %7, i32 0, i32 7
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.sun6i_spi, ptr %7, i32 0, i32 8
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sun6i_spi, ptr %7, i32 0, i32 9
  store ptr %16, ptr %17, align 4
  %18 = load i32, ptr %8, align 4
  %19 = getelementptr inbounds %struct.sun6i_spi, ptr %7, i32 0, i32 10
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 24
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %11
  %24 = tail call zeroext i1 %21(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %23, %11
  %27 = phi i32 [ %25, %23 ], [ 0, %11 ]
  %28 = icmp eq i32 %27, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %29 = getelementptr inbounds %struct.sun6i_spi, ptr %7, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 -1) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 -2147450880) #9, !srcloc !12
  %34 = getelementptr inbounds %struct.sun6i_spi, ptr %7, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  br i1 %28, label %36, label %39

36:                                               ; preds = %26
  %37 = lshr i32 %35, 2
  %38 = mul nuw i32 %37, 3
  br label %48

39:                                               ; preds = %26
  %40 = lshr i32 %35, 1
  %41 = load ptr, ptr %2, align 4
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, i32 0, i32 16777216
  %44 = load ptr, ptr %15, align 4
  %45 = icmp eq ptr %44, null
  %46 = or i32 %43, 256
  %47 = select i1 %45, i32 %43, i32 %46
  br label %48

48:                                               ; preds = %39, %36
  %49 = phi i32 [ %38, %36 ], [ %40, %39 ]
  %50 = phi i32 [ 0, %36 ], [ %47, %39 ]
  %51 = shl i32 %49, 16
  %52 = or i32 %51, %49
  %53 = or i32 %52, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %54 = load ptr, ptr %29, align 4
  %55 = getelementptr i8, ptr %54, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #9, !srcloc !12
  %56 = load ptr, ptr %29, align 4
  %57 = getelementptr i8, ptr %56, i32 8
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %59 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 2
  %62 = and i32 %58, -4100
  %63 = or i32 %61, %62
  %64 = and i32 %60, 1
  %65 = or i32 %63, %64
  %66 = shl i32 %60, 9
  %67 = and i32 %66, 4096
  %68 = or i32 %65, %67
  %69 = load ptr, ptr %17, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %48
  %72 = and i32 %68, -257
  %73 = load i32, ptr %8, align 4
  br label %76

74:                                               ; preds = %48
  %75 = or i32 %68, 256
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi i32 [ %73, %71 ], [ 0, %74 ]
  %78 = phi i32 [ %72, %71 ], [ %75, %74 ]
  %79 = or i32 %78, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %80 = load ptr, ptr %29, align 4
  %81 = getelementptr i8, ptr %80, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #9, !srcloc !12
  %82 = getelementptr inbounds %struct.sun6i_spi, ptr %7, i32 0, i32 5
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 @clk_get_rate(ptr noundef %83) #9
  %85 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 12
  %86 = load i32, ptr %85, align 4
  %87 = shl i32 %86, 1
  %88 = icmp ult i32 %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %76
  %90 = load ptr, ptr %82, align 4
  %91 = tail call i32 @clk_set_rate(ptr noundef %90, i32 noundef %87) #9
  %92 = load ptr, ptr %82, align 4
  %93 = tail call i32 @clk_get_rate(ptr noundef %92) #9
  %94 = load i32, ptr %85, align 4
  br label %95

95:                                               ; preds = %89, %76
  %96 = phi i32 [ %94, %89 ], [ %86, %76 ]
  %97 = phi i32 [ %93, %89 ], [ %84, %76 ]
  %98 = add i32 %97, -1
  %99 = add i32 %98, %96
  %100 = udiv i32 %99, %96
  %101 = add i32 %100, 1
  %102 = icmp ult i32 %101, 514
  br i1 %102, label %103, label %110

103:                                              ; preds = %95
  %104 = lshr i32 %101, 1
  %105 = add nuw nsw i32 %104, 255
  %106 = and i32 %105, 255
  %107 = or i32 %106, 4096
  %108 = and i32 %101, -2
  %109 = udiv i32 %97, %108
  br label %118

110:                                              ; preds = %95
  %111 = add i32 %100, -1
  %112 = tail call i32 @llvm.ctlz.i32(i32 %111, i1 false) #9, !range !17
  %113 = sub nuw nsw i32 32, %112
  %114 = tail call i32 @llvm.smin.i32(i32 %113, i32 15)
  %115 = shl i32 %114, 8
  %116 = and i32 %115, 3840
  %117 = lshr i32 %97, %114
  br label %118

118:                                              ; preds = %110, %103
  %119 = phi i32 [ %117, %110 ], [ %109, %103 ]
  %120 = phi i32 [ %116, %110 ], [ %107, %103 ]
  %121 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 13
  store i32 %119, ptr %121, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %122 = load ptr, ptr %29, align 4
  %123 = getelementptr i8, ptr %122, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %120) #9, !srcloc !12
  %124 = load ptr, ptr %29, align 4
  %125 = getelementptr i8, ptr %124, i32 4
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %127 = or i32 %126, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %128 = load ptr, ptr %29, align 4
  %129 = getelementptr i8, ptr %128, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #9, !srcloc !12
  %130 = load ptr, ptr %14, align 4
  %131 = icmp eq ptr %130, null
  %132 = load i32, ptr %8, align 4
  %133 = select i1 %131, i32 0, i32 %132
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %134 = load ptr, ptr %29, align 4
  %135 = getelementptr i8, ptr %134, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %132) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %136 = load ptr, ptr %29, align 4
  %137 = getelementptr i8, ptr %136, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %133) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %138 = load ptr, ptr %29, align 4
  %139 = getelementptr i8, ptr %138, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %133) #9, !srcloc !12
  br i1 %28, label %140, label %174

140:                                              ; preds = %118
  %141 = getelementptr inbounds %struct.sun6i_spi, ptr %7, i32 0, i32 11
  %142 = load i32, ptr %141, align 4
  %143 = load ptr, ptr %29, align 4
  %144 = getelementptr i8, ptr %143, i32 28
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %146 = lshr i32 %145, 16
  %147 = and i32 %146, 255
  %148 = sub i32 %142, %147
  %149 = load i32, ptr %19, align 4
  %150 = tail call i32 @llvm.smin.i32(i32 %148, i32 %149) #9
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %167, label %152

152:                                              ; preds = %160, %140
  %153 = phi i32 [ %154, %160 ], [ %150, %140 ]
  %154 = add i32 %153, -1
  %155 = load ptr, ptr %14, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = getelementptr i8, ptr %155, i32 1
  store ptr %158, ptr %14, align 4
  %159 = load i8, ptr %155, align 1
  br label %160

160:                                              ; preds = %157, %152
  %161 = phi i8 [ %159, %157 ], [ 0, %152 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %162 = load ptr, ptr %29, align 4
  %163 = getelementptr i8, ptr %162, i32 512
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %163, i8 %161) #9, !srcloc !16
  %164 = load i32, ptr %19, align 4
  %165 = add i32 %164, -1
  store i32 %165, ptr %19, align 4
  %166 = icmp eq i32 %154, 0
  br i1 %166, label %167, label %152

167:                                              ; preds = %160, %140
  %168 = load i32, ptr %141, align 4
  %169 = icmp ugt i32 %77, %168
  %170 = select i1 %169, i32 4097, i32 4096
  %171 = icmp ugt i32 %133, %168
  %172 = or i32 %170, 16
  %173 = select i1 %171, i32 %172, i32 %170
  br label %315

174:                                              ; preds = %118
  %175 = load ptr, ptr %7, align 4
  %176 = load ptr, ptr %15, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %217, label %178

178:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #9
  %179 = getelementptr inbounds i8, ptr %4, i32 36
  store i32 0, ptr %179, align 4, !annotation !8
  store i32 2, ptr %4, align 4
  %180 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 1
  %181 = getelementptr inbounds %struct.sun6i_spi, ptr %7, i32 0, i32 2
  %182 = load i32, ptr %181, align 4
  store i32 %182, ptr %180, align 4
  %183 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 2
  store i32 0, ptr %183, align 4
  %184 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 3
  store i32 4, ptr %184, align 4
  %185 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  store i32 0, ptr %185, align 4
  %186 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 5
  store i32 8, ptr %186, align 4
  %187 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 6
  %188 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 10
  store ptr null, ptr %188, align 4
  %189 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 11
  store i32 0, ptr %189, align 4
  %190 = getelementptr inbounds %struct.spi_controller, ptr %175, i32 0, i32 61
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(13) %187, i8 0, i64 13, i1 false) #9
  %191 = load ptr, ptr %190, align 4
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.dma_device, ptr %192, i32 0, i32 44
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %178
  %197 = call i32 %194(ptr noundef %191, ptr noundef nonnull %4) #9
  %198 = load ptr, ptr %190, align 4
  br label %199

199:                                              ; preds = %196, %178
  %200 = phi ptr [ %191, %178 ], [ %198, %196 ]
  %201 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 6
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 6, i32 1
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq ptr %200, null
  br i1 %205, label %213, label %206

206:                                              ; preds = %199
  %207 = load ptr, ptr %200, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %213, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.dma_device, ptr %207, i32 0, i32 39
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %209, %206, %199
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #9
  br label %307

214:                                              ; preds = %209
  %215 = call ptr %211(ptr noundef nonnull %200, ptr noundef %202, i32 noundef %204, i32 noundef 2, i32 noundef 1, ptr noundef null) #9
  %216 = icmp eq ptr %215, null
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #9
  br i1 %216, label %307, label %217

217:                                              ; preds = %214, %174
  %218 = phi ptr [ %215, %214 ], [ null, %174 ]
  %219 = load ptr, ptr %2, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %281, label %221

221:                                              ; preds = %217
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #9
  %222 = getelementptr inbounds i8, ptr %5, i32 36
  store i32 0, ptr %222, align 4, !annotation !8
  store i32 1, ptr %5, align 4
  %223 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 1
  store i32 0, ptr %223, align 4
  %224 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 2
  %225 = getelementptr inbounds %struct.sun6i_spi, ptr %7, i32 0, i32 3
  %226 = load i32, ptr %225, align 4
  store i32 %226, ptr %224, align 4
  %227 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 3
  store i32 0, ptr %227, align 4
  %228 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 4
  store i32 4, ptr %228, align 4
  %229 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 5
  store i32 0, ptr %229, align 4
  %230 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 6
  store i32 8, ptr %230, align 4
  %231 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 7
  store i32 0, ptr %231, align 4
  %232 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 8
  store i32 0, ptr %232, align 4
  %233 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 10
  store ptr null, ptr %233, align 4
  %234 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 11
  store i32 0, ptr %234, align 4
  %235 = getelementptr inbounds %struct.spi_controller, ptr %175, i32 0, i32 60
  %236 = load ptr, ptr %235, align 8
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr inbounds %struct.dma_device, ptr %237, i32 0, i32 44
  %239 = load ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %244, label %241

241:                                              ; preds = %221
  %242 = call i32 %239(ptr noundef %236, ptr noundef nonnull %5) #9
  %243 = load ptr, ptr %235, align 8
  br label %244

244:                                              ; preds = %241, %221
  %245 = phi ptr [ %236, %221 ], [ %243, %241 ]
  %246 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5, i32 1
  %249 = load i32, ptr %248, align 4
  %250 = icmp eq ptr %245, null
  br i1 %250, label %261, label %251

251:                                              ; preds = %244
  %252 = load ptr, ptr %245, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %261, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.dma_device, ptr %252, i32 0, i32 39
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %261, label %258

258:                                              ; preds = %254
  %259 = call ptr %256(ptr noundef nonnull %245, ptr noundef %247, i32 noundef %249, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %280

261:                                              ; preds = %258, %254, %251, %244
  %262 = icmp eq ptr %218, null
  br i1 %262, label %306, label %263

263:                                              ; preds = %261
  %264 = getelementptr inbounds %struct.spi_controller, ptr %175, i32 0, i32 61
  %265 = load ptr, ptr %264, align 4
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr inbounds %struct.dma_device, ptr %266, i32 0, i32 47
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %279, label %270

270:                                              ; preds = %263
  %271 = call i32 %268(ptr noundef %265) #9
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %270
  %274 = load ptr, ptr %265, align 4
  %275 = getelementptr inbounds %struct.dma_device, ptr %274, i32 0, i32 48
  %276 = load ptr, ptr %275, align 4
  %277 = icmp eq ptr %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %273
  call void %276(ptr noundef %265) #9
  br label %279

279:                                              ; preds = %278, %273, %270, %263
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #9
  br label %307

280:                                              ; preds = %258
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #9
  br label %281

281:                                              ; preds = %280, %217
  %282 = phi ptr [ null, %217 ], [ %259, %280 ]
  %283 = load ptr, ptr %15, align 4
  %284 = icmp eq ptr %283, null
  br i1 %284, label %294, label %285

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %218, i32 0, i32 4
  %287 = load ptr, ptr %286, align 4
  %288 = call i32 %287(ptr noundef %218) #9
  %289 = getelementptr inbounds %struct.spi_controller, ptr %175, i32 0, i32 61
  %290 = load ptr, ptr %289, align 4
  %291 = load ptr, ptr %290, align 4
  %292 = getelementptr inbounds %struct.dma_device, ptr %291, i32 0, i32 50
  %293 = load ptr, ptr %292, align 4
  call void %293(ptr noundef %290) #9
  br label %294

294:                                              ; preds = %285, %281
  %295 = load ptr, ptr %2, align 4
  %296 = icmp eq ptr %295, null
  br i1 %296, label %315, label %297

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %282, i32 0, i32 4
  %299 = load ptr, ptr %298, align 4
  %300 = call i32 %299(ptr noundef %282) #9
  %301 = getelementptr inbounds %struct.spi_controller, ptr %175, i32 0, i32 60
  %302 = load ptr, ptr %301, align 8
  %303 = load ptr, ptr %302, align 4
  %304 = getelementptr inbounds %struct.dma_device, ptr %303, i32 0, i32 50
  %305 = load ptr, ptr %304, align 4
  call void %305(ptr noundef %302) #9
  br label %315

306:                                              ; preds = %261
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #9
  br label %307

307:                                              ; preds = %306, %279, %214, %213
  %308 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %309 = load ptr, ptr %308, align 4
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %313

311:                                              ; preds = %307
  %312 = load ptr, ptr %1, align 4
  br label %313

313:                                              ; preds = %311, %307
  %314 = phi ptr [ %312, %311 ], [ %309, %307 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %314, i32 noundef -22) #10
  br label %386

315:                                              ; preds = %297, %294, %167
  %316 = phi i32 [ %173, %167 ], [ 4096, %294 ], [ 4096, %297 ]
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %317 = load ptr, ptr %29, align 4
  %318 = getelementptr i8, ptr %317, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %318, i32 %316) #9, !srcloc !12
  %319 = load ptr, ptr %29, align 4
  %320 = getelementptr i8, ptr %319, i32 8
  %321 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %320) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %322 = or i32 %321, -2147483648
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %323 = load ptr, ptr %29, align 4
  %324 = getelementptr i8, ptr %323, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %324, i32 %322) #9, !srcloc !12
  %325 = load i32, ptr %8, align 4
  %326 = shl i32 %325, 4
  %327 = load i32, ptr %85, align 4
  %328 = udiv i32 %327, 1000
  %329 = udiv i32 %326, %328
  %330 = call i32 @llvm.umax.i32(i32 %329, i32 100)
  %331 = load volatile i32, ptr @jiffies, align 64
  %332 = call i32 @__msecs_to_jiffies(i32 noundef %330) #9
  %333 = call i32 @wait_for_completion_timeout(ptr noundef %12, i32 noundef %332) #9
  %334 = load volatile i32, ptr @jiffies, align 64
  %335 = icmp eq i32 %333, 0
  br i1 %335, label %336, label %348

336:                                              ; preds = %315
  %337 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %338 = load ptr, ptr %337, align 4
  %339 = icmp eq ptr %338, null
  br i1 %339, label %340, label %342

340:                                              ; preds = %336
  %341 = load ptr, ptr %1, align 4
  br label %342

342:                                              ; preds = %340, %336
  %343 = phi ptr [ %341, %340 ], [ %338, %336 ]
  %344 = load i32, ptr %8, align 4
  %345 = load i32, ptr %85, align 4
  %346 = sub i32 %334, %331
  %347 = call i32 @jiffies_to_msecs(i32 noundef %346) #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %343, i32 noundef %344, i32 noundef %345, i32 noundef %347, i32 noundef %330) #10
  br label %348

348:                                              ; preds = %342, %315
  %349 = phi i32 [ 0, %315 ], [ -110, %342 ]
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %350 = load ptr, ptr %29, align 4
  %351 = getelementptr i8, ptr %350, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %351, i32 0) #9, !srcloc !12
  %352 = xor i1 %335, true
  %353 = select i1 %352, i1 true, i1 %28
  br i1 %353, label %386, label %354

354:                                              ; preds = %348
  %355 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %356 = load ptr, ptr %355, align 4
  %357 = load ptr, ptr %356, align 4
  %358 = getelementptr inbounds %struct.dma_device, ptr %357, i32 0, i32 47
  %359 = load ptr, ptr %358, align 4
  %360 = icmp eq ptr %359, null
  br i1 %360, label %370, label %361

361:                                              ; preds = %354
  %362 = call i32 %359(ptr noundef %356) #9
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %361
  %365 = load ptr, ptr %356, align 4
  %366 = getelementptr inbounds %struct.dma_device, ptr %365, i32 0, i32 48
  %367 = load ptr, ptr %366, align 4
  %368 = icmp eq ptr %367, null
  br i1 %368, label %370, label %369

369:                                              ; preds = %364
  call void %367(ptr noundef %356) #9
  br label %370

370:                                              ; preds = %369, %364, %361, %354
  %371 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %372 = load ptr, ptr %371, align 8
  %373 = load ptr, ptr %372, align 4
  %374 = getelementptr inbounds %struct.dma_device, ptr %373, i32 0, i32 47
  %375 = load ptr, ptr %374, align 4
  %376 = icmp eq ptr %375, null
  br i1 %376, label %386, label %377

377:                                              ; preds = %370
  %378 = call i32 %375(ptr noundef %372) #9
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %386

380:                                              ; preds = %377
  %381 = load ptr, ptr %372, align 4
  %382 = getelementptr inbounds %struct.dma_device, ptr %381, i32 0, i32 48
  %383 = load ptr, ptr %382, align 4
  %384 = icmp eq ptr %383, null
  br i1 %384, label %386, label %385

385:                                              ; preds = %380
  call void %383(ptr noundef %372) #9
  br label %386

386:                                              ; preds = %385, %380, %377, %370, %348, %313, %3
  %387 = phi i32 [ -22, %313 ], [ -22, %3 ], [ %349, %348 ], [ %349, %370 ], [ %349, %377 ], [ %349, %380 ], [ %349, %385 ]
  ret i32 %387
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sun6i_spi_max_transfer_size(ptr nocapture noundef readnone %0) #5 {
  ret i32 16777214
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sun6i_spi_can_dma(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #6 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sun6i_spi, ptr %5, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %7, %9
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_spi_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sun6i_spi, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %14

14:                                               ; preds = %13, %1
  %15 = phi i32 [ %11, %13 ], [ %8, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.17) #10
  br label %41

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.sun6i_spi, ptr %5, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @clk_prepare(ptr noundef %18) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = tail call i32 @clk_enable(ptr noundef %18) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef %18) #9
  br label %25

25:                                               ; preds = %24, %16
  %26 = phi i32 [ %22, %24 ], [ %19, %16 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18) #10
  br label %38

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.sun6i_spi, ptr %5, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @reset_control_deassert(ptr noundef %29) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.19) #10
  %33 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %33) #9
  tail call void @clk_unprepare(ptr noundef %33) #9
  br label %38

34:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %35 = getelementptr inbounds %struct.sun6i_spi, ptr %5, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 130) #9, !srcloc !12
  br label %41

38:                                               ; preds = %32, %25
  %39 = phi i32 [ %26, %25 ], [ %30, %32 ]
  %40 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %40) #9
  tail call void @clk_unprepare(ptr noundef %40) #9
  br label %41

41:                                               ; preds = %38, %34, %14
  %42 = phi i32 [ 0, %34 ], [ %15, %14 ], [ %39, %38 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_spi_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sun6i_spi, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @reset_control_assert(ptr noundef %7) #9
  %9 = getelementptr inbounds %struct.sun6i_spi, ptr %5, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #9
  tail call void @clk_unprepare(ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.sun6i_spi, ptr %5, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %12) #9
  tail call void @clk_unprepare(ptr noundef %12) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{i64 3777831}
!10 = !{i64 2153272776}
!11 = !{i64 2153273136}
!12 = !{i64 3777413}
!13 = !{i64 3777611}
!14 = !{i64 2153353826}
!15 = !{i64 2153355590}
!16 = !{i64 3777216}
!17 = !{i32 0, i32 33}
