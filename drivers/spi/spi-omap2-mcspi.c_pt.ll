; ModuleID = '/llk/IR/drivers/spi/spi-omap2-mcspi.c_pt.bc'
source_filename = "../drivers/spi/spi-omap2-mcspi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.omap2_mcspi_platform_config = type { i16, i32, i8, i32 }
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
%struct.omap2_mcspi = type { %struct.completion, ptr, ptr, i32, ptr, ptr, %struct.omap2_mcspi_regs, i32, i8, i8, i32 }
%struct.omap2_mcspi_regs = type { i32, i32, %struct.list_head }
%struct.omap2_mcspi_dma = type { ptr, ptr, %struct.completion, %struct.completion, [14 x i8], [14 x i8] }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.omap2_mcspi_cs = type { ptr, i32, i32, i16, %struct.list_head, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__UNIQUE_ID_alias233 = internal constant [43 x i8] c"spi_omap2_mcspi.alias=platform:omap2_mcspi\00", section ".modinfo", align 1
@__initcall__kmod_spi_omap2_mcspi__234_1617_omap2_mcspi_driver_init6 = internal global ptr @omap2_mcspi_driver_init, section ".initcall6.init", align 4
@omap2_mcspi_driver = internal global %struct.platform_driver { ptr @omap2_mcspi_probe, ptr @omap2_mcspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_mcspi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2_mcspi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_omap2_mcspi_driver_exit = internal global ptr @omap2_mcspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file235 = internal constant [49 x i8] c"spi_omap2_mcspi.file=drivers/spi/spi-omap2-mcspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [28 x i8] c"spi_omap2_mcspi.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"omap2_mcspi\00", align 1
@omap_mcspi_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-mcspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-mcspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-mcspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am654_pdata }, %struct.of_device_id zeroinitializer], align 4
@omap2_mcspi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @omap2_mcspi_suspend, ptr @omap2_mcspi_resume, ptr @omap2_mcspi_suspend, ptr @omap2_mcspi_resume, ptr @omap2_mcspi_suspend, ptr @omap2_mcspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_mcspi_runtime_suspend, ptr @omap_mcspi_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"spi-slave\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ti,spi-num-cs\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"ti,pindir-d0-out-d1-in\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"rx%d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"tx%d\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"no irq resource found\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Cannot request IRQ\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"EOW timed out\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"TXFFE timed out\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"TXS timed out\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"EOT timed out\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"sg_split failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"DMA RX penultimate word empty\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"DMA RX last word empty\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.15 = private unnamed_addr constant [15 x i8] c"RXS timed out\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"failed to get sync: %d\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@omap2_pdata = internal global %struct.omap2_mcspi_platform_config zeroinitializer, align 4
@omap4_pdata = internal global %struct.omap2_mcspi_platform_config { i16 0, i32 256, i8 0, i32 0 }, align 4
@am654_pdata = internal global %struct.omap2_mcspi_platform_config { i16 0, i32 256, i8 0, i32 4095 }, align 4
@.str.18 = private unnamed_addr constant [28 x i8] c"%s: failed to set pins: %i\0A\00", align 1
@__func__.omap2_mcspi_suspend = private unnamed_addr constant [20 x i8] c"omap2_mcspi_suspend\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"%s: master suspend failed: %i\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"%s: master resume failed: %i\0A\00", align 1
@__func__.omap2_mcspi_resume = private unnamed_addr constant [19 x i8] c"omap2_mcspi_resume\00", align 1
@__func__.omap_mcspi_runtime_suspend = private unnamed_addr constant [27 x i8] c"omap_mcspi_runtime_suspend\00", align 1
@__func__.omap_mcspi_runtime_resume = private unnamed_addr constant [26 x i8] c"omap_mcspi_runtime_resume\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_omap2_mcspi_driver_exit, ptr @__initcall__kmod_spi_omap2_mcspi__234_1617_omap2_mcspi_driver_init6, ptr @omap2_mcspi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap2_mcspi_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap2_mcspi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap2_mcspi_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef null) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %213

8:                                                ; preds = %1
  %9 = tail call ptr @__spi_alloc_controller(ptr noundef %3, i32 noundef 64, i1 noundef zeroext false) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %213, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 5
  store i32 7, ptr %12, align 8
  %13 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 7
  store i32 -8, ptr %13, align 8
  %14 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 20
  store ptr @omap2_mcspi_setup, ptr %14, align 4
  %15 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 36
  store i8 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 47
  store ptr @omap2_mcspi_prepare_message, ptr %16, align 4
  %17 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 24
  store ptr @omap2_mcspi_can_dma, ptr %17, align 4
  %18 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 51
  store ptr @omap2_mcspi_transfer_one, ptr %18, align 4
  %19 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 50
  store ptr @omap2_mcspi_set_cs, ptr %19, align 8
  %20 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 23
  store ptr @omap2_mcspi_cleanup, ptr %20, align 8
  %21 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 49
  store ptr @omap2_mcspi_slave_abort, ptr %21, align 4
  %22 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 25
  store ptr %5, ptr %22, align 8
  %23 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 9
  store i32 48000000, ptr %23, align 8
  %24 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 8
  store i32 1464, ptr %24, align 4
  %25 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 56
  store i8 1, ptr %25, align 8
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %26, align 8
  %27 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.omap2_mcspi, ptr %28, i32 0, i32 1
  store ptr %9, ptr %29, align 4
  %30 = tail call ptr @of_match_device(ptr noundef nonnull @omap_mcspi_of_match, ptr noundef %3) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 1, ptr %2, align 4
  %33 = getelementptr inbounds %struct.of_device_id, ptr %30, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %36 = load i32, ptr %2, align 4
  %37 = trunc i32 %36 to i16
  %38 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 3
  store i16 %37, ptr %38, align 2
  %39 = call ptr @of_get_property(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef null) #11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.omap2_mcspi, ptr %28, i32 0, i32 9
  %43 = load i8, ptr %42, align 1
  %44 = or i8 %43, 1
  store i8 %44, ptr %42, align 1
  br label %45

45:                                               ; preds = %41, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %58

46:                                               ; preds = %11
  %47 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = load i16, ptr %48, align 4
  %50 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 3
  store i16 %49, ptr %50, align 2
  %51 = getelementptr inbounds %struct.omap2_mcspi_platform_config, ptr %48, i32 0, i32 2
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, 1
  %54 = getelementptr inbounds %struct.omap2_mcspi, ptr %28, i32 0, i32 9
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, -2
  %57 = or i8 %56, %53
  store i8 %57, ptr %54, align 1
  br label %58

58:                                               ; preds = %46, %45
  %59 = phi ptr [ %34, %45 ], [ %48, %46 ]
  %60 = getelementptr inbounds %struct.omap2_mcspi_platform_config, ptr %59, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.omap2_mcspi_platform_config, ptr %59, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.omap2_mcspi, ptr %28, i32 0, i32 10
  store i32 %63, ptr %66, align 4
  %67 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 13
  store ptr @omap2_mcspi_max_xfer_size, ptr %67, align 8
  br label %68

68:                                               ; preds = %65, %58
  %69 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %70 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %69) #11
  %71 = getelementptr inbounds %struct.omap2_mcspi, ptr %28, i32 0, i32 2
  store ptr %70, ptr %71, align 4
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = ptrtoint ptr %70 to i32
  br label %187

75:                                               ; preds = %68
  %76 = load i32, ptr %69, align 4
  %77 = add i32 %76, %61
  %78 = getelementptr inbounds %struct.omap2_mcspi, ptr %28, i32 0, i32 3
  store i32 %77, ptr %78, align 4
  %79 = getelementptr i8, ptr %70, i32 %61
  store ptr %79, ptr %71, align 4
  %80 = getelementptr inbounds %struct.omap2_mcspi, ptr %28, i32 0, i32 5
  store ptr %3, ptr %80, align 4
  %81 = getelementptr inbounds %struct.omap2_mcspi, ptr %28, i32 0, i32 6, i32 2
  store volatile ptr %81, ptr %81, align 4
  %82 = getelementptr inbounds %struct.omap2_mcspi, ptr %28, i32 0, i32 6, i32 2, i32 1
  store ptr %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 3
  %84 = load i16, ptr %83, align 2
  %85 = zext i16 %84 to i32
  %86 = mul nuw nsw i32 %85, 68
  %87 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %86, i32 noundef 3520) #11
  %88 = getelementptr inbounds %struct.omap2_mcspi, ptr %28, i32 0, i32 4
  store ptr %87, ptr %88, align 4
  %89 = icmp eq ptr %87, null
  br i1 %89, label %187, label %90

90:                                               ; preds = %75
  %91 = load i16, ptr %83, align 2
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %134, label %100

93:                                               ; preds = %131
  %94 = add nuw nsw i32 %102, 1
  %95 = load i16, ptr %83, align 2
  %96 = zext i16 %95 to i32
  %97 = icmp ult i32 %94, %96
  br i1 %97, label %98, label %134

98:                                               ; preds = %93
  %99 = load ptr, ptr %88, align 4
  br label %100

100:                                              ; preds = %98, %90
  %101 = phi ptr [ %99, %98 ], [ %87, %90 ]
  %102 = phi i32 [ %94, %98 ], [ 0, %90 ]
  %103 = getelementptr %struct.omap2_mcspi_dma, ptr %101, i32 %102, i32 4
  %104 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %103, ptr noundef nonnull @.str.4, i32 noundef %102)
  %105 = load ptr, ptr %88, align 4
  %106 = getelementptr %struct.omap2_mcspi_dma, ptr %105, i32 %102, i32 5
  %107 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %106, ptr noundef nonnull @.str.5, i32 noundef %102)
  %108 = load ptr, ptr %88, align 4
  %109 = getelementptr %struct.omap2_mcspi_dma, ptr %108, i32 %102
  %110 = load ptr, ptr %80, align 4
  %111 = getelementptr %struct.omap2_mcspi_dma, ptr %108, i32 %102, i32 4
  %112 = call ptr @dma_request_chan(ptr noundef %110, ptr noundef %111) #11
  %113 = getelementptr %struct.omap2_mcspi_dma, ptr %108, i32 %102, i32 1
  store ptr %112, ptr %113, align 4
  %114 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %115, label %117

115:                                              ; preds = %100
  %116 = ptrtoint ptr %112 to i32
  store ptr null, ptr %113, align 4
  br label %131

117:                                              ; preds = %100
  %118 = load ptr, ptr %80, align 4
  %119 = getelementptr %struct.omap2_mcspi_dma, ptr %108, i32 %102, i32 5
  %120 = call ptr @dma_request_chan(ptr noundef %118, ptr noundef %119) #11
  store ptr %120, ptr %109, align 4
  %121 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = ptrtoint ptr %120 to i32
  store ptr null, ptr %109, align 4
  %124 = load ptr, ptr %113, align 4
  call void @dma_release_channel(ptr noundef %124) #11
  store ptr null, ptr %113, align 4
  br label %125

125:                                              ; preds = %122, %117
  %126 = phi i32 [ %123, %122 ], [ 0, %117 ]
  %127 = getelementptr %struct.omap2_mcspi_dma, ptr %108, i32 %102, i32 3
  store i32 0, ptr %127, align 4
  %128 = getelementptr %struct.omap2_mcspi_dma, ptr %108, i32 %102, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %128, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #11
  %129 = getelementptr %struct.omap2_mcspi_dma, ptr %108, i32 %102, i32 2
  store i32 0, ptr %129, align 4
  %130 = getelementptr %struct.omap2_mcspi_dma, ptr %108, i32 %102, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %130, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #11
  br label %131

131:                                              ; preds = %125, %115
  %132 = phi i32 [ %116, %115 ], [ %126, %125 ]
  %133 = icmp eq i32 %132, -517
  br i1 %133, label %187, label %93

134:                                              ; preds = %93, %90
  %135 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %136 = icmp eq i32 %135, -517
  br i1 %136, label %187, label %137

137:                                              ; preds = %134
  %138 = icmp slt i32 %135, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %137
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #12
  br label %187

