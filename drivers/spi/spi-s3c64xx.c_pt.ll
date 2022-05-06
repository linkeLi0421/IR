; ModuleID = '/llk/IR/drivers/spi/spi-s3c64xx.c_pt.bc'
source_filename = "../drivers/spi/spi-s3c64xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.s3c64xx_spi_port_config = type { [6 x i32], i32, i32, i32, i8, i8, i8 }
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
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type {}
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
%struct.s3c64xx_spi_info = type { i32, i32, i8, ptr }
%struct.s3c64xx_spi_driver_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.completion, i32, i32, i32, i32, %struct.s3c64xx_spi_dma_data, %struct.s3c64xx_spi_dma_data, ptr, i32 }
%struct.s3c64xx_spi_dma_data = type { ptr, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.s3c64xx_spi_csinfo = type { i8, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@s3c64xx_spi_dt_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2443-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2443_spi_port_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6410-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c6410_spi_port_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pv210_spi_port_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_spi_port_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7_spi_port_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_spi_port_config }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias233 = internal constant [27 x i8] c"alias=platform:s3c64xx-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [48 x i8] c"author=Jaswinder Singh <jassi.brar@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [42 x i8] c"description=S3C64XX SPI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@s3c2443_spi_port_config = internal constant %struct.s3c64xx_spi_port_config { [6 x i32] [i32 127, i32 0, i32 0, i32 0, i32 0, i32 0], i32 13, i32 21, i32 0, i8 1, i8 0, i8 0 }, align 4
@s3c6410_spi_port_config = internal constant %struct.s3c64xx_spi_port_config { [6 x i32] [i32 127, i32 127, i32 0, i32 0, i32 0, i32 0], i32 13, i32 21, i32 0, i8 0, i8 0, i8 0 }, align 4
@s5pv210_spi_port_config = internal constant %struct.s3c64xx_spi_port_config { [6 x i32] [i32 511, i32 127, i32 0, i32 0, i32 0, i32 0], i32 15, i32 25, i32 0, i8 1, i8 0, i8 0 }, align 4
@exynos4_spi_port_config = internal constant %struct.s3c64xx_spi_port_config { [6 x i32] [i32 511, i32 127, i32 127, i32 0, i32 0, i32 0], i32 15, i32 25, i32 2, i8 1, i8 1, i8 0 }, align 4
@exynos7_spi_port_config = internal constant %struct.s3c64xx_spi_port_config { [6 x i32] [i32 511, i32 127, i32 127, i32 127, i32 127, i32 511], i32 15, i32 25, i32 2, i8 1, i8 1, i8 0 }, align 4
@exynos5433_spi_port_config = internal constant %struct.s3c64xx_spi_port_config { [6 x i32] [i32 511, i32 127, i32 127, i32 127, i32 127, i32 511], i32 15, i32 25, i32 2, i8 1, i8 1, i8 1 }, align 4
@s3c64xx_spi_driver = internal global %struct.platform_driver { ptr @s3c64xx_spi_probe, ptr @s3c64xx_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s3c64xx_spi_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c64xx_spi_pm, ptr null, ptr null }, ptr @s3c64xx_spi_driver_ids, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"s3c64xx-spi\00", align 1
@s3c64xx_spi_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @s3c64xx_spi_suspend, ptr @s3c64xx_spi_resume, ptr @s3c64xx_spi_suspend, ptr @s3c64xx_spi_resume, ptr @s3c64xx_spi_suspend, ptr @s3c64xx_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c64xx_spi_runtime_suspend, ptr @s3c64xx_spi_runtime_resume, ptr null }, align 4
@s3c64xx_spi_driver_ids = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c2443-spi\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @s3c2443_spi_port_config to i32) }, %struct.platform_device_id { [20 x i8] c"s3c6410-spi\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @s3c6410_spi_port_config to i32) }, %struct.platform_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"platform_data missing!\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to get SPI MEM resource\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to get IRQ: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Unable to allocate SPI Master\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to get alias id, errno %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Unable to config gpio\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Unable to acquire clock 'spi'\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Couldn't enable clock 'spi'\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"spi_busclk%d\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Unable to acquire clock '%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Couldn't enable clock '%s'\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"spi_ioclk\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Unable to acquire 'ioclk'\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Couldn't enable clock 'ioclk'\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Failed to get RX DMA channel\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Failed to get TX DMA channel\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"spi-s3c64xx\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"cannot register SPI master: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"samsung,spi-src-clk\00", align 1
@.str.24 = private unnamed_addr constant [70 x i8] c"spi bus clock parent not specified, using clock at index 0 as parent\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"num-cs\00", align 1
@.str.26 = private unnamed_addr constant [72 x i8] c"number of chip select lines not specified, assuming 1 chip select line\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"no-cs-readback\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"No CS for SPI(%d)\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"Failed to get /CS gpio [%d]: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Can't set %dHz transfer speed\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"controller-data\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"child node 'controller-data' not found\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"samsung,spi-feedback-delay\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.35 = private unnamed_addr constant [45 x i8] c"failed to enable data path for transfer: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [59 x i8] c"I/O Error: rx-%d tx-%d rx-%c tx-%c len-%d dma-%d res-(%d)\0A\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"TX residue: %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"RX residue: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"unable to prepare %s scatterlist\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"DMA submission failed\00", align 1
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [28 x i8] c"Timed out flushing TX FIFO\0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"Timed out flushing RX FIFO\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"RX overrun\0A\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"RX underrun\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"TX overrun\0A\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"TX underrun\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_license236], section "llvm.metadata"

@__mod_of__s3c64xx_spi_dt_match_device_table = dso_local alias [7 x %struct.of_device_id], ptr @s3c64xx_spi_dt_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s3c64xx_spi_driver, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @s3c64xx_spi_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca [16 x i8], align 1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %44

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 16, i32 noundef 3520) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %40

16:                                               ; preds = %12
  %17 = load ptr, ptr %9, align 8
  %18 = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.23, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.24) #12
  br label %23

21:                                               ; preds = %16
  %22 = load i32, ptr %2, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ %22, %21 ], [ 0, %20 ]
  store i32 %24, ptr %13, align 4
  %25 = load ptr, ptr %9, align 8
  %26 = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.25, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.26) #12
  br label %31

29:                                               ; preds = %23
  %30 = load i32, ptr %2, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ %30, %29 ], [ 1, %28 ]
  %33 = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %13, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  %34 = load ptr, ptr %9, align 8
  %35 = call ptr @of_find_property(ptr noundef %34, ptr noundef nonnull @.str.27, ptr noundef null) #11
  %36 = icmp ne ptr %35, null
  %37 = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %13, i32 0, i32 2
  %38 = zext i1 %36 to i8
  store i8 %38, ptr %37, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %39 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %44

40:                                               ; preds = %31, %15
  %41 = phi ptr [ inttoptr (i32 -12 to ptr), %15 ], [ %13, %31 ]
  %42 = ptrtoint ptr %41 to i32
  br label %267

43:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #12
  br label %267

44:                                               ; preds = %31, %1
  %45 = phi ptr [ %13, %31 ], [ %6, %1 ]
  %46 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #12
  br label %267

49:                                               ; preds = %44
  %50 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %50) #12
  br label %267

53:                                               ; preds = %49
  %54 = call ptr @__spi_alloc_controller(ptr noundef %4, i32 noundef 100, i1 noundef zeroext false) #11
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #12
  br label %267

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %54, ptr %58, align 8
  %59 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 8
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = call ptr @of_device_get_match_data(ptr noundef %4) #11
  br label %72

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.platform_device_id, ptr %68, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = inttoptr i32 %70 to ptr
  br label %72

72:                                               ; preds = %66, %64
  %73 = phi ptr [ %65, %64 ], [ %71, %66 ]
  %74 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 16
  store ptr %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 5
  store ptr %54, ptr %75, align 4
  %76 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 6
  store ptr %45, ptr %76, align 4
  %77 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 4
  store ptr %0, ptr %77, align 4
  %78 = load i32, ptr %46, align 4
  %79 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 8
  store i32 %78, ptr %79, align 4
  %80 = load ptr, ptr %61, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %72
  %83 = call i32 @of_alias_get_id(ptr noundef nonnull %80, ptr noundef nonnull @.str.5) #11
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %83) #12
  br label %265

86:                                               ; preds = %72
  %87 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  br label %89

