; ModuleID = '/llk/IR/drivers/spi/spi-atmel.c_pt.bc'
source_filename = "../drivers/spi/spi-atmel.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.atmel_spi = type { %struct.spinlock, i32, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr, ptr, %struct.completion, %struct.atmel_spi_caps, i8, i8, i8, i32, i8, i8 }
%struct.atmel_spi_caps = type { i8, i8, i8, i8 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@atmel_spi_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description252 = internal constant [50 x i8] c"description=Atmel AT32/AT91 SPI Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [34 x i8] c"author=Haavard Skinnemoen (Atmel)\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias255 = internal constant [25 x i8] c"alias=platform:atmel_spi\00", section ".modinfo", align 1
@atmel_spi_driver = internal global %struct.platform_driver { ptr @atmel_spi_probe, ptr @atmel_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_spi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"atmel_spi\00", align 1
@atmel_spi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @atmel_spi_suspend, ptr @atmel_spi_resume, ptr @atmel_spi_suspend, ptr @atmel_spi_resume, ptr @atmel_spi_suspend, ptr @atmel_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_spi_runtime_suspend, ptr @atmel_spi_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"spi_clk\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Atmel SPI Controller using PIO only\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"atmel,fifo-size\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Using FIFO (%u data)\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Atmel SPI Controller version 0x%x at 0x%08lx (irq %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"setup: non GPIO CS can't be active-high\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"No native CS available to support this GPIO CS\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"unable to use DMA, fallback to PIO\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"drivers/spi/spi-atmel.c\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"spi transfer timeout\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"overrun (%u/%u remaining)\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"timeout waiting for TXEMPTY\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = private unnamed_addr constant [44 x i8] c"setup: %d Hz too slow, scbr %u; min %ld Hz\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"setup: %d Hz too high, scbr %u; max %ld Hz\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"failed to configure tx dma channel\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"failed to configure rx dma channel\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"Using %s (tx) and %s (rx) for DMA transfers\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"overrun\0A\00", align 1
@atmel_spi_pio_interrupt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"IRQ not handled, pending = %x\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license254], section "llvm.metadata"

@__mod_of__atmel_spi_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @atmel_spi_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_spi_driver, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_spi_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_spi_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.dma_slave_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %3) #11
  %5 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %231, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %231, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.1) #11
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = ptrtoint ptr %11 to i32
  br label %231

15:                                               ; preds = %10
  %16 = tail call ptr @__spi_alloc_controller(ptr noundef %3, i32 noundef 92, i1 noundef zeroext false) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %231, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 56
  store i8 1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 5
  store i32 7, ptr %20, align 8
  %21 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 7
  store i32 65408, ptr %21, align 8
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 25
  store ptr %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 2
  store i16 %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 3
  store i16 4, ptr %29, align 2
  %30 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 20
  store ptr @atmel_spi_setup, ptr %30, align 4
  %31 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 10
  store i16 56, ptr %31, align 4
  %32 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 51
  store ptr @atmel_spi_one_transfer, ptr %32, align 4
  %33 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 50
  store ptr @atmel_spi_set_cs, ptr %33, align 8
  %34 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 23
  store ptr @atmel_spi_cleanup, ptr %34, align 8
  %35 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 36
  store i8 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 43
  store i32 65535, ptr %36, align 4
  %37 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 24
  store ptr @atmel_spi_can_dma, ptr %37, align 4
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %16, ptr %38, align 8
  %39 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %40 = load ptr, ptr %39, align 8
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.atmel_spi, ptr %40, i32 0, i32 6
  store ptr %0, ptr %41, align 4
  %42 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %5) #11
  %43 = getelementptr inbounds %struct.atmel_spi, ptr %40, i32 0, i32 3
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %18
  %46 = ptrtoint ptr %42 to i32
  br label %229

47:                                               ; preds = %18
  %48 = load i32, ptr %5, align 4
  %49 = getelementptr inbounds %struct.atmel_spi, ptr %40, i32 0, i32 2
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.atmel_spi, ptr %40, i32 0, i32 4
  store i32 %8, ptr %50, align 4
  %51 = getelementptr inbounds %struct.atmel_spi, ptr %40, i32 0, i32 5
  store ptr %11, ptr %51, align 4
  %52 = getelementptr inbounds %struct.atmel_spi, ptr %40, i32 0, i32 15
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.atmel_spi, ptr %40, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %53, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #11
  %54 = load ptr, ptr %43, align 4
  %55 = getelementptr i8, ptr %54, i32 252
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #11, !srcloc !8
  %57 = and i32 %56, 4095
  %58 = icmp ugt i32 %57, 289
  %59 = getelementptr inbounds %struct.atmel_spi, ptr %40, i32 0, i32 16
  %60 = zext i1 %58 to i8
  store i8 %60, ptr %59, align 4
  %61 = icmp ugt i32 %57, 527
  %62 = getelementptr inbounds %struct.atmel_spi, ptr %40, i32 0, i32 16, i32 1
  %63 = zext i1 %61 to i8
  store i8 %63, ptr %62, align 1
  %64 = icmp ugt i32 %57, 529
  %65 = getelementptr inbounds %struct.atmel_spi, ptr %40, i32 0, i32 16, i32 2
  %66 = zext i1 %64 to i8
  store i8 %66, ptr %65, align 2
  %67 = icmp ult i32 %57, 530
  %68 = getelementptr inbounds %struct.atmel_spi, ptr %40, i32 0, i32 16, i32 3
  %69 = zext i1 %67 to i8
  store i8 %69, ptr %68, align 1
  %70 = getelementptr inbounds %struct.atmel_spi, ptr %40, i32 0, i32 17
  store i8 0, ptr %70, align 4
  %71 = getelementptr inbounds %struct.atmel_spi, ptr %40, i32 0, i32 18
  store i8 0, ptr %71, align 1
  br i1 %64, label %72, label %170

72:                                               ; preds = %47
  %73 = load ptr, ptr %41, align 4
  %74 = getelementptr inbounds %struct.platform_device, ptr %73, i32 0, i32 3
  %75 = tail call ptr @dma_request_chan(ptr noundef %74, ptr noundef nonnull @.str.20) #11
  %76 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 60
  store ptr %75, ptr %76, align 8
  %77 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = ptrtoint ptr %75 to i32
  br label %166

80:                                               ; preds = %72
  %81 = tail call ptr @dma_request_chan(ptr noundef %74, ptr noundef nonnull @.str.21) #11
  %82 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 61
  store ptr %81, ptr %82, align 4
  %83 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = ptrtoint ptr %81 to i32
  br label %157

86:                                               ; preds = %80
  %87 = load ptr, ptr %41, align 4
  %88 = getelementptr inbounds %struct.platform_device, ptr %87, i32 0, i32 3, i32 8
  %89 = load ptr, ptr %88, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %2, i8 0, i32 48, i1 false) #11, !annotation !9
  %90 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 4
  store i32 1, ptr %90, align 4
  %91 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 3
  store i32 1, ptr %91, align 4
  %92 = load i32, ptr %49, align 4
  %93 = add i32 %92, 12
  %94 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 2
  store i32 %93, ptr %94, align 4
  %95 = add i32 %92, 8
  %96 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 1
  store i32 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 5
  store i32 1, ptr %97, align 4
  %98 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 6
  store i32 1, ptr %98, align 4
  %99 = getelementptr inbounds %struct.spi_controller, ptr %89, i32 0, i32 60
  %100 = load ptr, ptr %99, align 8
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.dma_device, ptr %101, i32 0, i32 44
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %86
  %106 = call i32 %103(ptr noundef %100, ptr noundef nonnull %2) #11
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %41, align 4
  br label %110

110:                                              ; preds = %108, %86
  %111 = phi ptr [ %109, %108 ], [ %87, %86 ]
  %112 = getelementptr inbounds %struct.platform_device, ptr %111, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.17) #12
  br label %113

113:                                              ; preds = %110, %105
  %114 = phi i1 [ false, %110 ], [ true, %105 ]
  %115 = phi i32 [ -22, %110 ], [ 0, %105 ]
  %116 = getelementptr inbounds %struct.spi_controller, ptr %89, i32 0, i32 61
  %117 = load ptr, ptr %116, align 4
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.dma_device, ptr %118, i32 0, i32 44
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %113
  %123 = call i32 %120(ptr noundef %117, ptr noundef nonnull %2) #11
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122, %113
  %126 = load ptr, ptr %41, align 4
  %127 = getelementptr inbounds %struct.platform_device, ptr %126, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.18) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #11
  br label %154

128:                                              ; preds = %122
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #11
  br i1 %114, label %129, label %154

129:                                              ; preds = %128
  %130 = load ptr, ptr %41, align 4
  %131 = getelementptr inbounds %struct.platform_device, ptr %130, i32 0, i32 3
  %132 = load ptr, ptr %76, align 8
  %133 = getelementptr inbounds %struct.dma_chan, ptr %132, i32 0, i32 5
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.dma_chan_dev, ptr %134, i32 0, i32 1, i32 3
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %129
  %139 = getelementptr inbounds %struct.dma_chan_dev, ptr %134, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  br label %141