140:                                              ; preds = %137
  store i32 0, ptr %28, align 4
  %141 = getelementptr inbounds %struct.completion, ptr %28, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %141, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #11
  %142 = load ptr, ptr %0, align 8
  %143 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %135, ptr noundef nonnull @omap2_mcspi_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %142, ptr noundef %28) #11
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %140
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #12
  br label %187

146:                                              ; preds = %140
  call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #11
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef 2000) #11
  call void @pm_runtime_enable(ptr noundef %3) #11
  %147 = load ptr, ptr %29, align 4
  %148 = load ptr, ptr %80, align 4
  %149 = call i32 @__pm_runtime_resume(ptr noundef %148, i32 noundef 4) #11
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load ptr, ptr %80, align 4
  %153 = getelementptr inbounds %struct.device, ptr %152, i32 0, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %153) #11, !srcloc !9
  %154 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %153, ptr %153, i32 0, i32 -1, ptr elementtype(i32) %153) #11, !srcloc !10
  %155 = extractvalue { i32, i32, i32 } %154, 0
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %184, label %157

157:                                              ; preds = %151
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  br label %184

158:                                              ; preds = %146
  %159 = getelementptr inbounds %struct.device, ptr %147, i32 0, i32 8
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds %struct.omap2_mcspi, ptr %160, i32 0, i32 2
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr i8, ptr %162, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 1) #11, !srcloc !12
  %164 = getelementptr inbounds %struct.omap2_mcspi, ptr %28, i32 0, i32 6, i32 1
  store i32 1, ptr %164, align 4
  %165 = load ptr, ptr %159, align 8
  %166 = getelementptr inbounds %struct.omap2_mcspi, ptr %165, i32 0, i32 2
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr i8, ptr %167, i32 40
  %169 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #11, !srcloc !13
  %170 = and i32 %169, -14
  %171 = or i32 %170, 1
  %172 = getelementptr inbounds %struct.omap2_mcspi, ptr %165, i32 0, i32 6
  %173 = load ptr, ptr %159, align 8
  %174 = getelementptr inbounds %struct.omap2_mcspi, ptr %173, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr i8, ptr %175, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %171) #11, !srcloc !12
  store i32 %171, ptr %172, align 4
  %177 = load ptr, ptr %80, align 4
  %178 = call i64 @ktime_get_mono_fast_ns() #11
  %179 = getelementptr inbounds %struct.device, ptr %177, i32 0, i32 11, i32 22
  store volatile i64 %178, ptr %179, align 8
  %180 = load ptr, ptr %80, align 4
  %181 = call i32 @__pm_runtime_suspend(ptr noundef %180, i32 noundef 13) #11
  %182 = call i32 @devm_spi_register_controller(ptr noundef %3, ptr noundef nonnull %9) #11
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %213

184:                                              ; preds = %158, %157, %151
  %185 = phi i32 [ %182, %158 ], [ %149, %151 ], [ %149, %157 ]
  call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext false) #11
  %186 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #11
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #11
  br label %187

187:                                              ; preds = %184, %145, %139, %134, %131, %75, %73
  %188 = phi i32 [ %74, %73 ], [ -517, %134 ], [ %135, %139 ], [ %143, %145 ], [ %185, %184 ], [ -12, %75 ], [ -517, %131 ]
  %189 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 3
  %190 = load i16, ptr %189, align 2
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %212, label %192

192:                                              ; preds = %187
  %193 = load ptr, ptr %27, align 8
  %194 = getelementptr inbounds %struct.omap2_mcspi, ptr %193, i32 0, i32 4
  br label %195

195:                                              ; preds = %207, %192
  %196 = phi i32 [ 0, %192 ], [ %208, %207 ]
  %197 = load ptr, ptr %194, align 4
  %198 = getelementptr %struct.omap2_mcspi_dma, ptr %197, i32 %196
  %199 = getelementptr %struct.omap2_mcspi_dma, ptr %197, i32 %196, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %195
  call void @dma_release_channel(ptr noundef nonnull %200) #11
  store ptr null, ptr %199, align 4
  br label %203

203:                                              ; preds = %202, %195
  %204 = load ptr, ptr %198, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %207, label %206

206:                                              ; preds = %203
  call void @dma_release_channel(ptr noundef nonnull %204) #11
  store ptr null, ptr %198, align 4
  br label %207

207:                                              ; preds = %206, %203
  %208 = add nuw nsw i32 %196, 1
  %209 = load i16, ptr %189, align 2
  %210 = zext i16 %209 to i32
  %211 = icmp ult i32 %208, %210
  br i1 %211, label %195, label %212

212:                                              ; preds = %207, %187
  call void @put_device(ptr noundef nonnull %9) #11
  br label %213

213:                                              ; preds = %212, %158, %8, %1
  %214 = phi i32 [ %188, %212 ], [ -12, %8 ], [ %182, %158 ], [ -12, %1 ]
  ret i32 %214
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 4
  br label %11

11:                                               ; preds = %23, %9
  %12 = phi i32 [ 0, %9 ], [ %24, %23 ]
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr %struct.omap2_mcspi_dma, ptr %13, i32 %12
  %15 = getelementptr %struct.omap2_mcspi_dma, ptr %13, i32 %12, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  tail call void @dma_release_channel(ptr noundef nonnull %16) #11
  store ptr null, ptr %15, align 4
  br label %19

19:                                               ; preds = %18, %11
  %20 = load ptr, ptr %14, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @dma_release_channel(ptr noundef nonnull %20) #11
  store ptr null, ptr %14, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = add nuw nsw i32 %12, 1
  %25 = load i16, ptr %6, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %11, label %28

28:                                               ; preds = %23, %1
  %29 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %30, i1 noundef zeroext false) #11
  %31 = load ptr, ptr %29, align 4
  %32 = tail call i32 @__pm_runtime_idle(ptr noundef %31, i32 noundef 4) #11
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %33, i1 noundef zeroext true) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_setup(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 32) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %61, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = mul nuw nsw i32 %18, 20
  %20 = getelementptr i8, ptr %15, i32 %19
  store ptr %20, ptr %11, align 8
  %21 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %19
  %24 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %11, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %11, i32 0, i32 3
  store i16 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %11, i32 0, i32 5
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %11, i32 0, i32 6
  store i32 0, ptr %27, align 4
  store ptr %11, ptr %6, align 8
  %28 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %11, i32 0, i32 4
  %29 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 6, i32 2
  %30 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 6, i32 2, i32 1
  %31 = load ptr, ptr %30, align 4
  store ptr %28, ptr %30, align 4
  store ptr %29, ptr %28, align 8
  %32 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %11, i32 0, i32 4, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %28, ptr %31, align 4
  br label %33

33:                                               ; preds = %13, %1
  %34 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @__pm_runtime_resume(ptr noundef %35, i32 noundef 4) #11
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load ptr, ptr %34, align 4
  %40 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #11, !srcloc !9
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 0, i32 -1, ptr elementtype(i32) %40) #11, !srcloc !10
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  br label %45

45:                                               ; preds = %44, %38
  br i1 %8, label %46, label %61

46:                                               ; preds = %45
  %47 = load ptr, ptr %6, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %47, i32 0, i32 4
  %51 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %47, i32 0, i32 4, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %50, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  store volatile ptr %53, ptr %52, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %50, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %51, align 4
  tail call void @kfree(ptr noundef nonnull %47) #11
  br label %61

55:                                               ; preds = %33
  tail call fastcc void @omap2_mcspi_setup_transfer(ptr noundef %0, ptr noundef null)
  %56 = load ptr, ptr %34, align 4
  %57 = tail call i64 @ktime_get_mono_fast_ns() #11
  %58 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 11, i32 22
  store volatile i64 %57, ptr %58, align 8
  %59 = load ptr, ptr %34, align 4
  %60 = tail call i32 @__pm_runtime_suspend(ptr noundef %59, i32 noundef 13) #11
  br label %61

61:                                               ; preds = %55, %49, %46, %45, %9
  %62 = phi i32 [ 0, %55 ], [ -12, %9 ], [ %36, %45 ], [ %36, %46 ], [ %36, %49 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_prepare_message(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.omap2_mcspi, ptr %4, i32 0, i32 6, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  br label %10

10:                                               ; preds = %29, %8
  %11 = phi ptr [ %6, %8 ], [ %30, %29 ]
  %12 = getelementptr i8, ptr %11, i32 -16
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.spi_device, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, %12
  br i1 %16, label %29, label %17

17:                                               ; preds = %10
  %18 = getelementptr i8, ptr %11, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1048576
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = and i32 %19, -1048577
  store i32 %23, ptr %18, align 4
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr i8, ptr %24, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #11, !srcloc !12
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr i8, ptr %26, i32 44
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !13
  br label %29

29:                                               ; preds = %22, %17, %10
  %30 = load ptr, ptr %11, align 4
  %31 = icmp eq ptr %30, %5
  br i1 %31, label %32, label %10

32:                                               ; preds = %29, %2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @omap2_mcspi_can_dma(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #4 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.omap2_mcspi, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = getelementptr %struct.omap2_mcspi_dma, ptr %9, i32 %12
  %14 = getelementptr %struct.omap2_mcspi_dma, ptr %9, i32 %12, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %3
  %18 = load ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  store ptr %15, ptr %21, align 4
  %22 = load ptr, ptr %13, align 4
  %23 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, 159
  br label %27

27:                                               ; preds = %20, %17, %3
  %28 = phi i1 [ %26, %20 ], [ false, %17 ], [ false, %3 ]
  ret i1 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_transfer_one(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = alloca [2 x ptr], align 8
  %6 = alloca [2 x i32], align 8
  %7 = alloca [2 x i32], align 8
  %8 = alloca %struct.dma_slave_config, align 4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.omap2_mcspi, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = getelementptr %struct.omap2_mcspi_dma, ptr %12, i32 %15
  %17 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 9
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %18, i32 0, i32 3
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %22, %25
  %27 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %18, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, -2
  store i32 %29, ptr %27, align 4
  %30 = load ptr, ptr %17, align 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %29) #11, !srcloc !12
  %33 = load ptr, ptr %17, align 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 52
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !13
  %37 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 14
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %3
  %41 = load i32, ptr %21, align 8
  %42 = and i32 %41, 4
  %43 = icmp ne i32 %42, 0
  tail call void @omap2_mcspi_set_cs(ptr noundef %1, i1 noundef zeroext %43)
  br label %44

44:                                               ; preds = %40, %3
  br i1 %26, label %45, label %57

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 12
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 3
  %49 = load i32, ptr %48, align 8
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 8
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 5
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %53, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %51, %45, %44
  tail call fastcc void @omap2_mcspi_setup_transfer(ptr noundef %1, ptr noundef %2)
  %58 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 12
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 3
  %61 = load i32, ptr %60, align 8
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 8
  %65 = load i8, ptr %64, align 1
  %66 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 5
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %65, %67
  br label %69

69:                                               ; preds = %63, %57, %51
  %70 = phi i1 [ false, %57 ], [ true, %51 ], [ %68, %63 ]
  %71 = icmp eq ptr %20, null
  br i1 %71, label %88, label %72

72:                                               ; preds = %69
  %73 = load i8, ptr %20, align 4
  %74 = and i8 %73, 2
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.omap2_mcspi, ptr %10, i32 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, -2
  %80 = load ptr, ptr %9, align 8
  %81 = getelementptr inbounds %struct.omap2_mcspi, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %82, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %79) #11, !srcloc !12
  %84 = load ptr, ptr %17, align 8
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr i8, ptr %85, i32 40
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #11, !srcloc !13
  store i32 %87, ptr %77, align 4
  br label %88

88:                                               ; preds = %76, %72, %69
  %89 = load ptr, ptr %17, align 8
  %90 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %89, i32 0, i32 5
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, -536577
  %93 = load ptr, ptr %2, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = or i32 %92, 4096
  br label %103

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  %101 = or i32 %92, 8192
  %102 = select i1 %100, i32 %101, i32 %92
  br label %103

103:                                              ; preds = %97, %95
  %104 = phi i32 [ %96, %95 ], [ %102, %97 ]
  br i1 %71, label %121, label %105

105:                                              ; preds = %103
  %106 = load i8, ptr %20, align 4
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  %109 = xor i1 %94, true
  %110 = select i1 %108, i1 true, i1 %109
  br i1 %110, label %121, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %18, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, 7
  %117 = ashr i32 %116, 3
  %118 = icmp ugt i32 %113, %117
  %119 = or i32 %104, 524288
  %120 = select i1 %118, i32 %119, i32 %104
  br label %121

121:                                              ; preds = %111, %105, %103
  %122 = phi i32 [ %104, %105 ], [ %104, %103 ], [ %120, %111 ]
  store i32 %122, ptr %90, align 4
  %123 = load ptr, ptr %17, align 8
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr i8, ptr %124, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %122) #11, !srcloc !12
  %126 = load ptr, ptr %17, align 8
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %127, i32 44
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #11, !srcloc !13
  %130 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %1121, label %133

133:                                              ; preds = %121
  %134 = getelementptr %struct.omap2_mcspi_dma, ptr %12, i32 %15, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %149, label %137

137:                                              ; preds = %133
  %138 = load ptr, ptr %16, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %149, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 38
  %142 = load i8, ptr %141, align 2, !range !14
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 24
  %146 = load ptr, ptr %145, align 4
  %147 = tail call zeroext i1 %146(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  tail call fastcc void @omap2_mcspi_set_fifo(ptr noundef %1, ptr noundef %2, i32 noundef 1)
  br label %149

149:                                              ; preds = %148, %144, %140, %137, %133
  %150 = load ptr, ptr %17, align 8
  %151 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %150, i32 0, i32 6
  %152 = load i32, ptr %151, align 4
  %153 = or i32 %152, 1
  store i32 %153, ptr %151, align 4
  %154 = load ptr, ptr %17, align 8
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr i8, ptr %155, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %153) #11, !srcloc !12
  %157 = load ptr, ptr %17, align 8
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr i8, ptr %158, i32 52
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #11, !srcloc !13
  %161 = load ptr, ptr %2, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %149
  %164 = load ptr, ptr %18, align 4
  %165 = getelementptr i8, ptr %164, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 0) #11, !srcloc !12
  br label %166

