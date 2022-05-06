; ModuleID = '/llk/IR/drivers/spi/spi-fsl-dspi.c_pt.bc'
source_filename = "../drivers/spi/spi-fsl-dspi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fsl_dspi_devtype_data = type { i32, i8, i32 }
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
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
%struct.fsl_dspi = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, %struct.completion, ptr, i32, i32, i32, i32, i32, ptr, ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.fsl_dspi_platform_data = type { i32, i32, i32, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.fsl_dspi_dma = type { ptr, ptr, i32, %struct.completion, ptr, ptr, ptr, i32, %struct.completion, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@fsl_dspi_dt_ids = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @devtype_data, i64 108) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-v1.0-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1012a-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @devtype_data, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1028a-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @devtype_data, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1043a-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @devtype_data, i64 36) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1046a-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @devtype_data, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls2080a-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @devtype_data, i64 60) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls2085a-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @devtype_data, i64 72) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,lx2160a-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @devtype_data, i64 84) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description230 = internal constant [45 x i8] c"description=Freescale DSPI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [24 x i8] c"alias=platform:fsl-dspi\00", section ".modinfo", align 1
@devtype_data = internal constant [10 x %struct.fsl_dspi_devtype_data] [%struct.fsl_dspi_devtype_data { i32 0, i8 8, i32 4 }, %struct.fsl_dspi_devtype_data { i32 0, i8 8, i32 16 }, %struct.fsl_dspi_devtype_data { i32 0, i8 8, i32 4 }, %struct.fsl_dspi_devtype_data { i32 0, i8 8, i32 16 }, %struct.fsl_dspi_devtype_data { i32 0, i8 8, i32 16 }, %struct.fsl_dspi_devtype_data { i32 0, i8 8, i32 4 }, %struct.fsl_dspi_devtype_data { i32 0, i8 8, i32 4 }, %struct.fsl_dspi_devtype_data { i32 0, i8 8, i32 4 }, %struct.fsl_dspi_devtype_data { i32 1, i8 8, i32 16 }, %struct.fsl_dspi_devtype_data { i32 1, i8 2, i32 4 }], align 4
@fsl_dspi_driver = internal global %struct.platform_driver { ptr @dspi_probe, ptr @dspi_remove, ptr @dspi_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr @fsl_dspi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dspi_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [9 x i8] c"fsl-dspi\00", align 1
@dspi_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @dspi_suspend, ptr @dspi_resume, ptr @dspi_suspend, ptr @dspi_resume, ptr @dspi_suspend, ptr @dspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"spi-num-chipselects\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"can't get spi-num-chipselects\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"bus-num\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"spi-slave\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"can't get devtype_data\0A\00", align 1
@dspi_xspi_regmap_config = internal constant [2 x %struct.regmap_config] [%struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 316, ptr null, ptr null, ptr @dspi_xspi_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.23, i32 16, i32 2, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], align 4
@dspi_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 136, ptr null, ptr null, ptr @dspi_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to init regmap: %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to init pushr regmap: %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"dspi\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"unable to get clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"can't get platform irq, using poll mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Unable to attach DSPI interrupt\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"can't get dma channels\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Problem registering DSPI ctlr\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"fsl,spi-cs-sck-delay\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"fsl,spi-sck-cs-delay\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__const.hz_to_spi_baud.brs = private unnamed_addr constant [16 x i32] [i32 2, i32 4, i32 6, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768], align 4
@.str.16 = private unnamed_addr constant [95 x i8] c"\014Can not find valid baud rate,speed_hz is %d,clkrate is %ld, we use the max prescaler value.\0A\00", align 1
@.str.17 = private unnamed_addr constant [92 x i8] c"\014Cannot find correct scale values for %dns delay at clkrate %ld, using max prescaler value\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"DMA transfer failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Not able to get desc for DMA xfer\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"DMA submit failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"DMA tx timeout\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"DMA rx timeout\0A\00", align 1
@dspi_xspi_volatile_table = internal constant %struct.regmap_access_table { ptr @dspi_xspi_volatile_ranges, i32 4, ptr null, i32 0 }, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"pushr\00", align 1
@dspi_xspi_volatile_ranges = internal constant [4 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 8 }, %struct.regmap_range { i32 44, i32 44 }, %struct.regmap_range { i32 52, i32 136 }, %struct.regmap_range { i32 316, i32 316 }], align 4
@dspi_volatile_table = internal constant %struct.regmap_access_table { ptr @dspi_volatile_ranges, i32 3, ptr null, i32 0 }, align 4
@dspi_volatile_ranges = internal constant [3 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 8 }, %struct.regmap_range { i32 44, i32 44 }, %struct.regmap_range { i32 52, i32 136 }], align 4
@.str.24 = private unnamed_addr constant [27 x i8] c"unsupported trans_mode %u\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"rx dma channel not available\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"tx dma channel not available\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"can't configure rx dma channel\0A\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"can't configure tx dma channel\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_license231], section "llvm.metadata"

@__mod_of__fsl_dspi_dt_ids_device_table = dso_local alias [10 x %struct.of_device_id], ptr @fsl_dspi_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_dspi_driver, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_dspi_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dspi_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 -1, ptr %3, align 4
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 108, i32 noundef 3520) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %196, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @__spi_alloc_controller(ptr noundef %4, i32 noundef 0, i1 noundef zeroext false) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %196, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  store ptr %7, ptr %13, align 8
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %14, align 8
  %15 = getelementptr inbounds %struct.fsl_dspi, ptr %7, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  store ptr %10, ptr %7, align 4
  %16 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 20
  store ptr @dspi_setup, ptr %16, align 4
  %17 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 45
  store ptr @dspi_transfer_one_message, ptr %17, align 4
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 23
  store ptr @dspi_cleanup, ptr %20, align 8
  %21 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 49
  store ptr @dspi_slave_abort, ptr %21, align 4
  %22 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 5
  store i32 11, ptr %22, align 8
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %12
  %27 = load i32, ptr %24, align 4
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 58
  store i8 %28, ptr %29, align 2
  %30 = sext i8 %28 to i16
  %31 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 3
  store i16 %30, ptr %31, align 2
  %32 = getelementptr inbounds %struct.fsl_dspi_platform_data, ptr %24, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 2
  store i16 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.fsl_dspi, ptr %7, i32 0, i32 14
  store ptr getelementptr inbounds ([10 x %struct.fsl_dspi_devtype_data], ptr @devtype_data, i32 0, i32 8), ptr %36, align 4
  br label %64

37:                                               ; preds = %12
  %38 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #11
  br label %194

41:                                               ; preds = %37
  %42 = load i32, ptr %2, align 4
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 58
  store i8 %43, ptr %44, align 2
  %45 = sext i8 %43 to i16
  %46 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 3
  store i16 %45, ptr %46, align 2
  %47 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #10
  %48 = load i32, ptr %3, align 4
  %49 = trunc i32 %48 to i16
  %50 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 2
  store i16 %49, ptr %50, align 8
  %51 = call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef null) #10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 12
  store i8 1, ptr %54, align 1
  br label %55

55:                                               ; preds = %53, %41
  %56 = call ptr @of_device_get_match_data(ptr noundef %4) #10
  %57 = getelementptr inbounds %struct.fsl_dspi, ptr %7, i32 0, i32 14
  store ptr %56, ptr %57, align 4
  %58 = icmp eq ptr %56, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #11
  br label %194

60:                                               ; preds = %55
  %61 = call zeroext i1 @of_device_is_big_endian(ptr noundef %6) #10
  %62 = select i1 %61, i32 0, i32 2
  %63 = select i1 %61, i32 2, i32 0
  br label %64

64:                                               ; preds = %60, %26
  %65 = phi i32 [ 0, %26 ], [ %62, %60 ]
  %66 = phi i32 [ 2, %26 ], [ %63, %60 ]
  %67 = getelementptr inbounds %struct.fsl_dspi, ptr %7, i32 0, i32 20
  store i32 %65, ptr %67, align 4
  %68 = getelementptr inbounds %struct.fsl_dspi, ptr %7, i32 0, i32 21
  store i32 %66, ptr %68, align 4
  %69 = getelementptr inbounds %struct.fsl_dspi, ptr %7, i32 0, i32 14
  %70 = load ptr, ptr %69, align 4
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i32 -8, i32 65528
  %74 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 7
  store i32 %73, ptr %74, align 8
  %75 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #10
  %76 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %75) #10
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %80

78:                                               ; preds = %64
  %79 = ptrtoint ptr %76 to i32
  br label %194

80:                                               ; preds = %64
  %81 = load ptr, ptr %69, align 4
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, ptr @dspi_xspi_regmap_config, ptr @dspi_regmap_config
  %85 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %4, ptr noundef null, ptr noundef %76, ptr noundef nonnull %84, ptr noundef null, ptr noundef null) #10
  %86 = getelementptr inbounds %struct.fsl_dspi, ptr %7, i32 0, i32 2
  store ptr %85, ptr %86, align 4
  %87 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = ptrtoint ptr %85 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %89) #11
  %90 = load ptr, ptr %86, align 4
  %91 = ptrtoint ptr %90 to i32
  br label %194

