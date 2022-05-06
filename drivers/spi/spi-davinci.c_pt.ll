; ModuleID = '/llk/IR/drivers/spi/spi-davinci.c_pt.bc'
source_filename = "../drivers/spi/spi-davinci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.davinci_spi_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.davinci_spi_of_data = type { i8, i8 }
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
%struct.davinci_spi = type { %struct.spi_bitbang, ptr, i8, i32, ptr, i32, %struct.completion, ptr, ptr, i32, i32, ptr, ptr, %struct.davinci_spi_platform_data, ptr, ptr, ptr, i8 }
%struct.spi_bitbang = type { %struct.mutex, i8, i8, i16, ptr, ptr, ptr, ptr, [4 x ptr], ptr }
%struct.davinci_spi_platform_data = type { i8, i8, i8, i8, i8, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_davinci__230_1050_davinci_spi_driver_init6 = internal global ptr @davinci_spi_driver_init, section ".initcall6.init", align 4
@davinci_spi_driver = internal global %struct.platform_driver { ptr @davinci_spi_probe, ptr @davinci_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @davinci_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_davinci_spi_driver_exit = internal global ptr @davinci_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description231 = internal constant [64 x i8] c"spi_davinci.description=TI DaVinci SPI Master Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [41 x i8] c"spi_davinci.file=drivers/spi/spi-davinci\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [24 x i8] c"spi_davinci.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"spi_davinci\00", align 1
@davinci_spi_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm6441-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dm6441_spi_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,da830-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da830_spi_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @keystone_spi_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"DMA is not supported (%d)\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Controller at 0x%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"num-cs\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"ti,davinci-spi-intr-line\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@davinci_spi_default_cfg = internal unnamed_addr constant %struct.davinci_spi_config zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ti,spi-wdelay\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"drivers/spi/spi-davinci.c\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"%s: error reported but no error found!\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"SPI data transfer error\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"SPI Time-out Error\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"SPI Desynchronization Error\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"SPI Bit error\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"SPI Data Length Error\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"SPI Parity Error\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"SPI Data Overrun error\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"SPI Buffer Init Active\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@dm6441_spi_data = internal constant %struct.davinci_spi_of_data { i8 0, i8 2 }, align 1
@da830_spi_data = internal constant %struct.davinci_spi_of_data { i8 1, i8 2 }, align 1
@keystone_spi_data = internal constant %struct.davinci_spi_of_data zeroinitializer, align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_davinci_spi_driver_exit, ptr @__initcall__kmod_spi_davinci__230_1050_davinci_spi_driver_init6, ptr @davinci_spi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @davinci_spi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @davinci_spi_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @davinci_spi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @davinci_spi_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_spi_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @__spi_alloc_controller(ptr noundef %4, i32 noundef 148, i1 noundef zeroext false) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %156, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  %9 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) %12, i32 12, i1 false)
  br label %33

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %18 = load ptr, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4
  %19 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 13
  %20 = tail call ptr @device_get_match_data(ptr noundef %4) #11
  %21 = load i8, ptr %20, align 1
  store i8 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.davinci_spi_of_data, ptr %20, i32 0, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 13, i32 3
  store i8 %23, ptr %24, align 1
  store i32 1, ptr %2, align 4
  %25 = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %26 = load i32, ptr %2, align 4
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 13, i32 1
  store i8 %27, ptr %28, align 1
  %29 = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #11
  %30 = load i32, ptr %3, align 4
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 13, i32 2
  store i8 %31, ptr %32, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %33

33:                                               ; preds = %16, %14
  %34 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 13
  %35 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 13, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %37, i32 noundef 3520) #11
  %39 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 16
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %154, label %41

41:                                               ; preds = %33
  %42 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %43 = icmp eq ptr %42, null
  br i1 %43, label %154, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr %42, align 4
  %46 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 3
  store i32 %45, ptr %46, align 4
  %47 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef nonnull %42) #11
  %48 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 4
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = ptrtoint ptr %47 to i32
  br label %154

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 6
  store i32 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %54, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #11
  %55 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 -22, i32 %55
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %154, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 5
  store i32 %57, ptr %60, align 4
  %61 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load ptr, ptr %4, align 4
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi ptr [ %65, %64 ], [ %62, %59 ]
  %68 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %57, ptr noundef nonnull @davinci_spi_irq, ptr noundef nonnull @dummy_thread_fn, i32 noundef 0, ptr noundef %67, ptr noundef %10) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %154

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.spi_bitbang, ptr %10, i32 0, i32 4
  store ptr %5, ptr %71, align 4
  %72 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #11
  %73 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 1
  store ptr %72, ptr %73, align 4
  %74 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %154, label %75