89:                                               ; preds = %86, %82
  %90 = phi i32 [ %88, %86 ], [ %83, %82 ]
  %91 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 17
  store i32 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 12
  store i32 8, ptr %92, align 4
  %93 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 15
  %94 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 15, i32 2
  store i32 1, ptr %94, align 4
  %95 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 14
  %96 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 14, i32 2
  store i32 2, ptr %96, align 4
  %97 = load ptr, ptr %61, align 8
  %98 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 25
  store ptr %97, ptr %98, align 8
  %99 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 17
  %100 = load i32, ptr %99, align 4
  %101 = trunc i32 %100 to i16
  %102 = getelementptr inbounds %struct.spi_controller, ptr %54, i32 0, i32 2
  store i16 %101, ptr %102, align 8
  %103 = getelementptr inbounds %struct.spi_controller, ptr %54, i32 0, i32 20
  store ptr @s3c64xx_spi_setup, ptr %103, align 4
  %104 = getelementptr inbounds %struct.spi_controller, ptr %54, i32 0, i32 23
  store ptr @s3c64xx_spi_cleanup, ptr %104, align 8
  %105 = getelementptr inbounds %struct.spi_controller, ptr %54, i32 0, i32 44
  store ptr @s3c64xx_spi_prepare_transfer, ptr %105, align 8
  %106 = getelementptr inbounds %struct.spi_controller, ptr %54, i32 0, i32 47
  store ptr @s3c64xx_spi_prepare_message, ptr %106, align 4
  %107 = getelementptr inbounds %struct.spi_controller, ptr %54, i32 0, i32 51
  store ptr @s3c64xx_spi_transfer_one, ptr %107, align 4
  %108 = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %45, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = trunc i32 %109 to i16
  %111 = getelementptr inbounds %struct.spi_controller, ptr %54, i32 0, i32 3
  store i16 %110, ptr %111, align 2
  %112 = getelementptr inbounds %struct.spi_controller, ptr %54, i32 0, i32 4
  store i16 8, ptr %112, align 4
  %113 = getelementptr inbounds %struct.spi_controller, ptr %54, i32 0, i32 7
  store i32 -2147450752, ptr %113, align 8
  %114 = getelementptr inbounds %struct.spi_controller, ptr %54, i32 0, i32 5
  store i32 7, ptr %114, align 8
  %115 = getelementptr inbounds %struct.spi_controller, ptr %54, i32 0, i32 36
  store i8 1, ptr %115, align 4
  %116 = load ptr, ptr %74, align 4
  %117 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %116, i32 0, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %89
  %122 = getelementptr inbounds %struct.spi_controller, ptr %54, i32 0, i32 24
  store ptr @s3c64xx_spi_can_dma, ptr %122, align 4
  br label %123

123:                                              ; preds = %121, %89
  %124 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef nonnull %46) #11
  store ptr %124, ptr %60, align 4
  %125 = icmp ugt ptr %124, inttoptr (i32 -4096 to ptr)
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = ptrtoint ptr %124 to i32
  br label %265

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %45, i32 0, i32 3
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = call i32 %130() #11
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #12
  br label %265

136:                                              ; preds = %132, %128
  %137 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.5) #11
  %138 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 1
  store ptr %137, ptr %138, align 4
  %139 = icmp ugt ptr %137, inttoptr (i32 -4096 to ptr)
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #12
  %141 = load ptr, ptr %138, align 4
  %142 = ptrtoint ptr %141 to i32
  br label %265

143:                                              ; preds = %136
  %144 = call i32 @clk_prepare(ptr noundef %137) #11
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = call i32 @clk_enable(ptr noundef %137) #11
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  call void @clk_unprepare(ptr noundef %137) #11
  br label %150

150:                                              ; preds = %149, %143
  %151 = phi i32 [ %147, %149 ], [ %144, %143 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #12
  br label %265

152:                                              ; preds = %146
  %153 = load i32, ptr %45, align 4
  %154 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, i32 noundef %153)
  %155 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull %3) #11
  %156 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 2
  store ptr %155, ptr %156, align 4
  %157 = icmp ugt ptr %155, inttoptr (i32 -4096 to ptr)
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11, ptr noundef nonnull %3) #12
  %159 = load ptr, ptr %156, align 4
  %160 = ptrtoint ptr %159 to i32
  br label %262

161:                                              ; preds = %152
  %162 = call i32 @clk_prepare(ptr noundef %155) #11
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = call i32 @clk_enable(ptr noundef %155) #11
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  call void @clk_unprepare(ptr noundef %155) #11
  br label %168

168:                                              ; preds = %167, %161
  %169 = phi i32 [ %165, %167 ], [ %162, %161 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef nonnull %3) #12
  br label %262

170:                                              ; preds = %164
  %171 = load ptr, ptr %74, align 4
  %172 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %171, i32 0, i32 6
  %173 = load i8, ptr %172, align 2, !range !9
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %193, label %175

175:                                              ; preds = %170
  %176 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.13) #11
  %177 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 3
  store ptr %176, ptr %177, align 4
  %178 = icmp ugt ptr %176, inttoptr (i32 -4096 to ptr)
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.14) #12
  %180 = load ptr, ptr %177, align 4
  %181 = ptrtoint ptr %180 to i32
  br label %259

182:                                              ; preds = %175
  %183 = call i32 @clk_prepare(ptr noundef %176) #11
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = call i32 @clk_enable(ptr noundef %176) #11
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = load ptr, ptr %74, align 4
  br label %193

190:                                              ; preds = %185
  call void @clk_unprepare(ptr noundef %176) #11
  br label %191

191:                                              ; preds = %190, %182
  %192 = phi i32 [ %186, %190 ], [ %183, %182 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.15) #12
  br label %259

193:                                              ; preds = %188, %170
  %194 = phi ptr [ %189, %188 ], [ %171, %170 ]
  %195 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %194, i32 0, i32 3
  %196 = load i32, ptr %195, align 4
  %197 = and i32 %196, 1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %211

199:                                              ; preds = %193
  %200 = call ptr @dma_request_chan(ptr noundef %4, ptr noundef nonnull @.str.16) #11
  store ptr %200, ptr %95, align 4
  %201 = icmp ugt ptr %200, inttoptr (i32 -4096 to ptr)
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.17) #12
  %203 = load ptr, ptr %95, align 4
  %204 = ptrtoint ptr %203 to i32
  br label %255

205:                                              ; preds = %199
  %206 = call ptr @dma_request_chan(ptr noundef %4, ptr noundef nonnull @.str.18) #11
  store ptr %206, ptr %93, align 4
  %207 = icmp ugt ptr %206, inttoptr (i32 -4096 to ptr)
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.19) #12
  %209 = load ptr, ptr %93, align 4
  %210 = ptrtoint ptr %209 to i32
  br label %246

211:                                              ; preds = %205, %193
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %4, i32 noundef 2000) #11
  call void @__pm_runtime_use_autosuspend(ptr noundef %4, i1 noundef zeroext true) #11
  %212 = call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 0) #11
  call void @pm_runtime_enable(ptr noundef %4) #11
  %213 = call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #11
  call fastcc void @s3c64xx_spi_hwinit(ptr noundef %60)
  %214 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 7
  store i32 0, ptr %214, align 4
  %215 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 9
  store i32 0, ptr %215, align 4
  %216 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 9, i32 1
  call void @__init_swait_queue_head(ptr noundef %216, ptr noundef nonnull @.str.43, ptr noundef nonnull @init_completion.__key) #11
  %217 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %50, ptr noundef nonnull @s3c64xx_spi_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %60) #11
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %211
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.21, i32 noundef %50, i32 noundef %217) #12
  br label %230

220:                                              ; preds = %211
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  call void @arm_heavy_mb() #11
  %221 = load ptr, ptr %60, align 4
  %222 = getelementptr i8, ptr %221, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 60) #11, !srcloc !11
  %223 = call i32 @devm_spi_register_controller(ptr noundef %4, ptr noundef nonnull %54) #11
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %220
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.22, i32 noundef %223) #12
  br label %230

226:                                              ; preds = %220
  %227 = call i64 @ktime_get_mono_fast_ns() #11
  %228 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %227, ptr %228, align 8
  %229 = call i32 @__pm_runtime_suspend(ptr noundef %4, i32 noundef 13) #11
  br label %267