166:                                              ; preds = %163, %149
  %167 = load ptr, ptr %134, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %666, label %169

169:                                              ; preds = %166
  %170 = load ptr, ptr %16, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %666, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 38
  %174 = load i8, ptr %173, align 2, !range !14
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %666, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 24
  %178 = load ptr, ptr %177, align 4
  %179 = tail call zeroext i1 %178(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br i1 %179, label %180, label %666

180:                                              ; preds = %176
  %181 = load ptr, ptr %17, align 8
  %182 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.device, ptr %183, i32 0, i32 8
  %185 = load ptr, ptr %184, align 8
  %186 = getelementptr inbounds %struct.omap2_mcspi, ptr %185, i32 0, i32 4
  %187 = load ptr, ptr %186, align 4
  %188 = load i8, ptr %13, align 4
  %189 = zext i8 %188 to i32
  %190 = getelementptr %struct.omap2_mcspi_dma, ptr %187, i32 %189
  %191 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %181, i32 0, i32 2
  %192 = load i32, ptr %191, align 4
  %193 = icmp slt i32 %192, 9
  %194 = icmp slt i32 %192, 17
  %195 = select i1 %194, i32 2, i32 4
  %196 = select i1 %193, i32 1, i32 %195
  %197 = load i32, ptr %130, align 4
  %198 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %181, i32 0, i32 1
  %199 = load i32, ptr %198, align 4
  %200 = add i32 %199, 60
  %201 = add i32 %199, 56
  %202 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = load ptr, ptr %2, align 4
  %205 = getelementptr inbounds %struct.omap2_mcspi, ptr %185, i32 0, i32 8
  store i8 0, ptr %205, align 4
  %206 = getelementptr %struct.omap2_mcspi_dma, ptr %187, i32 %189, i32 2
  store i32 0, ptr %206, align 4
  %207 = getelementptr %struct.omap2_mcspi_dma, ptr %187, i32 %189, i32 3
  store i32 0, ptr %207, align 4
  store i32 0, ptr %185, align 4
  %208 = icmp eq ptr %204, null
  br i1 %208, label %272, label %209

209:                                              ; preds = %180
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4
  %210 = getelementptr inbounds [12 x i32], ptr %8, i32 0, i32 1
  store i32 %200, ptr %210, align 4
  %211 = getelementptr inbounds [12 x i32], ptr %8, i32 0, i32 2
  store i32 %201, ptr %211, align 4
  %212 = getelementptr inbounds [12 x i32], ptr %8, i32 0, i32 3
  store i32 %196, ptr %212, align 4
  %213 = getelementptr inbounds [12 x i32], ptr %8, i32 0, i32 4
  store i32 %196, ptr %213, align 4
  %214 = getelementptr inbounds [12 x i32], ptr %8, i32 0, i32 5
  store i32 1, ptr %214, align 4
  %215 = getelementptr inbounds [12 x i32], ptr %8, i32 0, i32 6
  store i32 1, ptr %215, align 4
  %216 = getelementptr inbounds [12 x i32], ptr %8, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %216, i8 0, i64 20, i1 false) #11
  %217 = load ptr, ptr %182, align 4
  %218 = getelementptr inbounds %struct.device, ptr %217, i32 0, i32 8
  %219 = load ptr, ptr %218, align 8
  %220 = getelementptr inbounds %struct.omap2_mcspi, ptr %219, i32 0, i32 4
  %221 = load ptr, ptr %220, align 4
  %222 = load i8, ptr %13, align 4
  %223 = zext i8 %222 to i32
  %224 = getelementptr %struct.omap2_mcspi_dma, ptr %221, i32 %223
  %225 = load ptr, ptr %224, align 4
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr inbounds %struct.dma_device, ptr %226, i32 0, i32 44
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %233, label %230

230:                                              ; preds = %209
  %231 = call i32 %228(ptr noundef %225, ptr noundef nonnull %8) #11
  %232 = load ptr, ptr %224, align 4
  br label %233

233:                                              ; preds = %230, %209
  %234 = phi ptr [ %225, %209 ], [ %232, %230 ]
  %235 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5, i32 1
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq ptr %234, null
  br i1 %239, label %256, label %240

240:                                              ; preds = %233
  %241 = load ptr, ptr %234, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %256, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.dma_device, ptr %241, i32 0, i32 39
  %245 = load ptr, ptr %244, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %256, label %247

247:                                              ; preds = %243
  %248 = call ptr %245(ptr noundef nonnull %234, ptr noundef %236, i32 noundef %238, i32 noundef 1, i32 noundef 3, ptr noundef null) #11
  %249 = icmp eq ptr %248, null
  br i1 %249, label %256, label %250

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %248, i32 0, i32 6
  store ptr @omap2_mcspi_tx_callback, ptr %251, align 4
  %252 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %248, i32 0, i32 8
  store ptr %1, ptr %252, align 4
  %253 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %248, i32 0, i32 4
  %254 = load ptr, ptr %253, align 4
  %255 = call i32 %254(ptr noundef nonnull %248) #11
  br label %256

256:                                              ; preds = %250, %247, %243, %240, %233
  %257 = load ptr, ptr %224, align 4
  %258 = load ptr, ptr %257, align 4
  %259 = getelementptr inbounds %struct.dma_device, ptr %258, i32 0, i32 50
  %260 = load ptr, ptr %259, align 4
  call void %260(ptr noundef %257) #11
  %261 = load ptr, ptr %17, align 8
  %262 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %261, i32 0, i32 5
  %263 = load i32, ptr %262, align 4
  %264 = or i32 %263, 16384
  store i32 %264, ptr %262, align 4
  %265 = load ptr, ptr %17, align 8
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr i8, ptr %266, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %267, i32 %264) #11, !srcloc !12
  %268 = load ptr, ptr %17, align 8
  %269 = load ptr, ptr %268, align 4
  %270 = getelementptr i8, ptr %269, i32 44
  %271 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %270) #11, !srcloc !13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #11
  br label %272

272:                                              ; preds = %256, %180
  %273 = icmp eq ptr %203, null
  br i1 %273, label %540, label %274

274:                                              ; preds = %272
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4
  %275 = getelementptr inbounds [12 x i32], ptr %4, i32 0, i32 1
  store i32 %200, ptr %275, align 4
  %276 = getelementptr inbounds [12 x i32], ptr %4, i32 0, i32 2
  store i32 %201, ptr %276, align 4
  %277 = getelementptr inbounds [12 x i32], ptr %4, i32 0, i32 3
  store i32 %196, ptr %277, align 4
  %278 = getelementptr inbounds [12 x i32], ptr %4, i32 0, i32 4
  store i32 %196, ptr %278, align 4
  %279 = getelementptr inbounds [12 x i32], ptr %4, i32 0, i32 5
  store i32 1, ptr %279, align 4
  %280 = getelementptr inbounds [12 x i32], ptr %4, i32 0, i32 6
  store i32 1, ptr %280, align 4
  %281 = getelementptr inbounds [12 x i32], ptr %4, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %281, i8 0, i64 20, i1 false) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store i64 0, ptr %5, align 8, !annotation !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store i64 0, ptr %6, align 8, !annotation !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store i64 0, ptr %7, align 8, !annotation !15
  %282 = load ptr, ptr %17, align 8
  %283 = load ptr, ptr %282, align 4
  %284 = getelementptr i8, ptr %283, i32 48
  %285 = load ptr, ptr %182, align 4
  %286 = getelementptr inbounds %struct.device, ptr %285, i32 0, i32 8
  %287 = load ptr, ptr %286, align 8
  %288 = getelementptr inbounds %struct.omap2_mcspi, ptr %287, i32 0, i32 4
  %289 = load ptr, ptr %288, align 4
  %290 = load i8, ptr %13, align 4
  %291 = zext i8 %290 to i32
  %292 = load i32, ptr %130, align 4
  %293 = getelementptr inbounds %struct.omap2_mcspi, ptr %287, i32 0, i32 7
  %294 = load i32, ptr %293, align 4
  %295 = icmp eq i32 %294, 0
  %296 = select i1 %295, i32 %196, i32 0
  %297 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %282, i32 0, i32 2
  %298 = load i32, ptr %297, align 4
  %299 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %282, i32 0, i32 5
  %300 = load i32, ptr %299, align 4
  %301 = icmp slt i32 %298, 9
  br i1 %301, label %308, label %302

302:                                              ; preds = %274
  %303 = icmp ult i32 %298, 17
  br i1 %303, label %304, label %306

304:                                              ; preds = %302
  %305 = lshr i32 %292, 1
  br label %308

306:                                              ; preds = %302
  %307 = lshr i32 %292, 2
  br label %308

308:                                              ; preds = %306, %304, %274
  %309 = phi i32 [ %305, %304 ], [ %307, %306 ], [ %292, %274 ]
  %310 = getelementptr %struct.omap2_mcspi_dma, ptr %289, i32 %291, i32 1
  %311 = load ptr, ptr %310, align 4
  %312 = load ptr, ptr %311, align 4
  %313 = getelementptr inbounds %struct.dma_device, ptr %312, i32 0, i32 44
  %314 = load ptr, ptr %313, align 4
  %315 = icmp eq ptr %314, null
  br i1 %315, label %318, label %316

316:                                              ; preds = %308
  %317 = call i32 %314(ptr noundef %311, ptr noundef nonnull %4) #11
  br label %318

318:                                              ; preds = %316, %308
  %319 = and i32 %300, 524288
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %326, label %321

321:                                              ; preds = %318
  %322 = load i32, ptr %293, align 4
  %323 = icmp eq i32 %322, 0
  %324 = select i1 %323, i32 %196, i32 0
  %325 = add nuw nsw i32 %324, %296
  br label %326

326:                                              ; preds = %321, %318
  %327 = phi i32 [ %296, %318 ], [ %325, %321 ]
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %326
  %330 = sub i32 %292, %327
  store i32 %330, ptr %7, align 8
  %331 = getelementptr inbounds [2 x i32], ptr %7, i32 0, i32 1
  store i32 %327, ptr %331, align 4
  br label %333

332:                                              ; preds = %326
  store i32 %292, ptr %7, align 8
  br label %333