75:                                               ; preds = %70
  %76 = call fastcc i32 @clk_prepare_enable(ptr noundef %72)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %154

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 56
  store i8 1, ptr %79, align 8
  %80 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  store ptr %81, ptr %82, align 8
  %83 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = trunc i32 %84 to i16
  %86 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 2
  store i16 %85, ptr %86, align 8
  %87 = load i8, ptr %35, align 1
  %88 = zext i8 %87 to i16
  %89 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 3
  store i16 %88, ptr %89, align 2
  %90 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 7
  store i32 65534, ptr %90, align 8
  %91 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 10
  store i16 40, ptr %91, align 4
  %92 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 20
  store ptr @davinci_spi_setup, ptr %92, align 4
  %93 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 23
  store ptr @davinci_spi_cleanup, ptr %93, align 8
  %94 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 24
  store ptr @davinci_spi_can_dma, ptr %94, align 4
  %95 = getelementptr inbounds %struct.spi_bitbang, ptr %10, i32 0, i32 6
  store ptr @davinci_spi_chipselect, ptr %95, align 4
  %96 = getelementptr inbounds %struct.spi_bitbang, ptr %10, i32 0, i32 5
  store ptr @davinci_spi_setup_transfer, ptr %96, align 4
  %97 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 13, i32 3
  %98 = load i8, ptr %97, align 1
  %99 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 17
  store i8 %98, ptr %99, align 4
  %100 = load i8, ptr %34, align 4
  %101 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 2
  store i8 %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.spi_bitbang, ptr %10, i32 0, i32 3
  %103 = icmp eq i8 %100, 1
  %104 = select i1 %103, i16 4328, i16 4200
  store i16 %104, ptr %102, align 2
  %105 = getelementptr inbounds %struct.spi_bitbang, ptr %10, i32 0, i32 7
  store ptr @davinci_spi_bufs, ptr %105, align 4
  %106 = call fastcc i32 @davinci_spi_request_dma(ptr noundef %10)
  switch i32 %106, label %107 [
    i32 -517, label %151
    i32 0, label %110
  ]

107:                                              ; preds = %78
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %106) #12
  %108 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 11
  store ptr null, ptr %108, align 4
  %109 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 12
  store ptr null, ptr %109, align 4
  br label %110

110:                                              ; preds = %107, %78
  %111 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 14
  store ptr @davinci_spi_rx_buf_u8, ptr %111, align 4
  %112 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 15
  store ptr @davinci_spi_tx_buf_u8, ptr %112, align 4
  %113 = load ptr, ptr %48, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 0) #11, !srcloc !9
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %114(i32 noundef 21474800) #11
  %115 = load ptr, ptr %48, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 1) #11, !srcloc !9
  %116 = load ptr, ptr %48, align 4
  %117 = getelementptr i8, ptr %116, i32 20
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 3584) #11, !srcloc !9
  %118 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 13, i32 2
  %119 = load i8, ptr %118, align 2
  %120 = icmp eq i8 %119, 0
  %121 = load ptr, ptr %48, align 4
  %122 = getelementptr i8, ptr %121, i32 12
  call void asm sideeffect "dsb st", "~{memory}"() #11
  call void @arm_heavy_mb() #11
  br i1 %120, label %124, label %123

123:                                              ; preds = %110
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 511) #11, !srcloc !9
  br label %125

124:                                              ; preds = %110
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 0) #11, !srcloc !9
  br label %125

125:                                              ; preds = %124, %123
  %126 = load ptr, ptr %48, align 4
  %127 = getelementptr i8, ptr %126, i32 76
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 255) #11, !srcloc !9
  %128 = load ptr, ptr %48, align 4
  %129 = getelementptr i8, ptr %128, i32 4
  %130 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %131 = or i32 %130, 2
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %131) #11, !srcloc !9
  %132 = load ptr, ptr %48, align 4
  %133 = getelementptr i8, ptr %132, i32 4
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %135 = or i32 %134, 1
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %135) #11, !srcloc !9
  %136 = load ptr, ptr %48, align 4
  %137 = getelementptr i8, ptr %136, i32 4
  %138 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %139 = or i32 %138, 256
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %139) #11, !srcloc !9
  %140 = call i32 @spi_bitbang_start(ptr noundef %10) #11
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %125
  %143 = load ptr, ptr %48, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef %143) #12
  br label %156

144:                                              ; preds = %125
  %145 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 11
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  call void @dma_release_channel(ptr noundef nonnull %146) #11
  %149 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 12
  %150 = load ptr, ptr %149, align 4
  call void @dma_release_channel(ptr noundef %150) #11
  br label %151

151:                                              ; preds = %148, %144, %78
  %152 = phi i32 [ %106, %78 ], [ %140, %148 ], [ %140, %144 ]
  %153 = load ptr, ptr %73, align 4
  call void @clk_disable(ptr noundef %153) #11
  call void @clk_unprepare(ptr noundef %153) #11
  br label %154

154:                                              ; preds = %151, %75, %70, %66, %52, %50, %41, %33
  %155 = phi i32 [ %51, %50 ], [ %57, %52 ], [ %68, %66 ], [ %76, %75 ], [ %152, %151 ], [ -12, %33 ], [ -2, %41 ], [ -19, %70 ]
  call void @put_device(ptr noundef nonnull %5) #11
  br label %156