141:                                              ; preds = %138, %129
  %142 = phi ptr [ %140, %138 ], [ %136, %129 ]
  %143 = load ptr, ptr %82, align 4
  %144 = getelementptr inbounds %struct.dma_chan, ptr %143, i32 0, i32 5
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.dma_chan_dev, ptr %145, i32 0, i32 1, i32 3
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.dma_chan_dev, ptr %145, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  br label %152

152:                                              ; preds = %149, %141
  %153 = phi ptr [ %151, %149 ], [ %147, %141 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %131, ptr noundef nonnull @.str.22, ptr noundef %142, ptr noundef %153) #12
  br label %169

154:                                              ; preds = %128, %125
  %155 = phi i32 [ -22, %125 ], [ %115, %128 ]
  %156 = load ptr, ptr %82, align 4
  br label %157

157:                                              ; preds = %154, %84
  %158 = phi ptr [ %156, %154 ], [ %81, %84 ]
  %159 = phi i32 [ %155, %154 ], [ %85, %84 ]
  %160 = icmp ugt ptr %158, inttoptr (i32 -4096 to ptr)
  br i1 %160, label %162, label %161

161:                                              ; preds = %157
  call void @dma_release_channel(ptr noundef %158) #11
  br label %162

162:                                              ; preds = %161, %157
  %163 = load ptr, ptr %76, align 8
  %164 = icmp ugt ptr %163, inttoptr (i32 -4096 to ptr)
  br i1 %164, label %166, label %165

165:                                              ; preds = %162
  call void @dma_release_channel(ptr noundef %163) #11
  br label %166

166:                                              ; preds = %165, %162, %78
  %167 = phi i32 [ %79, %78 ], [ %159, %162 ], [ %159, %165 ]
  %168 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 61
  store ptr null, ptr %168, align 4
  store ptr null, ptr %76, align 8
  switch i32 %167, label %171 [
    i32 0, label %169
    i32 -517, label %229
  ]

169:                                              ; preds = %166, %152
  store i8 1, ptr %70, align 4
  br label %171

170:                                              ; preds = %47
  store i8 1, ptr %71, align 1
  br label %171

171:                                              ; preds = %170, %169, %166
  %172 = load i8, ptr %65, align 2, !range !10
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %171
  %175 = load i8, ptr %70, align 4, !range !10
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.2) #12
  br label %178

178:                                              ; preds = %177, %174, %171
  %179 = load i8, ptr %71, align 1, !range !10
  %180 = icmp eq i8 %179, 0
  %181 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %180, label %190, label %184

184:                                              ; preds = %178
  br i1 %183, label %185, label %187

185:                                              ; preds = %184
  %186 = load ptr, ptr %3, align 4
  br label %187

187:                                              ; preds = %185, %184
  %188 = phi ptr [ %186, %185 ], [ %182, %184 ]
  %189 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %8, ptr noundef nonnull @atmel_spi_pdc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %188, ptr noundef nonnull %16) #11
  br label %196

190:                                              ; preds = %178
  br i1 %183, label %191, label %193

191:                                              ; preds = %190
  %192 = load ptr, ptr %3, align 4
  br label %193

193:                                              ; preds = %191, %190
  %194 = phi ptr [ %192, %191 ], [ %182, %190 ]
  %195 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %8, ptr noundef nonnull @atmel_spi_pio_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %194, ptr noundef nonnull %16) #11
  br label %196

196:                                              ; preds = %193, %187
  %197 = phi i32 [ %189, %187 ], [ %195, %193 ]
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %229

199:                                              ; preds = %196
  %200 = call fastcc i32 @clk_prepare_enable(ptr noundef %11)
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %229

202:                                              ; preds = %199
  %203 = call i32 @clk_get_rate(ptr noundef %11) #11
  %204 = getelementptr inbounds %struct.atmel_spi, ptr %40, i32 0, i32 7
  store i32 %203, ptr %204, align 4
  %205 = getelementptr inbounds %struct.atmel_spi, ptr %40, i32 0, i32 20
  store i32 0, ptr %205, align 4
  %206 = load ptr, ptr %22, align 8
  %207 = call i32 @of_property_read_variable_u32_array(ptr noundef %206, ptr noundef nonnull @.str.3, ptr noundef %205, i32 noundef 1, i32 noundef 0) #11
  %208 = icmp sgt i32 %207, -1
  br i1 %208, label %209, label %211

209:                                              ; preds = %202
  %210 = load i32, ptr %205, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %210) #12
  br label %211

211:                                              ; preds = %209, %202
  call fastcc void @atmel_spi_init(ptr noundef %40)
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef 2000) #11
  call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #11
  %212 = call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 0) #11
  call void @pm_runtime_enable(ptr noundef %3) #11
  %213 = call i32 @devm_spi_register_controller(ptr noundef %3, ptr noundef nonnull %16) #11
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %211
  %216 = load ptr, ptr %43, align 4
  %217 = getelementptr i8, ptr %216, i32 252
  %218 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %217) #11, !srcloc !8
  %219 = and i32 %218, 4095
  %220 = load i32, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %219, i32 noundef %220, i32 noundef %8) #12
  br label %231

221:                                              ; preds = %211
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #11
  %222 = call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 2) #11
  %223 = load i8, ptr %70, align 4, !range !10
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %221
  call fastcc void @atmel_spi_release_dma(ptr noundef nonnull %16)
  br label %226

226:                                              ; preds = %225, %221
  %227 = load ptr, ptr %43, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 128) #11, !srcloc !11
  %228 = load ptr, ptr %43, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 128) #11, !srcloc !11
  call void @clk_disable(ptr noundef %11) #11
  call void @clk_unprepare(ptr noundef %11) #11
  br label %229

229:                                              ; preds = %226, %199, %196, %166, %45
  %230 = phi i32 [ %46, %45 ], [ %197, %196 ], [ %200, %199 ], [ %213, %226 ], [ %167, %166 ]
  call void @put_device(ptr noundef nonnull %16) #11
  br label %231

231:                                              ; preds = %229, %215, %15, %13, %7, %1
  %232 = phi i32 [ %14, %13 ], [ %230, %229 ], [ 0, %215 ], [ -6, %1 ], [ %8, %7 ], [ -12, %15 ]
  ret i32 %232
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_spi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #11
  %8 = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 17
  %9 = load i8, ptr %8, align 4, !range !10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 61
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 47
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call i32 %18(ptr noundef nonnull %13) #11
  br label %22

22:                                               ; preds = %20, %15, %11
  %23 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 60
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 47
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = tail call i32 %29(ptr noundef nonnull %24) #11
  br label %33

33:                                               ; preds = %31, %26, %22
  %34 = load ptr, ptr %12, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @dma_release_channel(ptr noundef nonnull %34) #11
  store ptr null, ptr %12, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load ptr, ptr %23, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @dma_release_channel(ptr noundef nonnull %38) #11
  store ptr null, ptr %23, align 8
  br label %41

41:                                               ; preds = %40, %37, %1
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #11
  %42 = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 128) #11, !srcloc !11
  %44 = load ptr, ptr %42, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 128) #11, !srcloc !11
  %45 = load ptr, ptr %42, align 4
  %46 = getelementptr i8, ptr %45, i32 16
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %48 = load i16, ptr %5, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %50 = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  tail call void @clk_disable(ptr noundef %51) #11
  tail call void @clk_unprepare(ptr noundef %51) #11
  %52 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #11, !srcloc !18
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 0, i32 -1, ptr elementtype(i32) %52) #11, !srcloc !19
  %54 = extractvalue { i32, i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  br label %57

57:                                               ; preds = %56, %41
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_spi_setup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 1
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.6) #12
  br label %144

17:                                               ; preds = %11, %1
  %18 = getelementptr inbounds %struct.atmel_spi, ptr %7, i32 0, i32 21
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %83, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.atmel_spi, ptr %7, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3, i32 8
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.spi_controller, ptr %25, i32 0, i32 55
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %83, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.atmel_spi, ptr %7, i32 0, i32 16
  %31 = load i8, ptr %30, align 4, !range !10
  %32 = xor i8 %31, 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr ptr, ptr %27, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = shl i8 1, %32
  %39 = or i8 %19, %38
  store i8 %39, ptr %18, align 4
  br label %40

40:                                               ; preds = %37, %29
  %41 = phi i8 [ %19, %29 ], [ %39, %37 ]
  %42 = add nuw nsw i32 %33, 1
  %43 = load ptr, ptr %26, align 4
  %44 = getelementptr ptr, ptr %43, i32 %42
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = shl i8 2, %32
  %49 = or i8 %41, %48
  store i8 %49, ptr %18, align 4
  br label %50