333:                                              ; preds = %332, %329
  %334 = phi i32 [ 2, %329 ], [ 1, %332 ]
  %335 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 6
  %336 = load ptr, ptr %335, align 4
  %337 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 6, i32 1
  %338 = load i32, ptr %337, align 4
  %339 = call i32 @sg_split(ptr noundef %336, i32 noundef %338, i32 noundef 0, i32 noundef %334, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 3264) #11
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %333
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.12) #12
  br label %538

342:                                              ; preds = %333
  %343 = load ptr, ptr %310, align 4
  %344 = load ptr, ptr %5, align 8
  %345 = load i32, ptr %6, align 8
  %346 = icmp eq ptr %343, null
  br i1 %346, label %363, label %347

347:                                              ; preds = %342
  %348 = load ptr, ptr %343, align 4
  %349 = icmp eq ptr %348, null
  br i1 %349, label %363, label %350

350:                                              ; preds = %347
  %351 = getelementptr inbounds %struct.dma_device, ptr %348, i32 0, i32 39
  %352 = load ptr, ptr %351, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %363, label %354

354:                                              ; preds = %350
  %355 = call ptr %352(ptr noundef nonnull %343, ptr noundef %344, i32 noundef %345, i32 noundef 2, i32 noundef 3, ptr noundef null) #11
  %356 = icmp eq ptr %355, null
  br i1 %356, label %363, label %357

357:                                              ; preds = %354
  %358 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %355, i32 0, i32 6
  store ptr @omap2_mcspi_rx_callback, ptr %358, align 4
  %359 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %355, i32 0, i32 8
  store ptr %1, ptr %359, align 4
  %360 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %355, i32 0, i32 4
  %361 = load ptr, ptr %360, align 4
  %362 = call i32 %361(ptr noundef nonnull %355) #11
  br label %363

363:                                              ; preds = %357, %354, %350, %347, %342
  %364 = load ptr, ptr %310, align 4
  %365 = load ptr, ptr %364, align 4
  %366 = getelementptr inbounds %struct.dma_device, ptr %365, i32 0, i32 50
  %367 = load ptr, ptr %366, align 4
  call void %367(ptr noundef %364) #11
  %368 = load ptr, ptr %17, align 8
  %369 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %368, i32 0, i32 5
  %370 = load i32, ptr %369, align 4
  %371 = or i32 %370, 32768
  store i32 %371, ptr %369, align 4
  %372 = load ptr, ptr %17, align 8
  %373 = load ptr, ptr %372, align 4
  %374 = getelementptr i8, ptr %373, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %374, i32 %371) #11, !srcloc !12
  %375 = load ptr, ptr %17, align 8
  %376 = load ptr, ptr %375, align 4
  %377 = getelementptr i8, ptr %376, i32 44
  %378 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %377) #11, !srcloc !13
  %379 = getelementptr %struct.omap2_mcspi_dma, ptr %289, i32 %291, i32 3
  call void @wait_for_completion(ptr noundef %379) #11
  %380 = getelementptr inbounds %struct.omap2_mcspi, ptr %287, i32 0, i32 8
  %381 = load i8, ptr %380, align 4, !range !14
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %410, label %383

383:                                              ; preds = %363
  %384 = load ptr, ptr %310, align 4
  %385 = load ptr, ptr %384, align 4
  %386 = getelementptr inbounds %struct.dma_device, ptr %385, i32 0, i32 47
  %387 = load ptr, ptr %386, align 4
  %388 = icmp eq ptr %387, null
  br i1 %388, label %398, label %389

389:                                              ; preds = %383
  %390 = call i32 %387(ptr noundef %384) #11
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %398

392:                                              ; preds = %389
  %393 = load ptr, ptr %384, align 4
  %394 = getelementptr inbounds %struct.dma_device, ptr %393, i32 0, i32 48
  %395 = load ptr, ptr %394, align 4
  %396 = icmp eq ptr %395, null
  br i1 %396, label %398, label %397

397:                                              ; preds = %392
  call void %395(ptr noundef %384) #11
  br label %398

398:                                              ; preds = %397, %392, %389, %383
  %399 = load ptr, ptr %17, align 8
  %400 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %399, i32 0, i32 5
  %401 = load i32, ptr %400, align 4
  %402 = and i32 %401, -32769
  store i32 %402, ptr %400, align 4
  %403 = load ptr, ptr %17, align 8
  %404 = load ptr, ptr %403, align 4
  %405 = getelementptr i8, ptr %404, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %405, i32 %402) #11, !srcloc !12
  %406 = load ptr, ptr %17, align 8
  %407 = load ptr, ptr %406, align 4
  %408 = getelementptr i8, ptr %407, i32 44
  %409 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %408) #11, !srcloc !13
  br label %538

410:                                              ; preds = %363
  %411 = load ptr, ptr %5, align 8
  call void @kfree(ptr noundef %411) #11
  br i1 %328, label %415, label %412

412:                                              ; preds = %410
  %413 = getelementptr inbounds [2 x ptr], ptr %5, i32 0, i32 1
  %414 = load ptr, ptr %413, align 4
  call void @kfree(ptr noundef %414) #11
  br label %415

415:                                              ; preds = %412, %410
  %416 = load i32, ptr %293, align 4
  %417 = icmp sgt i32 %416, 0
  br i1 %417, label %538, label %418

418:                                              ; preds = %415
  %419 = load ptr, ptr %17, align 8
  %420 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %419, i32 0, i32 6
  %421 = load i32, ptr %420, align 4
  %422 = and i32 %421, -2
  store i32 %422, ptr %420, align 4
  %423 = load ptr, ptr %17, align 8
  %424 = load ptr, ptr %423, align 4
  %425 = getelementptr i8, ptr %424, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %425, i32 %422) #11, !srcloc !12
  %426 = load ptr, ptr %17, align 8
  %427 = load ptr, ptr %426, align 4
  %428 = getelementptr i8, ptr %427, i32 52
  %429 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %428) #11, !srcloc !13
  %430 = add i32 %309, -1
  br i1 %320, label %484, label %431

431:                                              ; preds = %418
  %432 = add i32 %309, -2
  %433 = load volatile i32, ptr @jiffies, align 64
  %434 = add i32 %433, 100
  %435 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #11, !srcloc !13
  %436 = and i32 %435, 1
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %450

438:                                              ; preds = %446, %431
  %439 = load volatile i32, ptr @jiffies, align 64
  %440 = sub i32 %434, %439
  %441 = icmp slt i32 %440, 0
  br i1 %441, label %442, label %446

442:                                              ; preds = %438
  %443 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #11, !srcloc !13
  %444 = and i32 %443, 1
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %468, label %450

446:                                              ; preds = %438
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %447 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #11, !srcloc !13
  %448 = and i32 %447, 1
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %438, label %450

450:                                              ; preds = %446, %442, %431
  %451 = load ptr, ptr %17, align 8
  %452 = load ptr, ptr %451, align 4
  %453 = getelementptr i8, ptr %452, i32 60
  %454 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %453) #11, !srcloc !13
  br i1 %301, label %455, label %459

455:                                              ; preds = %450
  %456 = trunc i32 %454 to i8
  %457 = load ptr, ptr %202, align 4
  %458 = getelementptr i8, ptr %457, i32 %432
  store i8 %456, ptr %458, align 1
  br label %484

459:                                              ; preds = %450
  %460 = icmp ult i32 %298, 17
  br i1 %460, label %461, label %465

461:                                              ; preds = %459
  %462 = trunc i32 %454 to i16
  %463 = load ptr, ptr %202, align 4
  %464 = getelementptr i16, ptr %463, i32 %432
  store i16 %462, ptr %464, align 2
  br label %484

465:                                              ; preds = %459
  %466 = load ptr, ptr %202, align 4
  %467 = getelementptr i32, ptr %466, i32 %432
  store i32 %454, ptr %467, align 4
  br label %484

468:                                              ; preds = %442
  %469 = icmp slt i32 %298, 17
  %470 = select i1 %469, i32 -4, i32 -8
  %471 = select i1 %301, i32 -2, i32 %470
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.13) #12
  %472 = add i32 %471, %292
  %473 = load ptr, ptr %17, align 8
  %474 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %473, i32 0, i32 6
  %475 = load i32, ptr %474, align 4
  %476 = or i32 %475, 1
  store i32 %476, ptr %474, align 4
  %477 = load ptr, ptr %17, align 8
  %478 = load ptr, ptr %477, align 4
  %479 = getelementptr i8, ptr %478, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %479, i32 %476) #11, !srcloc !12
  %480 = load ptr, ptr %17, align 8
  %481 = load ptr, ptr %480, align 4
  %482 = getelementptr i8, ptr %481, i32 52
  %483 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %482) #11, !srcloc !13
  br label %538

484:                                              ; preds = %465, %461, %455, %418
  %485 = load volatile i32, ptr @jiffies, align 64
  %486 = add i32 %485, 100
  %487 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #11, !srcloc !13
  %488 = and i32 %487, 1
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %502

490:                                              ; preds = %498, %484
  %491 = load volatile i32, ptr @jiffies, align 64
  %492 = sub i32 %486, %491
  %493 = icmp slt i32 %492, 0
  br i1 %493, label %494, label %498

494:                                              ; preds = %490
  %495 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #11, !srcloc !13
  %496 = and i32 %495, 1
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %520, label %502

498:                                              ; preds = %490
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %499 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #11, !srcloc !13
  %500 = and i32 %499, 1
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %490, label %502

502:                                              ; preds = %498, %494, %484
  %503 = load ptr, ptr %17, align 8
  %504 = load ptr, ptr %503, align 4
  %505 = getelementptr i8, ptr %504, i32 60
  %506 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %505) #11, !srcloc !13
  br i1 %301, label %507, label %511

507:                                              ; preds = %502
  %508 = trunc i32 %506 to i8
  %509 = load ptr, ptr %202, align 4
  %510 = getelementptr i8, ptr %509, i32 %430
  store i8 %508, ptr %510, align 1
  br label %525

511:                                              ; preds = %502
  %512 = icmp ult i32 %298, 17
  br i1 %512, label %513, label %517

513:                                              ; preds = %511
  %514 = trunc i32 %506 to i16
  %515 = load ptr, ptr %202, align 4
  %516 = getelementptr i16, ptr %515, i32 %430
  store i16 %514, ptr %516, align 2
  br label %525

517:                                              ; preds = %511
  %518 = load ptr, ptr %202, align 4
  %519 = getelementptr i32, ptr %518, i32 %430
  store i32 %506, ptr %519, align 4
  br label %525

520:                                              ; preds = %494
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.14) #12
  %521 = icmp slt i32 %298, 17
  %522 = select i1 %521, i32 -2, i32 -4
  %523 = select i1 %301, i32 -1, i32 %522
  %524 = add i32 %523, %292
  br label %525

525:                                              ; preds = %520, %517, %513, %507
  %526 = phi i32 [ %524, %520 ], [ %292, %513 ], [ %292, %517 ], [ %292, %507 ]
  %527 = load ptr, ptr %17, align 8
  %528 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %527, i32 0, i32 6
  %529 = load i32, ptr %528, align 4
  %530 = or i32 %529, 1
  store i32 %530, ptr %528, align 4
  %531 = load ptr, ptr %17, align 8
  %532 = load ptr, ptr %531, align 4
  %533 = getelementptr i8, ptr %532, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %533, i32 %530) #11, !srcloc !12
  %534 = load ptr, ptr %17, align 8
  %535 = load ptr, ptr %534, align 4
  %536 = getelementptr i8, ptr %535, i32 52
  %537 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %536) #11, !srcloc !13
  br label %538