92:                                               ; preds = %80
  %93 = load ptr, ptr %69, align 4
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = getelementptr i8, ptr %76, i32 52
  %98 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %4, ptr noundef null, ptr noundef %97, ptr noundef getelementptr inbounds ([2 x %struct.regmap_config], ptr @dspi_xspi_regmap_config, i32 0, i32 1), ptr noundef null, ptr noundef null) #10
  %99 = getelementptr inbounds %struct.fsl_dspi, ptr %7, i32 0, i32 3
  store ptr %98, ptr %99, align 4
  %100 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = ptrtoint ptr %98 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %102) #11
  %103 = load ptr, ptr %99, align 4
  %104 = ptrtoint ptr %103 to i32
  br label %194

105:                                              ; preds = %96, %92
  %106 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.8) #10
  %107 = getelementptr inbounds %struct.fsl_dspi, ptr %7, i32 0, i32 5
  store ptr %106, ptr %107, align 4
  %108 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = ptrtoint ptr %106 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #11
  br label %194

111:                                              ; preds = %105
  %112 = call i32 @clk_prepare(ptr noundef %106) #10
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %194

114:                                              ; preds = %111
  %115 = call i32 @clk_enable(ptr noundef %106) #10
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  call void @clk_unprepare(ptr noundef %106) #10
  br label %194

118:                                              ; preds = %114
  %119 = load ptr, ptr %7, align 4
  %120 = getelementptr inbounds %struct.spi_controller, ptr %119, i32 0, i32 58
  %121 = load i8, ptr %120, align 2
  %122 = sext i8 %121 to i32
  %123 = sub nsw i32 32, %122
  %124 = lshr i32 -1, %123
  %125 = shl i32 %124, 16
  %126 = load ptr, ptr %69, align 4
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  %129 = or i32 %125, 8
  %130 = select i1 %128, i32 %129, i32 %125
  %131 = or i32 %130, -2147483648
  %132 = load ptr, ptr %86, align 4
  %133 = call i32 @regmap_write(ptr noundef %132, i32 noundef 0, i32 noundef %131) #10
  %134 = load ptr, ptr %86, align 4
  %135 = call i32 @regmap_write(ptr noundef %134, i32 noundef 44, i32 noundef -1968242688) #10
  %136 = load ptr, ptr %69, align 4
  %137 = load i32, ptr %136, align 4
  switch i32 %137, label %139 [
    i32 0, label %142
    i32 1, label %138
  ]

138:                                              ; preds = %118
  br label %142

139:                                              ; preds = %118
  %140 = load ptr, ptr %15, align 4
  %141 = getelementptr inbounds %struct.platform_device, ptr %140, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.24, i32 noundef %137) #11
  br label %191

142:                                              ; preds = %138, %118
  %143 = phi i32 [ 50528256, %138 ], [ 8388608, %118 ]
  %144 = load ptr, ptr %86, align 4
  %145 = call i32 @regmap_write(ptr noundef %144, i32 noundef 48, i32 noundef %143) #10
  %146 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %147 = getelementptr inbounds %struct.fsl_dspi, ptr %7, i32 0, i32 4
  store i32 %146, ptr %147, align 4
  %148 = icmp slt i32 %146, 1
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.10) #11
  store i32 0, ptr %147, align 4
  br label %158

150:                                              ; preds = %142
  %151 = getelementptr inbounds %struct.fsl_dspi, ptr %7, i32 0, i32 15
  store i32 0, ptr %151, align 4
  %152 = getelementptr inbounds %struct.fsl_dspi, ptr %7, i32 0, i32 15, i32 1
  call void @__init_swait_queue_head(ptr noundef %152, ptr noundef nonnull @.str.25, ptr noundef nonnull @init_completion.__key) #10
  %153 = load i32, ptr %147, align 4
  %154 = load ptr, ptr %0, align 8
  %155 = call i32 @request_threaded_irq(i32 noundef %153, ptr noundef nonnull @dspi_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %154, ptr noundef nonnull %7) #10
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11) #11
  br label %191

158:                                              ; preds = %150, %149
  %159 = load ptr, ptr %69, align 4
  %160 = load i32, ptr %159, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load i32, ptr %75, align 4
  %164 = call fastcc i32 @dspi_request_dma(ptr noundef nonnull %7, i32 noundef %163)
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #11
  br label %185

167:                                              ; preds = %162, %158
  %168 = load ptr, ptr %107, align 4
  %169 = call i32 @clk_get_rate(ptr noundef %168) #10
  %170 = load ptr, ptr %69, align 4
  %171 = getelementptr inbounds %struct.fsl_dspi_devtype_data, ptr %170, i32 0, i32 1
  %172 = load i8, ptr %171, align 4
  %173 = zext i8 %172 to i32
  %174 = udiv i32 %169, %173
  %175 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 9
  store i32 %174, ptr %175, align 8
  %176 = load ptr, ptr %69, align 4
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %181, label %179

179:                                              ; preds = %167
  %180 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 65
  store i8 1, ptr %180, align 4
  br label %181

181:                                              ; preds = %179, %167
  %182 = call i32 @spi_register_controller(ptr noundef nonnull %10) #10
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %196, label %184

184:                                              ; preds = %181
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13) #11
  call fastcc void @dspi_release_dma(ptr noundef nonnull %7)
  br label %185

185:                                              ; preds = %184, %166
  %186 = phi i32 [ %164, %166 ], [ %182, %184 ]
  %187 = load i32, ptr %147, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %185
  %190 = call ptr @free_irq(i32 noundef %187, ptr noundef nonnull %7) #10
  br label %191

191:                                              ; preds = %189, %185, %157, %139
  %192 = phi i32 [ -22, %139 ], [ %186, %189 ], [ %186, %185 ], [ %155, %157 ]
  %193 = load ptr, ptr %107, align 4
  call void @clk_disable(ptr noundef %193) #10
  call void @clk_unprepare(ptr noundef %193) #10
  br label %194

194:                                              ; preds = %191, %117, %111, %109, %101, %88, %78, %59, %40
  %195 = phi i32 [ %79, %78 ], [ %91, %88 ], [ %104, %101 ], [ %110, %109 ], [ %192, %191 ], [ %38, %40 ], [ -14, %59 ], [ %115, %117 ], [ %112, %111 ]
  call void @put_device(ptr noundef nonnull %10) #10
  br label %196