156:                                              ; preds = %154, %142, %1
  %157 = phi i32 [ 0, %142 ], [ %155, %154 ], [ -12, %1 ]
  ret i32 %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_spi_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @spi_bitbang_stop(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.davinci_spi, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.davinci_spi, ptr %5, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  tail call void @dma_release_channel(ptr noundef nonnull %9) #11
  %12 = getelementptr inbounds %struct.davinci_spi, ptr %5, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  tail call void @dma_release_channel(ptr noundef %13) #11
  br label %14

14:                                               ; preds = %11, %1
  %15 = icmp eq ptr %3, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call void @put_device(ptr noundef nonnull %3) #11
  br label %17

17:                                               ; preds = %16, %14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_spi_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = tail call fastcc i32 @davinci_spi_process_events(ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5, !prof !12

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.davinci_spi, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %10 = and i32 %9, -352
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #11, !srcloc !9
  br label %19

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.davinci_spi, ptr %1, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.davinci_spi, ptr %1, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %5
  %20 = getelementptr inbounds %struct.davinci_spi, ptr %1, i32 0, i32 6
  tail call void @complete(ptr noundef %20) #11
  br label %21

21:                                               ; preds = %19, %15, %11
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dummy_thread_fn(i32 noundef %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #11
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_spi_setup(ptr nocapture noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 14
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %15, %12
  %20 = getelementptr inbounds %struct.davinci_spi, ptr %7, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 20
  %23 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = shl nuw i32 1, %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %28 = or i32 %26, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %28) #11, !srcloc !9
  %29 = load i32, ptr %8, align 8
  br label %30

30:                                               ; preds = %19, %15, %1
  %31 = phi i32 [ %9, %15 ], [ %29, %19 ], [ %9, %1 ]
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.davinci_spi, ptr %7, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 20
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %39 = or i32 %38, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %39) #11, !srcloc !9
  %40 = load i32, ptr %8, align 8
  br label %41

41:                                               ; preds = %34, %30
  %42 = phi i32 [ %40, %34 ], [ %31, %30 ]
  %43 = and i32 %42, 32
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr inbounds %struct.davinci_spi, ptr %7, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11
  br i1 %44, label %51, label %49

49:                                               ; preds = %41
  %50 = or i32 %48, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %50) #11, !srcloc !9
  br label %53

51:                                               ; preds = %41
  %52 = and i32 %48, -65537
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %52) #11, !srcloc !9
  br label %53

53:                                               ; preds = %51, %49
  %54 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 10
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %3, align 8
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 8
  %59 = load ptr, ptr %58, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !13
  %60 = icmp eq ptr %55, null
  %61 = icmp ne ptr %56, null
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %83

63:                                               ; preds = %53
  %64 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 9) #13
  %66 = icmp eq ptr %65, null
  br i1 %66, label %83, label %67

67:                                               ; preds = %63
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(9) %65, i8 0, i32 9, i1 false) #11
  %68 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %56, ptr noundef nonnull @.str.6, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, ptr %2, align 4
  %72 = trunc i32 %71 to i8
  store i8 %72, ptr %65, align 8
  br label %73

73:                                               ; preds = %70, %67
  store ptr %65, ptr %54, align 4
  %74 = getelementptr inbounds %struct.davinci_spi, ptr %59, i32 0, i32 11
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.davinci_spi, ptr %59, i32 0, i32 12
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.davinci_spi_config, ptr %65, i32 0, i32 3
  store i8 2, ptr %82, align 1
  br label %83