538:                                              ; preds = %525, %468, %415, %398, %341
  %539 = phi i32 [ 0, %341 ], [ 0, %398 ], [ %472, %468 ], [ %526, %525 ], [ %292, %415 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #11
  br label %540

540:                                              ; preds = %538, %272
  %541 = phi i32 [ %539, %538 ], [ %197, %272 ]
  br i1 %208, label %1117, label %542

542:                                              ; preds = %540
  call void @wait_for_completion(ptr noundef %206) #11
  %543 = load i8, ptr %205, align 4, !range !14
  %544 = icmp eq i8 %543, 0
  br i1 %544, label %572, label %545

545:                                              ; preds = %542
  %546 = load ptr, ptr %190, align 4
  %547 = load ptr, ptr %546, align 4
  %548 = getelementptr inbounds %struct.dma_device, ptr %547, i32 0, i32 47
  %549 = load ptr, ptr %548, align 4
  %550 = icmp eq ptr %549, null
  br i1 %550, label %560, label %551

551:                                              ; preds = %545
  %552 = call i32 %549(ptr noundef %546) #11
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %560

554:                                              ; preds = %551
  %555 = load ptr, ptr %546, align 4
  %556 = getelementptr inbounds %struct.dma_device, ptr %555, i32 0, i32 48
  %557 = load ptr, ptr %556, align 4
  %558 = icmp eq ptr %557, null
  br i1 %558, label %560, label %559

559:                                              ; preds = %554
  call void %557(ptr noundef %546) #11
  br label %560

560:                                              ; preds = %559, %554, %551, %545
  %561 = load ptr, ptr %17, align 8
  %562 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %561, i32 0, i32 5
  %563 = load i32, ptr %562, align 4
  %564 = and i32 %563, -16385
  store i32 %564, ptr %562, align 4
  %565 = load ptr, ptr %17, align 8
  %566 = load ptr, ptr %565, align 4
  %567 = getelementptr i8, ptr %566, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %567, i32 %564) #11, !srcloc !12
  %568 = load ptr, ptr %17, align 8
  %569 = load ptr, ptr %568, align 4
  %570 = getelementptr i8, ptr %569, i32 44
  %571 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %570) #11, !srcloc !13
  br label %1117

572:                                              ; preds = %542
  %573 = getelementptr inbounds %struct.omap2_mcspi, ptr %185, i32 0, i32 1
  %574 = getelementptr inbounds %struct.omap2_mcspi, ptr %185, i32 0, i32 7
  %575 = load i32, ptr %574, align 4
  %576 = icmp sgt i32 %575, 0
  br i1 %576, label %577, label %606

577:                                              ; preds = %572
  %578 = getelementptr inbounds %struct.omap2_mcspi, ptr %185, i32 0, i32 2
  %579 = load ptr, ptr %578, align 4
  %580 = getelementptr i8, ptr %579, i32 24
  %581 = load volatile i32, ptr @jiffies, align 64
  %582 = add i32 %581, 100
  %583 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %580) #11, !srcloc !13
  %584 = and i32 %583, 131072
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %599

586:                                              ; preds = %594, %577
  %587 = load volatile i32, ptr @jiffies, align 64
  %588 = sub i32 %582, %587
  %589 = icmp slt i32 %588, 0
  br i1 %589, label %590, label %594

590:                                              ; preds = %586
  %591 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %580) #11, !srcloc !13
  %592 = and i32 %591, 131072
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %598, label %599

594:                                              ; preds = %586
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %595 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %580) #11, !srcloc !13
  %596 = and i32 %595, 131072
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %586, label %599

598:                                              ; preds = %590
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8) #12
  br label %599

599:                                              ; preds = %598, %594, %590, %577
  %600 = load ptr, ptr %573, align 4
  %601 = getelementptr inbounds %struct.device, ptr %600, i32 0, i32 8
  %602 = load ptr, ptr %601, align 8
  %603 = getelementptr inbounds %struct.omap2_mcspi, ptr %602, i32 0, i32 2
  %604 = load ptr, ptr %603, align 4
  %605 = getelementptr i8, ptr %604, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %605, i32 131072) #11, !srcloc !12
  br label %606

606:                                              ; preds = %599, %572
  br i1 %273, label %607, label %1117

607:                                              ; preds = %606
  %608 = load ptr, ptr %181, align 4
  %609 = getelementptr i8, ptr %608, i32 48
  %610 = load i32, ptr %574, align 4
  %611 = icmp sgt i32 %610, 0
  %612 = load volatile i32, ptr @jiffies, align 64
  %613 = add i32 %612, 100
  %614 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %609) #11
  br i1 %611, label %615, label %631

615:                                              ; preds = %607
  %616 = and i32 %614, 8
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %618, label %647

618:                                              ; preds = %626, %615
  %619 = load volatile i32, ptr @jiffies, align 64
  %620 = sub i32 %613, %619
  %621 = icmp slt i32 %620, 0
  br i1 %621, label %622, label %626

622:                                              ; preds = %618
  %623 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %609) #11, !srcloc !13
  %624 = and i32 %623, 8
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %630, label %647

626:                                              ; preds = %618
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %627 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %609) #11, !srcloc !13
  %628 = and i32 %627, 8
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %618, label %647

630:                                              ; preds = %622
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.9) #12
  br label %1117

631:                                              ; preds = %607
  %632 = and i32 %614, 2
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %634, label %647

634:                                              ; preds = %642, %631
  %635 = load volatile i32, ptr @jiffies, align 64
  %636 = sub i32 %613, %635
  %637 = icmp slt i32 %636, 0
  br i1 %637, label %638, label %642

638:                                              ; preds = %634
  %639 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %609) #11, !srcloc !13
  %640 = and i32 %639, 2
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %646, label %647

642:                                              ; preds = %634
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %643 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %609) #11, !srcloc !13
  %644 = and i32 %643, 2
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %634, label %647

646:                                              ; preds = %638
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10) #12
  br label %1117

647:                                              ; preds = %642, %638, %631, %626, %622, %615
  %648 = load volatile i32, ptr @jiffies, align 64
  %649 = add i32 %648, 100
  %650 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %609) #11, !srcloc !13
  %651 = and i32 %650, 4
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %653, label %1117

653:                                              ; preds = %661, %647
  %654 = load volatile i32, ptr @jiffies, align 64
  %655 = sub i32 %649, %654
  %656 = icmp slt i32 %655, 0
  br i1 %656, label %657, label %661

657:                                              ; preds = %653
  %658 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %609) #11, !srcloc !13
  %659 = and i32 %658, 4
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %665, label %1117

661:                                              ; preds = %653
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %662 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %609) #11, !srcloc !13
  %663 = and i32 %662, 4
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %653, label %1117

665:                                              ; preds = %657
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.11) #12
  br label %1117

666:                                              ; preds = %176, %172, %169, %166
  %667 = load ptr, ptr %17, align 8
  %668 = load ptr, ptr %667, align 4
  %669 = load i32, ptr %130, align 4
  %670 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %667, i32 0, i32 2
  %671 = load i32, ptr %670, align 4
  %672 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %667, i32 0, i32 5
  %673 = load i32, ptr %672, align 4
  %674 = getelementptr i8, ptr %668, i32 56
  %675 = getelementptr i8, ptr %668, i32 60
  %676 = getelementptr i8, ptr %668, i32 48
  %677 = ashr i32 %671, 3
  %678 = icmp ult i32 %669, %677
  br i1 %678, label %1117, label %679

679:                                              ; preds = %666
  %680 = icmp slt i32 %671, 9
  br i1 %680, label %681, label %803

681:                                              ; preds = %679
  %682 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %683 = load ptr, ptr %682, align 4
  %684 = load ptr, ptr %2, align 4
  %685 = and i32 %673, 524288
  %686 = icmp eq i32 %685, 0
  br label %687

687:                                              ; preds = %799, %681
  %688 = phi ptr [ %684, %681 ], [ %717, %799 ]
  %689 = phi ptr [ %683, %681 ], [ %800, %799 ]
  %690 = phi i32 [ %669, %681 ], [ %801, %799 ]
  %691 = add i32 %690, -1
  %692 = icmp eq ptr %688, null
  br i1 %692, label %716, label %693

693:                                              ; preds = %687
  %694 = load volatile i32, ptr @jiffies, align 64
  %695 = add i32 %694, 100
  %696 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %697 = and i32 %696, 2
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %699, label %712

699:                                              ; preds = %707, %693
  %700 = load volatile i32, ptr @jiffies, align 64
  %701 = sub i32 %695, %700
  %702 = icmp slt i32 %701, 0
  br i1 %702, label %703, label %707

703:                                              ; preds = %699
  %704 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %705 = and i32 %704, 2
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %711, label %712

707:                                              ; preds = %699
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %708 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %709 = and i32 %708, 2
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %699, label %712

711:                                              ; preds = %703
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10) #12
  br label %1103

712:                                              ; preds = %707, %703, %693
  %713 = getelementptr i8, ptr %688, i32 1
  %714 = load i8, ptr %688, align 1
  %715 = zext i8 %714 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %674, i32 %715) #11, !srcloc !12
  br label %716

716:                                              ; preds = %712, %687
  %717 = phi ptr [ %713, %712 ], [ null, %687 ]
  %718 = icmp eq ptr %689, null
  br i1 %718, label %799, label %719

719:                                              ; preds = %716
  %720 = load volatile i32, ptr @jiffies, align 64
  %721 = add i32 %720, 100
  %722 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %723 = and i32 %722, 1
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %738

725:                                              ; preds = %733, %719
  %726 = load volatile i32, ptr @jiffies, align 64
  %727 = sub i32 %721, %726
  %728 = icmp slt i32 %727, 0
  br i1 %728, label %729, label %733

729:                                              ; preds = %725
  %730 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %731 = and i32 %730, 1
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %737, label %738

733:                                              ; preds = %725
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %734 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %735 = and i32 %734, 1
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %725, label %738

737:                                              ; preds = %729
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15) #12
  br label %1103

738:                                              ; preds = %733, %729, %719
  %739 = icmp eq i32 %691, 1
  %740 = icmp eq ptr %717, null
  %741 = select i1 %739, i1 %740, i1 false
  %742 = xor i1 %741, true
  %743 = select i1 %742, i1 true, i1 %686
  br i1 %743, label %778, label %744

744:                                              ; preds = %738
  %745 = load ptr, ptr %17, align 8
  %746 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %745, i32 0, i32 6
  %747 = load i32, ptr %746, align 4
  %748 = and i32 %747, -2
  store i32 %748, ptr %746, align 4
  %749 = load ptr, ptr %17, align 8
  %750 = load ptr, ptr %749, align 4
  %751 = getelementptr i8, ptr %750, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %751, i32 %748) #11, !srcloc !12
  %752 = load ptr, ptr %17, align 8
  %753 = load ptr, ptr %752, align 4
  %754 = getelementptr i8, ptr %753, i32 52
  %755 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %754) #11, !srcloc !13
  %756 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %675) #11, !srcloc !13
  %757 = trunc i32 %756 to i8
  store i8 %757, ptr %689, align 1
  %758 = load volatile i32, ptr @jiffies, align 64
  %759 = add i32 %758, 100
  %760 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %761 = and i32 %760, 1
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %763, label %776

763:                                              ; preds = %771, %744
  %764 = load volatile i32, ptr @jiffies, align 64
  %765 = sub i32 %759, %764
  %766 = icmp slt i32 %765, 0
  br i1 %766, label %767, label %771

767:                                              ; preds = %763
  %768 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %769 = and i32 %768, 1
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %775, label %776

771:                                              ; preds = %763
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %772 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %773 = and i32 %772, 1
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %763, label %776

775:                                              ; preds = %767
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15) #12
  br label %1103

776:                                              ; preds = %771, %767, %744
  %777 = getelementptr i8, ptr %689, i32 1
  br label %793

778:                                              ; preds = %738
  %779 = icmp eq i32 %691, 0
  %780 = select i1 %779, i1 %740, i1 false
  br i1 %780, label %781, label %793

781:                                              ; preds = %778
  %782 = load ptr, ptr %17, align 8
  %783 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %782, i32 0, i32 6
  %784 = load i32, ptr %783, align 4
  %785 = and i32 %784, -2
  store i32 %785, ptr %783, align 4
  %786 = load ptr, ptr %17, align 8
  %787 = load ptr, ptr %786, align 4
  %788 = getelementptr i8, ptr %787, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %788, i32 %785) #11, !srcloc !12
  %789 = load ptr, ptr %17, align 8
  %790 = load ptr, ptr %789, align 4
  %791 = getelementptr i8, ptr %790, i32 52
  %792 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %791) #11, !srcloc !13
  br label %793