230:                                              ; preds = %225, %219
  %231 = phi i32 [ %217, %219 ], [ %223, %225 ]
  %232 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %232) #11, !srcloc !13
  %233 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %232, ptr %232, i32 0, i32 -1, ptr elementtype(i32) %232) #11, !srcloc !14
  %234 = extractvalue { i32, i32, i32 } %233, 0
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %230
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  br label %237

237:                                              ; preds = %236, %230
  call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #11
  %238 = call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 2) #11
  %239 = load ptr, ptr %74, align 4
  %240 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %239, i32 0, i32 3
  %241 = load i32, ptr %240, align 4
  %242 = and i32 %241, 1
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %237
  %245 = load ptr, ptr %93, align 4
  call void @dma_release_channel(ptr noundef %245) #11
  br label %246

246:                                              ; preds = %244, %237, %208
  %247 = phi i32 [ %231, %237 ], [ %231, %244 ], [ %210, %208 ]
  %248 = load ptr, ptr %74, align 4
  %249 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %248, i32 0, i32 3
  %250 = load i32, ptr %249, align 4
  %251 = and i32 %250, 1
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %246
  %254 = load ptr, ptr %95, align 4
  call void @dma_release_channel(ptr noundef %254) #11
  br label %255

255:                                              ; preds = %253, %246, %202
  %256 = phi i32 [ %247, %246 ], [ %247, %253 ], [ %204, %202 ]
  %257 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %60, i32 0, i32 3
  %258 = load ptr, ptr %257, align 4
  call void @clk_disable(ptr noundef %258) #11
  call void @clk_unprepare(ptr noundef %258) #11
  br label %259

259:                                              ; preds = %255, %191, %179
  %260 = phi i32 [ %181, %179 ], [ %192, %191 ], [ %256, %255 ]
  %261 = load ptr, ptr %156, align 4
  call void @clk_disable(ptr noundef %261) #11
  call void @clk_unprepare(ptr noundef %261) #11
  br label %262

262:                                              ; preds = %259, %168, %158
  %263 = phi i32 [ %160, %158 ], [ %169, %168 ], [ %260, %259 ]
  %264 = load ptr, ptr %138, align 4
  call void @clk_disable(ptr noundef %264) #11
  call void @clk_unprepare(ptr noundef %264) #11
  br label %265

265:                                              ; preds = %262, %150, %140, %135, %126, %85
  %266 = phi i32 [ %83, %85 ], [ %127, %126 ], [ -16, %135 ], [ %142, %140 ], [ %151, %150 ], [ %263, %262 ]
  call void @put_device(ptr noundef nonnull %54) #11
  br label %267

267:                                              ; preds = %265, %226, %56, %52, %48, %43, %40
  %268 = phi i32 [ -6, %48 ], [ %50, %52 ], [ -12, %56 ], [ %266, %265 ], [ 0, %226 ], [ -19, %43 ], [ %42, %40 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret i32 %268
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !16
  tail call void @arm_heavy_mb() #11
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #11, !srcloc !11
  %10 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  tail call void @dma_release_channel(ptr noundef %18) #11
  %19 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  tail call void @dma_release_channel(ptr noundef %20) #11
  br label %21

21:                                               ; preds = %16, %1
  %22 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  tail call void @clk_disable(ptr noundef %23) #11
  tail call void @clk_unprepare(ptr noundef %23) #11
  %24 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %25) #11
  tail call void @clk_unprepare(ptr noundef %25) #11
  %26 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %27) #11
  tail call void @clk_unprepare(ptr noundef %27) #11
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #11, !srcloc !13
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 0, i32 -1, ptr elementtype(i32) %28) #11, !srcloc !14
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  br label %33

33:                                               ; preds = %32, %21
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #11
  %34 = tail call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 2) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_setup(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4
  %13 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %10, ptr noundef nonnull @.str.32) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.33) #12
  br label %25

16:                                               ; preds = %12
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 8) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @of_node_put(ptr noundef nonnull %13) #11
  br label %25

21:                                               ; preds = %16
  %22 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.34, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %23 = load i32, ptr %2, align 4
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %18, align 8
  call void @of_node_put(ptr noundef nonnull %13) #11
  br label %25

25:                                               ; preds = %21, %20, %15
  %26 = phi ptr [ %18, %21 ], [ inttoptr (i32 -12 to ptr), %20 ], [ inttoptr (i32 -22 to ptr), %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  store ptr %26, ptr %3, align 4
  br label %33

27:                                               ; preds = %1
  %28 = icmp eq ptr %4, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.s3c64xx_spi_csinfo, ptr %4, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi ptr [ %26, %25 ], [ %4, %29 ]
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %40

36:                                               ; preds = %33, %27
  %37 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %39) #12
  br label %172

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 13
  %46 = load i32, ptr %45, align 4
  %47 = icmp ult i32 %46, 2048
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load ptr, ptr %0, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi ptr [ %53, %52 ], [ %50, %48 ]
  %56 = call i32 @gpio_request_one(i32 noundef %46, i32 noundef 2, ptr noundef %55) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %45, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %59, i32 noundef %56) #12
  br label %167

60:                                               ; preds = %54, %44
  store ptr %34, ptr %41, align 8
  br label %61

61:                                               ; preds = %60, %40
  %62 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %8, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3
  %65 = call i32 @__pm_runtime_resume(ptr noundef %64, i32 noundef 4) #11
  %66 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %8, i32 0, i32 16
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %67, i32 0, i32 5
  %69 = load i8, ptr %68, align 1, !range !9
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %111

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %8, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 @clk_get_rate(ptr noundef %73) #11
  %75 = lshr i32 %74, 1
  %76 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 3
  %77 = load i32, ptr %76, align 8
  %78 = icmp ugt i32 %77, %75
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 %75, ptr %76, align 8
  br label %80

80:                                               ; preds = %79, %71
  %81 = load ptr, ptr %72, align 4
  %82 = call i32 @clk_get_rate(ptr noundef %81) #11
  %83 = lshr i32 %82, 1
  %84 = load i32, ptr %76, align 8
  %85 = udiv i32 %83, %84
  %86 = add nuw i32 %85, 255
  %87 = and i32 %86, 255
  %88 = icmp eq i32 %87, 255
  %89 = select i1 %88, i32 254, i32 %87
  %90 = load ptr, ptr %72, align 4
  %91 = call i32 @clk_get_rate(ptr noundef %90) #11
  %92 = lshr i32 %91, 1
  %93 = add nuw nsw i32 %89, 1
  %94 = udiv i32 %92, %93
  %95 = load i32, ptr %76, align 8
  %96 = icmp ult i32 %95, %94
  br i1 %96, label %97, label %101

97:                                               ; preds = %80
  %98 = icmp ult i32 %89, 254
  br i1 %98, label %99, label %136

99:                                               ; preds = %97
  %100 = add nuw nsw i32 %89, 2
  br label %101

101:                                              ; preds = %99, %80
  %102 = phi i32 [ %100, %99 ], [ %93, %80 ]
  %103 = load ptr, ptr %72, align 4
  %104 = call i32 @clk_get_rate(ptr noundef %103) #11
  %105 = lshr i32 %104, 1
  %106 = udiv i32 %105, %102
  %107 = load i32, ptr %76, align 8
  %108 = icmp ult i32 %107, %106
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %107) #12
  br label %136

110:                                              ; preds = %101
  store i32 %106, ptr %76, align 8
  br label %111

111:                                              ; preds = %110, %61
  %112 = load ptr, ptr %62, align 4
  %113 = call i64 @ktime_get_mono_fast_ns() #11
  %114 = getelementptr inbounds %struct.platform_device, ptr %112, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %113, ptr %114, align 8
  %115 = load ptr, ptr %62, align 4
  %116 = getelementptr inbounds %struct.platform_device, ptr %115, i32 0, i32 3
  %117 = call i32 @__pm_runtime_suspend(ptr noundef %116, i32 noundef 13) #11
  %118 = load ptr, ptr %5, align 4
  %119 = getelementptr inbounds %struct.device, ptr %118, i32 0, i32 8
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %120, i32 0, i32 6
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %122, i32 0, i32 2
  %124 = load i8, ptr %123, align 4, !range !9
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %172

126:                                              ; preds = %111
  %127 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %120, i32 0, i32 16
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %128, i32 0, i32 3
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %172