50:                                               ; preds = %47, %40
  %51 = phi i8 [ %41, %40 ], [ %49, %47 ]
  %52 = or i32 %33, 2
  %53 = load ptr, ptr %26, align 4
  %54 = getelementptr ptr, ptr %53, i32 %52
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = shl nuw nsw i32 1, %52
  %59 = trunc i32 %58 to i8
  %60 = or i8 %51, %59
  store i8 %60, ptr %18, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = phi i8 [ %51, %50 ], [ %60, %57 ]
  %63 = add nuw nsw i32 %33, 3
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %76, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %26, align 4
  %67 = getelementptr ptr, ptr %66, i32 %63
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = shl i8 8, %32
  %72 = or i8 %62, %71
  store i8 %72, ptr %18, align 4
  br label %73

73:                                               ; preds = %70, %65
  %74 = phi i8 [ %62, %65 ], [ %72, %70 ]
  %75 = icmp eq i8 %32, 0
  call void @llvm.assume(i1 %75)
  br label %76

76:                                               ; preds = %73, %61
  %77 = phi i8 [ %62, %61 ], [ %74, %73 ]
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = tail call i8 @llvm.cttz.i8(i8 %77, i1 true) #11, !range !21
  %81 = add nuw nsw i8 %80, 1
  %82 = getelementptr inbounds %struct.atmel_spi, ptr %7, i32 0, i32 22
  store i8 %81, ptr %82, align 1
  br label %83

83:                                               ; preds = %79, %76, %21, %17
  %84 = phi i1 [ true, %17 ], [ false, %21 ], [ true, %76 ], [ false, %79 ]
  %85 = load ptr, ptr %8, align 8
  %86 = icmp eq ptr %85, null
  %87 = or i1 %86, %84
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #12
  br label %144

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.atmel_spi, ptr %7, i32 0, i32 22
  %91 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %92 = select i1 %86, ptr %91, ptr %90
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = shl i8 %3, 4
  %96 = xor i8 %95, -128
  %97 = zext i8 %96 to i32
  %98 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %99 = load i32, ptr %98, align 8
  %100 = lshr i32 %99, 1
  %101 = and i32 %100, 1
  %102 = or i32 %101, %97
  %103 = shl i32 %99, 1
  %104 = and i32 %103, 2
  %105 = or i32 %102, %104
  %106 = xor i32 %105, 2
  %107 = or i32 %106, 8
  %108 = select i1 %86, i32 %107, i32 %106
  %109 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 15
  %110 = load i16, ptr %109, align 2
  %111 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 15, i32 1
  %112 = load i8, ptr %111, align 2
  switch i8 %112, label %144 [
    i8 1, label %113
    i8 0, label %115
  ]

113:                                              ; preds = %89
  %114 = udiv i16 %110, 1000
  br label %115

115:                                              ; preds = %113, %89
  %116 = phi i16 [ %110, %89 ], [ %114, %113 ]
  %117 = zext i16 %116 to i32
  %118 = getelementptr inbounds %struct.atmel_spi, ptr %7, i32 0, i32 7
  %119 = load i32, ptr %118, align 4
  %120 = udiv i32 %119, 1000000
  %121 = shl i32 %117, 19
  %122 = mul i32 %121, %120
  %123 = and i32 %122, -16777216
  %124 = or i32 %123, %108
  %125 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %126 = load ptr, ptr %125, align 8
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %115
  %129 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %130 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %129, i32 noundef 3520, i32 noundef 4) #13
  %131 = icmp eq ptr %130, null
  br i1 %131, label %144, label %132

132:                                              ; preds = %128
  store ptr %130, ptr %125, align 8
  br label %133

133:                                              ; preds = %132, %115
  %134 = phi ptr [ %126, %115 ], [ %130, %132 ]
  store i32 %124, ptr %134, align 4
  %135 = getelementptr inbounds %struct.atmel_spi, ptr %7, i32 0, i32 16
  %136 = load i8, ptr %135, align 4, !range !10
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.atmel_spi, ptr %7, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr i8, ptr %140, i32 48
  %142 = shl nuw nsw i32 %94, 2
  %143 = getelementptr i8, ptr %141, i32 %142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %124) #11, !srcloc !11
  br label %144

144:                                              ; preds = %138, %133, %128, %89, %88, %16
  %145 = phi i32 [ -16, %88 ], [ -22, %16 ], [ -12, %128 ], [ 0, %138 ], [ 0, %133 ], [ -22, %89 ]
  ret i32 %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_spi_one_transfer(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 4
  %11 = and i32 %10, 15
  %12 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 8
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = add nsw i32 %14, -8
  %16 = icmp eq i32 %11, %15
  br i1 %16, label %17, label %637

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 31
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.spi_message, ptr %19, i32 0, i32 2
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %100

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 18
  %26 = load i8, ptr %25, align 1, !range !10
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %100, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 4
  store i32 -1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 3
  store i32 -1, ptr %33, align 4
  %34 = load ptr, ptr %2, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %34) #11
  %40 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %52, !prof !22

43:                                               ; preds = %36
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %44 = tail call ptr @dev_driver_string(ptr noundef %31) #11
  %45 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load ptr, ptr %31, align 4
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi ptr [ %49, %48 ], [ %46, %43 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %44, ptr noundef %51) #11
  br label %52

52:                                               ; preds = %50, %36
  br i1 %39, label %53, label %54

53:                                               ; preds = %52
  store i32 -1, ptr %33, align 4
  br label %637

54:                                               ; preds = %52
  %55 = load ptr, ptr @mem_map, align 4
  %56 = ptrtoint ptr %34 to i32
  %57 = add i32 %56, 1073741824
  %58 = lshr i32 %57, 12
  %59 = getelementptr %struct.page, ptr %55, i32 %58
  %60 = and i32 %56, 4095
  %61 = tail call i32 @dma_map_page_attrs(ptr noundef %31, ptr noundef %59, i32 noundef %60, i32 noundef %38, i32 noundef 1, i32 noundef 0) #11
  store i32 %61, ptr %33, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %637, label %63

63:                                               ; preds = %54, %28
  %64 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %100, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %65) #11
  %71 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %72 = xor i1 %71, true
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %83, !prof !22

74:                                               ; preds = %67
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %75 = tail call ptr @dev_driver_string(ptr noundef %31) #11
  %76 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load ptr, ptr %31, align 4
  br label %81

81:                                               ; preds = %79, %74
  %82 = phi ptr [ %80, %79 ], [ %77, %74 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %75, ptr noundef %82) #11
  br label %83

83:                                               ; preds = %81, %67
  br i1 %70, label %84, label %85

84:                                               ; preds = %83
  store i32 -1, ptr %32, align 4
  br label %94

85:                                               ; preds = %83
  %86 = load ptr, ptr @mem_map, align 4
  %87 = ptrtoint ptr %65 to i32
  %88 = add i32 %87, 1073741824
  %89 = lshr i32 %88, 12
  %90 = getelementptr %struct.page, ptr %86, i32 %89
  %91 = and i32 %87, 4095
  %92 = tail call i32 @dma_map_page_attrs(ptr noundef %31, ptr noundef %90, i32 noundef %91, i32 noundef %69, i32 noundef 2, i32 noundef 0) #11
  store i32 %92, ptr %32, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %100

94:                                               ; preds = %85, %84
  %95 = load ptr, ptr %2, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %637, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %33, align 4
  %99 = load i32, ptr %68, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %31, i32 noundef %98, i32 noundef %99, i32 noundef 1, i32 noundef 0) #11
  br label %637

100:                                              ; preds = %85, %63, %24, %17
  %101 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 14
  %102 = load ptr, ptr %101, align 8
  %103 = icmp eq ptr %102, null
  %104 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 22
  %105 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %106 = select i1 %103, ptr %105, ptr %104
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 7
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 16
  %112 = load i8, ptr %111, align 4, !range !10
  %113 = xor i8 %112, 1
  %114 = zext i8 %113 to i32
  %115 = lshr i32 %110, %114
  %116 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 12
  %117 = load i32, ptr %116, align 4
  %118 = add i32 %117, -1
  %119 = add i32 %118, %115
  %120 = udiv i32 %119, %117
  %121 = icmp ugt i32 %120, 255
  br i1 %121, label %122, label %124

122:                                              ; preds = %100
  %123 = udiv i32 %115, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %117, i32 noundef %120, i32 noundef %123) #12
  br label %143

124:                                              ; preds = %100
  %125 = icmp ugt i32 %117, %119
  br i1 %125, label %126, label %127