196:                                              ; preds = %194, %181, %9, %1
  %197 = phi i32 [ %195, %194 ], [ -12, %1 ], [ -12, %9 ], [ 0, %181 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %197
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dspi_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @spi_unregister_controller(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.fsl_dspi, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef 12288, i32 noundef 12288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %8 = load ptr, ptr %5, align 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  tail call fastcc void @dspi_release_dma(ptr noundef %3)
  %10 = getelementptr inbounds %struct.fsl_dspi, ptr %3, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %3) #10
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds %struct.fsl_dspi, ptr %3, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #10
  tail call void @clk_unprepare(ptr noundef %17) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dspi_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = tail call i32 @dspi_remove(ptr noundef %0)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dspi_setup(ptr nocapture noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  %12 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 4) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %134, label %19

19:                                               ; preds = %15, %1
  %20 = phi ptr [ %17, %15 ], [ %13, %1 ]
  %21 = getelementptr inbounds %struct.fsl_dspi, ptr %11, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %28 = load ptr, ptr %27, align 8
  %29 = call i32 @of_property_read_variable_u32_array(ptr noundef %28, ptr noundef nonnull @.str.14, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #10
  %30 = load ptr, ptr %27, align 8
  %31 = call i32 @of_property_read_variable_u32_array(ptr noundef %30, ptr noundef nonnull @.str.15, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #10
  br label %37

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.fsl_dspi_platform_data, ptr %24, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %4, align 4
  %35 = getelementptr inbounds %struct.fsl_dspi_platform_data, ptr %24, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %5, align 4
  br label %37

37:                                               ; preds = %32, %26
  %38 = getelementptr inbounds %struct.fsl_dspi, ptr %11, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 @clk_get_rate(ptr noundef %39) #10
  %41 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 3
  %42 = load i32, ptr %41, align 8
  %43 = freeze i32 %40
  %44 = freeze i32 %42
  %45 = udiv i32 %43, %44
  %46 = mul i32 %45, %44
  %47 = sub i32 %43, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = add i32 %45, %49
  br label %51

51:                                               ; preds = %75, %37
  %52 = phi i8 [ 0, %37 ], [ %76, %75 ]
  %53 = phi i8 [ 0, %37 ], [ %77, %75 ]
  %54 = phi i32 [ 0, %37 ], [ %79, %75 ]
  %55 = phi i32 [ 2147483647, %37 ], [ %78, %75 ]
  %56 = getelementptr [16 x i32], ptr @__const.hz_to_spi_baud.brs, i32 0, i32 %54
  %57 = load i32, ptr %56, align 4
  %58 = shl i32 %57, 1
  %59 = icmp slt i32 %58, %50
  br i1 %59, label %66, label %60

60:                                               ; preds = %72, %69, %66, %51
  %61 = phi i8 [ 0, %51 ], [ 1, %66 ], [ 2, %69 ], [ 3, %72 ]
  %62 = phi i32 [ %58, %51 ], [ %67, %66 ], [ %70, %69 ], [ %73, %72 ]
  %63 = icmp slt i32 %62, %55
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = trunc i32 %54 to i8
  br label %75

66:                                               ; preds = %51
  %67 = mul i32 %57, 3
  %68 = icmp slt i32 %67, %50
  br i1 %68, label %69, label %60

69:                                               ; preds = %66
  %70 = mul i32 %57, 5
  %71 = icmp slt i32 %70, %50
  br i1 %71, label %72, label %60

72:                                               ; preds = %69
  %73 = mul i32 %57, 7
  %74 = icmp slt i32 %73, %50
  br i1 %74, label %75, label %60

75:                                               ; preds = %72, %64, %60
  %76 = phi i8 [ %52, %72 ], [ %65, %64 ], [ %52, %60 ]
  %77 = phi i8 [ %53, %72 ], [ %61, %64 ], [ %53, %60 ]
  %78 = phi i32 [ %55, %72 ], [ %62, %64 ], [ %55, %60 ]
  %79 = add nuw nsw i32 %54, 1
  %80 = icmp eq i32 %79, 16
  br i1 %80, label %81, label %51

81:                                               ; preds = %75
  %82 = icmp eq i32 %78, 2147483647
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %42, i32 noundef %40) #11
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i8 [ 15, %83 ], [ %76, %81 ]
  %87 = phi i8 [ 3, %83 ], [ %77, %81 ]
  %88 = load i32, ptr %4, align 4
  call fastcc void @ns_delay_scale(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %88, i32 noundef %40)
  %89 = load i32, ptr %5, align 4
  call fastcc void @ns_delay_scale(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %89, i32 noundef %40)
  store i32 0, ptr %20, align 4
  %90 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %91 = load i32, ptr %90, align 8
  %92 = shl i32 %91, 25
  %93 = and i32 %92, 67108864
  store i32 %93, ptr %20, align 4
  %94 = load i32, ptr %90, align 8
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %85
  %98 = or i32 %93, 33554432
  store i32 %98, ptr %20, align 4
  br label %99

99:                                               ; preds = %97, %85
  %100 = phi i32 [ %98, %97 ], [ %93, %85 ]
  %101 = load i8, ptr %2, align 1
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 22
  %104 = and i32 %103, 12582912
  %105 = load i8, ptr %3, align 1
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 12
  %108 = and i32 %107, 61440
  %109 = load i8, ptr %6, align 1
  %110 = zext i8 %109 to i32
  %111 = shl nuw nsw i32 %110, 20
  %112 = and i32 %111, 3145728
  %113 = load i8, ptr %7, align 1
  %114 = zext i8 %113 to i32
  %115 = shl nuw nsw i32 %114, 8
  %116 = and i32 %115, 3840
  %117 = zext i8 %87 to i32
  %118 = shl nuw nsw i32 %117, 16
  %119 = and i32 %118, 196608
  %120 = and i8 %86, 15
  %121 = zext i8 %120 to i32
  %122 = or i32 %119, %121
  %123 = or i32 %122, %104
  %124 = or i32 %123, %108
  %125 = or i32 %124, %100
  %126 = or i32 %125, %112
  %127 = or i32 %126, %116
  store i32 %127, ptr %20, align 4
  %128 = load i32, ptr %90, align 8
  %129 = and i32 %128, 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %99
  %132 = or i32 %127, 16777216
  store i32 %132, ptr %20, align 4
  br label %133

133:                                              ; preds = %131, %99
  store ptr %20, ptr %12, align 8
  br label %134

134:                                              ; preds = %133, %15
  %135 = phi i32 [ 0, %133 ], [ -12, %15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  ret i32 %135
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dspi_transfer_one_message(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.scatterlist, align 4
  %6 = alloca %struct.scatterlist, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 6
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %1, align 4
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %294, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 6
  %17 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 7
  %18 = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 9
  %19 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 8
  %20 = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 4
  %21 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 13
  %22 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 11
  %23 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 12
  %24 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 10
  %25 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 9
  %26 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 2
  %27 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 4
  %28 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 14
  %29 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 15
  %30 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 19
  %31 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 23
  %32 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 1
  %33 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 17
  %34 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 16
  %35 = getelementptr inbounds %struct.fsl_dspi, ptr %9, i32 0, i32 22
  %36 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 3
  %37 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 4
  %38 = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 3
  %39 = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 4
  br label %40

40:                                               ; preds = %289, %15
  %41 = phi ptr [ %13, %15 ], [ %292, %289 ]
  %42 = getelementptr i8, ptr %41, i32 -84
  store ptr %42, ptr %16, align 4
  store ptr %1, ptr %17, align 4
  %43 = load ptr, ptr %18, align 8
  store ptr %43, ptr %19, align 4
  %44 = load i8, ptr %20, align 4
  %45 = zext i8 %44 to i32
  %46 = shl nuw i32 1, %45
  %47 = trunc i32 %46 to i16
  %48 = and i16 %47, 63
  store i16 %48, ptr %21, align 4
  %49 = load ptr, ptr %41, align 4
  %50 = icmp eq ptr %49, %1
  %51 = getelementptr i8, ptr %41, i32 -40
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %50, label %55, label %56

55:                                               ; preds = %40
  br i1 %54, label %59, label %57

56:                                               ; preds = %40
  br i1 %54, label %57, label %59

57:                                               ; preds = %56, %55
  %58 = or i16 %48, -32768
  store i16 %58, ptr %21, align 4
  br label %59

59:                                               ; preds = %57, %56, %55
  %60 = load ptr, ptr %42, align 4
  store ptr %60, ptr %22, align 4
  %61 = getelementptr i8, ptr %41, i32 -80
  %62 = load ptr, ptr %61, align 4
  store ptr %62, ptr %23, align 4
  %63 = getelementptr i8, ptr %41, i32 -76
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %24, align 4
  store i32 0, ptr %25, align 4
  %65 = load ptr, ptr %26, align 4
  %66 = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 0, i32 noundef 3072, i32 noundef 3072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %67 = load ptr, ptr %9, align 4
  %68 = load ptr, ptr %16, align 4
  %69 = load i32, ptr %25, align 4
  %70 = load i32, ptr %27, align 4
  %71 = icmp eq i32 %70, 0
  call void @spi_take_timestamp_pre(ptr noundef %67, ptr noundef %68, i32 noundef %69, i1 noundef zeroext %71) #10
  %72 = load ptr, ptr %28, align 4
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %250

75:                                               ; preds = %59
  %76 = load ptr, ptr %17, align 4
  %77 = load ptr, ptr %32, align 4
  %78 = getelementptr inbounds %struct.spi_message, ptr %76, i32 0, i32 6
  br label %79

79:                                               ; preds = %225, %75
  %80 = load i32, ptr %24, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %289, label %82

82:                                               ; preds = %79
  call fastcc void @dspi_setup_accel(ptr noundef %9) #10
  %83 = load i32, ptr %24, align 4
  %84 = load i32, ptr %33, align 4
  %85 = udiv i32 %83, %84
  store i32 %85, ptr %30, align 4
  %86 = load ptr, ptr %28, align 4
  %87 = getelementptr inbounds %struct.fsl_dspi_devtype_data, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = call i32 @llvm.smin.i32(i32 %85, i32 %88) #10
  store i32 %89, ptr %30, align 4
  %90 = mul i32 %89, %84
  %91 = load i32, ptr %78, align 4
  %92 = add i32 %91, %90
  store i32 %92, ptr %78, align 4
  %93 = load ptr, ptr %32, align 4
  %94 = load ptr, ptr %34, align 4
  %95 = load i32, ptr %30, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %106, %82
  %98 = phi i32 [ %120, %106 ], [ 0, %82 ]
  %99 = load i16, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4
  %100 = load ptr, ptr %22, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = load ptr, ptr %35, align 4
  call void %103(ptr noundef %9, ptr noundef nonnull %7) #10
  %104 = load i32, ptr %7, align 4
  %105 = and i32 %104, 65535
  br label %106

106:                                              ; preds = %102, %97
  %107 = phi i32 [ %105, %102 ], [ 0, %97 ]
  %108 = load i32, ptr %33, align 4
  %109 = load i32, ptr %24, align 4
  %110 = sub i32 %109, %108
  store i32 %110, ptr %24, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %111 = icmp eq i32 %109, %108
  %112 = or i16 %99, -32768
  %113 = select i1 %111, i16 %99, i16 %112
  %114 = zext i16 %113 to i32
  %115 = shl nuw i32 %114, 16
  %116 = or i32 %115, %107
  %117 = load ptr, ptr %34, align 4
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr i32, ptr %118, i32 %98
  store i32 %116, ptr %119, align 4
  %120 = add nuw nsw i32 %98, 1
  %121 = load i32, ptr %30, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %97, label %123

123:                                              ; preds = %106, %82
  %124 = phi i32 [ %95, %82 ], [ %121, %106 ]
  %125 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %94, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %94, i32 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = shl i32 %124, 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #10, !annotation !8
  call void @sg_init_table(ptr noundef nonnull %6, i32 noundef 1) #10
  store i32 %128, ptr %36, align 4
  store i32 %129, ptr %37, align 4
  %130 = icmp eq ptr %126, null
  br i1 %130, label %138, label %131

131:                                              ; preds = %123
  %132 = load ptr, ptr %126, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.dma_device, ptr %132, i32 0, i32 39
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %134, %131, %123
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  %139 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %94, i32 0, i32 4
  store ptr null, ptr %139, align 4
  br label %144

140:                                              ; preds = %134
  %141 = call ptr %136(ptr noundef nonnull %126, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  %142 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %94, i32 0, i32 4
  store ptr %141, ptr %142, align 4
  %143 = icmp eq ptr %141, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %140, %138
  %145 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.19) #11
  br label %247

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %141, i32 0, i32 6
  store ptr @dspi_tx_dma_callback, ptr %147, align 4
  %148 = load ptr, ptr %142, align 4
  %149 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %148, i32 0, i32 8
  store ptr %9, ptr %149, align 4
  %150 = load ptr, ptr %142, align 4
  %151 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %150, i32 0, i32 4
  %152 = load ptr, ptr %151, align 4
  %153 = call i32 %152(ptr noundef %150) #10
  %154 = icmp sgt i32 %153, -1
  br i1 %154, label %157, label %155

155:                                              ; preds = %146
  %156 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.20) #11
  br label %247

157:                                              ; preds = %146
  %158 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %94, i32 0, i32 6
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %94, i32 0, i32 7
  %161 = load i32, ptr %160, align 4
  %162 = load i32, ptr %30, align 4
  %163 = shl i32 %162, 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #10, !annotation !8
  call void @sg_init_table(ptr noundef nonnull %5, i32 noundef 1) #10
  store i32 %161, ptr %38, align 4
  store i32 %163, ptr %39, align 4
  %164 = icmp eq ptr %159, null
  br i1 %164, label %172, label %165

165:                                              ; preds = %157
  %166 = load ptr, ptr %159, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.dma_device, ptr %166, i32 0, i32 39
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %168, %165, %157
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  %173 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %94, i32 0, i32 9
  store ptr null, ptr %173, align 4
  br label %178

174:                                              ; preds = %168
  %175 = call ptr %170(ptr noundef nonnull %159, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  %176 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %94, i32 0, i32 9
  store ptr %175, ptr %176, align 4
  %177 = icmp eq ptr %175, null
  br i1 %177, label %178, label %180

178:                                              ; preds = %174, %172
  %179 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %179, ptr noundef nonnull @.str.19) #11
  br label %247

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %175, i32 0, i32 6
  store ptr @dspi_rx_dma_callback, ptr %181, align 4
  %182 = load ptr, ptr %176, align 4
  %183 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %182, i32 0, i32 8
  store ptr %9, ptr %183, align 4
  %184 = load ptr, ptr %176, align 4
  %185 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %184, i32 0, i32 4
  %186 = load ptr, ptr %185, align 4
  %187 = call i32 %186(ptr noundef %184) #10
  %188 = icmp sgt i32 %187, -1
  br i1 %188, label %191, label %189

189:                                              ; preds = %180
  %190 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.20) #11
  br label %247

191:                                              ; preds = %180
  %192 = load ptr, ptr %34, align 4
  %193 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %192, i32 0, i32 8
  store i32 0, ptr %193, align 4
  %194 = load ptr, ptr %34, align 4
  %195 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %194, i32 0, i32 3
  store i32 0, ptr %195, align 4
  %196 = load ptr, ptr %158, align 4
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr inbounds %struct.dma_device, ptr %197, i32 0, i32 50
  %199 = load ptr, ptr %198, align 4
  call void %199(ptr noundef %196) #10
  %200 = load ptr, ptr %125, align 4
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.dma_device, ptr %201, i32 0, i32 50
  %203 = load ptr, ptr %202, align 4
  call void %203(ptr noundef %200) #10
  %204 = load ptr, ptr %34, align 4
  %205 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %204, i32 0, i32 3
  %206 = call i32 @wait_for_completion_timeout(ptr noundef %205, i32 noundef 300) #10
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %225

208:                                              ; preds = %191
  %209 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.21) #11
  %210 = load ptr, ptr %125, align 4
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.dma_device, ptr %211, i32 0, i32 47
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %217, label %215

215:                                              ; preds = %208
  %216 = call i32 %213(ptr noundef %210) #10
  br label %217

217:                                              ; preds = %215, %208
  %218 = load ptr, ptr %158, align 4
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.dma_device, ptr %219, i32 0, i32 47
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %247, label %223

223:                                              ; preds = %217
  %224 = call i32 %221(ptr noundef %218) #10
  br label %247

225:                                              ; preds = %191
  %226 = load ptr, ptr %34, align 4
  %227 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %226, i32 0, i32 8
  %228 = call i32 @wait_for_completion_timeout(ptr noundef %227, i32 noundef 300) #10
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %79

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %231, ptr noundef nonnull @.str.22) #11
  %232 = load ptr, ptr %125, align 4
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.dma_device, ptr %233, i32 0, i32 47
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %239, label %237