133:                                              ; preds = %126
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !17
  call void @arm_heavy_mb() #11
  %134 = load ptr, ptr %120, align 4
  %135 = getelementptr i8, ptr %134, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 1) #11, !srcloc !11
  br label %172

136:                                              ; preds = %109, %97
  %137 = load ptr, ptr %62, align 4
  %138 = call i64 @ktime_get_mono_fast_ns() #11
  %139 = getelementptr inbounds %struct.platform_device, ptr %137, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %138, ptr %139, align 8
  %140 = load ptr, ptr %62, align 4
  %141 = getelementptr inbounds %struct.platform_device, ptr %140, i32 0, i32 3
  %142 = call i32 @__pm_runtime_suspend(ptr noundef %141, i32 noundef 13) #11
  %143 = load ptr, ptr %5, align 4
  %144 = getelementptr inbounds %struct.device, ptr %143, i32 0, i32 8
  %145 = load ptr, ptr %144, align 8
  %146 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %145, i32 0, i32 6
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %147, i32 0, i32 2
  %149 = load i8, ptr %148, align 4, !range !9
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %136
  %152 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %145, i32 0, i32 16
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %153, i32 0, i32 3
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, 2
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !17
  call void @arm_heavy_mb() #11
  %159 = load ptr, ptr %145, align 4
  %160 = getelementptr i8, ptr %159, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 1) #11, !srcloc !11
  br label %161

161:                                              ; preds = %158, %151, %136
  %162 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 13
  %163 = load i32, ptr %162, align 4
  %164 = icmp ult i32 %163, 2048
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  call void @gpio_free(i32 noundef %163) #11
  br label %166

166:                                              ; preds = %165, %161
  store ptr null, ptr %41, align 8
  br label %167

167:                                              ; preds = %166, %58
  %168 = phi i32 [ -22, %166 ], [ %56, %58 ]
  %169 = load ptr, ptr %9, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %167
  call void @kfree(ptr noundef nonnull %34) #11
  br label %172

172:                                              ; preds = %171, %167, %133, %126, %111, %36
  %173 = phi i32 [ -19, %36 ], [ %168, %171 ], [ %168, %167 ], [ 0, %111 ], [ 0, %126 ], [ 0, %133 ]
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c64xx_spi_cleanup(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 2048
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  tail call void @gpio_free(i32 noundef %5) #11
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @kfree(ptr noundef %3) #11
  br label %13

12:                                               ; preds = %7
  store i32 -2, ptr %4, align 4
  br label %13

13:                                               ; preds = %12, %11, %1
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s3c64xx_spi_prepare_transfer(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  store ptr %15, ptr %16, align 8
  br label %17

17:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_prepare_message(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !18
  tail call void @arm_heavy_mb() #11
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 3
  %11 = zext i8 %10 to i32
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #11, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_transfer_one(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.dma_tx_state, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr [6 x i32], ptr %8, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = ashr i32 %12, 1
  %14 = add nsw i32 %13, 1
  %15 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 9
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 8
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = zext i8 %17 to i32
  %21 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %20
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 13
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %19, %26
  br i1 %27, label %90, label %28

28:                                               ; preds = %24, %3
  store i32 %20, ptr %21, align 4
  %29 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 13
  store i32 %19, ptr %29, align 4
  %30 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %8, i32 0, i32 5
  %35 = load i8, ptr %34, align 1, !range !9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = getelementptr i8, ptr %33, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !20
  %40 = and i32 %39, -257
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !21
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %40) #11, !srcloc !11
  br label %41

41:                                               ; preds = %37, %28
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !22
  %43 = and i32 %42, -29
  %44 = load i32, ptr %32, align 4
  %45 = shl i32 %44, 2
  %46 = and i32 %45, 8
  %47 = or i32 %46, %43
  %48 = and i32 %45, 4
  %49 = or i32 %47, %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !23
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %49) #11, !srcloc !11
  %50 = getelementptr i8, ptr %33, i32 8
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #11, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !24
  %52 = and i32 %51, -1611005953
  %53 = load i32, ptr %21, align 4
  switch i32 %53, label %58 [
    i32 32, label %54
    i32 16, label %56
  ]

54:                                               ; preds = %41
  %55 = or i32 %52, 1074003968
  br label %58

56:                                               ; preds = %41
  %57 = or i32 %52, 537001984
  br label %58

58:                                               ; preds = %56, %54, %41
  %59 = phi i32 [ %57, %56 ], [ %55, %54 ], [ %52, %41 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !25
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %59) #11, !srcloc !11
  %60 = load ptr, ptr %7, align 4
  %61 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %60, i32 0, i32 5
  %62 = load i8, ptr %61, align 1, !range !9
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = load i32, ptr %29, align 4
  %68 = shl i32 %67, 1
  %69 = tail call i32 @clk_set_rate(ptr noundef %66, i32 noundef %68) #11
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %485

71:                                               ; preds = %64
  %72 = load ptr, ptr %65, align 4
  %73 = tail call i32 @clk_get_rate(ptr noundef %72) #11
  %74 = lshr i32 %73, 1
  store i32 %74, ptr %29, align 4
  br label %90

75:                                               ; preds = %58
  %76 = getelementptr i8, ptr %33, i32 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #11, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !26
  %78 = and i32 %77, -256
  %79 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @clk_get_rate(ptr noundef %80) #11
  %82 = load i32, ptr %29, align 4
  %83 = udiv i32 %81, %82
  %84 = lshr i32 %83, 1
  %85 = add nuw i32 %84, 255
  %86 = and i32 %85, 255
  %87 = or i32 %86, %78
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !27
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %87) #11, !srcloc !11
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #11, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !28
  %89 = or i32 %88, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !29
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %89) #11, !srcloc !11
  br label %90

90:                                               ; preds = %75, %71, %24
  %91 = load ptr, ptr %7, align 4
  %92 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %91, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  %96 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = icmp ugt i32 %97, %14
  br i1 %95, label %99, label %109

99:                                               ; preds = %90
  br i1 %98, label %100, label %108

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 14
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 15
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %104, %100, %99
  br label %114

109:                                              ; preds = %90
  br i1 %98, label %110, label %114

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %2, align 4
  store i32 %14, ptr %96, align 4
  br label %114

114:                                              ; preds = %110, %109, %108, %104
  %115 = phi ptr [ %113, %110 ], [ null, %109 ], [ null, %104 ], [ null, %108 ]
  %116 = phi ptr [ %112, %110 ], [ null, %109 ], [ null, %104 ], [ null, %108 ]
  %117 = phi i32 [ %97, %110 ], [ 0, %109 ], [ 0, %104 ], [ 0, %108 ]
  %118 = phi i1 [ true, %110 ], [ true, %109 ], [ false, %104 ], [ true, %108 ]
  %119 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 7
  %120 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 10
  %121 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %122 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 15
  %123 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5
  %124 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %125 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %126 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 13
  %127 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 11
  %128 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 14
  %129 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 6
  %130 = xor i1 %118, true
  %131 = zext i1 %130 to i32
  %132 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 15, i32 1
  %133 = getelementptr inbounds %struct.dma_tx_state, ptr %4, i32 0, i32 2
  %134 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 14, i32 1
  br label %135

135:                                              ; preds = %478, %114
  %136 = phi i32 [ %117, %114 ], [ %468, %478 ]
  %137 = call i32 @_raw_spin_lock_irqsave(ptr noundef %119) #11
  %138 = load i32, ptr %120, align 4
  %139 = and i32 %138, -13
  store i32 %139, ptr %120, align 4
  %140 = load ptr, ptr %121, align 4
  %141 = getelementptr inbounds %struct.device, ptr %140, i32 0, i32 8
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %142, i32 0, i32 6
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %144, i32 0, i32 2
  %146 = load i8, ptr %145, align 4, !range !9
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %165

148:                                              ; preds = %135
  %149 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %142, i32 0, i32 16
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %150, i32 0, i32 3
  %152 = load i32, ptr %151, align 4
  %153 = and i32 %152, 2
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !30
  call void @arm_heavy_mb() #11
  %156 = load ptr, ptr %142, align 4
  %157 = getelementptr i8, ptr %156, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 0) #11, !srcloc !11
  br label %165

158:                                              ; preds = %148
  %159 = load ptr, ptr %142, align 4
  %160 = getelementptr i8, ptr %159, i32 12
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #11, !srcloc !19
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !31
  %162 = or i32 %161, 34
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  call void @arm_heavy_mb() #11
  %163 = load ptr, ptr %142, align 4
  %164 = getelementptr i8, ptr %163, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %162) #11, !srcloc !11
  br label %165