83:                                               ; preds = %81, %77, %73, %63, %53
  %84 = phi i32 [ -12, %63 ], [ 0, %73 ], [ 0, %77 ], [ 0, %81 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @davinci_spi_cleanup(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @kfree(ptr noundef %3) #11
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @davinci_spi_can_dma(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.davinci_spi_config, ptr %5, i32 0, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 2
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 15
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %17) #11
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %2, align 4
  %21 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %20) #11
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %15, %11, %7, %3
  %24 = phi i1 [ false, %3 ], [ false, %15 ], [ false, %11 ], [ false, %7 ], [ %22, %19 ]
  ret i1 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @davinci_spi_chipselect(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %6 = load i8, ptr %5, align 4
  %7 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %4, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i8, ptr %4, align 1
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i16 255, i16 1279
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i16 [ 255, %2 ], [ %15, %12 ]
  %18 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  %21 = icmp eq i32 %1, 1
  br i1 %20, label %25, label %22

22:                                               ; preds = %16
  br i1 %21, label %23, label %24

23:                                               ; preds = %22
  tail call void @gpiod_set_value(ptr noundef nonnull %19, i32 noundef 1) #11
  br label %38

24:                                               ; preds = %22
  tail call void @gpiod_set_value(ptr noundef nonnull %19, i32 noundef 0) #11
  br label %38

25:                                               ; preds = %16
  br i1 %21, label %26, label %38

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %28 = load i32, ptr %27, align 8
  %29 = trunc i32 %28 to i16
  %30 = and i16 %29, 4096
  %31 = or i16 %30, %17
  %32 = xor i16 %31, 4096
  %33 = zext i8 %6 to i32
  %34 = shl nuw i32 1, %33
  %35 = trunc i32 %34 to i16
  %36 = xor i16 %35, -1
  %37 = and i16 %32, %36
  br label %38

38:                                               ; preds = %26, %25, %24, %23
  %39 = phi i16 [ %17, %23 ], [ %17, %24 ], [ %37, %26 ], [ %17, %25 ]
  %40 = getelementptr inbounds %struct.davinci_spi, ptr %10, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 62
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %42, i16 %39) #11, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_spi_setup_transfer(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @davinci_spi_default_cfg, ptr %8
  %11 = icmp eq ptr %1, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 8
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 12
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i8 %14, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %2
  %19 = phi i32 [ %16, %12 ], [ 0, %2 ]
  %20 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 5
  %21 = load i8, ptr %20, align 1
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i32 [ %16, %12 ], [ %19, %18 ]
  %24 = phi i8 [ %14, %12 ], [ %21, %18 ]
  %25 = icmp ult i8 %24, 9
  %26 = getelementptr inbounds %struct.davinci_spi, ptr %6, i32 0, i32 14
  %27 = select i1 %25, ptr @davinci_spi_rx_buf_u8, ptr @davinci_spi_rx_buf_u16
  %28 = select i1 %25, ptr @davinci_spi_tx_buf_u8, ptr @davinci_spi_tx_buf_u16
  %29 = select i1 %25, i8 1, i8 2
  store ptr %27, ptr %26, align 4
  %30 = getelementptr inbounds %struct.davinci_spi, ptr %6, i32 0, i32 15
  store ptr %28, ptr %30, align 4
  %31 = getelementptr inbounds %struct.davinci_spi, ptr %6, i32 0, i32 16
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = getelementptr i8, ptr %32, i32 %35
  store i8 %29, ptr %36, align 1
  %37 = icmp eq i32 %23, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 3
  %40 = load i32, ptr %39, align 8
  br label %41

41:                                               ; preds = %38, %22
  %42 = phi i32 [ %23, %22 ], [ %40, %38 ]
  %43 = getelementptr inbounds %struct.davinci_spi, ptr %6, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @clk_get_rate(ptr noundef %44) #11
  %46 = add i32 %42, -1
  %47 = add i32 %46, %45
  %48 = udiv i32 %47, %42
  %49 = add i32 %48, -1
  %50 = getelementptr inbounds %struct.davinci_spi, ptr %6, i32 0, i32 17
  %51 = load i8, ptr %50, align 4
  %52 = zext i8 %51 to i32
  %53 = icmp slt i32 %49, %52
  %54 = icmp sgt i32 %49, 255
  %55 = or i1 %54, %53
  %56 = select i1 %55, i32 -22, i32 %49
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %137, label %58

58:                                               ; preds = %41
  %59 = shl nuw nsw i32 %56, 8
  %60 = and i8 %24, 31
  %61 = zext i8 %60 to i32
  %62 = or i32 %59, %61
  %63 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %64 = load i32, ptr %63, align 8
  %65 = shl i32 %64, 17
  %66 = and i32 %65, 1048576
  %67 = or i32 %66, %62
  %68 = shl i32 %64, 16
  %69 = and i32 %68, 131072
  %70 = or i32 %67, %69
  %71 = and i32 %68, 65536
  %72 = xor i32 %71, 65536
  %73 = or i32 %70, %72
  %74 = load i8, ptr %10, align 1
  %75 = icmp eq i8 %74, 0
  %76 = zext i8 %74 to i32
  %77 = shl nuw i32 %76, 24
  %78 = and i32 %77, 1056964608
  %79 = select i1 %75, i32 0, i32 %78
  %80 = or i32 %73, %79
  %81 = getelementptr inbounds %struct.davinci_spi, ptr %6, i32 0, i32 2
  %82 = load i8, ptr %81, align 4
  %83 = icmp eq i8 %82, 1
  br i1 %83, label %84, label %132

84:                                               ; preds = %58
  %85 = getelementptr inbounds %struct.davinci_spi_config, ptr %10, i32 0, i32 1
  %86 = load i8, ptr %85, align 1
  %87 = icmp eq i8 %86, 0
  %88 = or i32 %80, 8388608
  %89 = select i1 %87, i32 %80, i32 %88
  %90 = getelementptr inbounds %struct.davinci_spi_config, ptr %10, i32 0, i32 2
  %91 = load i8, ptr %90, align 1
  %92 = icmp eq i8 %91, 0
  %93 = or i32 %89, 4194304
  %94 = select i1 %92, i32 %89, i32 %93
  %95 = getelementptr inbounds %struct.davinci_spi_config, ptr %10, i32 0, i32 4
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %84
  %99 = or i32 %94, 262144
  br label %110

100:                                              ; preds = %84
  %101 = getelementptr inbounds %struct.davinci_spi_config, ptr %10, i32 0, i32 5
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl nuw i32 %103, 24
  %105 = getelementptr inbounds %struct.davinci_spi_config, ptr %10, i32 0, i32 6
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = shl nuw nsw i32 %107, 16
  %109 = or i32 %108, %104
  br label %110

110:                                              ; preds = %100, %98
  %111 = phi i32 [ %99, %98 ], [ %94, %100 ]
  %112 = phi i32 [ 0, %98 ], [ %109, %100 ]
  %113 = and i32 %64, 128
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %110
  %116 = or i32 %111, 2097152
  %117 = getelementptr inbounds %struct.davinci_spi_config, ptr %10, i32 0, i32 7
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = shl nuw nsw i32 %119, 8
  %121 = or i32 %120, %112
  %122 = getelementptr inbounds %struct.davinci_spi_config, ptr %10, i32 0, i32 8
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %121, %124
  br label %126

126:                                              ; preds = %115, %110
  %127 = phi i32 [ %116, %115 ], [ %111, %110 ]
  %128 = phi i32 [ %125, %115 ], [ %112, %110 ]
  %129 = getelementptr inbounds %struct.davinci_spi, ptr %6, i32 0, i32 4
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr i8, ptr %130, i32 72
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %128) #11, !srcloc !9
  br label %132