237:                                              ; preds = %230
  %238 = call i32 %235(ptr noundef %232) #10
  br label %239

239:                                              ; preds = %237, %230
  %240 = load ptr, ptr %158, align 4
  %241 = load ptr, ptr %240, align 4
  %242 = getelementptr inbounds %struct.dma_device, ptr %241, i32 0, i32 47
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %239
  %246 = call i32 %243(ptr noundef %240) #10
  br label %247

247:                                              ; preds = %245, %239, %223, %217, %189, %178, %155, %144
  %248 = phi i32 [ -110, %245 ], [ -110, %239 ], [ -110, %223 ], [ -110, %217 ], [ -5, %144 ], [ -5, %178 ], [ -22, %189 ], [ -22, %155 ]
  %249 = getelementptr inbounds %struct.platform_device, ptr %77, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %249, ptr noundef nonnull @.str.18) #11
  br label %294

250:                                              ; preds = %59
  call fastcc void @dspi_fifo_write(ptr noundef %9)
  %251 = load i32, ptr %27, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %250
  call void @wait_for_completion(ptr noundef %29) #10
  store i32 0, ptr %29, align 4
  br label %289

254:                                              ; preds = %287, %250
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  br label %255

255:                                              ; preds = %265, %254
  %256 = phi i32 [ 1000, %254 ], [ %266, %265 ]
  %257 = load ptr, ptr %26, align 4
  %258 = call i32 @regmap_read(ptr noundef %257, i32 noundef 44, ptr noundef nonnull %4) #10
  %259 = load ptr, ptr %26, align 4
  %260 = load i32, ptr %4, align 4
  %261 = call i32 @regmap_write(ptr noundef %259, i32 noundef 44, i32 noundef %260) #10
  %262 = load i32, ptr %4, align 4
  %263 = and i32 %262, 8388608
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %255
  %266 = add nsw i32 %256, -1
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %288, label %255

268:                                              ; preds = %255
  %269 = load i32, ptr %30, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %283, label %271

271:                                              ; preds = %281, %268
  %272 = phi i32 [ %273, %281 ], [ %269, %268 ]
  %273 = add i32 %272, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4
  %274 = load ptr, ptr %26, align 4
  %275 = call i32 @regmap_read(ptr noundef %274, i32 noundef 56, ptr noundef nonnull %3) #10
  %276 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %277 = load ptr, ptr %23, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %281, label %279

279:                                              ; preds = %271
  %280 = load ptr, ptr %31, align 4
  call void %280(ptr noundef %9, i32 noundef %276) #10
  br label %281

281:                                              ; preds = %279, %271
  %282 = icmp eq i32 %273, 0
  br i1 %282, label %283, label %271

283:                                              ; preds = %281, %268
  %284 = load i32, ptr %24, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %289