126:                                              ; preds = %124
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %117, i32 noundef 0, i32 noundef %115) #12
  br label %143

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr i8, ptr %129, i32 48
  %131 = shl nuw nsw i32 %108, 2
  %132 = getelementptr i8, ptr %130, i32 %131
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #11, !srcloc !8
  %134 = and i32 %133, -65281
  %135 = shl nuw nsw i32 %120, 8
  %136 = and i32 %135, 65280
  %137 = or i32 %134, %136
  %138 = load ptr, ptr %128, align 4
  %139 = getelementptr i8, ptr %138, i32 48
  %140 = getelementptr i8, ptr %139, i32 %131
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %137) #11, !srcloc !11
  %141 = udiv i32 %115, %120
  %142 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 13
  store i32 %141, ptr %142, align 4
  br label %143

143:                                              ; preds = %127, %126, %122
  %144 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 10
  store i32 0, ptr %144, align 4
  %145 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 8
  store ptr %2, ptr %145, align 4
  %146 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 9
  store i32 %147, ptr %148, align 4
  %149 = icmp eq i32 %147, 0
  br i1 %149, label %601, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 15
  %152 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 18
  %153 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 1
  %154 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 4
  %155 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 3
  %156 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 43
  %157 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 17
  %158 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %159 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %160 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  %161 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 3
  %162 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 2
  %163 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 1
  %164 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 5
  %165 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 6
  %166 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %167 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 6
  %168 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 6, i32 1
  %169 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5
  %170 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5, i32 1
  br label %174

171:                                              ; preds = %513
  %172 = load i32, ptr %148, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %601, label %174

174:                                              ; preds = %171, %150
  store i32 0, ptr %151, align 4
  %175 = load i8, ptr %152, align 1, !range !10
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %238, label %177

177:                                              ; preds = %174
  %178 = call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  store i32 %178, ptr %153, align 4
  %179 = load ptr, ptr %5, align 8
  %180 = getelementptr inbounds %struct.atmel_spi, ptr %179, i32 0, i32 3
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr i8, ptr %181, i32 288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 514) #11, !srcloc !11
  %183 = getelementptr inbounds %struct.atmel_spi, ptr %179, i32 0, i32 9
  %184 = load i32, ptr %183, align 4
  %185 = load i32, ptr %154, align 4
  %186 = load i32, ptr %146, align 4
  %187 = sub i32 %185, %184
  %188 = add i32 %187, %186
  %189 = load i32, ptr %155, align 4
  %190 = sub i32 %186, %184
  %191 = add i32 %190, %189
  %192 = load i32, ptr %156, align 4
  %193 = call i32 @llvm.umin.i32(i32 %184, i32 %192) #11
  %194 = sub i32 %184, %193
  store i32 %194, ptr %183, align 4
  %195 = load ptr, ptr %180, align 4
  %196 = getelementptr i8, ptr %195, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %188) #11, !srcloc !11
  %197 = load ptr, ptr %180, align 4
  %198 = getelementptr i8, ptr %197, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %191) #11, !srcloc !11
  %199 = load i8, ptr %12, align 1
  %200 = icmp ugt i8 %199, 8
  %201 = zext i1 %200 to i32
  %202 = lshr i32 %193, %201
  %203 = load ptr, ptr %180, align 4
  %204 = getelementptr i8, ptr %203, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %202) #11, !srcloc !11
  %205 = load ptr, ptr %180, align 4
  %206 = getelementptr i8, ptr %205, i32 268
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %202) #11, !srcloc !11
  %207 = load i32, ptr %183, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %232, label %209

209:                                              ; preds = %177
  %210 = load i32, ptr %154, align 4
  %211 = load i32, ptr %146, align 4
  %212 = sub i32 %210, %207
  %213 = add i32 %212, %211
  %214 = load i32, ptr %155, align 4
  %215 = sub i32 %211, %207
  %216 = add i32 %215, %214
  %217 = load i32, ptr %156, align 4
  %218 = call i32 @llvm.umin.i32(i32 %207, i32 %217) #11
  %219 = sub i32 %207, %218
  store i32 %219, ptr %183, align 4
  %220 = load ptr, ptr %180, align 4
  %221 = getelementptr i8, ptr %220, i32 272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %221, i32 %213) #11, !srcloc !11
  %222 = load ptr, ptr %180, align 4
  %223 = getelementptr i8, ptr %222, i32 280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 %216) #11, !srcloc !11
  %224 = load i8, ptr %12, align 1
  %225 = icmp ugt i8 %224, 8
  %226 = zext i1 %225 to i32
  %227 = lshr i32 %218, %226
  %228 = load ptr, ptr %180, align 4
  %229 = getelementptr i8, ptr %228, i32 276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 %227) #11, !srcloc !11
  %230 = load ptr, ptr %180, align 4
  %231 = getelementptr i8, ptr %230, i32 284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %227) #11, !srcloc !11
  br label %232

232:                                              ; preds = %209, %177
  %233 = load ptr, ptr %180, align 4
  %234 = getelementptr i8, ptr %233, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 72) #11, !srcloc !11
  %235 = load ptr, ptr %180, align 4
  %236 = getelementptr i8, ptr %235, i32 288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 257) #11, !srcloc !11
  %237 = load i32, ptr %153, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %237) #11
  br label %509

238:                                              ; preds = %174
  %239 = load i8, ptr %157, align 4, !range !10
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %376, label %241

241:                                              ; preds = %238
  %242 = load i32, ptr %146, align 4
  %243 = icmp ugt i32 %242, 15
  br i1 %243, label %244, label %376

244:                                              ; preds = %241
  %245 = load ptr, ptr %5, align 8
  %246 = load ptr, ptr %158, align 4
  %247 = load ptr, ptr %159, align 8
  %248 = icmp ne ptr %246, null
  %249 = icmp ne ptr %247, null
  %250 = select i1 %248, i1 %249, i1 false
  br i1 %250, label %251, label %516

251:                                              ; preds = %244
  %252 = load i8, ptr %12, align 1
  %253 = getelementptr inbounds %struct.atmel_spi, ptr %245, i32 0, i32 6
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.platform_device, ptr %254, i32 0, i32 3, i32 8
  %256 = load ptr, ptr %255, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 48, i1 false) #11, !annotation !9
  %257 = icmp ugt i8 %252, 8
  %258 = select i1 %257, i32 2, i32 1
  store i32 %258, ptr %160, align 4
  store i32 %258, ptr %161, align 4
  %259 = getelementptr inbounds %struct.atmel_spi, ptr %245, i32 0, i32 2
  %260 = load i32, ptr %259, align 4
  %261 = add i32 %260, 12
  store i32 %261, ptr %162, align 4
  %262 = add i32 %260, 8
  store i32 %262, ptr %163, align 4
  store i32 1, ptr %164, align 4
  store i32 1, ptr %165, align 4
  %263 = getelementptr inbounds %struct.spi_controller, ptr %256, i32 0, i32 60
  %264 = load ptr, ptr %263, align 8
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr inbounds %struct.dma_device, ptr %265, i32 0, i32 44
  %267 = load ptr, ptr %266, align 4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %274, label %269

269:                                              ; preds = %251
  %270 = call i32 %267(ptr noundef %264, ptr noundef nonnull %4) #11
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %277, label %272

272:                                              ; preds = %269
  %273 = load ptr, ptr %253, align 4
  br label %274

274:                                              ; preds = %272, %251
  %275 = phi ptr [ %273, %272 ], [ %254, %251 ]
  %276 = getelementptr inbounds %struct.platform_device, ptr %275, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %276, ptr noundef nonnull @.str.17) #12
  br label %277

277:                                              ; preds = %274, %269
  %278 = phi i1 [ false, %274 ], [ true, %269 ]
  %279 = getelementptr inbounds %struct.spi_controller, ptr %256, i32 0, i32 61
  %280 = load ptr, ptr %279, align 4
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr inbounds %struct.dma_device, ptr %281, i32 0, i32 44
  %283 = load ptr, ptr %282, align 4
  %284 = icmp eq ptr %283, null
  br i1 %284, label %288, label %285

285:                                              ; preds = %277
  %286 = call i32 %283(ptr noundef %280, ptr noundef nonnull %4) #11
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %285, %277
  %289 = load ptr, ptr %253, align 4
  %290 = getelementptr inbounds %struct.platform_device, ptr %289, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %290, ptr noundef nonnull @.str.18) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #11
  br label %516

291:                                              ; preds = %285
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #11
  br i1 %278, label %292, label %516

292:                                              ; preds = %291
  %293 = load ptr, ptr %2, align 4
  %294 = call zeroext i1 @is_vmalloc_addr(ptr noundef %293) #11
  br i1 %294, label %298, label %295

295:                                              ; preds = %292
  %296 = load ptr, ptr %166, align 4
  %297 = call zeroext i1 @is_vmalloc_addr(ptr noundef %296) #11
  br label %298

298:                                              ; preds = %295, %292
  %299 = load ptr, ptr %167, align 4
  %300 = load i32, ptr %168, align 4
  %301 = load ptr, ptr %246, align 4
  %302 = icmp eq ptr %301, null
  br i1 %302, label %343, label %303

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.dma_device, ptr %301, i32 0, i32 39
  %305 = load ptr, ptr %304, align 4
  %306 = icmp eq ptr %305, null
  br i1 %306, label %343, label %307