132:                                              ; preds = %126, %58
  %133 = phi i32 [ %127, %126 ], [ %80, %58 ]
  %134 = getelementptr inbounds %struct.davinci_spi, ptr %6, i32 0, i32 4
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr i8, ptr %135, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %133) #11, !srcloc !9
  br label %137

137:                                              ; preds = %132, %41
  %138 = phi i32 [ 0, %132 ], [ %56, %41 ]
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_spi_bufs(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca %struct.dma_slave_config, align 4
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @davinci_spi_default_cfg, ptr %10
  %13 = getelementptr inbounds %struct.davinci_spi, ptr %8, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load ptr, ptr %1, align 4
  %22 = getelementptr inbounds %struct.davinci_spi, ptr %8, i32 0, i32 7
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.davinci_spi, ptr %8, i32 0, i32 8
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = udiv i32 %27, %20
  %29 = getelementptr inbounds %struct.davinci_spi, ptr %8, i32 0, i32 10
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.davinci_spi, ptr %8, i32 0, i32 9
  store i32 %28, ptr %30, align 4
  %31 = getelementptr inbounds %struct.davinci_spi, ptr %8, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 60
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr i8, ptr %35, i32 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %38 = and i32 %37, -257
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %38) #11, !srcloc !9
  %39 = load ptr, ptr %31, align 4
  %40 = getelementptr i8, ptr %39, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %42 = or i32 %41, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %42) #11, !srcloc !9
  %43 = getelementptr inbounds %struct.davinci_spi, ptr %8, i32 0, i32 6
  store i32 0, ptr %43, align 4
  %44 = load ptr, ptr %9, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %2
  %47 = getelementptr inbounds %struct.davinci_spi_config, ptr %44, i32 0, i32 3
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 2
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i32, ptr %26, align 4
  %52 = icmp ugt i32 %51, 15
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load ptr, ptr %23, align 4
  %55 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %54) #11
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %1, align 4
  %58 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %57) #11
  br i1 %58, label %59, label %79

59:                                               ; preds = %56, %53, %50, %46, %2
  %60 = getelementptr inbounds %struct.davinci_spi_config, ptr %12, i32 0, i32 3
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, 1
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %31, align 4
  %65 = getelementptr i8, ptr %64, i32 8
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %67 = or i32 %66, 351
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %67) #11, !srcloc !9
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, ptr %29, align 4
  %70 = add i32 %69, -1
  store i32 %70, ptr %29, align 4
  %71 = getelementptr inbounds %struct.davinci_spi, ptr %8, i32 0, i32 15
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 %72(ptr noundef %8) #11
  %74 = and i32 %34, -65536
  %75 = and i32 %73, 65535
  %76 = or i32 %75, %74
  %77 = load ptr, ptr %31, align 4
  %78 = getelementptr i8, ptr %77, i32 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #11, !srcloc !9
  br label %199

79:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  %80 = getelementptr inbounds i8, ptr %3, i32 36
  store i32 0, ptr %80, align 4, !annotation !13
  store i32 2, ptr %3, align 4
  %81 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 1
  %82 = getelementptr inbounds %struct.davinci_spi, ptr %8, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, 64
  store i32 %84, ptr %81, align 4
  %85 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 2
  store i32 0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  store i32 %20, ptr %86, align 4
  %87 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  store i32 0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 5
  store i32 1, ptr %88, align 4
  %89 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 6
  %90 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 10
  store ptr null, ptr %90, align 4
  %91 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 11
  store i32 0, ptr %91, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(13) %89, i8 0, i64 13, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #11
  %92 = getelementptr inbounds i8, ptr %4, i32 36
  store i32 0, ptr %92, align 4, !annotation !13
  store i32 1, ptr %4, align 4
  %93 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 1
  store i32 0, ptr %93, align 4
  %94 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 2
  %95 = add i32 %83, 60
  store i32 %95, ptr %94, align 4
  %96 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 3
  store i32 0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  store i32 %20, ptr %97, align 4
  %98 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 5
  store i32 0, ptr %98, align 4
  %99 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 6
  store i32 1, ptr %99, align 4
  %100 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 7
  store i32 0, ptr %100, align 4
  %101 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 8
  store i32 0, ptr %101, align 4
  %102 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 10
  store ptr null, ptr %102, align 4
  %103 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 11
  store i32 0, ptr %103, align 4
  %104 = getelementptr inbounds %struct.davinci_spi, ptr %8, i32 0, i32 11
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.dma_device, ptr %106, i32 0, i32 44
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %79
  %111 = call i32 %108(ptr noundef %105, ptr noundef nonnull %3) #11
  br label %112

112:                                              ; preds = %110, %79
  %113 = getelementptr inbounds %struct.davinci_spi, ptr %8, i32 0, i32 12
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.dma_device, ptr %115, i32 0, i32 44
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %112
  %120 = call i32 %117(ptr noundef %114, ptr noundef nonnull %4) #11
  br label %121

121:                                              ; preds = %119, %112
  %122 = load ptr, ptr %104, align 4
  %123 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 6
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 6, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq ptr %122, null
  br i1 %127, label %179, label %128

128:                                              ; preds = %121
  %129 = load ptr, ptr %122, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %179, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.dma_device, ptr %129, i32 0, i32 39
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %179, label %135

135:                                              ; preds = %131
  %136 = call ptr %133(ptr noundef nonnull %122, ptr noundef %124, i32 noundef %126, i32 noundef 2, i32 noundef 3, ptr noundef null) #11
  %137 = icmp eq ptr %136, null
  br i1 %137, label %179, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr %1, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 5
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 5, i32 1
  %145 = load i32, ptr %144, align 4
  br label %151

146:                                              ; preds = %138
  %147 = load ptr, ptr %123, align 4
  %148 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 5
  store ptr %147, ptr %148, align 4
  %149 = load i32, ptr %125, align 4
  %150 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 5, i32 1
  store i32 %149, ptr %150, align 4
  br label %151

151:                                              ; preds = %146, %141
  %152 = phi i32 [ %145, %141 ], [ %149, %146 ]
  %153 = phi ptr [ %143, %141 ], [ %147, %146 ]
  %154 = load ptr, ptr %113, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %179, label %156

156:                                              ; preds = %151
  %157 = load ptr, ptr %154, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %179, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.dma_device, ptr %157, i32 0, i32 39
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %179, label %163

163:                                              ; preds = %159
  %164 = call ptr %161(ptr noundef nonnull %154, ptr noundef %153, i32 noundef %152, i32 noundef 1, i32 noundef 3, ptr noundef null) #11
  %165 = icmp eq ptr %164, null
  br i1 %165, label %179, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %136, i32 0, i32 6
  store ptr @davinci_spi_dma_rx_callback, ptr %167, align 4
  %168 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %136, i32 0, i32 8
  store ptr %8, ptr %168, align 4
  %169 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %164, i32 0, i32 6
  store ptr @davinci_spi_dma_tx_callback, ptr %169, align 4
  %170 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %164, i32 0, i32 8
  store ptr %8, ptr %170, align 4
  %171 = getelementptr inbounds %struct.davinci_spi, ptr %8, i32 0, i32 13, i32 4
  %172 = load i8, ptr %171, align 4, !range !16
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %166
  %175 = lshr i32 %34, 16
  %176 = trunc i32 %175 to i16
  %177 = load ptr, ptr %31, align 4
  %178 = getelementptr i8, ptr %177, i32 62
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  call void @arm_heavy_mb() #11
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %178, i16 %176) #11, !srcloc !15
  br label %180

179:                                              ; preds = %163, %159, %156, %151, %135, %131, %128, %121
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  br label %302

180:                                              ; preds = %174, %166
  %181 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %136, i32 0, i32 4
  %182 = load ptr, ptr %181, align 4
  %183 = call i32 %182(ptr noundef nonnull %136) #11
  %184 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %164, i32 0, i32 4
  %185 = load ptr, ptr %184, align 4
  %186 = call i32 %185(ptr noundef nonnull %164) #11
  %187 = load ptr, ptr %104, align 4
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.dma_device, ptr %188, i32 0, i32 50
  %190 = load ptr, ptr %189, align 4
  call void %190(ptr noundef %187) #11
  %191 = load ptr, ptr %113, align 4
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.dma_device, ptr %192, i32 0, i32 50
  %194 = load ptr, ptr %193, align 4
  call void %194(ptr noundef %191) #11
  %195 = load ptr, ptr %31, align 4
  %196 = getelementptr i8, ptr %195, i32 8
  %197 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %198 = or i32 %197, 65536
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %198) #11, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  br label %199