165:                                              ; preds = %158, %155, %135
  %166 = load ptr, ptr %6, align 4
  %167 = getelementptr i8, ptr %166, i32 8
  %168 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #11, !srcloc !19
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !33
  %169 = and i32 %168, -7
  %170 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #11, !srcloc !19
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !34
  %171 = and i32 %170, -4
  br i1 %118, label %172, label %183

172:                                              ; preds = %165
  %173 = or i32 %171, 2
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !35
  call void @arm_heavy_mb() #11
  %174 = load i32, ptr %124, align 4
  %175 = shl i32 %174, 3
  %176 = load i32, ptr %21, align 4
  %177 = udiv i32 %175, %176
  %178 = and i32 %177, 65535
  %179 = or i32 %178, 65536
  %180 = getelementptr i8, ptr %166, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %179) #11, !srcloc !11
  %181 = load ptr, ptr %2, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %211, label %192

183:                                              ; preds = %165
  %184 = load ptr, ptr %2, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %211, label %186

186:                                              ; preds = %183
  %187 = load i32, ptr %120, align 4
  %188 = or i32 %187, 8
  store i32 %188, ptr %120, align 4
  %189 = or i32 %171, 1
  %190 = or i32 %169, 2
  %191 = call fastcc i32 @prepare_dma(ptr noundef %122, ptr noundef %123) #11
  br label %211

192:                                              ; preds = %172
  %193 = load i32, ptr %120, align 4
  %194 = or i32 %193, 8
  store i32 %194, ptr %120, align 4
  %195 = or i32 %170, 3
  %196 = load i32, ptr %21, align 4
  switch i32 %196, label %207 [
    i32 32, label %197
    i32 16, label %202
  ]

197:                                              ; preds = %192
  %198 = getelementptr i8, ptr %166, i32 24
  %199 = load ptr, ptr %2, align 4
  %200 = load i32, ptr %124, align 4
  %201 = lshr i32 %200, 2
  call void @__raw_writesl(ptr noundef %198, ptr noundef %199, i32 noundef %201) #11
  br label %211

202:                                              ; preds = %192
  %203 = getelementptr i8, ptr %166, i32 24
  %204 = load ptr, ptr %2, align 4
  %205 = load i32, ptr %124, align 4
  %206 = lshr i32 %205, 1
  call void @__raw_writesw(ptr noundef %203, ptr noundef %204, i32 noundef %206) #11
  br label %211

207:                                              ; preds = %192
  %208 = getelementptr i8, ptr %166, i32 24
  %209 = load ptr, ptr %2, align 4
  %210 = load i32, ptr %124, align 4
  call void @__raw_writesb(ptr noundef %208, ptr noundef %209, i32 noundef %210) #11
  br label %211

211:                                              ; preds = %207, %202, %197, %186, %183, %172
  %212 = phi i32 [ %191, %186 ], [ 0, %207 ], [ 0, %202 ], [ 0, %197 ], [ 0, %172 ], [ 0, %183 ]
  %213 = phi i32 [ %189, %186 ], [ %195, %207 ], [ %195, %202 ], [ %195, %197 ], [ %173, %172 ], [ %171, %183 ]
  %214 = phi i32 [ %190, %186 ], [ %169, %207 ], [ %169, %202 ], [ %169, %197 ], [ %169, %172 ], [ %169, %183 ]
  %215 = load ptr, ptr %125, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %246, label %217

217:                                              ; preds = %211
  %218 = load i32, ptr %120, align 4
  %219 = or i32 %218, 4
  store i32 %219, ptr %120, align 4
  %220 = load ptr, ptr %7, align 4
  %221 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %220, i32 0, i32 4
  %222 = load i8, ptr %221, align 4, !range !9
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %233, label %224

224:                                              ; preds = %217
  %225 = load i32, ptr %126, align 4
  %226 = icmp ugt i32 %225, 29999999
  br i1 %226, label %227, label %233

227:                                              ; preds = %224
  %228 = load i32, ptr %127, align 4
  %229 = shl i32 %228, 6
  %230 = and i32 %229, 64
  %231 = xor i32 %230, 64
  %232 = or i32 %231, %213
  br label %233

233:                                              ; preds = %227, %224, %217
  %234 = phi i32 [ %213, %224 ], [ %213, %217 ], [ %232, %227 ]
  br i1 %118, label %246, label %235

235:                                              ; preds = %233
  %236 = or i32 %214, 4
  %237 = or i32 %234, 2
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !36
  call void @arm_heavy_mb() #11
  %238 = load i32, ptr %124, align 4
  %239 = shl i32 %238, 3
  %240 = load i32, ptr %21, align 4
  %241 = udiv i32 %239, %240
  %242 = and i32 %241, 65535
  %243 = or i32 %242, 65536
  %244 = getelementptr i8, ptr %166, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %243) #11, !srcloc !11
  %245 = call fastcc i32 @prepare_dma(ptr noundef %128, ptr noundef %129) #11
  br label %246

246:                                              ; preds = %235, %233, %211
  %247 = phi i32 [ %245, %235 ], [ %212, %233 ], [ %212, %211 ]
  %248 = phi i32 [ %237, %235 ], [ %234, %233 ], [ %213, %211 ]
  %249 = phi i32 [ %236, %235 ], [ %214, %233 ], [ %214, %211 ]
  %250 = icmp eq i32 %247, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %246
  call void @_raw_spin_unlock_irqrestore(ptr noundef %119, i32 noundef %137) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef %247) #12
  br label %481

252:                                              ; preds = %246
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !37
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %249) #11, !srcloc !11
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !38
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %248) #11, !srcloc !11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %119, i32 noundef %137) #11
  %253 = load ptr, ptr %6, align 4
  %254 = load i32, ptr %124, align 4
  %255 = mul i32 %254, 8000
  %256 = load i32, ptr %126, align 4
  %257 = udiv i32 %255, %256
  br i1 %118, label %297, label %258

258:                                              ; preds = %252
  %259 = add i32 %257, 30
  %260 = call i32 @llvm.smax.i32(i32 %259, i32 100) #11
  %261 = call i32 @__msecs_to_jiffies(i32 noundef %260) #11
  %262 = add i32 %261, 10
  %263 = call i32 @wait_for_completion_timeout(ptr noundef %15, i32 noundef %262) #11
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %380, label %265

265:                                              ; preds = %258
  %266 = load ptr, ptr %125, align 4
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %462

268:                                              ; preds = %265
  %269 = load i32, ptr @loops_per_jiffy, align 4
  %270 = urem i32 %269, 1000
  %271 = sub i32 %269, %270
  %272 = getelementptr i8, ptr %253, i32 20
  %273 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %272) #11, !srcloc !19
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  br label %274

274:                                              ; preds = %293, %268
  %275 = phi i32 [ %273, %268 ], [ %294, %293 ]
  %276 = phi i32 [ %271, %268 ], [ %291, %293 ]
  %277 = lshr i32 %275, 6
  %278 = load ptr, ptr %7, align 4
  %279 = load i32, ptr %9, align 4
  %280 = getelementptr [6 x i32], ptr %278, i32 0, i32 %279
  %281 = load i32, ptr %280, align 4
  %282 = and i32 %281, %277
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %274
  %285 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %278, i32 0, i32 2
  %286 = load i32, ptr %285, align 4
  %287 = shl nuw i32 1, %286
  %288 = and i32 %287, %275
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %284, %274
  %291 = add i32 %276, -1
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %380, label %293

293:                                              ; preds = %290
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !40
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !41
  %294 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %272) #11, !srcloc !19
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !42
  br label %274

295:                                              ; preds = %284
  %296 = icmp eq i32 %276, 0
  br i1 %296, label %380, label %462

297:                                              ; preds = %252
  %298 = add i32 %257, 10
  %299 = load i32, ptr @loops_per_jiffy, align 4
  %300 = udiv i32 %299, 1000
  %301 = mul i32 %298, 100
  %302 = mul i32 %301, %300
  %303 = getelementptr i8, ptr %253, i32 20
  br label %304