307:                                              ; preds = %303
  %308 = call ptr %305(ptr noundef nonnull %246, ptr noundef %299, i32 noundef %300, i32 noundef 2, i32 noundef 3, ptr noundef null) #11
  %309 = icmp eq ptr %308, null
  br i1 %309, label %343, label %310

310:                                              ; preds = %307
  %311 = load ptr, ptr %2, align 4
  %312 = call zeroext i1 @is_vmalloc_addr(ptr noundef %311) #11
  br i1 %312, label %316, label %313

313:                                              ; preds = %310
  %314 = load ptr, ptr %166, align 4
  %315 = call zeroext i1 @is_vmalloc_addr(ptr noundef %314) #11
  br label %316

316:                                              ; preds = %313, %310
  %317 = load ptr, ptr %169, align 4
  %318 = load i32, ptr %170, align 4
  %319 = load ptr, ptr %247, align 4
  %320 = icmp eq ptr %319, null
  br i1 %320, label %343, label %321

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.dma_device, ptr %319, i32 0, i32 39
  %323 = load ptr, ptr %322, align 4
  %324 = icmp eq ptr %323, null
  br i1 %324, label %343, label %325

325:                                              ; preds = %321
  %326 = call ptr %323(ptr noundef nonnull %247, ptr noundef %317, i32 noundef %318, i32 noundef 1, i32 noundef 3, ptr noundef null) #11
  %327 = icmp eq ptr %326, null
  br i1 %327, label %343, label %328

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.atmel_spi, ptr %245, i32 0, i32 3
  %330 = load ptr, ptr %329, align 4
  %331 = getelementptr i8, ptr %330, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %331, i32 8) #11, !srcloc !11
  %332 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %308, i32 0, i32 6
  store ptr @dma_callback, ptr %332, align 4
  %333 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %308, i32 0, i32 8
  store ptr %0, ptr %333, align 4
  %334 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %308, i32 0, i32 4
  %335 = load ptr, ptr %334, align 4
  %336 = call i32 %335(ptr noundef nonnull %308) #11
  %337 = icmp sgt i32 %336, -1
  br i1 %337, label %338, label %343

338:                                              ; preds = %328
  %339 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %326, i32 0, i32 4
  %340 = load ptr, ptr %339, align 4
  %341 = call i32 %340(ptr noundef nonnull %326) #11
  %342 = icmp sgt i32 %341, -1
  br i1 %342, label %366, label %343

343:                                              ; preds = %338, %328, %325, %321, %316, %307, %303, %298
  %344 = getelementptr inbounds %struct.atmel_spi, ptr %245, i32 0, i32 3
  %345 = load ptr, ptr %344, align 4
  %346 = getelementptr i8, ptr %345, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %346, i32 8) #11, !srcloc !11
  %347 = load ptr, ptr %158, align 4
  %348 = icmp eq ptr %347, null
  br i1 %348, label %356, label %349

349:                                              ; preds = %343
  %350 = load ptr, ptr %347, align 4
  %351 = getelementptr inbounds %struct.dma_device, ptr %350, i32 0, i32 47
  %352 = load ptr, ptr %351, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %356, label %354

354:                                              ; preds = %349
  %355 = call i32 %352(ptr noundef nonnull %347) #11
  br label %356

356:                                              ; preds = %354, %349, %343
  %357 = load ptr, ptr %159, align 8
  %358 = icmp eq ptr %357, null
  br i1 %358, label %516, label %359

359:                                              ; preds = %356
  %360 = load ptr, ptr %357, align 4
  %361 = getelementptr inbounds %struct.dma_device, ptr %360, i32 0, i32 47
  %362 = load ptr, ptr %361, align 4
  %363 = icmp eq ptr %362, null
  br i1 %363, label %516, label %364

364:                                              ; preds = %359
  %365 = call i32 %362(ptr noundef nonnull %357) #11
  br label %516

366:                                              ; preds = %338
  %367 = load ptr, ptr %246, align 4
  %368 = getelementptr inbounds %struct.dma_device, ptr %367, i32 0, i32 50
  %369 = load ptr, ptr %368, align 4
  call void %369(ptr noundef nonnull %246) #11
  %370 = load ptr, ptr %247, align 4
  %371 = getelementptr inbounds %struct.dma_device, ptr %370, i32 0, i32 50
  %372 = load ptr, ptr %371, align 4
  call void %372(ptr noundef nonnull %247) #11
  %373 = load i32, ptr %148, align 4
  %374 = sub i32 %373, %242
  %375 = call i32 @llvm.smax.i32(i32 %374, i32 0)
  store i32 %375, ptr %148, align 4
  br label %509

376:                                              ; preds = %241, %238
  %377 = call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  store i32 %377, ptr %153, align 4
  %378 = load ptr, ptr %5, align 8
  %379 = getelementptr inbounds %struct.atmel_spi, ptr %378, i32 0, i32 20
  %380 = load i32, ptr %379, align 4
  %381 = icmp eq i32 %380, 0
  %382 = load i32, ptr %146, align 4
  %383 = getelementptr inbounds %struct.atmel_spi, ptr %378, i32 0, i32 9
  %384 = load i32, ptr %383, align 4
  %385 = sub i32 %382, %384
  br i1 %381, label %470, label %386

386:                                              ; preds = %376
  %387 = load ptr, ptr %2, align 4
  %388 = getelementptr i8, ptr %387, i32 %385
  %389 = load i8, ptr %12, align 1
  %390 = icmp ugt i8 %389, 8
  %391 = zext i1 %390 to i32
  %392 = lshr i32 %384, %391
  %393 = call i32 @llvm.umin.i32(i32 %392, i32 %380) #11
  %394 = getelementptr inbounds %struct.atmel_spi, ptr %378, i32 0, i32 3
  %395 = load ptr, ptr %394, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %395, i32 196608) #11, !srcloc !11
  %396 = load ptr, ptr %394, align 4
  %397 = getelementptr i8, ptr %396, i32 68
  %398 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %397) #11, !srcloc !8
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %405, label %400

400:                                              ; preds = %400, %386
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !23
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !24
  %401 = load ptr, ptr %394, align 4
  %402 = getelementptr i8, ptr %401, i32 68
  %403 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %402) #11, !srcloc !8
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %400

405:                                              ; preds = %400, %386
  %406 = load ptr, ptr %394, align 4
  %407 = getelementptr i8, ptr %406, i32 64
  %408 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %407) #11, !srcloc !8
  %409 = and i32 %408, -1056964609
  %410 = shl i32 %393, 24
  %411 = and i32 %410, 1056964608
  %412 = or i32 %409, %411
  %413 = load ptr, ptr %394, align 4
  %414 = getelementptr i8, ptr %413, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %414, i32 %412) #11, !srcloc !11
  %415 = load ptr, ptr %394, align 4
  %416 = getelementptr i8, ptr %415, i32 16
  %417 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %416) #11, !srcloc !8
  %418 = icmp ugt i32 %393, 1
  br i1 %418, label %419, label %450

419:                                              ; preds = %437, %405
  %420 = phi i32 [ %448, %437 ], [ %393, %405 ]
  %421 = phi ptr [ %441, %437 ], [ %388, %405 ]
  %422 = phi ptr [ %440, %437 ], [ %388, %405 ]
  %423 = load i8, ptr %12, align 1
  %424 = icmp ugt i8 %423, 8
  br i1 %424, label %425, label %430

425:                                              ; preds = %419
  %426 = getelementptr i16, ptr %421, i32 1
  %427 = load i16, ptr %421, align 2
  %428 = getelementptr i16, ptr %421, i32 2
  %429 = load i16, ptr %426, align 2
  br label %437

430:                                              ; preds = %419
  %431 = getelementptr i8, ptr %422, i32 1
  %432 = load i8, ptr %422, align 1
  %433 = zext i8 %432 to i16
  %434 = getelementptr i8, ptr %422, i32 2
  %435 = load i8, ptr %431, align 1
  %436 = zext i8 %435 to i16
  br label %437

437:                                              ; preds = %430, %425
  %438 = phi i16 [ %429, %425 ], [ %436, %430 ]
  %439 = phi i16 [ %427, %425 ], [ %433, %430 ]
  %440 = phi ptr [ %422, %425 ], [ %434, %430 ]
  %441 = phi ptr [ %428, %425 ], [ %421, %430 ]
  %442 = zext i16 %438 to i32
  %443 = shl nuw i32 %442, 16
  %444 = zext i16 %439 to i32
  %445 = or i32 %443, %444
  %446 = load ptr, ptr %394, align 4
  %447 = getelementptr i8, ptr %446, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %447, i32 %445) #11, !srcloc !11
  %448 = add i32 %420, -2
  %449 = icmp ugt i32 %448, 1
  br i1 %449, label %419, label %450