793:                                              ; preds = %781, %778, %776
  %794 = phi ptr [ %777, %776 ], [ %689, %781 ], [ %689, %778 ]
  %795 = phi i32 [ 0, %776 ], [ 0, %781 ], [ %691, %778 ]
  %796 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %675) #11, !srcloc !13
  %797 = trunc i32 %796 to i8
  %798 = getelementptr i8, ptr %794, i32 1
  store i8 %797, ptr %794, align 1
  br label %799

799:                                              ; preds = %793, %716
  %800 = phi ptr [ %798, %793 ], [ null, %716 ]
  %801 = phi i32 [ %795, %793 ], [ %691, %716 ]
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %1048, label %687

803:                                              ; preds = %679
  %804 = icmp ult i32 %671, 17
  br i1 %804, label %805, label %927

805:                                              ; preds = %803
  %806 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %807 = load ptr, ptr %806, align 4
  %808 = load ptr, ptr %2, align 4
  %809 = and i32 %673, 524288
  %810 = icmp eq i32 %809, 0
  br label %811

811:                                              ; preds = %923, %805
  %812 = phi ptr [ %807, %805 ], [ %924, %923 ]
  %813 = phi ptr [ %808, %805 ], [ %841, %923 ]
  %814 = phi i32 [ %669, %805 ], [ %925, %923 ]
  %815 = add i32 %814, -2
  %816 = icmp eq ptr %813, null
  br i1 %816, label %840, label %817

817:                                              ; preds = %811
  %818 = load volatile i32, ptr @jiffies, align 64
  %819 = add i32 %818, 100
  %820 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %821 = and i32 %820, 2
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %823, label %836

823:                                              ; preds = %831, %817
  %824 = load volatile i32, ptr @jiffies, align 64
  %825 = sub i32 %819, %824
  %826 = icmp slt i32 %825, 0
  br i1 %826, label %827, label %831

827:                                              ; preds = %823
  %828 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %829 = and i32 %828, 2
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %835, label %836

831:                                              ; preds = %823
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %832 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %833 = and i32 %832, 2
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %823, label %836

835:                                              ; preds = %827
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10) #12
  br label %1103

836:                                              ; preds = %831, %827, %817
  %837 = getelementptr i16, ptr %813, i32 1
  %838 = load i16, ptr %813, align 2
  %839 = zext i16 %838 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %674, i32 %839) #11, !srcloc !12
  br label %840

840:                                              ; preds = %836, %811
  %841 = phi ptr [ %837, %836 ], [ null, %811 ]
  %842 = icmp eq ptr %812, null
  br i1 %842, label %923, label %843

843:                                              ; preds = %840
  %844 = load volatile i32, ptr @jiffies, align 64
  %845 = add i32 %844, 100
  %846 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %847 = and i32 %846, 1
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %849, label %862

849:                                              ; preds = %857, %843
  %850 = load volatile i32, ptr @jiffies, align 64
  %851 = sub i32 %845, %850
  %852 = icmp slt i32 %851, 0
  br i1 %852, label %853, label %857

853:                                              ; preds = %849
  %854 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %855 = and i32 %854, 1
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %861, label %862

857:                                              ; preds = %849
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %858 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %859 = and i32 %858, 1
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %849, label %862

861:                                              ; preds = %853
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15) #12
  br label %1103

862:                                              ; preds = %857, %853, %843
  %863 = icmp eq i32 %815, 2
  %864 = icmp eq ptr %841, null
  %865 = select i1 %863, i1 %864, i1 false
  %866 = xor i1 %865, true
  %867 = select i1 %866, i1 true, i1 %810
  br i1 %867, label %902, label %868

868:                                              ; preds = %862
  %869 = load ptr, ptr %17, align 8
  %870 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %869, i32 0, i32 6
  %871 = load i32, ptr %870, align 4
  %872 = and i32 %871, -2
  store i32 %872, ptr %870, align 4
  %873 = load ptr, ptr %17, align 8
  %874 = load ptr, ptr %873, align 4
  %875 = getelementptr i8, ptr %874, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %875, i32 %872) #11, !srcloc !12
  %876 = load ptr, ptr %17, align 8
  %877 = load ptr, ptr %876, align 4
  %878 = getelementptr i8, ptr %877, i32 52
  %879 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %878) #11, !srcloc !13
  %880 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %675) #11, !srcloc !13
  %881 = trunc i32 %880 to i16
  store i16 %881, ptr %812, align 2
  %882 = load volatile i32, ptr @jiffies, align 64
  %883 = add i32 %882, 100
  %884 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %885 = and i32 %884, 1
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %887, label %900

887:                                              ; preds = %895, %868
  %888 = load volatile i32, ptr @jiffies, align 64
  %889 = sub i32 %883, %888
  %890 = icmp slt i32 %889, 0
  br i1 %890, label %891, label %895

891:                                              ; preds = %887
  %892 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %893 = and i32 %892, 1
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %899, label %900

895:                                              ; preds = %887
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %896 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %897 = and i32 %896, 1
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %887, label %900

899:                                              ; preds = %891
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15) #12
  br label %1103

900:                                              ; preds = %895, %891, %868
  %901 = getelementptr i16, ptr %812, i32 1
  br label %917

902:                                              ; preds = %862
  %903 = icmp eq i32 %815, 0
  %904 = select i1 %903, i1 %864, i1 false
  br i1 %904, label %905, label %917

905:                                              ; preds = %902
  %906 = load ptr, ptr %17, align 8
  %907 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %906, i32 0, i32 6
  %908 = load i32, ptr %907, align 4
  %909 = and i32 %908, -2
  store i32 %909, ptr %907, align 4
  %910 = load ptr, ptr %17, align 8
  %911 = load ptr, ptr %910, align 4
  %912 = getelementptr i8, ptr %911, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %912, i32 %909) #11, !srcloc !12
  %913 = load ptr, ptr %17, align 8
  %914 = load ptr, ptr %913, align 4
  %915 = getelementptr i8, ptr %914, i32 52
  %916 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %915) #11, !srcloc !13
  br label %917

917:                                              ; preds = %905, %902, %900
  %918 = phi ptr [ %901, %900 ], [ %812, %905 ], [ %812, %902 ]
  %919 = phi i32 [ 0, %900 ], [ 0, %905 ], [ %815, %902 ]
  %920 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %675) #11, !srcloc !13
  %921 = trunc i32 %920 to i16
  %922 = getelementptr i16, ptr %918, i32 1
  store i16 %921, ptr %918, align 2
  br label %923

923:                                              ; preds = %917, %840
  %924 = phi ptr [ %922, %917 ], [ null, %840 ]
  %925 = phi i32 [ %919, %917 ], [ %815, %840 ]
  %926 = icmp ugt i32 %925, 1
  br i1 %926, label %811, label %1048

927:                                              ; preds = %803
  %928 = icmp ult i32 %671, 33
  br i1 %928, label %929, label %1048

929:                                              ; preds = %927
  %930 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %931 = load ptr, ptr %930, align 4
  %932 = load ptr, ptr %2, align 4
  %933 = and i32 %673, 524288
  %934 = icmp eq i32 %933, 0
  br label %935

935:                                              ; preds = %1044, %929
  %936 = phi ptr [ %931, %929 ], [ %1045, %1044 ]
  %937 = phi ptr [ %932, %929 ], [ %964, %1044 ]
  %938 = phi i32 [ %669, %929 ], [ %1046, %1044 ]
  %939 = add i32 %938, -4
  %940 = icmp eq ptr %937, null
  br i1 %940, label %963, label %941

941:                                              ; preds = %935
  %942 = load volatile i32, ptr @jiffies, align 64
  %943 = add i32 %942, 100
  %944 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %945 = and i32 %944, 2
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %947, label %960

947:                                              ; preds = %955, %941
  %948 = load volatile i32, ptr @jiffies, align 64
  %949 = sub i32 %943, %948
  %950 = icmp slt i32 %949, 0
  br i1 %950, label %951, label %955

951:                                              ; preds = %947
  %952 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %953 = and i32 %952, 2
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %959, label %960

955:                                              ; preds = %947
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %956 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %957 = and i32 %956, 2
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %947, label %960

959:                                              ; preds = %951
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10) #12
  br label %1103

960:                                              ; preds = %955, %951, %941
  %961 = getelementptr i32, ptr %937, i32 1
  %962 = load i32, ptr %937, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %674, i32 %962) #11, !srcloc !12
  br label %963

963:                                              ; preds = %960, %935
  %964 = phi ptr [ %961, %960 ], [ null, %935 ]
  %965 = icmp eq ptr %936, null
  br i1 %965, label %1044, label %966

966:                                              ; preds = %963
  %967 = load volatile i32, ptr @jiffies, align 64
  %968 = add i32 %967, 100
  %969 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %970 = and i32 %969, 1
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %972, label %985

972:                                              ; preds = %980, %966
  %973 = load volatile i32, ptr @jiffies, align 64
  %974 = sub i32 %968, %973
  %975 = icmp slt i32 %974, 0
  br i1 %975, label %976, label %980

976:                                              ; preds = %972
  %977 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %978 = and i32 %977, 1
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %984, label %985

980:                                              ; preds = %972
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %981 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %982 = and i32 %981, 1
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %972, label %985

984:                                              ; preds = %976
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15) #12
  br label %1103

985:                                              ; preds = %980, %976, %966
  %986 = icmp eq i32 %939, 4
  %987 = icmp eq ptr %964, null
  %988 = select i1 %986, i1 %987, i1 false
  %989 = xor i1 %988, true
  %990 = select i1 %989, i1 true, i1 %934
  br i1 %990, label %1024, label %991

991:                                              ; preds = %985
  %992 = load ptr, ptr %17, align 8
  %993 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %992, i32 0, i32 6
  %994 = load i32, ptr %993, align 4
  %995 = and i32 %994, -2
  store i32 %995, ptr %993, align 4
  %996 = load ptr, ptr %17, align 8
  %997 = load ptr, ptr %996, align 4
  %998 = getelementptr i8, ptr %997, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %998, i32 %995) #11, !srcloc !12
  %999 = load ptr, ptr %17, align 8
  %1000 = load ptr, ptr %999, align 4
  %1001 = getelementptr i8, ptr %1000, i32 52
  %1002 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1001) #11, !srcloc !13
  %1003 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %675) #11, !srcloc !13
  store i32 %1003, ptr %936, align 4
  %1004 = load volatile i32, ptr @jiffies, align 64
  %1005 = add i32 %1004, 100
  %1006 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %1007 = and i32 %1006, 1
  %1008 = icmp eq i32 %1007, 0
  br i1 %1008, label %1009, label %1022

1009:                                             ; preds = %1017, %991
  %1010 = load volatile i32, ptr @jiffies, align 64
  %1011 = sub i32 %1005, %1010
  %1012 = icmp slt i32 %1011, 0
  br i1 %1012, label %1013, label %1017

1013:                                             ; preds = %1009
  %1014 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %1015 = and i32 %1014, 1
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1021, label %1022

1017:                                             ; preds = %1009
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %1018 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %1019 = and i32 %1018, 1
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1009, label %1022

1021:                                             ; preds = %1013
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15) #12
  br label %1103

1022:                                             ; preds = %1017, %1013, %991
  %1023 = getelementptr i32, ptr %936, i32 1
  br label %1039

1024:                                             ; preds = %985
  %1025 = icmp eq i32 %939, 0
  %1026 = select i1 %1025, i1 %987, i1 false
  br i1 %1026, label %1027, label %1039

1027:                                             ; preds = %1024
  %1028 = load ptr, ptr %17, align 8
  %1029 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %1028, i32 0, i32 6
  %1030 = load i32, ptr %1029, align 4
  %1031 = and i32 %1030, -2
  store i32 %1031, ptr %1029, align 4
  %1032 = load ptr, ptr %17, align 8
  %1033 = load ptr, ptr %1032, align 4
  %1034 = getelementptr i8, ptr %1033, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1034, i32 %1031) #11, !srcloc !12
  %1035 = load ptr, ptr %17, align 8
  %1036 = load ptr, ptr %1035, align 4
  %1037 = getelementptr i8, ptr %1036, i32 52
  %1038 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1037) #11, !srcloc !13
  br label %1039