304:                                              ; preds = %317, %297
  %305 = phi i32 [ %302, %297 ], [ %318, %317 ]
  %306 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %303) #11, !srcloc !19
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !43
  %307 = load ptr, ptr %7, align 4
  %308 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %307, i32 0, i32 1
  %309 = load i32, ptr %308, align 4
  %310 = lshr i32 %306, %309
  %311 = load i32, ptr %9, align 4
  %312 = getelementptr [6 x i32], ptr %307, i32 0, i32 %311
  %313 = load i32, ptr %312, align 4
  %314 = and i32 %313, %310
  %315 = load i32, ptr %124, align 4
  %316 = icmp ult i32 %314, %315
  br i1 %316, label %317, label %320

317:                                              ; preds = %304
  %318 = add i32 %305, -1
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %380, label %304

320:                                              ; preds = %304
  %321 = icmp eq i32 %305, 0
  br i1 %321, label %380, label %322

322:                                              ; preds = %320
  %323 = load ptr, ptr %125, align 4
  %324 = icmp eq ptr %323, null
  br i1 %324, label %376, label %325

325:                                              ; preds = %322
  %326 = ashr i32 %313, 1
  %327 = add nsw i32 %326, 1
  %328 = udiv i32 %315, %327
  %329 = getelementptr i8, ptr %253, i32 28
  br label %330

330:                                              ; preds = %369, %325
  %331 = phi i32 [ %313, %325 ], [ %375, %369 ]
  %332 = phi i32 [ %328, %325 ], [ %370, %369 ]
  %333 = phi ptr [ %323, %325 ], [ %371, %369 ]
  %334 = icmp eq i32 %332, 0
  %335 = select i1 %334, i32 0, i32 %298
  %336 = load ptr, ptr %6, align 4
  %337 = ashr i32 %331, 1
  %338 = add nsw i32 %337, 1
  %339 = icmp eq i32 %335, 0
  %340 = load i32, ptr @loops_per_jiffy, align 4
  %341 = udiv i32 %340, 1000
  %342 = mul i32 %335, 100
  %343 = mul i32 %342, %341
  %344 = select i1 %339, i32 1, i32 %343
  %345 = getelementptr i8, ptr %336, i32 20
  br label %346

346:                                              ; preds = %346, %330
  %347 = phi i32 [ %344, %330 ], [ %358, %346 ]
  %348 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %345) #11, !srcloc !19
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !44
  %349 = load ptr, ptr %7, align 4
  %350 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %349, i32 0, i32 1
  %351 = load i32, ptr %350, align 4
  %352 = lshr i32 %348, %351
  %353 = load i32, ptr %9, align 4
  %354 = getelementptr [6 x i32], ptr %349, i32 0, i32 %353
  %355 = load i32, ptr %354, align 4
  %356 = and i32 %355, %352
  %357 = icmp uge i32 %356, %338
  %358 = add i32 %347, -1
  %359 = icmp eq i32 %358, 0
  %360 = select i1 %357, i1 true, i1 %359
  br i1 %360, label %361, label %346

361:                                              ; preds = %346
  %362 = load i32, ptr %21, align 4
  switch i32 %362, label %367 [
    i32 32, label %363
    i32 16, label %365
  ]

363:                                              ; preds = %361
  %364 = lshr i32 %356, 2
  call void @__raw_readsl(ptr noundef %329, ptr noundef %333, i32 noundef %364) #11
  br label %368

365:                                              ; preds = %361
  %366 = lshr i32 %356, 1
  call void @__raw_readsw(ptr noundef %329, ptr noundef %333, i32 noundef %366) #11
  br label %368

367:                                              ; preds = %361
  call void @__raw_readsb(ptr noundef %329, ptr noundef %333, i32 noundef %356) #11
  br label %368

368:                                              ; preds = %367, %365, %363
  br i1 %334, label %376, label %369

369:                                              ; preds = %368
  %370 = add i32 %332, -1
  %371 = getelementptr i8, ptr %333, i32 %356
  %372 = load ptr, ptr %7, align 4
  %373 = load i32, ptr %9, align 4
  %374 = getelementptr [6 x i32], ptr %372, i32 0, i32 %373
  %375 = load i32, ptr %374, align 4
  br label %330

376:                                              ; preds = %368, %322
  %377 = phi i32 [ -9, %322 ], [ -5, %368 ]
  %378 = load i32, ptr %120, align 4
  %379 = and i32 %378, %377
  store i32 %379, ptr %120, align 4
  br label %462

380:                                              ; preds = %320, %317, %295, %290, %258
  %381 = load ptr, ptr %125, align 4
  %382 = icmp ne ptr %381, null
  %383 = zext i1 %382 to i32
  %384 = load ptr, ptr %2, align 4
  %385 = icmp ne ptr %384, null
  %386 = zext i1 %385 to i32
  %387 = load i32, ptr %120, align 4
  %388 = and i32 %387, 4
  %389 = icmp eq i32 %388, 0
  %390 = select i1 %389, i32 112, i32 102
  %391 = and i32 %387, 8
  %392 = icmp eq i32 %391, 0
  %393 = select i1 %392, i32 112, i32 102
  %394 = load i32, ptr %124, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %383, i32 noundef %386, i32 noundef %390, i32 noundef %393, i32 noundef %394, i32 noundef %131, i32 noundef -5) #12
  br i1 %118, label %463, label %395

395:                                              ; preds = %380
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %396 = load ptr, ptr %2, align 4
  %397 = icmp eq ptr %396, null
  br i1 %397, label %428, label %398

398:                                              ; preds = %395
  %399 = load i32, ptr %120, align 4
  %400 = and i32 %399, 8
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %428, label %402

402:                                              ; preds = %398
  %403 = load ptr, ptr %122, align 4
  %404 = load ptr, ptr %403, align 4
  %405 = getelementptr inbounds %struct.dma_device, ptr %404, i32 0, i32 45
  %406 = load ptr, ptr %405, align 4
  %407 = icmp eq ptr %406, null
  br i1 %407, label %412, label %408

408:                                              ; preds = %402
  %409 = call i32 %406(ptr noundef %403) #11
  %410 = load ptr, ptr %122, align 4
  %411 = load ptr, ptr %410, align 4
  br label %412

412:                                              ; preds = %408, %402
  %413 = phi ptr [ %404, %402 ], [ %411, %408 ]
  %414 = phi ptr [ %403, %402 ], [ %410, %408 ]
  %415 = load i32, ptr %132, align 4
  %416 = getelementptr inbounds %struct.dma_device, ptr %413, i32 0, i32 49
  %417 = load ptr, ptr %416, align 4
  %418 = call i32 %417(ptr noundef %414, i32 noundef %415, ptr noundef nonnull %4) #11
  %419 = load ptr, ptr %122, align 4
  %420 = load ptr, ptr %419, align 4
  %421 = getelementptr inbounds %struct.dma_device, ptr %420, i32 0, i32 47
  %422 = load ptr, ptr %421, align 4
  %423 = icmp eq ptr %422, null
  br i1 %423, label %426, label %424

424:                                              ; preds = %412
  %425 = call i32 %422(ptr noundef %419) #11
  br label %426

426:                                              ; preds = %424, %412
  %427 = load i32, ptr %133, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %427) #12
  br label %428

428:                                              ; preds = %426, %398, %395
  %429 = load ptr, ptr %125, align 4
  %430 = icmp eq ptr %429, null
  br i1 %430, label %461, label %431

431:                                              ; preds = %428
  %432 = load i32, ptr %120, align 4
  %433 = and i32 %432, 4
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %461, label %435

435:                                              ; preds = %431
  %436 = load ptr, ptr %128, align 4
  %437 = load ptr, ptr %436, align 4
  %438 = getelementptr inbounds %struct.dma_device, ptr %437, i32 0, i32 45
  %439 = load ptr, ptr %438, align 4
  %440 = icmp eq ptr %439, null
  br i1 %440, label %445, label %441

441:                                              ; preds = %435
  %442 = call i32 %439(ptr noundef %436) #11
  %443 = load ptr, ptr %128, align 4
  %444 = load ptr, ptr %443, align 4
  br label %445