450:                                              ; preds = %437, %405
  %451 = phi ptr [ %388, %405 ], [ %440, %437 ]
  %452 = phi ptr [ %388, %405 ], [ %441, %437 ]
  %453 = phi i32 [ %393, %405 ], [ %448, %437 ]
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %467, label %455

455:                                              ; preds = %450
  %456 = load i8, ptr %12, align 1
  %457 = icmp ugt i8 %456, 8
  br i1 %457, label %458, label %460

458:                                              ; preds = %455
  %459 = load i16, ptr %452, align 2
  br label %463

460:                                              ; preds = %455
  %461 = load i8, ptr %451, align 1
  %462 = zext i8 %461 to i16
  br label %463

463:                                              ; preds = %460, %458
  %464 = phi i16 [ %459, %458 ], [ %462, %460 ]
  %465 = load ptr, ptr %394, align 4
  %466 = getelementptr i8, ptr %465, i32 12
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %466, i16 %464) #11, !srcloc !25
  br label %467

467:                                              ; preds = %463, %450
  %468 = load ptr, ptr %394, align 4
  %469 = getelementptr i8, ptr %468, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %469, i32 536870920) #11, !srcloc !11
  br label %507

470:                                              ; preds = %376
  %471 = getelementptr inbounds %struct.atmel_spi, ptr %378, i32 0, i32 3
  %472 = load ptr, ptr %471, align 4
  %473 = getelementptr i8, ptr %472, i32 8
  %474 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %473) #11, !srcloc !8
  %475 = load ptr, ptr %471, align 4
  %476 = getelementptr i8, ptr %475, i32 16
  %477 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %476) #11, !srcloc !8
  %478 = and i32 %477, 1
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %489, label %480

480:                                              ; preds = %480, %470
  %481 = load ptr, ptr %471, align 4
  %482 = getelementptr i8, ptr %481, i32 8
  %483 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %482) #11, !srcloc !8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !27
  %484 = load ptr, ptr %471, align 4
  %485 = getelementptr i8, ptr %484, i32 16
  %486 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %485) #11, !srcloc !8
  %487 = and i32 %486, 1
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %480

489:                                              ; preds = %480, %470
  %490 = load i8, ptr %12, align 1
  %491 = icmp ugt i8 %490, 8
  %492 = load ptr, ptr %2, align 4
  %493 = getelementptr i8, ptr %492, i32 %385
  br i1 %491, label %494, label %499

494:                                              ; preds = %489
  %495 = load i16, ptr %493, align 2
  %496 = zext i16 %495 to i32
  %497 = load ptr, ptr %471, align 4
  %498 = getelementptr i8, ptr %497, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %498, i32 %496) #11, !srcloc !11
  br label %504

499:                                              ; preds = %489
  %500 = load i8, ptr %493, align 1
  %501 = zext i8 %500 to i32
  %502 = load ptr, ptr %471, align 4
  %503 = getelementptr i8, ptr %502, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %503, i32 %501) #11, !srcloc !11
  br label %504

504:                                              ; preds = %499, %494
  %505 = load ptr, ptr %471, align 4
  %506 = getelementptr i8, ptr %505, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %506, i32 9) #11, !srcloc !11
  br label %507

507:                                              ; preds = %504, %467
  %508 = load i32, ptr %153, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %508) #11
  br label %509

509:                                              ; preds = %507, %366, %232
  %510 = call i32 @wait_for_completion_timeout(ptr noundef %151, i32 noundef 100) #11
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %513, !prof !22

512:                                              ; preds = %509
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1338, i32 noundef 9, ptr noundef null) #11
  br label %516

513:                                              ; preds = %509
  %514 = load i32, ptr %144, align 4
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %171, label %519

516:                                              ; preds = %512, %364, %359, %356, %291, %288, %244
  %517 = phi ptr [ @.str.10, %512 ], [ @.str.8, %288 ], [ @.str.8, %356 ], [ @.str.8, %359 ], [ @.str.8, %364 ], [ @.str.8, %244 ], [ @.str.8, %291 ]
  %518 = phi i32 [ -5, %512 ], [ -12, %288 ], [ -12, %356 ], [ -12, %359 ], [ -12, %364 ], [ -12, %291 ], [ -19, %244 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull %517) #12
  store i32 %518, ptr %144, align 4
  br label %519

519:                                              ; preds = %516, %513
  %520 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 18
  %521 = load i8, ptr %520, align 1, !range !10
  %522 = icmp eq i8 %521, 0
  br i1 %522, label %572, label %523

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %525 = load ptr, ptr %524, align 4
  %526 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 3
  %527 = load ptr, ptr %526, align 4
  %528 = getelementptr i8, ptr %527, i32 268
  %529 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %528) #11, !srcloc !8
  %530 = load ptr, ptr %526, align 4
  %531 = getelementptr i8, ptr %530, i32 260
  %532 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %531) #11, !srcloc !8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %525, ptr noundef nonnull @.str.11, i32 noundef %529, i32 noundef %532) #12
  %533 = load ptr, ptr %526, align 4
  %534 = getelementptr i8, ptr %533, i32 276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %534, i32 0) #11, !srcloc !11
  %535 = load ptr, ptr %526, align 4
  %536 = getelementptr i8, ptr %535, i32 284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %536, i32 0) #11, !srcloc !11
  %537 = load ptr, ptr %526, align 4
  %538 = getelementptr i8, ptr %537, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %538, i32 0) #11, !srcloc !11
  %539 = load ptr, ptr %526, align 4
  %540 = getelementptr i8, ptr %539, i32 268
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %540, i32 0) #11, !srcloc !11
  br label %544

541:                                              ; preds = %544
  %542 = add nsw i32 %545, -1
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %551, label %544

544:                                              ; preds = %541, %523
  %545 = phi i32 [ 1000, %523 ], [ %542, %541 ]
  %546 = load ptr, ptr %526, align 4
  %547 = getelementptr i8, ptr %546, i32 16
  %548 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %547) #11, !srcloc !8
  %549 = and i32 %548, 512
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %541, label %553

551:                                              ; preds = %541
  %552 = load ptr, ptr %524, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %552, ptr noundef nonnull @.str.12) #12
  br label %553

553:                                              ; preds = %551, %544
  %554 = load ptr, ptr %526, align 4
  %555 = getelementptr i8, ptr %554, i32 16
  %556 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %555) #11, !srcloc !8
  %557 = and i32 %556, 1
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %568, label %559

559:                                              ; preds = %559, %553
  %560 = load ptr, ptr %526, align 4
  %561 = getelementptr i8, ptr %560, i32 8
  %562 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %561) #11, !srcloc !8
  %563 = load ptr, ptr %526, align 4
  %564 = getelementptr i8, ptr %563, i32 16
  %565 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %564) #11, !srcloc !8
  %566 = and i32 %565, 1
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %559

568:                                              ; preds = %559, %553
  %569 = load ptr, ptr %526, align 4
  %570 = getelementptr i8, ptr %569, i32 16
  %571 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %570) #11, !srcloc !8
  br label %601

572:                                              ; preds = %519
  %573 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 17
  %574 = load i8, ptr %573, align 4, !range !10
  %575 = icmp eq i8 %574, 0
  br i1 %575, label %601, label %576

576:                                              ; preds = %572
  %577 = load i32, ptr %146, align 4
  %578 = icmp ugt i32 %577, 15
  br i1 %578, label %579, label %601

579:                                              ; preds = %576
  %580 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %581 = load ptr, ptr %580, align 4
  %582 = icmp eq ptr %581, null
  br i1 %582, label %590, label %583

583:                                              ; preds = %579
  %584 = load ptr, ptr %581, align 4
  %585 = getelementptr inbounds %struct.dma_device, ptr %584, i32 0, i32 47
  %586 = load ptr, ptr %585, align 4
  %587 = icmp eq ptr %586, null
  br i1 %587, label %590, label %588

588:                                              ; preds = %583
  %589 = call i32 %586(ptr noundef nonnull %581) #11
  br label %590

590:                                              ; preds = %588, %583, %579
  %591 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %592 = load ptr, ptr %591, align 8
  %593 = icmp eq ptr %592, null
  br i1 %593, label %601, label %594

594:                                              ; preds = %590
  %595 = load ptr, ptr %592, align 4
  %596 = getelementptr inbounds %struct.dma_device, ptr %595, i32 0, i32 47
  %597 = load ptr, ptr %596, align 4
  %598 = icmp eq ptr %597, null
  br i1 %598, label %601, label %599

599:                                              ; preds = %594
  %600 = call i32 %597(ptr noundef nonnull %592) #11
  br label %601

601:                                              ; preds = %599, %594, %590, %576, %572, %568, %171, %143
  %602 = load ptr, ptr %18, align 4
  %603 = getelementptr inbounds %struct.spi_message, ptr %602, i32 0, i32 2
  %604 = load i8, ptr %603, align 4
  %605 = and i8 %604, 1
  %606 = icmp eq i8 %605, 0
  br i1 %606, label %607, label %627