1039:                                             ; preds = %1027, %1024, %1022
  %1040 = phi ptr [ %1023, %1022 ], [ %936, %1027 ], [ %936, %1024 ]
  %1041 = phi i32 [ 0, %1022 ], [ 0, %1027 ], [ %939, %1024 ]
  %1042 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %675) #11, !srcloc !13
  %1043 = getelementptr i32, ptr %1040, i32 1
  store i32 %1042, ptr %1040, align 4
  br label %1044

1044:                                             ; preds = %1039, %963
  %1045 = phi ptr [ %1043, %1039 ], [ null, %963 ]
  %1046 = phi i32 [ %1041, %1039 ], [ %939, %963 ]
  %1047 = icmp ugt i32 %1046, 3
  br i1 %1047, label %935, label %1048

1048:                                             ; preds = %1044, %927, %923, %799
  %1049 = phi i32 [ %669, %927 ], [ 0, %799 ], [ %925, %923 ], [ %1046, %1044 ]
  %1050 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %1051 = load ptr, ptr %1050, align 4
  %1052 = icmp eq ptr %1051, null
  br i1 %1052, label %1053, label %1103

1053:                                             ; preds = %1048
  %1054 = load volatile i32, ptr @jiffies, align 64
  %1055 = add i32 %1054, 100
  %1056 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %1057 = and i32 %1056, 2
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1059, label %1071

1059:                                             ; preds = %1067, %1053
  %1060 = load volatile i32, ptr @jiffies, align 64
  %1061 = sub i32 %1055, %1060
  %1062 = icmp slt i32 %1061, 0
  br i1 %1062, label %1063, label %1067

1063:                                             ; preds = %1059
  %1064 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %1065 = and i32 %1064, 2
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1089, label %1071

1067:                                             ; preds = %1059
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %1068 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %1069 = and i32 %1068, 2
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1059, label %1071

1071:                                             ; preds = %1067, %1063, %1053
  %1072 = load volatile i32, ptr @jiffies, align 64
  %1073 = add i32 %1072, 100
  %1074 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %1075 = and i32 %1074, 4
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %1077, label %1091

1077:                                             ; preds = %1085, %1071
  %1078 = load volatile i32, ptr @jiffies, align 64
  %1079 = sub i32 %1073, %1078
  %1080 = icmp slt i32 %1079, 0
  br i1 %1080, label %1081, label %1085

1081:                                             ; preds = %1077
  %1082 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %1083 = and i32 %1082, 4
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1089, label %1091

1085:                                             ; preds = %1077
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %1086 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %676) #11, !srcloc !13
  %1087 = and i32 %1086, 4
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1077, label %1091

1089:                                             ; preds = %1081, %1063
  %1090 = phi ptr [ @.str.10, %1063 ], [ @.str.11, %1081 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull %1090) #12
  br label %1091

1091:                                             ; preds = %1089, %1085, %1081, %1071
  %1092 = load ptr, ptr %17, align 8
  %1093 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %1092, i32 0, i32 6
  %1094 = load i32, ptr %1093, align 4
  %1095 = and i32 %1094, -2
  store i32 %1095, ptr %1093, align 4
  %1096 = load ptr, ptr %17, align 8
  %1097 = load ptr, ptr %1096, align 4
  %1098 = getelementptr i8, ptr %1097, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1098, i32 %1095) #11, !srcloc !12
  %1099 = load ptr, ptr %17, align 8
  %1100 = load ptr, ptr %1099, align 4
  %1101 = getelementptr i8, ptr %1100, i32 52
  %1102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1101) #11, !srcloc !13
  br label %1103

1103:                                             ; preds = %1091, %1048, %1021, %984, %959, %899, %861, %835, %775, %737, %711
  %1104 = phi i32 [ %1049, %1091 ], [ %1049, %1048 ], [ 1, %775 ], [ %691, %737 ], [ %691, %711 ], [ 2, %899 ], [ %815, %861 ], [ %815, %835 ], [ 4, %1021 ], [ %939, %984 ], [ %939, %959 ]
  %1105 = load ptr, ptr %17, align 8
  %1106 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %1105, i32 0, i32 6
  %1107 = load i32, ptr %1106, align 4
  %1108 = or i32 %1107, 1
  store i32 %1108, ptr %1106, align 4
  %1109 = load ptr, ptr %17, align 8
  %1110 = load ptr, ptr %1109, align 4
  %1111 = getelementptr i8, ptr %1110, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1111, i32 %1108) #11, !srcloc !12
  %1112 = load ptr, ptr %17, align 8
  %1113 = load ptr, ptr %1112, align 4
  %1114 = getelementptr i8, ptr %1113, i32 52
  %1115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1114) #11, !srcloc !13
  %1116 = sub i32 %669, %1104
  br label %1117

1117:                                             ; preds = %1103, %666, %665, %661, %657, %647, %646, %630, %606, %560, %540
  %1118 = phi i32 [ 0, %560 ], [ %541, %665 ], [ %541, %646 ], [ %541, %630 ], [ %541, %657 ], [ %541, %647 ], [ %541, %606 ], [ %541, %540 ], [ %1116, %1103 ], [ 0, %666 ], [ %541, %661 ]
  %1119 = load i32, ptr %130, align 4
  %1120 = icmp eq i32 %1118, %1119
  br i1 %1120, label %1121, label %1161

1121:                                             ; preds = %1117, %121
  %1122 = load ptr, ptr %17, align 8
  %1123 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %1122, i32 0, i32 6
  %1124 = load i32, ptr %1123, align 4
  %1125 = and i32 %1124, -2
  store i32 %1125, ptr %1123, align 4
  %1126 = load ptr, ptr %17, align 8
  %1127 = load ptr, ptr %1126, align 4
  %1128 = getelementptr i8, ptr %1127, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1128, i32 %1125) #11, !srcloc !12
  %1129 = load ptr, ptr %17, align 8
  %1130 = load ptr, ptr %1129, align 4
  %1131 = getelementptr i8, ptr %1130, i32 52
  %1132 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1131) #11, !srcloc !13
  %1133 = getelementptr inbounds %struct.omap2_mcspi, ptr %10, i32 0, i32 7
  %1134 = load i32, ptr %1133, align 4
  %1135 = icmp sgt i32 %1134, 0
  br i1 %1135, label %1136, label %1161

1136:                                             ; preds = %1121
  %1137 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %1138 = load ptr, ptr %1137, align 4
  %1139 = load ptr, ptr %17, align 8
  %1140 = getelementptr inbounds %struct.device, ptr %1138, i32 0, i32 8
  %1141 = load ptr, ptr %1140, align 8
  %1142 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %1139, i32 0, i32 5
  %1143 = load i32, ptr %1142, align 4
  %1144 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %1145 = load ptr, ptr %1144, align 4
  %1146 = icmp eq ptr %1145, null
  %1147 = and i32 %1143, -268435457
  %1148 = select i1 %1146, i32 %1143, i32 %1147
  %1149 = load ptr, ptr %2, align 4
  %1150 = icmp eq ptr %1149, null
  %1151 = and i32 %1148, -134217729
  %1152 = select i1 %1150, i32 %1148, i32 %1151
  store i32 %1152, ptr %1142, align 4
  %1153 = load ptr, ptr %17, align 8
  %1154 = load ptr, ptr %1153, align 4
  %1155 = getelementptr i8, ptr %1154, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1155, i32 %1152) #11, !srcloc !12
  %1156 = load ptr, ptr %17, align 8
  %1157 = load ptr, ptr %1156, align 4
  %1158 = getelementptr i8, ptr %1157, i32 44
  %1159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1158) #11, !srcloc !13
  %1160 = getelementptr inbounds %struct.omap2_mcspi, ptr %1141, i32 0, i32 7
  store i32 0, ptr %1160, align 4
  br label %1161

1161:                                             ; preds = %1136, %1121, %1117
  %1162 = phi i32 [ -5, %1117 ], [ 0, %1136 ], [ 0, %1121 ]
  br i1 %70, label %1164, label %1163

1163:                                             ; preds = %1161
  call fastcc void @omap2_mcspi_setup_transfer(ptr noundef %1, ptr noundef null)
  br label %1164

1164:                                             ; preds = %1163, %1161
  %1165 = phi i32 [ 0, %1163 ], [ %1162, %1161 ]
  br i1 %71, label %1182, label %1166

1166:                                             ; preds = %1164
  %1167 = load i8, ptr %20, align 4
  %1168 = and i8 %1167, 2
  %1169 = icmp eq i8 %1168, 0
  br i1 %1169, label %1182, label %1170

1170:                                             ; preds = %1166
  %1171 = getelementptr inbounds %struct.omap2_mcspi, ptr %10, i32 0, i32 6
  %1172 = load i32, ptr %1171, align 4
  %1173 = or i32 %1172, 1
  %1174 = load ptr, ptr %9, align 8
  %1175 = getelementptr inbounds %struct.omap2_mcspi, ptr %1174, i32 0, i32 2
  %1176 = load ptr, ptr %1175, align 4
  %1177 = getelementptr i8, ptr %1176, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1177, i32 %1173) #11, !srcloc !12
  %1178 = load ptr, ptr %17, align 8
  %1179 = load ptr, ptr %1178, align 4
  %1180 = getelementptr i8, ptr %1179, i32 40
  %1181 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1180) #11, !srcloc !13
  store i32 %1181, ptr %1171, align 4
  br label %1182

1182:                                             ; preds = %1170, %1166, %1164
  %1183 = load ptr, ptr %17, align 8
  %1184 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %1183, i32 0, i32 6
  %1185 = load i32, ptr %1184, align 4
  %1186 = and i32 %1185, -2
  store i32 %1186, ptr %1184, align 4
  %1187 = load ptr, ptr %17, align 8
  %1188 = load ptr, ptr %1187, align 4
  %1189 = getelementptr i8, ptr %1188, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1189, i32 %1186) #11, !srcloc !12
  %1190 = load ptr, ptr %17, align 8
  %1191 = load ptr, ptr %1190, align 4
  %1192 = getelementptr i8, ptr %1191, i32 52
  %1193 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1192) #11, !srcloc !13
  %1194 = load ptr, ptr %37, align 8
  %1195 = icmp eq ptr %1194, null
  br i1 %1195, label %1200, label %1196

1196:                                             ; preds = %1182
  %1197 = load i32, ptr %21, align 8
  %1198 = and i32 %1197, 4
  %1199 = icmp eq i32 %1198, 0
  call void @omap2_mcspi_set_cs(ptr noundef %1, i1 noundef zeroext %1199)
  br label %1200

1200:                                             ; preds = %1196, %1182
  %1201 = getelementptr inbounds %struct.omap2_mcspi, ptr %10, i32 0, i32 7
  %1202 = load i32, ptr %1201, align 4
  %1203 = icmp sgt i32 %1202, 0
  %1204 = icmp ne ptr %2, null
  %1205 = and i1 %1204, %1203
  br i1 %1205, label %1206, label %1231

1206:                                             ; preds = %1200
  %1207 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %1208 = load ptr, ptr %1207, align 4
  %1209 = load ptr, ptr %17, align 8
  %1210 = getelementptr inbounds %struct.device, ptr %1208, i32 0, i32 8
  %1211 = load ptr, ptr %1210, align 8
  %1212 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %1209, i32 0, i32 5
  %1213 = load i32, ptr %1212, align 4
  %1214 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %1215 = load ptr, ptr %1214, align 4
  %1216 = icmp eq ptr %1215, null
  %1217 = and i32 %1213, -268435457
  %1218 = select i1 %1216, i32 %1213, i32 %1217
  %1219 = load ptr, ptr %2, align 4
  %1220 = icmp eq ptr %1219, null
  %1221 = and i32 %1218, -134217729
  %1222 = select i1 %1220, i32 %1218, i32 %1221
  store i32 %1222, ptr %1212, align 4
  %1223 = load ptr, ptr %17, align 8
  %1224 = load ptr, ptr %1223, align 4
  %1225 = getelementptr i8, ptr %1224, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1225, i32 %1222) #11, !srcloc !12
  %1226 = load ptr, ptr %17, align 8
  %1227 = load ptr, ptr %1226, align 4
  %1228 = getelementptr i8, ptr %1227, i32 44
  %1229 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1228) #11, !srcloc !13
  %1230 = getelementptr inbounds %struct.omap2_mcspi, ptr %1211, i32 0, i32 7
  store i32 0, ptr %1230, align 4
  br label %1231