199:                                              ; preds = %180, %68
  %200 = getelementptr inbounds %struct.davinci_spi_config, ptr %12, i32 0, i32 3
  %201 = load i8, ptr %200, align 1
  %202 = icmp eq i8 %201, 1
  br i1 %202, label %207, label %203

203:                                              ; preds = %199
  %204 = call i32 @wait_for_completion_timeout(ptr noundef %43, i32 noundef 100) #11
  %205 = icmp eq i32 %204, 0
  %206 = select i1 %205, i32 2, i32 0
  br label %217

207:                                              ; preds = %216, %199
  %208 = load i32, ptr %30, align 4
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = load i32, ptr %29, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %210, %207
  %214 = call fastcc i32 @davinci_spi_process_events(ptr noundef %8)
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !18
  br label %207

217:                                              ; preds = %213, %210, %203
  %218 = phi i32 [ %206, %203 ], [ 0, %210 ], [ %214, %213 ]
  %219 = load ptr, ptr %31, align 4
  %220 = getelementptr i8, ptr %219, i32 8
  %221 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %220) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %222 = and i32 %221, -16843616
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %222) #11, !srcloc !9
  %223 = load ptr, ptr %9, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %243, label %225

225:                                              ; preds = %217
  %226 = getelementptr inbounds %struct.davinci_spi_config, ptr %223, i32 0, i32 3
  %227 = load i8, ptr %226, align 1
  %228 = icmp eq i8 %227, 2
  br i1 %228, label %229, label %243

229:                                              ; preds = %225
  %230 = load i32, ptr %26, align 4
  %231 = icmp ugt i32 %230, 15
  br i1 %231, label %232, label %243

232:                                              ; preds = %229
  %233 = load ptr, ptr %23, align 4
  %234 = call zeroext i1 @is_vmalloc_addr(ptr noundef %233) #11
  br i1 %234, label %243, label %235

235:                                              ; preds = %232
  %236 = load ptr, ptr %1, align 4
  %237 = call zeroext i1 @is_vmalloc_addr(ptr noundef %236) #11
  br i1 %237, label %243, label %238

238:                                              ; preds = %235
  %239 = load ptr, ptr %31, align 4
  %240 = getelementptr i8, ptr %239, i32 8
  %241 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %240) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %242 = and i32 %241, -65537
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 %242) #11, !srcloc !9
  br label %243

243:                                              ; preds = %238, %235, %232, %229, %225, %217
  %244 = load ptr, ptr %31, align 4
  %245 = getelementptr i8, ptr %244, i32 4
  %246 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %245) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %247 = and i32 %246, -16777217
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 %247) #11, !srcloc !9
  %248 = load ptr, ptr %31, align 4
  %249 = getelementptr i8, ptr %248, i32 4
  %250 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %249) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %251 = or i32 %250, 256
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %249, i32 %251) #11, !srcloc !9
  %252 = icmp eq i32 %218, 0
  br i1 %252, label %293, label %253

253:                                              ; preds = %243
  %254 = getelementptr inbounds %struct.spi_bitbang, ptr %8, i32 0, i32 4
  %255 = load ptr, ptr %254, align 4
  %256 = getelementptr inbounds %struct.device, ptr %255, i32 0, i32 1
  %257 = load ptr, ptr %256, align 4
  %258 = and i32 %218, 2
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %282

260:                                              ; preds = %253
  %261 = and i32 %218, 8
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %282

263:                                              ; preds = %260
  %264 = and i32 %218, 16
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %282

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.davinci_spi, ptr %8, i32 0, i32 2
  %268 = load i8, ptr %267, align 4
  %269 = icmp eq i8 %268, 1
  br i1 %269, label %270, label %285

270:                                              ; preds = %266
  %271 = and i32 %218, 1
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %270
  %274 = and i32 %218, 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %273
  %277 = and i32 %218, 64
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %276
  %280 = and i32 %218, 16777216
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %279, %276, %273, %270, %263, %260, %253
  %283 = phi ptr [ @.str.10, %253 ], [ @.str.11, %260 ], [ @.str.12, %263 ], [ @.str.13, %270 ], [ @.str.14, %273 ], [ @.str.15, %276 ], [ @.str.16, %279 ]
  %284 = phi i32 [ -110, %253 ], [ -5, %260 ], [ -5, %263 ], [ -5, %270 ], [ -5, %273 ], [ -5, %276 ], [ -16, %279 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull %283) #12
  br label %302

285:                                              ; preds = %279, %266
  %286 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %287 = load ptr, ptr %286, align 4
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %291