607:                                              ; preds = %601
  %608 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 18
  %609 = load i8, ptr %608, align 1, !range !10
  %610 = icmp eq i8 %609, 0
  br i1 %610, label %627, label %611

611:                                              ; preds = %607
  %612 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 3
  %613 = load i32, ptr %612, align 4
  %614 = icmp eq i32 %613, -1
  br i1 %614, label %619, label %615

615:                                              ; preds = %611
  %616 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %617 = load ptr, ptr %616, align 4
  %618 = load i32, ptr %146, align 4
  call void @dma_unmap_page_attrs(ptr noundef %617, i32 noundef %613, i32 noundef %618, i32 noundef 1, i32 noundef 0) #11
  br label %619

619:                                              ; preds = %615, %611
  %620 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 4
  %621 = load i32, ptr %620, align 4
  %622 = icmp eq i32 %621, -1
  br i1 %622, label %627, label %623

623:                                              ; preds = %619
  %624 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %625 = load ptr, ptr %624, align 4
  %626 = load i32, ptr %146, align 4
  call void @dma_unmap_page_attrs(ptr noundef %625, i32 noundef %621, i32 noundef %626, i32 noundef 2, i32 noundef 0) #11
  br label %627

627:                                              ; preds = %623, %619, %607, %601
  %628 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 18
  %629 = load i8, ptr %628, align 1, !range !10
  %630 = icmp eq i8 %629, 0
  br i1 %630, label %635, label %631

631:                                              ; preds = %627
  %632 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 3
  %633 = load ptr, ptr %632, align 4
  %634 = getelementptr i8, ptr %633, i32 288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %634, i32 514) #11, !srcloc !11
  br label %635

635:                                              ; preds = %631, %627
  %636 = load i32, ptr %144, align 4
  br label %637

637:                                              ; preds = %635, %97, %94, %54, %53, %3
  %638 = phi i32 [ %636, %635 ], [ -92, %3 ], [ -12, %97 ], [ -12, %94 ], [ -12, %54 ], [ -12, %53 ]
  ret i32 %638
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_spi_set_cs(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  %11 = xor i1 %10, %1
  %12 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 14
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 22
  %16 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  br i1 %11, label %20, label %94

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 16
  %22 = load i8, ptr %21, align 4, !range !10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %26 = load ptr, ptr %25, align 8
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 48
  %31 = shl nuw nsw i32 %19, 2
  %32 = getelementptr i8, ptr %30, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %27) #11, !srcloc !11
  %33 = load i32, ptr %26, align 4
  %34 = load ptr, ptr %28, align 4
  %35 = getelementptr i8, ptr %34, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #11, !srcloc !11
  %36 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 16, i32 1
  %37 = load i8, ptr %36, align 1, !range !10
  %38 = icmp eq i8 %37, 0
  %39 = shl i32 65536, %19
  %40 = and i32 %39, 983040
  br i1 %38, label %45, label %41

41:                                               ; preds = %24
  %42 = xor i32 %40, 983089
  %43 = load ptr, ptr %28, align 4
  %44 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #11, !srcloc !11
  br label %49

45:                                               ; preds = %24
  %46 = xor i32 %40, 983057
  %47 = load ptr, ptr %28, align 4
  %48 = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #11, !srcloc !11
  br label %49

49:                                               ; preds = %45, %41
  %50 = load ptr, ptr %28, align 4
  %51 = getelementptr i8, ptr %50, i32 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #11, !srcloc !8
  br label %113

53:                                               ; preds = %20
  %54 = lshr i32 %8, 1
  %55 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 3
  %56 = load i16, ptr %55, align 2
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 3
  br label %60

60:                                               ; preds = %75, %58
  %61 = phi i32 [ 0, %58 ], [ %76, %75 ]
  %62 = load ptr, ptr %59, align 4
  %63 = getelementptr i8, ptr %62, i32 48
  %64 = shl i32 %61, 2
  %65 = getelementptr i8, ptr %63, i32 %64
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #11, !srcloc !8
  %67 = xor i32 %66, %54
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %60
  %71 = xor i32 %66, 1
  %72 = load ptr, ptr %59, align 4
  %73 = getelementptr i8, ptr %72, i32 48
  %74 = getelementptr i8, ptr %73, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %71) #11, !srcloc !11
  br label %75

75:                                               ; preds = %70, %60
  %76 = add nuw nsw i32 %61, 1
  %77 = load ptr, ptr %3, align 4
  %78 = getelementptr inbounds %struct.spi_controller, ptr %77, i32 0, i32 3
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = icmp ult i32 %76, %80
  br i1 %81, label %60, label %82

82:                                               ; preds = %75, %53
  %83 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr i8, ptr %84, i32 4
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #11, !srcloc !8
  %87 = and i32 %86, -983041
  %88 = shl i32 65536, %19
  %89 = and i32 %88, 983040
  %90 = or i32 %87, %89
  %91 = xor i32 %90, 983040
  %92 = load ptr, ptr %83, align 4
  %93 = getelementptr i8, ptr %92, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #11, !srcloc !11
  br label %113

94:                                               ; preds = %2
  %95 = getelementptr inbounds %struct.atmel_spi, ptr %6, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr i8, ptr %96, i32 4
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #11, !srcloc !8
  %99 = lshr i32 %98, 16
  %100 = shl nuw i32 1, %19
  %101 = and i32 %100, 15
  %102 = and i32 %101, %99
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = or i32 %98, 983040
  %106 = load ptr, ptr %95, align 4
  %107 = getelementptr i8, ptr %106, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #11, !srcloc !11
  br label %108

108:                                              ; preds = %104, %94
  %109 = load ptr, ptr %12, align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load ptr, ptr %95, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 16777216) #11, !srcloc !11
  br label %113

113:                                              ; preds = %111, %108, %82, %49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_spi_cleanup(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  tail call void @kfree(ptr noundef nonnull %3) #11
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @atmel_spi_can_dma(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #4 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 17
  %7 = load i8, ptr %6, align 4, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 15
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i1 [ false, %3 ], [ %12, %9 ]
  ret i1 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_spi_pdc_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.atmel_spi, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !8
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !8
  %12 = and i32 %11, %8
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 88) #11, !srcloc !11
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  %21 = getelementptr inbounds %struct.atmel_spi, ptr %4, i32 0, i32 10
  store i32 -5, ptr %21, align 4
  br label %28

22:                                               ; preds = %2
  %23 = and i32 %12, 80
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr i8, ptr %26, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %12) #11, !srcloc !11
  br label %28

28:                                               ; preds = %25, %15
  %29 = getelementptr inbounds %struct.atmel_spi, ptr %4, i32 0, i32 15
  tail call void @complete(ptr noundef %29) #11
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi i32 [ 0, %22 ], [ 1, %28 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_spi_pio_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.atmel_spi, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !8
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !8
  %12 = and i32 %11, %8
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 8) #11, !srcloc !11
  %18 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.23) #12
  %20 = getelementptr inbounds %struct.atmel_spi, ptr %4, i32 0, i32 10
  store i32 -5, ptr %20, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !28
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i8, ptr %21, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !8
  %24 = getelementptr inbounds %struct.atmel_spi, ptr %4, i32 0, i32 15
  tail call void @complete(ptr noundef %24) #11
  br label %135

25:                                               ; preds = %2
  %26 = and i32 %12, 536870913
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %126, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %30 = getelementptr inbounds %struct.atmel_spi, ptr %4, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.atmel_spi, ptr %4, i32 0, i32 9
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %123, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.atmel_spi, ptr %4, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.atmel_spi, ptr %4, i32 0, i32 20
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %86, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr i8, ptr %41, i32 68
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11, !srcloc !8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 63
  %46 = getelementptr inbounds %struct.spi_transfer, ptr %36, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %31, align 4
  %49 = sub i32 %47, %48
  %50 = getelementptr inbounds %struct.spi_transfer, ptr %36, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 %49
  %53 = getelementptr inbounds %struct.spi_transfer, ptr %36, i32 0, i32 8
  %54 = load i8, ptr %53, align 1
  %55 = icmp ugt i8 %54, 8
  %56 = zext i1 %55 to i32
  %57 = shl nuw nsw i32 %45, %56
  %58 = tail call i32 @llvm.usub.sat.i32(i32 %48, i32 %57) #11
  store i32 %58, ptr %31, align 4
  %59 = load i8, ptr %53, align 1
  %60 = icmp ugt i8 %59, 8
  br i1 %60, label %61, label %63

61:                                               ; preds = %40
  %62 = and i32 %58, -2
  store i32 %62, ptr %31, align 4
  br label %63

63:                                               ; preds = %61, %40
  %64 = phi i32 [ %62, %61 ], [ %58, %40 ]
  %65 = icmp eq i32 %45, 0
  br i1 %65, label %114, label %66