1231:                                             ; preds = %1206, %1200
  ret i32 %1165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap2_mcspi_set_cs(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, %1
  %8 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %48, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.omap2_mcspi, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #11
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #11, !srcloc !9
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 0, i32 -1, ptr elementtype(i32) %22) #11, !srcloc !10
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  br label %27

27:                                               ; preds = %26, %20
  %28 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.16, i32 noundef %18) #12
  br label %48

29:                                               ; preds = %11
  %30 = load ptr, ptr %8, align 8
  %31 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %30, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, -1048577
  %34 = select i1 %7, i32 0, i32 1048576
  %35 = or i32 %33, %34
  store i32 %35, ptr %31, align 4
  %36 = load ptr, ptr %8, align 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %35) #11, !srcloc !12
  %39 = load ptr, ptr %8, align 8
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 44
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !13
  %43 = load ptr, ptr %16, align 4
  %44 = tail call i64 @ktime_get_mono_fast_ns() #11
  %45 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 11, i32 22
  store volatile i64 %44, ptr %45, align 8
  %46 = load ptr, ptr %16, align 4
  %47 = tail call i32 @__pm_runtime_suspend(ptr noundef %46, i32 noundef 13) #11
  br label %48

48:                                               ; preds = %29, %27, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap2_mcspi_cleanup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %3, i32 0, i32 4
  %7 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %3, i32 0, i32 4, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void @kfree(ptr noundef nonnull %3) #11
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_slave_abort(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 8
  store i8 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.omap2_mcspi_dma, ptr %5, i32 0, i32 3
  tail call void @complete(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.omap2_mcspi_dma, ptr %5, i32 0, i32 2
  tail call void @complete(ptr noundef %8) #11
  tail call void @complete(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @omap2_mcspi_max_xfer_size(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = getelementptr %struct.omap2_mcspi_dma, ptr %11, i32 %14, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %9, %1
  br label %19

19:                                               ; preds = %18, %9
  %20 = phi i32 [ -1, %18 ], [ %7, %9 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.omap2_mcspi, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.omap2_mcspi, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.omap2_mcspi, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #11, !srcloc !12
  %19 = and i32 %10, 131072
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  tail call void @complete(ptr noundef %1) #11
  br label %22

22:                                               ; preds = %21, %12, %2
  %23 = phi i32 [ 0, %2 ], [ 1, %21 ], [ 1, %12 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap2_mcspi_setup_transfer(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 5
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %1, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = zext i8 %6 to i32
  %16 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %4, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  br label %28

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 8
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i8 %6, i8 %19
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %4, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 %8, i32 %25
  br label %28

28:                                               ; preds = %17, %14
  %29 = phi i32 [ %22, %17 ], [ %15, %14 ]
  %30 = phi i32 [ %27, %17 ], [ %8, %14 ]
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 48000000)
  %32 = icmp ult i32 %31, 11718
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = icmp ult i32 %31, 5859
  %35 = icmp ult i32 %31, 2929
  %36 = select i1 %35, i32 15, i32 14
  %37 = select i1 %34, i32 %36, i32 13
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %38, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.omap2_mcspi, ptr %12, i32 0, i32 9
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %44 = load i32, ptr %43, align 8
  br label %68

45:                                               ; preds = %28
  %46 = add nuw nsw i32 %31, 47999999
  %47 = udiv i32 %46, %31
  %48 = add nsw i32 %47, -1
  %49 = and i32 %48, 15
  %50 = shl nuw nsw i32 %48, 4
  %51 = and i32 %50, -256
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %52, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.omap2_mcspi, ptr %12, i32 0, i32 9
  %56 = load i8, ptr %55, align 1
  %57 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %4, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, -65281
  %62 = or i32 %61, %51
  store i32 %62, ptr %59, align 4
  %63 = load ptr, ptr %3, align 8
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %62) #11, !srcloc !12
  %66 = load i32, ptr %57, align 8
  %67 = load ptr, ptr %3, align 8
  br label %68

68:                                               ; preds = %45, %33
  %69 = phi i32 [ %58, %45 ], [ %44, %33 ]
  %70 = phi ptr [ %57, %45 ], [ %43, %33 ]
  %71 = phi i8 [ %56, %45 ], [ %42, %33 ]
  %72 = phi i32 [ %54, %45 ], [ %40, %33 ]
  %73 = phi i32 [ 536870912, %45 ], [ 0, %33 ]
  %74 = phi i32 [ %49, %45 ], [ %37, %33 ]
  %75 = phi ptr [ %67, %45 ], [ %38, %33 ]
  %76 = phi i32 [ %66, %45 ], [ %44, %33 ]
  %77 = shl i32 %69, 4
  %78 = and i32 %77, 64
  %79 = and i32 %72, -537333760
  %80 = and i8 %71, 1
  %81 = icmp eq i8 %80, 0
  %82 = select i1 %81, i32 65536, i32 393216
  %83 = shl nuw nsw i32 %29, 7
  %84 = add nsw i32 %83, -128
  %85 = and i32 %84, -536871040
  %86 = or i32 %79, %85
  %87 = or i32 %86, %82
  %88 = shl nuw nsw i32 %74, 2
  %89 = and i32 %76, 2
  %90 = and i32 %76, 1
  %91 = or i32 %73, %88
  %92 = or i32 %91, %78
  %93 = or i32 %92, %87
  %94 = or i32 %93, %89
  %95 = or i32 %94, %90
  %96 = xor i32 %95, 64
  %97 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %75, i32 0, i32 5
  store i32 %96, ptr %97, align 4
  %98 = load ptr, ptr %3, align 8
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %96) #11, !srcloc !12
  %101 = load ptr, ptr %3, align 8
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 44
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #11, !srcloc !13
  %105 = load i32, ptr %70, align 8
  %106 = trunc i32 %105 to i16
  %107 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %4, i32 0, i32 3
  store i16 %106, ptr %107, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap2_mcspi_set_fifo(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %7, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %65, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %7, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp slt i32 %15, 9
  %17 = icmp slt i32 %15, 17
  %18 = select i1 %17, i32 2, i32 4
  %19 = select i1 %16, i32 1, i32 %18
  %20 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = add nsw i32 %19, -1
  %23 = and i32 %22, %21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %65

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %1, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %25
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ 64, %32 ], [ 32, %29 ]
  %35 = select i1 %17, i32 1, i32 2
  %36 = select i1 %16, i32 0, i32 %35
  %37 = lshr i32 %21, %36
  %38 = icmp ugt i32 %37, 65535
  br i1 %38, label %65, label %39

39:                                               ; preds = %33
  %40 = shl nuw i32 %37, 16
  %41 = or i32 %11, 268435456
  %42 = shl nuw nsw i32 %19, 8
  %43 = add nsw i32 %42, -256
  %44 = select i1 %28, i32 %11, i32 %41
  %45 = select i1 %28, i32 0, i32 %43
  %46 = or i32 %45, %40
  %47 = load ptr, ptr %1, align 4
  %48 = icmp eq ptr %47, null
  %49 = or i32 %44, 134217728
  %50 = select i1 %48, i32 %44, i32 %49
  %51 = select i1 %48, i32 0, i32 %22
  %52 = or i32 %46, %51
  %53 = getelementptr inbounds %struct.omap2_mcspi, ptr %9, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %52) #11, !srcloc !12
  %56 = load ptr, ptr %6, align 8
  %57 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %56, i32 0, i32 5
  store i32 %50, ptr %57, align 4
  %58 = load ptr, ptr %6, align 8
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %50) #11, !srcloc !12
  %61 = load ptr, ptr %6, align 8
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 44
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #11, !srcloc !13
  br label %82

65:                                               ; preds = %33, %13, %3
  %66 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  %69 = and i32 %11, -268435457
  %70 = select i1 %68, i32 %11, i32 %69
  %71 = load ptr, ptr %1, align 4
  %72 = icmp eq ptr %71, null
  %73 = and i32 %70, -134217729
  %74 = select i1 %72, i32 %70, i32 %73
  store i32 %74, ptr %10, align 4
  %75 = load ptr, ptr %6, align 8
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %74) #11, !srcloc !12
  %78 = load ptr, ptr %6, align 8
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 44
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #11, !srcloc !13
  br label %82

82:                                               ; preds = %65, %39
  %83 = phi i32 [ 0, %65 ], [ %34, %39 ]
  %84 = getelementptr inbounds %struct.omap2_mcspi, ptr %9, i32 0, i32 7
  store i32 %83, ptr %84, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap2_mcspi_tx_callback(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -16385
  store i32 %15, ptr %13, align 4
  %16 = load ptr, ptr %11, align 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #11, !srcloc !12
  %19 = load ptr, ptr %11, align 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 44
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !13
  %23 = getelementptr %struct.omap2_mcspi_dma, ptr %7, i32 %10, i32 2
  tail call void @complete(ptr noundef %23) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_split(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap2_mcspi_rx_callback(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -32769
  store i32 %15, ptr %13, align 4
  %16 = load ptr, ptr %11, align 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #11, !srcloc !12
  %19 = load ptr, ptr %11, align 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 44
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !13
  %23 = getelementptr %struct.omap2_mcspi_dma, ptr %7, i32 %10, i32 3
  tail call void @complete(ptr noundef %23) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.omap2_mcspi_suspend, i32 noundef %6) #12
  br label %11

11:                                               ; preds = %8, %1
  %12 = tail call i32 @spi_controller_suspend(ptr noundef %3) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.omap2_mcspi_suspend, i32 noundef %12) #12
  br label %17

17:                                               ; preds = %14, %11
  %18 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #11
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @spi_controller_resume(ptr noundef %3) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.omap2_mcspi_resume, i32 noundef %6) #12
  br label %11

11:                                               ; preds = %8, %1
  %12 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #11
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_mcspi_runtime_suspend(ptr noundef %0) #2 {
  %2 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %0) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.omap_mcspi_runtime_suspend, i32 noundef %2) #12
  br label %5

5:                                                ; preds = %4, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_mcspi_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 6
  %7 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.omap_mcspi_runtime_resume, i32 noundef %7) #12
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i32, ptr %6, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.omap2_mcspi, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %11) #11, !srcloc !12
  %16 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 6, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.omap2_mcspi, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #11, !srcloc !12
  %22 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 6, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %46, label %25

25:                                               ; preds = %43, %10
  %26 = phi ptr [ %44, %43 ], [ %23, %10 ]
  %27 = getelementptr i8, ptr %26, i32 -16
  %28 = getelementptr i8, ptr %26, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1048576
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = or i32 %29, 1048576
  store i32 %33, ptr %28, align 4
  %34 = load ptr, ptr %27, align 4
  %35 = getelementptr i8, ptr %34, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #11, !srcloc !12
  %36 = load i32, ptr %28, align 4
  %37 = and i32 %36, -1048577
  store i32 %37, ptr %28, align 4
  %38 = load ptr, ptr %27, align 4
  %39 = getelementptr i8, ptr %38, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #11, !srcloc !12
  br label %43

40:                                               ; preds = %25
  %41 = load ptr, ptr %27, align 4
  %42 = getelementptr i8, ptr %41, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %29) #11, !srcloc !12
  br label %43

43:                                               ; preds = %40, %32
  %44 = load ptr, ptr %26, align 4
  %45 = icmp eq ptr %44, %22
  br i1 %45, label %46, label %25

46:                                               ; preds = %43, %10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2147951714}
!9 = !{i64 450024, i64 2147939995, i64 2147940021, i64 2147940068, i64 2147940090, i64 2147940118, i64 2147940138}
!10 = !{i64 436593, i64 436618, i64 436640, i64 436656, i64 436668, i64 436688, i64 436712, i64 436728, i64 436740}
!11 = !{i64 2147951840}
!12 = !{i64 3089946}
!13 = !{i64 3090364}
!14 = !{i8 0, i8 2}
!15 = !{!"auto-init"}
!16 = !{i64 2153294381}
!17 = !{i64 2153294223}