289:                                              ; preds = %285
  %290 = load ptr, ptr %0, align 4
  br label %291

291:                                              ; preds = %289, %285
  %292 = phi ptr [ %290, %289 ], [ %287, %285 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 690, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %292) #11
  br label %302

293:                                              ; preds = %243
  %294 = load i32, ptr %30, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = load i32, ptr %29, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %296, %293
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9) #12
  br label %302

300:                                              ; preds = %296
  %301 = load i32, ptr %26, align 4
  br label %302

302:                                              ; preds = %300, %299, %291, %282, %179
  %303 = phi i32 [ -5, %299 ], [ %301, %300 ], [ 0, %291 ], [ %284, %282 ], [ -12, %179 ]
  ret i32 %303
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @davinci_spi_request_dma(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.spi_bitbang, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @dma_request_chan(ptr noundef %5, ptr noundef nonnull @.str.17) #11
  %7 = getelementptr inbounds %struct.davinci_spi, ptr %0, i32 0, i32 11
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = ptrtoint ptr %6 to i32
  br label %19

11:                                               ; preds = %1
  %12 = tail call ptr @dma_request_chan(ptr noundef %5, ptr noundef nonnull @.str.18) #11
  %13 = getelementptr inbounds %struct.davinci_spi, ptr %0, i32 0, i32 12
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 4
  tail call void @dma_release_channel(ptr noundef %16) #11
  %17 = load ptr, ptr %13, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %19

19:                                               ; preds = %15, %11, %9
  %20 = phi i32 [ %10, %9 ], [ %18, %15 ], [ 0, %11 ]
  ret i32 %20
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @davinci_spi_rx_buf_u8(i32 noundef %0, ptr nocapture noundef %1) #8 {
  %3 = getelementptr inbounds %struct.davinci_spi, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = trunc i32 %0 to i8
  %8 = getelementptr i8, ptr %4, i32 1
  store i8 %7, ptr %4, align 1
  store ptr %8, ptr %3, align 4
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @davinci_spi_tx_buf_u8(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.davinci_spi, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %3, align 1
  %8 = zext i8 %7 to i32
  store ptr %6, ptr %2, align 4
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bitbang_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @davinci_spi_process_events(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.davinci_spi, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %6 = getelementptr inbounds %struct.davinci_spi, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  %9 = icmp sgt i32 %5, -1
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.davinci_spi, ptr %0, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  %14 = and i32 %5, 65535
  tail call void %13(i32 noundef %14, ptr noundef %0) #11
  %15 = load i32, ptr %6, align 4
  %16 = add i32 %15, -1
  store i32 %16, ptr %6, align 4
  br label %17

17:                                               ; preds = %11, %1
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %21 = and i32 %20, 95
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %44, !prof !12

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.davinci_spi, ptr %0, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = and i32 %5, 536870912
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr i8, ptr %31, i32 60
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %34 = load i32, ptr %24, align 4
  %35 = add i32 %34, -1
  store i32 %35, ptr %24, align 4
  %36 = and i32 %33, -65536
  %37 = getelementptr inbounds %struct.davinci_spi, ptr %0, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %0) #11
  %40 = and i32 %39, 65535
  %41 = or i32 %40, %36
  %42 = load ptr, ptr %2, align 4
  %43 = getelementptr i8, ptr %42, i32 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #11, !srcloc !9
  br label %44

44:                                               ; preds = %30, %23, %17
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @davinci_spi_rx_buf_u16(i32 noundef %0, ptr nocapture noundef %1) #8 {
  %3 = getelementptr inbounds %struct.davinci_spi, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = trunc i32 %0 to i16
  %8 = getelementptr i16, ptr %4, i32 1
  store i16 %7, ptr %4, align 2
  store ptr %8, ptr %3, align 4
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @davinci_spi_tx_buf_u16(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.davinci_spi, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr i16, ptr %3, i32 1
  %7 = load i16, ptr %3, align 2
  %8 = zext i16 %7 to i32
  store ptr %6, ptr %2, align 4
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @davinci_spi_dma_rx_callback(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.davinci_spi, ptr %0, i32 0, i32 9
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.davinci_spi, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.davinci_spi, ptr %0, i32 0, i32 6
  tail call void @complete(ptr noundef %7) #11
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @davinci_spi_dma_tx_callback(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.davinci_spi, ptr %0, i32 0, i32 10
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.davinci_spi, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.davinci_spi, ptr %0, i32 0, i32 6
  tail call void @complete(ptr noundef %7) #11
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_bitbang_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

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
!8 = !{i64 2150616476}
!9 = !{i64 3075383}
!10 = !{i64 3075801}
!11 = !{i64 2150615254}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{!"auto-init"}
!14 = !{i64 2150616003}
!15 = !{i64 3074763}
!16 = !{i8 0, i8 2}
!17 = !{i64 2153229275}
!18 = !{i64 2153229117}