287:                                              ; preds = %283
  call fastcc void @dspi_fifo_write(ptr noundef %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %254

288:                                              ; preds = %265
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %294

289:                                              ; preds = %286, %253, %79
  %290 = getelementptr i8, ptr %41, i32 -38
  %291 = call i32 @spi_delay_exec(ptr noundef %290, ptr noundef %42) #10
  %292 = load ptr, ptr %41, align 4
  %293 = icmp eq ptr %292, %1
  br i1 %293, label %294, label %40

294:                                              ; preds = %289, %288, %247, %2
  %295 = phi i32 [ -110, %288 ], [ %248, %247 ], [ 0, %2 ], [ 0, %289 ]
  %296 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 7
  store i32 %295, ptr %296, align 4
  call void @spi_finalize_current_message(ptr noundef %0) #10
  ret i32 %295
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dspi_cleanup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dspi_slave_abort(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fsl_dspi, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %43

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fsl_dspi, ptr %3, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 47
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %8
  %18 = tail call i32 %15(ptr noundef %12) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load ptr, ptr %12, align 4
  %22 = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 48
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void %23(ptr noundef %12) #10
  br label %26

26:                                               ; preds = %25, %20, %17, %8
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 47
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %26
  %35 = tail call i32 %32(ptr noundef %29) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load ptr, ptr %29, align 4
  %39 = getelementptr inbounds %struct.dma_device, ptr %38, i32 0, i32 48
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  tail call void %40(ptr noundef %29) #10
  br label %43

43:                                               ; preds = %42, %37, %34, %26, %1
  %44 = getelementptr inbounds %struct.fsl_dspi, ptr %3, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 0, i32 noundef 3072, i32 noundef 3072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dspi_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 44, ptr noundef nonnull %4) #10
  %8 = load ptr, ptr %5, align 4
  %9 = load i32, ptr %4, align 4
  %10 = call i32 @regmap_write(ptr noundef %8, i32 noundef 44, i32 noundef %9) #10
  %11 = load i32, ptr %4, align 4
  %12 = and i32 %11, 8388608
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 19
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 12
  %20 = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 23
  br label %21

21:                                               ; preds = %31, %18
  %22 = phi i32 [ %16, %18 ], [ %23, %31 ]
  %23 = add i32 %22, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4
  %24 = load ptr, ptr %5, align 4
  %25 = call i32 @regmap_read(ptr noundef %24, i32 noundef 56, ptr noundef nonnull %3) #10
  %26 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %27 = load ptr, ptr %19, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = load ptr, ptr %20, align 4
  call void %30(ptr noundef %1, i32 noundef %26) #10
  br label %31

31:                                               ; preds = %29, %21
  %32 = icmp eq i32 %23, 0
  br i1 %32, label %33, label %21

33:                                               ; preds = %31, %14
  %34 = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  call fastcc void @dspi_fifo_write(ptr noundef %1) #10
  br label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 15
  call void @complete(ptr noundef %39) #10
  br label %40

40:                                               ; preds = %38, %37, %2
  %41 = phi i32 [ 0, %2 ], [ 1, %38 ], [ 1, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dspi_request_dma(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.dma_slave_config, align 4
  %4 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fsl_dspi_devtype_data, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 1
  %9 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false), !annotation !8
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 64, i32 noundef 3520) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %99, label %14

14:                                               ; preds = %2
  %15 = tail call ptr @dma_request_chan(ptr noundef %11, ptr noundef nonnull @.str.26) #10
  %16 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %12, i32 0, i32 6
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.27) #11
  %19 = ptrtoint ptr %15 to i32
  br label %99

20:                                               ; preds = %14
  %21 = tail call ptr @dma_request_chan(ptr noundef %11, ptr noundef nonnull @.str.28) #10
  %22 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %12, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.29) #11
  %25 = ptrtoint ptr %21 to i32
  br label %95

26:                                               ; preds = %20
  %27 = load ptr, ptr %21, align 4
  %28 = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %12, i32 0, i32 2
  %31 = tail call ptr @dma_alloc_attrs(ptr noundef %29, i32 noundef %8, ptr noundef %30, i32 noundef 3264, i32 noundef 0) #10
  store ptr %31, ptr %12, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %91, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %16, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %12, i32 0, i32 7
  %39 = tail call ptr @dma_alloc_attrs(ptr noundef %37, i32 noundef %8, ptr noundef %38, i32 noundef 3264, i32 noundef 0) #10
  %40 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %12, i32 0, i32 5
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %83, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds i8, ptr %3, i32 28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %43, i8 0, i32 20, i1 false)
  %44 = add i32 %1, 56
  %45 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 1
  store i32 %44, ptr %45, align 4
  %46 = add i32 %1, 52
  %47 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 2
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  store i32 4, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  store i32 4, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 5
  store i32 1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 6
  store i32 1, ptr %51, align 4
  store i32 2, ptr %3, align 4
  %52 = load ptr, ptr %16, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dma_device, ptr %53, i32 0, i32 44
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %75, label %57

57:                                               ; preds = %42
  %58 = call i32 %55(ptr noundef %52, ptr noundef nonnull %3) #10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  store i32 1, ptr %3, align 4
  %61 = load ptr, ptr %22, align 4
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.dma_device, ptr %62, i32 0, i32 44
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %60
  %67 = call i32 %64(ptr noundef %61, ptr noundef nonnull %3) #10
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 16
  store ptr %12, ptr %70, align 4
  %71 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %12, i32 0, i32 3
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %12, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %72, ptr noundef nonnull @.str.25, ptr noundef nonnull @init_completion.__key) #10
  %73 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %12, i32 0, i32 8
  store i32 0, ptr %73, align 4
  %74 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %12, i32 0, i32 8, i32 1
  call void @__init_swait_queue_head(ptr noundef %74, ptr noundef nonnull @.str.25, ptr noundef nonnull @init_completion.__key) #10
  br label %99

75:                                               ; preds = %66, %60, %57, %42
  %76 = phi ptr [ @.str.30, %42 ], [ @.str.30, %57 ], [ @.str.31, %60 ], [ @.str.31, %66 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull %76) #11
  %77 = load ptr, ptr %16, align 4
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.dma_device, ptr %78, i32 0, i32 15
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %40, align 4
  %82 = load i32, ptr %38, align 4
  call void @dma_free_attrs(ptr noundef %80, i32 noundef %8, ptr noundef %81, i32 noundef %82, i32 noundef 0) #10
  br label %83

83:                                               ; preds = %75, %33
  %84 = phi i32 [ -22, %75 ], [ -12, %33 ]
  %85 = load ptr, ptr %22, align 4
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.dma_device, ptr %86, i32 0, i32 15
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr %12, align 4
  %90 = load i32, ptr %30, align 4
  call void @dma_free_attrs(ptr noundef %88, i32 noundef %8, ptr noundef %89, i32 noundef %90, i32 noundef 0) #10
  br label %91

91:                                               ; preds = %83, %26
  %92 = phi i32 [ %84, %83 ], [ -12, %26 ]
  %93 = load ptr, ptr %22, align 4
  call void @dma_release_channel(ptr noundef %93) #10
  %94 = load ptr, ptr %16, align 4
  br label %95

95:                                               ; preds = %91, %24
  %96 = phi ptr [ %15, %24 ], [ %94, %91 ]
  %97 = phi i32 [ %25, %24 ], [ %92, %91 ]
  call void @dma_release_channel(ptr noundef %96) #10
  call void @devm_kfree(ptr noundef %11, ptr noundef nonnull %12) #10
  %98 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 16
  store ptr null, ptr %98, align 4
  br label %99