445:                                              ; preds = %441, %435
  %446 = phi ptr [ %437, %435 ], [ %444, %441 ]
  %447 = phi ptr [ %436, %435 ], [ %443, %441 ]
  %448 = load i32, ptr %134, align 4
  %449 = getelementptr inbounds %struct.dma_device, ptr %446, i32 0, i32 49
  %450 = load ptr, ptr %449, align 4
  %451 = call i32 %450(ptr noundef %447, i32 noundef %448, ptr noundef nonnull %4) #11
  %452 = load ptr, ptr %128, align 4
  %453 = load ptr, ptr %452, align 4
  %454 = getelementptr inbounds %struct.dma_device, ptr %453, i32 0, i32 47
  %455 = load ptr, ptr %454, align 4
  %456 = icmp eq ptr %455, null
  br i1 %456, label %459, label %457

457:                                              ; preds = %445
  %458 = call i32 %455(ptr noundef %452) #11
  br label %459

459:                                              ; preds = %457, %445
  %460 = load i32, ptr %133, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %460) #12
  br label %461

461:                                              ; preds = %459, %431, %428
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %463

462:                                              ; preds = %376, %295, %265
  call fastcc void @s3c64xx_flush_fifo(ptr noundef %6)
  br label %463

463:                                              ; preds = %462, %461, %380
  %464 = phi i32 [ -5, %380 ], [ -5, %461 ], [ 0, %462 ]
  %465 = icmp sgt i32 %136, 0
  br i1 %465, label %466, label %481

466:                                              ; preds = %463
  %467 = load i32, ptr %124, align 4
  %468 = sub i32 %136, %467
  %469 = load ptr, ptr %2, align 4
  %470 = icmp eq ptr %469, null
  br i1 %470, label %473, label %471

471:                                              ; preds = %466
  %472 = getelementptr i8, ptr %469, i32 %467
  store ptr %472, ptr %2, align 4
  br label %473

473:                                              ; preds = %471, %466
  %474 = load ptr, ptr %125, align 4
  %475 = icmp eq ptr %474, null
  br i1 %475, label %478, label %476

476:                                              ; preds = %473
  %477 = getelementptr i8, ptr %474, i32 %467
  store ptr %477, ptr %125, align 4
  br label %478

478:                                              ; preds = %476, %473
  %479 = call i32 @llvm.umin.i32(i32 %468, i32 %14)
  store i32 %479, ptr %124, align 4
  %480 = icmp sgt i32 %468, 0
  br i1 %480, label %135, label %481

481:                                              ; preds = %478, %463, %251
  %482 = phi i32 [ %247, %251 ], [ %464, %478 ], [ %464, %463 ]
  %483 = icmp eq i32 %117, 0
  br i1 %483, label %485, label %484

484:                                              ; preds = %481
  store ptr %115, ptr %2, align 4
  store ptr %116, ptr %125, align 4
  store i32 %117, ptr %124, align 4
  br label %485

485:                                              ; preds = %484, %481, %64
  %486 = phi i32 [ %482, %484 ], [ %482, %481 ], [ %69, %64 ]
  ret i32 %486
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @s3c64xx_spi_can_dma(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 17
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr [6 x i32], ptr %9, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = ashr i32 %13, 1
  %15 = add nsw i32 %14, 1
  %16 = icmp ugt i32 %7, %15
  ret i1 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s3c64xx_spi_hwinit(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %0, i32 0, i32 13
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %3, i32 0, i32 2
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !45
  tail call void @arm_heavy_mb() #11
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #11, !srcloc !11
  br label %22

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %0, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !46
  tail call void @arm_heavy_mb() #11
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 1) #11, !srcloc !11
  br label %22

22:                                               ; preds = %19, %12, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !47
  tail call void @arm_heavy_mb() #11
  %23 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #11, !srcloc !11
  %24 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %0, i32 0, i32 16
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %25, i32 0, i32 5
  %27 = load i8, ptr %26, align 1, !range !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !48
  tail call void @arm_heavy_mb() #11
  %30 = load i32, ptr %3, align 4
  %31 = shl i32 %30, 9
  %32 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #11, !srcloc !11
  br label %33

33:                                               ; preds = %29, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !49
  tail call void @arm_heavy_mb() #11
  %34 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !50
  tail call void @arm_heavy_mb() #11
  %35 = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 0) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !51
  tail call void @arm_heavy_mb() #11
  %36 = getelementptr i8, ptr %4, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 30) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !52
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !53
  tail call void @arm_heavy_mb() #11
  %37 = getelementptr i8, ptr %4, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #11, !srcloc !11
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !54
  %39 = and i32 %38, -536346626
  %40 = or i32 %39, 536346624
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !55
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %40) #11, !srcloc !11
  tail call fastcc void @s3c64xx_flush_fifo(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !56
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.44) #12
  br label %11

11:                                               ; preds = %10, %2
  %12 = phi i32 [ 2, %10 ], [ 0, %2 ]
  %13 = and i32 %7, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = or i32 %12, 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.45) #12
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %16, %15 ], [ %12, %11 ]
  %19 = and i32 %7, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = or i32 %18, 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.46) #12
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %22, %21 ], [ %18, %17 ]
  %25 = and i32 %7, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = or i32 %24, 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.47) #12
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %28, %27 ], [ %24, %23 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !57
  tail call void @arm_heavy_mb() #11
  %31 = load ptr, ptr %1, align 4
  %32 = getelementptr i8, ptr %31, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !58
  tail call void @arm_heavy_mb() #11
  %33 = load ptr, ptr %1, align 4
  %34 = getelementptr i8, ptr %33, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #11, !srcloc !11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request_one(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s3c64xx_flush_fifo(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !59
  tail call void @arm_heavy_mb() #11
  %3 = getelementptr i8, ptr %2, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #11, !srcloc !11
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #11, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !60
  %5 = and i32 %4, -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !61
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %5) #11, !srcloc !11
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #11, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !62
  %7 = and i32 %6, -97
  %8 = or i32 %7, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !63
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %8) #11, !srcloc !11
  %9 = load i32, ptr @loops_per_jiffy, align 4
  %10 = udiv i32 %9, 1000
  %11 = mul nuw nsw i32 %10, 100
  %12 = getelementptr i8, ptr %2, i32 20
  %13 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %0, i32 0, i32 16
  %14 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %0, i32 0, i32 17
  br label %15

15:                                               ; preds = %25, %1
  %16 = phi i32 [ %11, %1 ], [ %26, %25 ]
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !64
  %18 = lshr i32 %17, 6
  %19 = load ptr, ptr %13, align 4
  %20 = load i32, ptr %14, align 4
  %21 = getelementptr [6 x i32], ptr %19, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = add nsw i32 %16, -1
  %27 = icmp eq i32 %16, 0
  br i1 %27, label %34, label %15

28:                                               ; preds = %15
  %29 = icmp eq i32 %16, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.41) #12
  br label %34

34:                                               ; preds = %30, %28, %25
  %35 = load i32, ptr @loops_per_jiffy, align 4
  %36 = udiv i32 %35, 1000
  %37 = mul nuw nsw i32 %36, 100
  %38 = getelementptr i8, ptr %2, i32 28
  br label %39

39:                                               ; preds = %51, %34
  %40 = phi i32 [ %37, %34 ], [ %53, %51 ]
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !65
  %42 = load ptr, ptr %13, align 4
  %43 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = lshr i32 %41, %44
  %46 = load i32, ptr %14, align 4
  %47 = getelementptr [6 x i32], ptr %42, i32 0, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, %45
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %39
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !66
  %53 = add nsw i32 %40, -1
  %54 = icmp eq i32 %40, 0
  br i1 %54, label %61, label %39

55:                                               ; preds = %39
  %56 = icmp eq i32 %40, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %0, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.platform_device, ptr %59, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %60, ptr noundef nonnull @.str.42) #12
  br label %61

61:                                               ; preds = %57, %55, %51
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #11, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !67
  %63 = and i32 %62, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !68
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %63) #11, !srcloc !11
  %64 = getelementptr i8, ptr %2, i32 8
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #11, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !69
  %66 = and i32 %65, -7
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %66) #11, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @prepare_dma(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca %struct.dma_slave_config, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.s3c64xx_spi_dma_data, ptr %0, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -68
  store i32 2, ptr %3, align 4
  %9 = getelementptr i8, ptr %0, i32 -36
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 28
  %12 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr i8, ptr %0, i32 -8
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 3
  %16 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 5
  store i32 1, ptr %17, align 4
  %18 = load ptr, ptr %0, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 44
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %7
  %24 = call i32 %21(ptr noundef %18, ptr noundef nonnull %3) #11
  br label %43