66:                                               ; preds = %81, %63
  %67 = phi i32 [ %84, %81 ], [ %45, %63 ]
  %68 = phi ptr [ %83, %81 ], [ %52, %63 ]
  %69 = phi ptr [ %82, %81 ], [ %52, %63 ]
  %70 = load ptr, ptr %5, align 4
  %71 = getelementptr i8, ptr %70, i32 8
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #11, !srcloc !8
  %73 = load i8, ptr %53, align 1
  %74 = icmp ugt i8 %73, 8
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = trunc i32 %72 to i16
  %77 = getelementptr i16, ptr %69, i32 1
  store i16 %76, ptr %69, align 2
  br label %81

78:                                               ; preds = %66
  %79 = trunc i32 %72 to i8
  %80 = getelementptr i8, ptr %68, i32 1
  store i8 %79, ptr %68, align 1
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi ptr [ %77, %75 ], [ %69, %78 ]
  %83 = phi ptr [ %68, %75 ], [ %80, %78 ]
  %84 = add nsw i32 %67, -1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %112, label %66

86:                                               ; preds = %34
  %87 = getelementptr inbounds %struct.spi_transfer, ptr %36, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = sub i32 %88, %32
  %90 = getelementptr inbounds %struct.spi_transfer, ptr %36, i32 0, i32 8
  %91 = load i8, ptr %90, align 1
  %92 = icmp ugt i8 %91, 8
  %93 = getelementptr inbounds %struct.spi_transfer, ptr %36, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr i8, ptr %94, i32 %89
  %96 = load ptr, ptr %5, align 4
  %97 = getelementptr i8, ptr %96, i32 8
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #11
  br i1 %92, label %99, label %101

99:                                               ; preds = %86
  %100 = trunc i32 %98 to i16
  store i16 %100, ptr %95, align 2
  br label %103

101:                                              ; preds = %86
  %102 = trunc i32 %98 to i8
  store i8 %102, ptr %95, align 1
  br label %103

103:                                              ; preds = %101, %99
  %104 = load i8, ptr %90, align 1
  %105 = icmp ugt i8 %104, 8
  %106 = load i32, ptr %31, align 4
  %107 = add i32 %106, -1
  %108 = icmp sgt i32 %106, 2
  %109 = add nsw i32 %106, -2
  %110 = select i1 %108, i32 %109, i32 0
  %111 = select i1 %105, i32 %110, i32 %107
  store i32 %111, ptr %31, align 4
  br label %114

112:                                              ; preds = %81
  %113 = load i32, ptr %31, align 4
  br label %114

114:                                              ; preds = %112, %103, %63
  %115 = phi i32 [ %111, %103 ], [ %113, %112 ], [ %64, %63 ]
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load ptr, ptr %5, align 4
  %119 = getelementptr i8, ptr %118, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %12) #11, !srcloc !11
  br label %120

120:                                              ; preds = %117, %114
  %121 = getelementptr inbounds %struct.atmel_spi, ptr %4, i32 0, i32 15
  tail call void @complete(ptr noundef %121) #11
  %122 = load i32, ptr %30, align 4
  br label %123

123:                                              ; preds = %120, %28
  %124 = phi i32 [ %122, %120 ], [ %29, %28 ]
  %125 = phi i32 [ 1, %120 ], [ 0, %28 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %124) #11
  br label %135

126:                                              ; preds = %25
  %127 = icmp ne i32 %12, 0
  %128 = load i1, ptr @atmel_spi_pio_interrupt.__already_done, align 1
  %129 = xor i1 %128, true
  %130 = select i1 %127, i1 %129, i1 false
  br i1 %130, label %131, label %132, !prof !22

131:                                              ; preds = %126
  store i1 true, ptr @atmel_spi_pio_interrupt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1089, i32 noundef 9, ptr noundef nonnull @.str.24, i32 noundef %12) #11
  br label %132

132:                                              ; preds = %131, %126
  %133 = load ptr, ptr %5, align 4
  %134 = getelementptr i8, ptr %133, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %12) #11, !srcloc !11
  br label %135

135:                                              ; preds = %132, %123, %15
  %136 = phi i32 [ 1, %15 ], [ %125, %123 ], [ 1, %132 ]
  ret i32 %136
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_spi_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.atmel_spi, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 128) #11, !srcloc !11
  %4 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 128) #11, !srcloc !11
  %5 = getelementptr inbounds %struct.atmel_spi, ptr %0, i32 0, i32 20
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1073741824) #11, !srcloc !11
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.atmel_spi, ptr %0, i32 0, i32 16, i32 1
  %12 = load i8, ptr %11, align 1, !range !10
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  br i1 %13, label %17, label %16

16:                                               ; preds = %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 49) #11, !srcloc !11
  br label %18

17:                                               ; preds = %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 17) #11, !srcloc !11
  br label %18

18:                                               ; preds = %17, %16
  %19 = getelementptr inbounds %struct.atmel_spi, ptr %0, i32 0, i32 18
  %20 = load i8, ptr %19, align 1, !range !10
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr i8, ptr %23, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 514) #11, !srcloc !11
  br label %25

25:                                               ; preds = %22, %18
  %26 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 1) #11, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_spi_release_dma(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @dma_release_channel(ptr noundef nonnull %3) #11
  store ptr null, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @dma_release_channel(ptr noundef nonnull %8) #11
  store ptr null, ptr %7, align 8
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dma_callback(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.atmel_spi, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %7) #11
  %9 = getelementptr inbounds %struct.atmel_spi, ptr %3, i32 0, i32 15
  tail call void @complete(ptr noundef %9) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_spi_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @spi_controller_suspend(ptr noundef %3) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 7
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10, %6
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.atmel_spi, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %20) #11
  tail call void @clk_unprepare(ptr noundef %20) #11
  %21 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #11
  br label %22

22:                                               ; preds = %15, %10, %1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_spi_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %64

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #11
  br label %64

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 128) #11, !srcloc !11
  %17 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 128) #11, !srcloc !11
  %18 = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 20
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 1073741824) #11, !srcloc !11
  br label %23

23:                                               ; preds = %21, %14
  %24 = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 16, i32 1
  %25 = load i8, ptr %24, align 1, !range !10
  %26 = icmp eq i8 %25, 0
  %27 = load ptr, ptr %15, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  br i1 %26, label %30, label %29

29:                                               ; preds = %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 49) #11, !srcloc !11
  br label %31

30:                                               ; preds = %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 17) #11, !srcloc !11
  br label %31

31:                                               ; preds = %30, %29
  %32 = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 18
  %33 = load i8, ptr %32, align 1, !range !10
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %15, align 4
  %37 = getelementptr i8, ptr %36, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 514) #11, !srcloc !11
  br label %38

38:                                               ; preds = %35, %31
  %39 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 1) #11, !srcloc !11
  %40 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %40) #11
  tail call void @clk_unprepare(ptr noundef %40) #11
  %41 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %46 = load i16, ptr %45, align 8
  %47 = and i16 %46, 7
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %44, %38
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 8
  %52 = load ptr, ptr %51, align 8
  %53 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #11
  %54 = getelementptr inbounds %struct.atmel_spi, ptr %52, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @clk_prepare(ptr noundef %55) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = tail call i32 @clk_enable(ptr noundef %55) #11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void @clk_unprepare(ptr noundef %55) #11
  br label %64

62:                                               ; preds = %58, %44
  %63 = tail call i32 @spi_controller_resume(ptr noundef %3) #11
  br label %64

64:                                               ; preds = %62, %61, %49, %13, %1
  %65 = phi i32 [ %63, %62 ], [ %11, %13 ], [ %8, %1 ], [ %59, %61 ], [ %56, %49 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_spi_runtime_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  %8 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_spi_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #11
  %7 = getelementptr inbounds %struct.atmel_spi, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = tail call i32 @clk_enable(ptr noundef %8) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %8) #11
  br label %15

15:                                               ; preds = %14, %11, %1
  %16 = phi i32 [ %9, %1 ], [ %12, %14 ], [ 0, %11 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{i64 5048060}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{i64 5047642}
!12 = !{i64 2148921249}
!13 = !{i64 2148917073}
!14 = !{i64 2148917148, i64 2148917175, i64 2148917222, i64 2148917244, i64 2148917272, i64 2148917292}
!15 = !{i64 348267}
!16 = !{i64 2148945393}
!17 = !{i64 2147954473}
!18 = !{i64 452783, i64 2147942754, i64 2147942780, i64 2147942827, i64 2147942849, i64 2147942877, i64 2147942897}
!19 = !{i64 439352, i64 439377, i64 439399, i64 439415, i64 439427, i64 439447, i64 439471, i64 439487, i64 439499}
!20 = !{i64 2147954599}
!21 = !{i8 0, i8 9}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2153465910}
!24 = !{i64 2153465752}
!25 = !{i64 5047022}
!26 = !{i64 2153460849}
!27 = !{i64 2153460691}
!28 = !{i64 2153483863}