99:                                               ; preds = %95, %69, %18, %2
  %100 = phi i32 [ %19, %18 ], [ %97, %95 ], [ 0, %69 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #10
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dspi_release_dma(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fsl_dspi_devtype_data, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 1
  %7 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %8, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  tail call void @dma_free_attrs(ptr noundef %17, i32 noundef %6, ptr noundef %18, i32 noundef %20, i32 noundef 0) #10
  %21 = load ptr, ptr %11, align 4
  tail call void @dma_release_channel(ptr noundef %21) #10
  br label %22

22:                                               ; preds = %14, %10
  %23 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %8, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %8, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %8, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  tail call void @dma_free_attrs(ptr noundef %29, i32 noundef %6, ptr noundef %31, i32 noundef %33, i32 noundef 0) #10
  %34 = load ptr, ptr %23, align 4
  tail call void @dma_release_channel(ptr noundef %34) #10
  br label %35

35:                                               ; preds = %26, %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ns_delay_scale(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = sext i32 %2 to i64
  %6 = zext i32 %3 to i64
  %7 = mul nsw i64 %6, %5
  %8 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %7, i32 0) #13, !srcloc !9
  %9 = extractvalue { i64, i32 } %8, 0
  %10 = extractvalue { i64, i32 } %8, 1
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %7, i64 %9, i32 %10) #13, !srcloc !10
  %12 = extractvalue { i64, i32 } %11, 0
  %13 = trunc i64 %7 to i32
  %14 = lshr i64 %12, 29
  %15 = trunc i64 %14 to i32
  %16 = mul i32 %15, -1000000000
  %17 = sub i32 0, %13
  %18 = icmp ne i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = add i32 %19, %15
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %186

22:                                               ; preds = %4
  %23 = icmp ugt i32 %20, 4
  br i1 %23, label %24, label %186

24:                                               ; preds = %22
  %25 = icmp ugt i32 %20, 8
  br i1 %25, label %26, label %52

26:                                               ; preds = %24
  %27 = icmp ugt i32 %20, 16
  br i1 %27, label %28, label %54

28:                                               ; preds = %26
  %29 = icmp ugt i32 %20, 32
  br i1 %29, label %30, label %56

30:                                               ; preds = %28
  %31 = icmp ugt i32 %20, 64
  br i1 %31, label %32, label %58

32:                                               ; preds = %30
  %33 = icmp ugt i32 %20, 128
  br i1 %33, label %34, label %60

34:                                               ; preds = %32
  %35 = icmp ugt i32 %20, 256
  br i1 %35, label %36, label %62

36:                                               ; preds = %34
  %37 = icmp ugt i32 %20, 512
  br i1 %37, label %38, label %64

38:                                               ; preds = %36
  %39 = icmp ugt i32 %20, 1024
  br i1 %39, label %40, label %66

40:                                               ; preds = %38
  %41 = icmp ugt i32 %20, 2048
  br i1 %41, label %42, label %68

42:                                               ; preds = %40
  %43 = icmp ugt i32 %20, 4096
  br i1 %43, label %44, label %70

44:                                               ; preds = %42
  %45 = icmp ugt i32 %20, 8192
  br i1 %45, label %46, label %72

46:                                               ; preds = %44
  %47 = icmp ugt i32 %20, 16384
  br i1 %47, label %48, label %74

48:                                               ; preds = %46
  %49 = icmp ugt i32 %20, 32768
  br i1 %49, label %50, label %76

50:                                               ; preds = %48
  %51 = icmp ugt i32 %20, 65536
  br i1 %51, label %80, label %78

52:                                               ; preds = %24
  store i8 0, ptr %0, align 1
  store i8 2, ptr %1, align 1
  %53 = icmp ugt i32 %20, 6
  br i1 %53, label %189, label %186

54:                                               ; preds = %26
  store i8 0, ptr %0, align 1
  store i8 3, ptr %1, align 1
  %55 = icmp ugt i32 %20, 12
  br i1 %55, label %129, label %84

56:                                               ; preds = %28
  store i8 0, ptr %0, align 1
  store i8 4, ptr %1, align 1
  %57 = icmp ugt i32 %20, 24
  br i1 %57, label %132, label %89

58:                                               ; preds = %30
  store i8 0, ptr %0, align 1
  store i8 5, ptr %1, align 1
  %59 = icmp ugt i32 %20, 48
  br i1 %59, label %135, label %86

60:                                               ; preds = %32
  store i8 0, ptr %0, align 1
  store i8 6, ptr %1, align 1
  %61 = icmp ugt i32 %20, 96
  br i1 %61, label %138, label %86

62:                                               ; preds = %34
  store i8 0, ptr %0, align 1
  store i8 7, ptr %1, align 1
  %63 = icmp ugt i32 %20, 192
  br i1 %63, label %141, label %86

64:                                               ; preds = %36
  store i8 0, ptr %0, align 1
  store i8 8, ptr %1, align 1
  %65 = icmp ugt i32 %20, 384
  br i1 %65, label %144, label %86

66:                                               ; preds = %38
  store i8 0, ptr %0, align 1
  store i8 9, ptr %1, align 1
  %67 = icmp ugt i32 %20, 768
  br i1 %67, label %147, label %86

68:                                               ; preds = %40
  store i8 0, ptr %0, align 1
  store i8 10, ptr %1, align 1
  %69 = icmp ugt i32 %20, 1536
  br i1 %69, label %150, label %86

70:                                               ; preds = %42
  store i8 0, ptr %0, align 1
  store i8 11, ptr %1, align 1
  %71 = icmp ugt i32 %20, 3072
  br i1 %71, label %153, label %86

72:                                               ; preds = %44
  store i8 0, ptr %0, align 1
  store i8 12, ptr %1, align 1
  %73 = icmp ugt i32 %20, 6144
  br i1 %73, label %156, label %86

74:                                               ; preds = %46
  store i8 0, ptr %0, align 1
  store i8 13, ptr %1, align 1
  %75 = icmp ugt i32 %20, 12288
  br i1 %75, label %159, label %86

76:                                               ; preds = %48
  store i8 0, ptr %0, align 1
  store i8 14, ptr %1, align 1
  %77 = icmp ugt i32 %20, 24576
  br i1 %77, label %162, label %86

78:                                               ; preds = %50
  store i8 0, ptr %0, align 1
  store i8 15, ptr %1, align 1
  %79 = icmp ugt i32 %20, 49152
  br i1 %79, label %165, label %86

80:                                               ; preds = %50
  %81 = icmp ugt i32 %20, 98304
  br i1 %81, label %82, label %86

82:                                               ; preds = %80
  %83 = icmp ugt i32 %20, 196608
  br i1 %83, label %118, label %86

84:                                               ; preds = %54
  store i8 1, ptr %0, align 1
  store i8 1, ptr %1, align 1
  %85 = icmp ugt i32 %20, 10
  br i1 %85, label %189, label %126

86:                                               ; preds = %82, %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58
  %87 = phi i8 [ 15, %82 ], [ 14, %80 ], [ 13, %78 ], [ 12, %76 ], [ 11, %74 ], [ 10, %72 ], [ 9, %70 ], [ 8, %68 ], [ 7, %66 ], [ 6, %64 ], [ 5, %62 ], [ 4, %60 ], [ 3, %58 ]
  %88 = phi i32 [ 196608, %82 ], [ 98304, %80 ], [ 49152, %78 ], [ 24576, %76 ], [ 12288, %74 ], [ 6144, %72 ], [ 3072, %70 ], [ 1536, %68 ], [ 768, %66 ], [ 384, %64 ], [ 192, %62 ], [ 96, %60 ], [ 48, %58 ]
  store i8 1, ptr %0, align 1
  store i8 %87, ptr %1, align 1
  br label %91

89:                                               ; preds = %56
  store i8 1, ptr %0, align 1
  store i8 2, ptr %1, align 1
  %90 = icmp ugt i32 %20, 20
  br i1 %90, label %91, label %126

91:                                               ; preds = %89, %86
  %92 = phi i32 [ 24, %89 ], [ %88, %86 ]
  %93 = icmp ugt i32 %20, 40
  br i1 %93, label %94, label %121

94:                                               ; preds = %91
  %95 = icmp ugt i32 %20, 80
  br i1 %95, label %96, label %121

96:                                               ; preds = %94
  %97 = icmp ugt i32 %20, 160
  br i1 %97, label %98, label %121

98:                                               ; preds = %96
  %99 = icmp ugt i32 %20, 320
  br i1 %99, label %100, label %121

100:                                              ; preds = %98
  %101 = icmp ugt i32 %20, 640
  br i1 %101, label %102, label %121

102:                                              ; preds = %100
  %103 = icmp ugt i32 %20, 1280
  br i1 %103, label %104, label %121

104:                                              ; preds = %102
  %105 = icmp ugt i32 %20, 2560
  br i1 %105, label %106, label %121

106:                                              ; preds = %104
  %107 = icmp ugt i32 %20, 5120
  br i1 %107, label %108, label %121

108:                                              ; preds = %106
  %109 = icmp ugt i32 %20, 10240
  br i1 %109, label %110, label %121

110:                                              ; preds = %108
  %111 = icmp ugt i32 %20, 20480
  br i1 %111, label %112, label %121

112:                                              ; preds = %110
  %113 = icmp ugt i32 %20, 40960
  br i1 %113, label %114, label %121

114:                                              ; preds = %112
  %115 = icmp ugt i32 %20, 81920
  br i1 %115, label %116, label %121

116:                                              ; preds = %114
  %117 = icmp ugt i32 %20, 163840
  br i1 %117, label %118, label %121

118:                                              ; preds = %116, %82
  %119 = phi i32 [ %92, %116 ], [ 2147483647, %82 ]
  %120 = icmp ugt i32 %20, 327680
  br i1 %120, label %174, label %121

121:                                              ; preds = %118, %116, %114, %112, %110, %108, %106, %104, %102, %100, %98, %96, %94, %91
  %122 = phi i32 [ %92, %91 ], [ %92, %94 ], [ %92, %96 ], [ %92, %98 ], [ %92, %100 ], [ %92, %102 ], [ %92, %104 ], [ %92, %106 ], [ %92, %108 ], [ %92, %110 ], [ %92, %112 ], [ %92, %114 ], [ %92, %116 ], [ %119, %118 ]
  %123 = phi i8 [ 2, %91 ], [ 3, %94 ], [ 4, %96 ], [ 5, %98 ], [ 6, %100 ], [ 7, %102 ], [ 8, %104 ], [ 9, %106 ], [ 10, %108 ], [ 11, %110 ], [ 12, %112 ], [ 13, %114 ], [ 14, %116 ], [ 15, %118 ]
  %124 = phi i32 [ 40, %91 ], [ 80, %94 ], [ 160, %96 ], [ 320, %98 ], [ 640, %100 ], [ 1280, %102 ], [ 2560, %104 ], [ 5120, %106 ], [ 10240, %108 ], [ 20480, %110 ], [ 40960, %112 ], [ 81920, %114 ], [ 163840, %116 ], [ 327680, %118 ]
  %125 = icmp ult i32 %124, %122
  br i1 %125, label %126, label %129

126:                                              ; preds = %121, %89, %84
  %127 = phi i32 [ %124, %121 ], [ 10, %84 ], [ 20, %89 ]
  %128 = phi i8 [ %123, %121 ], [ 0, %84 ], [ 1, %89 ]
  store i8 2, ptr %0, align 1
  store i8 %128, ptr %1, align 1
  br label %129

129:                                              ; preds = %126, %121, %54
  %130 = phi i32 [ %127, %126 ], [ %122, %121 ], [ 16, %54 ]
  %131 = icmp ugt i32 %20, 14
  br i1 %131, label %132, label %176

132:                                              ; preds = %129, %56
  %133 = phi i32 [ %130, %129 ], [ 32, %56 ]
  %134 = icmp ugt i32 %20, 28
  br i1 %134, label %135, label %176

135:                                              ; preds = %132, %58
  %136 = phi i32 [ %133, %132 ], [ 64, %58 ]
  %137 = icmp ugt i32 %20, 56
  br i1 %137, label %138, label %176

138:                                              ; preds = %135, %60
  %139 = phi i32 [ %136, %135 ], [ 128, %60 ]
  %140 = icmp ugt i32 %20, 112
  br i1 %140, label %141, label %176

141:                                              ; preds = %138, %62
  %142 = phi i32 [ %139, %138 ], [ 256, %62 ]
  %143 = icmp ugt i32 %20, 224
  br i1 %143, label %144, label %176

144:                                              ; preds = %141, %64
  %145 = phi i32 [ %142, %141 ], [ 512, %64 ]
  %146 = icmp ugt i32 %20, 448
  br i1 %146, label %147, label %176

147:                                              ; preds = %144, %66
  %148 = phi i32 [ %145, %144 ], [ 1024, %66 ]
  %149 = icmp ugt i32 %20, 896
  br i1 %149, label %150, label %176

150:                                              ; preds = %147, %68
  %151 = phi i32 [ %148, %147 ], [ 2048, %68 ]
  %152 = icmp ugt i32 %20, 1792
  br i1 %152, label %153, label %176

153:                                              ; preds = %150, %70
  %154 = phi i32 [ %151, %150 ], [ 4096, %70 ]
  %155 = icmp ugt i32 %20, 3584
  br i1 %155, label %156, label %176

156:                                              ; preds = %153, %72
  %157 = phi i32 [ %154, %153 ], [ 8192, %72 ]
  %158 = icmp ugt i32 %20, 7168
  br i1 %158, label %159, label %176

159:                                              ; preds = %156, %74
  %160 = phi i32 [ %157, %156 ], [ 16384, %74 ]
  %161 = icmp ugt i32 %20, 14336
  br i1 %161, label %162, label %176

162:                                              ; preds = %159, %76
  %163 = phi i32 [ %160, %159 ], [ 32768, %76 ]
  %164 = icmp ugt i32 %20, 28672
  br i1 %164, label %165, label %176

165:                                              ; preds = %162, %78
  %166 = phi i32 [ %163, %162 ], [ 65536, %78 ]
  %167 = icmp ugt i32 %20, 57344
  br i1 %167, label %168, label %176

168:                                              ; preds = %165
  %169 = icmp ugt i32 %20, 114688
  br i1 %169, label %170, label %176

170:                                              ; preds = %168
  %171 = icmp ugt i32 %20, 229376
  %172 = select i1 %171, i8 15, i8 14
  %173 = select i1 %171, i32 458752, i32 229376
  br label %176

174:                                              ; preds = %118
  %175 = icmp ugt i32 %20, 458752
  br i1 %175, label %181, label %176

176:                                              ; preds = %174, %170, %168, %165, %162, %159, %156, %153, %150, %147, %144, %141, %138, %135, %132, %129
  %177 = phi i32 [ %130, %129 ], [ %133, %132 ], [ %136, %135 ], [ %139, %138 ], [ %142, %141 ], [ %145, %144 ], [ %148, %147 ], [ %151, %150 ], [ %154, %153 ], [ %157, %156 ], [ %160, %159 ], [ %163, %162 ], [ %166, %165 ], [ %166, %168 ], [ %119, %174 ], [ %166, %170 ]
  %178 = phi i8 [ 0, %129 ], [ 1, %132 ], [ 2, %135 ], [ 3, %138 ], [ 4, %141 ], [ 5, %144 ], [ 6, %147 ], [ 7, %150 ], [ 8, %153 ], [ 9, %156 ], [ 10, %159 ], [ 11, %162 ], [ 12, %165 ], [ 13, %168 ], [ 15, %174 ], [ %172, %170 ]
  %179 = phi i32 [ 14, %129 ], [ 28, %132 ], [ 56, %135 ], [ 112, %138 ], [ 224, %141 ], [ 448, %144 ], [ 896, %147 ], [ 1792, %150 ], [ 3584, %153 ], [ 7168, %156 ], [ 14336, %159 ], [ 28672, %162 ], [ 57344, %165 ], [ 114688, %168 ], [ 458752, %174 ], [ %173, %170 ]
  %180 = icmp ult i32 %179, %177
  br i1 %180, label %186, label %181

181:                                              ; preds = %176, %174
  %182 = phi i32 [ %177, %176 ], [ %119, %174 ]
  %183 = icmp eq i32 %182, 2147483647
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %2, i32 noundef %3) #11
  br label %186