25:                                               ; preds = %2
  %26 = getelementptr i8, ptr %0, i32 -80
  store i32 %5, ptr %3, align 4
  %27 = getelementptr i8, ptr %0, i32 -48
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 24
  %30 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr i8, ptr %0, i32 -20
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %32, 3
  %34 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 6
  store i32 1, ptr %35, align 4
  %36 = load ptr, ptr %0, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 44
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %25
  %42 = call i32 %39(ptr noundef %36, ptr noundef nonnull %3) #11
  br label %43

43:                                               ; preds = %41, %23
  %44 = phi ptr [ %26, %41 ], [ %8, %23 ]
  %45 = load ptr, ptr %0, align 4
  %46 = load i32, ptr %4, align 4
  br label %47

47:                                               ; preds = %43, %25, %7
  %48 = phi i32 [ %46, %43 ], [ %5, %25 ], [ 2, %7 ]
  %49 = phi ptr [ %45, %43 ], [ %36, %25 ], [ %18, %7 ]
  %50 = phi ptr [ %44, %43 ], [ %26, %25 ], [ %8, %7 ]
  %51 = load ptr, ptr %1, align 4
  %52 = getelementptr inbounds %struct.sg_table, ptr %1, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq ptr %49, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %47
  %56 = load ptr, ptr %49, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.dma_device, ptr %56, i32 0, i32 39
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = call ptr %60(ptr noundef nonnull %49, ptr noundef %51, i32 noundef %53, i32 noundef %48, i32 noundef 1, ptr noundef null) #11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32, ptr %4, align 4
  br label %67

67:                                               ; preds = %65, %58, %55, %47
  %68 = phi i32 [ %66, %65 ], [ %48, %47 ], [ %48, %55 ], [ %48, %58 ]
  %69 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %50, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.platform_device, ptr %70, i32 0, i32 3
  %72 = icmp eq i32 %68, 2
  %73 = select i1 %72, ptr @.str.16, ptr @.str.18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.39, ptr noundef nonnull %73) #12
  br label %91

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %63, i32 0, i32 6
  store ptr @s3c64xx_spi_dmacb, ptr %75, align 4
  %76 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %63, i32 0, i32 8
  store ptr %0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %63, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 %78(ptr noundef nonnull %63) #11
  %80 = getelementptr inbounds %struct.s3c64xx_spi_dma_data, ptr %0, i32 0, i32 1
  store i32 %79, ptr %80, align 4
  %81 = icmp sgt i32 %79, -1
  br i1 %81, label %86, label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %50, i32 0, i32 4
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.platform_device, ptr %84, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.40) #12
  br label %91

86:                                               ; preds = %74
  %87 = load ptr, ptr %0, align 4
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.dma_device, ptr %88, i32 0, i32 50
  %90 = load ptr, ptr %89, align 4
  call void %90(ptr noundef %87) #11
  br label %91

91:                                               ; preds = %86, %82, %67
  %92 = phi i32 [ -5, %82 ], [ 0, %86 ], [ -12, %67 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c64xx_spi_dmacb(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.s3c64xx_spi_dma_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  %5 = select i1 %4, i32 -68, i32 -80
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 7
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #11
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 2
  %11 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  br i1 %10, label %13, label %17

13:                                               ; preds = %1
  %14 = and i32 %12, -5
  store i32 %14, ptr %11, align 4
  %15 = and i32 %12, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %23

17:                                               ; preds = %1
  %18 = and i32 %12, -9
  store i32 %18, ptr %11, align 4
  %19 = and i32 %12, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %6, i32 0, i32 9
  tail call void @complete(ptr noundef %22) #11
  br label %23

23:                                               ; preds = %21, %17, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @spi_controller_suspend(ptr noundef %3) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 13
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %8, %1
  %14 = phi i32 [ 0, %11 ], [ %6, %1 ], [ %9, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 %9() #11
  br label %13

13:                                               ; preds = %11, %1
  %14 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #11
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @spi_controller_resume(ptr noundef %3) #11
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %17, %16 ], [ %14, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #11
  tail call void @clk_unprepare(ptr noundef %9) #11
  %10 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #11
  tail call void @clk_unprepare(ptr noundef %11) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %7, i32 0, i32 6
  %9 = load i8, ptr %8, align 2, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_prepare(ptr noundef %13) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %11
  %17 = tail call i32 @clk_enable(ptr noundef %13) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @clk_unprepare(ptr noundef %13) #11
  br label %50

20:                                               ; preds = %16, %1
  %21 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @clk_prepare(ptr noundef %22) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = tail call i32 @clk_enable(ptr noundef %22) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @clk_prepare(ptr noundef %30) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = tail call i32 @clk_enable(ptr noundef %30) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @clk_unprepare(ptr noundef %30) #11
  br label %40

37:                                               ; preds = %33
  tail call fastcc void @s3c64xx_spi_hwinit(ptr noundef %5)
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !71
  tail call void @arm_heavy_mb() #11
  %38 = load ptr, ptr %5, align 4
  %39 = getelementptr i8, ptr %38, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 60) #11, !srcloc !11
  br label %50

40:                                               ; preds = %36, %28
  %41 = phi i32 [ %34, %36 ], [ %31, %28 ]
  %42 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %42) #11
  br label %43

43:                                               ; preds = %40, %25
  %44 = phi ptr [ %42, %40 ], [ %22, %25 ]
  %45 = phi i32 [ %41, %40 ], [ %26, %25 ]
  tail call void @clk_unprepare(ptr noundef %44) #11
  br label %46

46:                                               ; preds = %43, %20
  %47 = phi i32 [ %23, %20 ], [ %45, %43 ]
  %48 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  tail call void @clk_disable(ptr noundef %49) #11
  tail call void @clk_unprepare(ptr noundef %49) #11
  br label %50

50:                                               ; preds = %46, %37, %19, %11
  %51 = phi i32 [ %47, %46 ], [ 0, %37 ], [ %17, %19 ], [ %14, %11 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 2153436891}
!11 = !{i64 3496405}
!12 = !{i64 2148093017}
!13 = !{i64 592124, i64 2148082095, i64 2148082121, i64 2148082168, i64 2148082190, i64 2148082218, i64 2148082238}
!14 = !{i64 578693, i64 578718, i64 578740, i64 578756, i64 578768, i64 578788, i64 578812, i64 578828, i64 578840}
!15 = !{i64 2148093143}
!16 = !{i64 2153439813}
!17 = !{i64 2153401152}
!18 = !{i64 2153411315}
!19 = !{i64 3496823}
!20 = !{i64 2153407965}
!21 = !{i64 2153408156}
!22 = !{i64 2153408600}
!23 = !{i64 2153408967}
!24 = !{i64 2153409411}
!25 = !{i64 2153409659}
!26 = !{i64 2153410103}
!27 = !{i64 2153410297}
!28 = !{i64 2153410741}
!29 = !{i64 2153410932}
!30 = !{i64 2153400150}
!31 = !{i64 2153400610}
!32 = !{i64 2153400814}
!33 = !{i64 2153401829}
!34 = !{i64 2153402164}
!35 = !{i64 2153402430}
!36 = !{i64 2153403107}
!37 = !{i64 2153403524}
!38 = !{i64 2153403841}
!39 = !{i64 2153406281}
!40 = !{i64 2153406691}
!41 = !{i64 2153406533}
!42 = !{i64 2153407015}
!43 = !{i64 2153407389}
!44 = !{i64 2153404400}
!45 = !{i64 2153421393}
!46 = !{i64 2153421725}
!47 = !{i64 2153422041}
!48 = !{i64 2153422363}
!49 = !{i64 2153422702}
!50 = !{i64 2153423003}
!51 = !{i64 2153423334}
!52 = !{i64 2153423639}
!53 = !{i64 2153423940}
!54 = !{i64 2153424380}
!55 = !{i64 2153424614}
!56 = !{i64 2153418614}
!57 = !{i64 2153420767}
!58 = !{i64 2153421082}
!59 = !{i64 2153387817}
!60 = !{i64 2153388257}
!61 = !{i64 2153388455}
!62 = !{i64 2153388899}
!63 = !{i64 2153389097}
!64 = !{i64 2153389591}
!65 = !{i64 2153390642}
!66 = !{i64 2153391094}
!67 = !{i64 2153392003}
!68 = !{i64 2153392194}
!69 = !{i64 2153392638}
!70 = !{i64 2153392836}
!71 = !{i64 2153440542}