186:                                              ; preds = %184, %176, %52, %22, %4
  %187 = phi i8 [ 3, %184 ], [ 0, %22 ], [ 0, %4 ], [ 1, %52 ], [ 3, %176 ]
  %188 = phi i8 [ 15, %184 ], [ 1, %22 ], [ 0, %4 ], [ 0, %52 ], [ %178, %176 ]
  store i8 %187, ptr %0, align 1
  store i8 %188, ptr %1, align 1
  br label %189

189:                                              ; preds = %186, %181, %84, %52
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_take_timestamp_pre(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dspi_fifo_write(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fsl_dspi_devtype_data, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  tail call fastcc void @dspi_setup_accel(ptr noundef %0)
  %11 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 4
  %14 = sdiv i32 %6, 2
  %15 = select i1 %13, i32 %14, i32 %6
  %16 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = udiv i32 %17, %12
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 %15)
  %20 = mul i32 %19, %12
  %21 = getelementptr inbounds %struct.spi_message, ptr %10, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %20, %22
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 8
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = add nuw nsw i32 %26, 7
  %28 = lshr i32 %27, 3
  %29 = sdiv i32 %20, %28
  %30 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %29
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 19
  store i32 %19, ptr %33, align 4
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  tail call void @spi_take_timestamp_pre(ptr noundef %34, ptr noundef %8, i32 noundef %32, i1 noundef zeroext %37) #10
  %38 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 13
  %39 = load i16, ptr %38, align 4
  %40 = icmp sgt i16 %39, -1
  br i1 %40, label %41, label %48

41:                                               ; preds = %1
  %42 = load i32, ptr %11, align 4
  %43 = mul i32 %42, %19
  %44 = load i32, ptr %16, align 4
  %45 = icmp eq i32 %43, %44
  %46 = or i16 %39, 2048
  %47 = select i1 %45, i16 %46, i16 %39
  br label %48

48:                                               ; preds = %41, %1
  %49 = phi i16 [ %39, %1 ], [ %47, %41 ]
  %50 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 18
  %53 = load i32, ptr %52, align 4
  %54 = shl i32 %53, 12
  %55 = add i32 %54, 126976
  %56 = and i32 %55, 65536
  %57 = and i32 %19, 2047
  %58 = or i32 %56, %57
  %59 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 284, i32 noundef %58) #10
  %60 = load i32, ptr %16, align 4
  %61 = load i32, ptr %11, align 4
  %62 = icmp ugt i32 %60, %61
  %63 = or i16 %49, -32768
  %64 = select i1 %62, i16 %63, i16 %49
  %65 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 20
  %68 = load i32, ptr %67, align 4
  %69 = zext i16 %64 to i32
  %70 = tail call i32 @regmap_write(ptr noundef %66, i32 noundef %68, i32 noundef %69) #10
  %71 = icmp eq i32 %19, 0
  br i1 %71, label %102, label %72

72:                                               ; preds = %48
  %73 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 11
  %74 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 22
  %75 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 21
  br label %76

76:                                               ; preds = %100, %72
  %77 = phi i32 [ %19, %72 ], [ %78, %100 ]
  %78 = add i32 %77, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4
  %79 = load ptr, ptr %73, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr %74, align 4
  call void %82(ptr noundef %0, ptr noundef nonnull %2) #10
  %83 = load i32, ptr %2, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = phi i32 [ %83, %81 ], [ 0, %76 ]
  %86 = load i32, ptr %11, align 4
  %87 = load i32, ptr %16, align 4
  %88 = sub i32 %87, %86
  store i32 %88, ptr %16, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %89 = load ptr, ptr %65, align 4
  %90 = load i32, ptr %75, align 4
  %91 = and i32 %85, 65535
  %92 = call i32 @regmap_write(ptr noundef %89, i32 noundef %90, i32 noundef %91) #10
  %93 = load i32, ptr %52, align 4
  %94 = icmp sgt i32 %93, 16
  br i1 %94, label %95, label %100

95:                                               ; preds = %84
  %96 = lshr i32 %85, 16
  %97 = load ptr, ptr %65, align 4
  %98 = load i32, ptr %75, align 4
  %99 = call i32 @regmap_write(ptr noundef %97, i32 noundef %98, i32 noundef %96) #10
  br label %100

100:                                              ; preds = %95, %84
  %101 = icmp eq i32 %78, 0
  br i1 %101, label %102, label %76

102:                                              ; preds = %100, %48
  %103 = load ptr, ptr %0, align 4
  %104 = load ptr, ptr %7, align 4
  %105 = load i32, ptr %30, align 4
  %106 = load i32, ptr %35, align 4
  %107 = icmp eq i32 %106, 0
  call void @spi_take_timestamp_post(ptr noundef %103, ptr noundef %104, i32 noundef %105, i1 noundef zeroext %107) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dspi_setup_accel(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 8
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 7
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %1
  %11 = and i32 %5, 1
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.fsl_dspi_devtype_data, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  br i1 %12, label %17, label %20

17:                                               ; preds = %10
  %18 = shl i32 %16, 1
  %19 = icmp ugt i32 %5, %18
  br i1 %19, label %22, label %35

20:                                               ; preds = %10
  %21 = icmp ugt i32 %5, %16
  br i1 %21, label %22, label %35

22:                                               ; preds = %20, %17
  %23 = load i32, ptr %14, align 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 32, i32 16
  %26 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 18
  store i32 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %32, %22
  %28 = phi i32 [ %33, %32 ], [ %25, %22 ]
  %29 = add nsw i32 %28, 7
  %30 = sdiv i32 %29, 8
  %31 = icmp ult i32 %5, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = sdiv i32 %28, 2
  store i32 %33, ptr %26, align 4
  %34 = icmp sgt i32 %28, 17
  br i1 %34, label %27, label %38

35:                                               ; preds = %20, %17
  %36 = phi i32 [ 16, %17 ], [ 8, %20 ]
  %37 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 18
  store i32 %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %35, %32, %27
  %39 = phi i32 [ %36, %35 ], [ %28, %27 ], [ %33, %32 ]
  %40 = load i8, ptr %6, align 1
  switch i8 %40, label %53 [
    i8 8, label %41
    i8 16, label %48
  ]

41:                                               ; preds = %38
  switch i32 %39, label %53 [
    i32 32, label %42
    i32 16, label %45
  ]

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 23
  store ptr @dspi_8on32_dev_to_host, ptr %43, align 4
  %44 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 22
  store ptr @dspi_8on32_host_to_dev, ptr %44, align 4
  br label %59

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 23
  store ptr @dspi_8on16_dev_to_host, ptr %46, align 4
  %47 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 22
  store ptr @dspi_8on16_host_to_dev, ptr %47, align 4
  br label %59

48:                                               ; preds = %38
  %49 = icmp eq i32 %39, 32
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 23
  store ptr @dspi_16on32_dev_to_host, ptr %51, align 4
  %52 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 22
  store ptr @dspi_16on32_host_to_dev, ptr %52, align 4
  br label %59

53:                                               ; preds = %48, %41, %38, %1
  %54 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 23
  store ptr @dspi_native_dev_to_host, ptr %54, align 4
  %55 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 22
  store ptr @dspi_native_host_to_dev, ptr %55, align 4
  %56 = load i8, ptr %6, align 1
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 18
  store i32 %57, ptr %58, align 4
  br label %59

59:                                               ; preds = %53, %50, %45, %42
  %60 = phi i32 [ 16, %45 ], [ %57, %53 ], [ 32, %50 ], [ 32, %42 ]
  %61 = add nuw nsw i32 %60, 7
  %62 = lshr i32 %61, 3
  %63 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 17
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 8
  %67 = load ptr, ptr %66, align 4
  %68 = load i32, ptr %67, align 4
  %69 = shl i32 %60, 27
  %70 = add i32 %69, 2013265920
  %71 = and i32 %70, 2013265920
  %72 = or i32 %68, %71
  %73 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 12, i32 noundef %72) #10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dspi_8on32_dev_to_host(ptr nocapture noundef %0, i32 noundef %1) #6 {
  %3 = tail call i32 @llvm.bswap.i32(i32 %1)
  %4 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  store i32 %3, ptr %5, align 4
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  store ptr %7, ptr %4, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dspi_8on32_host_to_dev(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  store i32 %6, ptr %1, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  store ptr %8, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dspi_8on16_dev_to_host(ptr nocapture noundef %0, i32 noundef %1) #6 {
  %3 = trunc i32 %1 to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  store i16 %4, ptr %6, align 2
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr i8, ptr %7, i32 2
  store ptr %8, ptr %5, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dspi_8on16_host_to_dev(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = load i16, ptr %4, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = zext i16 %6 to i32
  store i32 %7, ptr %1, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 2
  store ptr %9, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dspi_16on32_dev_to_host(ptr nocapture noundef %0, i32 noundef %1) #7 {
  %3 = trunc i32 %1 to i16
  %4 = lshr i32 %1, 16
  %5 = trunc i32 %4 to i16
  %6 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  store i16 %5, ptr %7, align 2
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %8, i32 2
  store i16 %3, ptr %9, align 2
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  store ptr %11, ptr %6, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dspi_16on32_host_to_dev(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr i8, ptr %4, i32 2
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %5 to i32
  %9 = shl nuw i32 %8, 16
  %10 = zext i16 %7 to i32
  %11 = or i32 %9, %10
  store i32 %11, ptr %1, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  store ptr %13, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dspi_native_dev_to_host(ptr nocapture noundef %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 17
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %16 [
    i32 1, label %5
    i32 2, label %9
    i32 4, label %13
  ]

5:                                                ; preds = %2
  %6 = trunc i32 %1 to i8
  %7 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  store i8 %6, ptr %8, align 1
  br label %16

9:                                                ; preds = %2
  %10 = trunc i32 %1 to i16
  %11 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  store i16 %10, ptr %12, align 2
  br label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  store i32 %1, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %9, %5, %2
  %17 = load i32, ptr %3, align 4
  %18 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %17
  store ptr %20, ptr %18, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dspi_native_host_to_dev(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 17
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %21 [
    i32 1, label %5
    i32 2, label %10
    i32 4, label %15
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  br label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  br label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %15, %10, %5
  %20 = phi i32 [ %18, %15 ], [ %14, %10 ], [ %9, %5 ]
  store i32 %20, ptr %1, align 4
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i32, ptr %3, align 4
  %23 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %22
  store ptr %25, ptr %23, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dspi_tx_dma_callback(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %3, i32 0, i32 3
  tail call void @complete(ptr noundef %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dspi_rx_dma_callback(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 19
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.fsl_dspi, ptr %0, i32 0, i32 23
  br label %13

13:                                               ; preds = %30, %11
  %14 = phi i32 [ %9, %11 ], [ %27, %30 ]
  %15 = phi ptr [ %5, %11 ], [ %31, %30 ]
  %16 = phi i32 [ 0, %11 ], [ %28, %30 ]
  %17 = icmp eq ptr %15, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i32, ptr %21, i32 %16
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %12, align 4
  tail call void %24(ptr noundef %0, i32 noundef %23) #10
  %25 = load i32, ptr %8, align 4
  br label %26

26:                                               ; preds = %18, %13
  %27 = phi i32 [ %14, %13 ], [ %25, %18 ]
  %28 = add nuw nsw i32 %16, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load ptr, ptr %4, align 4
  br label %13

32:                                               ; preds = %26, %7, %1
  %33 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %3, i32 0, i32 8
  tail call void @complete(ptr noundef %33) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_take_timestamp_post(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dspi_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fsl_dspi, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @disable_irq(i32 noundef %5) #10
  br label %8

8:                                                ; preds = %7, %1
  %9 = load ptr, ptr %3, align 4
  %10 = tail call i32 @spi_controller_suspend(ptr noundef %9) #10
  %11 = getelementptr inbounds %struct.fsl_dspi, ptr %3, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %12) #10
  tail call void @clk_unprepare(ptr noundef %12) #10
  %13 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dspi_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.fsl_dspi, ptr %3, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #10
  br label %20

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 4
  %15 = tail call i32 @spi_controller_resume(ptr noundef %14) #10
  %16 = getelementptr inbounds %struct.fsl_dspi, ptr %3, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void @enable_irq(i32 noundef %17) #10
  br label %20

20:                                               ; preds = %19, %13, %12, %1
  %21 = phi i32 [ 0, %19 ], [ 0, %13 ], [ %10, %12 ], [ %7, %1 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

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
!9 = !{i64 904464, i64 904491, i64 904513, i64 904541}
!10 = !{i64 904872, i64 904899, i64 904932, i64 904953, i64 904980, i64 905006}
