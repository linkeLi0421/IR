; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-imx.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-imx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.imx_i2c_hwdata = type { i32, i32, ptr, i32, i32, i32 }
%struct.imx_i2c_clk_pair = type { i16, i16 }
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
%struct.imx_i2c_struct = type { %struct.i2c_adapter, ptr, %struct.notifier_block, ptr, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, ptr, %struct.i2c_bus_recovery_info, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.hrtimer }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.imx_i2c_dma = type { ptr, ptr, ptr, %struct.completion, i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.66, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_i2c_imx__252_1615_i2c_adap_imx_init4 = internal global ptr @i2c_adap_imx_init, section ".initcall4.init", align 4
@i2c_imx_driver = internal global %struct.platform_driver { ptr @i2c_imx_probe, ptr @i2c_imx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_imx_dt_ids, ptr @i2c_imx_acpi_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2c_imx_pm_ops, ptr null, ptr null }, ptr @imx_i2c_devtype, i8 0 }, align 4
@__exitcall_i2c_adap_imx_exit = internal global ptr @i2c_adap_imx_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file253 = internal constant [40 x i8] c"i2c_imx.file=drivers/i2c/busses/i2c-imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [20 x i8] c"i2c_imx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [30 x i8] c"i2c_imx.author=Darius Augulis\00", section ".modinfo", align 1
@__UNIQUE_ID_description256 = internal constant [55 x i8] c"i2c_imx.description=I2C adapter driver for IMX I2C bus\00", section ".modinfo", align 1
@__UNIQUE_ID_alias257 = internal constant [31 x i8] c"i2c_imx.alias=platform:imx-i2c\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"imx-i2c\00", align 1
@i2c_imx_dt_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx1-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx1_i2c_hwdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx21_i2c_hwdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vf610_i2c_hwdata }, %struct.of_device_id zeroinitializer], align 4
@i2c_imx_acpi_ids = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"NXP0001\00\00", i32 ptrtoint (ptr @vf610_i2c_hwdata to i32), i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 4
@i2c_imx_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2c_imx_runtime_suspend, ptr @i2c_imx_runtime_resume, ptr null }, align 4
@imx_i2c_devtype = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"imx1-i2c\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @imx1_i2c_hwdata to i32) }, %struct.platform_device_id { [20 x i8] c"imx21-i2c\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @imx21_i2c_hwdata to i32) }, %struct.platform_device_id zeroinitializer], align 4
@i2c_imx_algo = internal constant %struct.i2c_algorithm { ptr @i2c_imx_xfer, ptr @i2c_imx_xfer_atomic, ptr null, ptr null, ptr @i2c_imx_func, ptr @i2c_imx_reg_slave, ptr @i2c_imx_unreg_slave }, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"can't get I2C clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"can't enable I2C clock, ret=%d\0A\00", align 1
@i2c_imx_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"&i2c_imx->queue\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"can't claim irq %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"IMX I2C adapter registered\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.7 = private unnamed_addr constant [20 x i8] c"DMA mapping failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Not able to get desc for DMA xfer\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"DMA submit failed\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"failed to resume i2c controller\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"failed to suspend i2c controller\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"can't get pinctrl, bus recovery not supported\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"sda\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"scl\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"can't request DMA tx channel (%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"can't configure tx channel (%d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"can't request DMA rx channel (%d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"can't configure rx channel (%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"using %s (tx) and %s (rx) for DMA transfers\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@imx1_i2c_hwdata = internal constant %struct.imx_i2c_hwdata { i32 0, i32 2, ptr @imx_i2c_clk_div, i32 50, i32 0, i32 128 }, align 4
@imx21_i2c_hwdata = internal constant %struct.imx_i2c_hwdata { i32 1, i32 2, ptr @imx_i2c_clk_div, i32 50, i32 0, i32 128 }, align 4
@vf610_i2c_hwdata = internal global %struct.imx_i2c_hwdata { i32 2, i32 0, ptr @vf610_i2c_clk_div, i32 60, i32 18, i32 0 }, align 4
@imx_i2c_clk_div = internal global [50 x %struct.imx_i2c_clk_pair] [%struct.imx_i2c_clk_pair { i16 22, i16 32 }, %struct.imx_i2c_clk_pair { i16 24, i16 33 }, %struct.imx_i2c_clk_pair { i16 26, i16 34 }, %struct.imx_i2c_clk_pair { i16 28, i16 35 }, %struct.imx_i2c_clk_pair { i16 30, i16 0 }, %struct.imx_i2c_clk_pair { i16 32, i16 36 }, %struct.imx_i2c_clk_pair { i16 36, i16 37 }, %struct.imx_i2c_clk_pair { i16 40, i16 38 }, %struct.imx_i2c_clk_pair { i16 42, i16 3 }, %struct.imx_i2c_clk_pair { i16 44, i16 39 }, %struct.imx_i2c_clk_pair { i16 48, i16 40 }, %struct.imx_i2c_clk_pair { i16 52, i16 5 }, %struct.imx_i2c_clk_pair { i16 56, i16 41 }, %struct.imx_i2c_clk_pair { i16 60, i16 6 }, %struct.imx_i2c_clk_pair { i16 64, i16 42 }, %struct.imx_i2c_clk_pair { i16 72, i16 43 }, %struct.imx_i2c_clk_pair { i16 80, i16 44 }, %struct.imx_i2c_clk_pair { i16 88, i16 9 }, %struct.imx_i2c_clk_pair { i16 96, i16 45 }, %struct.imx_i2c_clk_pair { i16 104, i16 10 }, %struct.imx_i2c_clk_pair { i16 112, i16 46 }, %struct.imx_i2c_clk_pair { i16 128, i16 47 }, %struct.imx_i2c_clk_pair { i16 144, i16 12 }, %struct.imx_i2c_clk_pair { i16 160, i16 48 }, %struct.imx_i2c_clk_pair { i16 192, i16 49 }, %struct.imx_i2c_clk_pair { i16 224, i16 50 }, %struct.imx_i2c_clk_pair { i16 240, i16 15 }, %struct.imx_i2c_clk_pair { i16 256, i16 51 }, %struct.imx_i2c_clk_pair { i16 288, i16 16 }, %struct.imx_i2c_clk_pair { i16 320, i16 52 }, %struct.imx_i2c_clk_pair { i16 384, i16 53 }, %struct.imx_i2c_clk_pair { i16 448, i16 54 }, %struct.imx_i2c_clk_pair { i16 480, i16 19 }, %struct.imx_i2c_clk_pair { i16 512, i16 55 }, %struct.imx_i2c_clk_pair { i16 576, i16 20 }, %struct.imx_i2c_clk_pair { i16 640, i16 56 }, %struct.imx_i2c_clk_pair { i16 768, i16 57 }, %struct.imx_i2c_clk_pair { i16 896, i16 58 }, %struct.imx_i2c_clk_pair { i16 960, i16 23 }, %struct.imx_i2c_clk_pair { i16 1024, i16 59 }, %struct.imx_i2c_clk_pair { i16 1152, i16 24 }, %struct.imx_i2c_clk_pair { i16 1280, i16 60 }, %struct.imx_i2c_clk_pair { i16 1536, i16 61 }, %struct.imx_i2c_clk_pair { i16 1792, i16 62 }, %struct.imx_i2c_clk_pair { i16 1920, i16 27 }, %struct.imx_i2c_clk_pair { i16 2048, i16 63 }, %struct.imx_i2c_clk_pair { i16 2304, i16 28 }, %struct.imx_i2c_clk_pair { i16 2560, i16 29 }, %struct.imx_i2c_clk_pair { i16 3072, i16 30 }, %struct.imx_i2c_clk_pair { i16 3840, i16 31 }], align 2
@vf610_i2c_clk_div = internal global [60 x %struct.imx_i2c_clk_pair] [%struct.imx_i2c_clk_pair { i16 20, i16 0 }, %struct.imx_i2c_clk_pair { i16 22, i16 1 }, %struct.imx_i2c_clk_pair { i16 24, i16 2 }, %struct.imx_i2c_clk_pair { i16 26, i16 3 }, %struct.imx_i2c_clk_pair { i16 28, i16 4 }, %struct.imx_i2c_clk_pair { i16 30, i16 5 }, %struct.imx_i2c_clk_pair { i16 32, i16 9 }, %struct.imx_i2c_clk_pair { i16 34, i16 6 }, %struct.imx_i2c_clk_pair { i16 36, i16 10 }, %struct.imx_i2c_clk_pair { i16 40, i16 7 }, %struct.imx_i2c_clk_pair { i16 44, i16 12 }, %struct.imx_i2c_clk_pair { i16 48, i16 13 }, %struct.imx_i2c_clk_pair { i16 52, i16 67 }, %struct.imx_i2c_clk_pair { i16 56, i16 14 }, %struct.imx_i2c_clk_pair { i16 60, i16 69 }, %struct.imx_i2c_clk_pair { i16 64, i16 18 }, %struct.imx_i2c_clk_pair { i16 68, i16 15 }, %struct.imx_i2c_clk_pair { i16 72, i16 19 }, %struct.imx_i2c_clk_pair { i16 80, i16 20 }, %struct.imx_i2c_clk_pair { i16 88, i16 21 }, %struct.imx_i2c_clk_pair { i16 96, i16 25 }, %struct.imx_i2c_clk_pair { i16 104, i16 22 }, %struct.imx_i2c_clk_pair { i16 112, i16 26 }, %struct.imx_i2c_clk_pair { i16 128, i16 23 }, %struct.imx_i2c_clk_pair { i16 136, i16 79 }, %struct.imx_i2c_clk_pair { i16 144, i16 28 }, %struct.imx_i2c_clk_pair { i16 160, i16 29 }, %struct.imx_i2c_clk_pair { i16 176, i16 85 }, %struct.imx_i2c_clk_pair { i16 192, i16 30 }, %struct.imx_i2c_clk_pair { i16 208, i16 86 }, %struct.imx_i2c_clk_pair { i16 224, i16 34 }, %struct.imx_i2c_clk_pair { i16 228, i16 36 }, %struct.imx_i2c_clk_pair { i16 240, i16 31 }, %struct.imx_i2c_clk_pair { i16 256, i16 35 }, %struct.imx_i2c_clk_pair { i16 288, i16 92 }, %struct.imx_i2c_clk_pair { i16 320, i16 37 }, %struct.imx_i2c_clk_pair { i16 384, i16 38 }, %struct.imx_i2c_clk_pair { i16 448, i16 42 }, %struct.imx_i2c_clk_pair { i16 480, i16 39 }, %struct.imx_i2c_clk_pair { i16 512, i16 43 }, %struct.imx_i2c_clk_pair { i16 576, i16 44 }, %struct.imx_i2c_clk_pair { i16 640, i16 45 }, %struct.imx_i2c_clk_pair { i16 768, i16 49 }, %struct.imx_i2c_clk_pair { i16 896, i16 50 }, %struct.imx_i2c_clk_pair { i16 960, i16 47 }, %struct.imx_i2c_clk_pair { i16 1024, i16 51 }, %struct.imx_i2c_clk_pair { i16 1152, i16 52 }, %struct.imx_i2c_clk_pair { i16 1280, i16 53 }, %struct.imx_i2c_clk_pair { i16 1536, i16 54 }, %struct.imx_i2c_clk_pair { i16 1792, i16 58 }, %struct.imx_i2c_clk_pair { i16 1920, i16 55 }, %struct.imx_i2c_clk_pair { i16 2048, i16 59 }, %struct.imx_i2c_clk_pair { i16 2304, i16 60 }, %struct.imx_i2c_clk_pair { i16 2560, i16 61 }, %struct.imx_i2c_clk_pair { i16 3072, i16 62 }, %struct.imx_i2c_clk_pair { i16 3584, i16 122 }, %struct.imx_i2c_clk_pair { i16 3840, i16 63 }, %struct.imx_i2c_clk_pair { i16 4096, i16 123 }, %struct.imx_i2c_clk_pair { i16 5120, i16 125 }, %struct.imx_i2c_clk_pair { i16 6144, i16 126 }], align 2
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias257, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_i2c_adap_imx_exit, ptr @__initcall__kmod_i2c_imx__252_1615_i2c_adap_imx_init4, ptr @i2c_adap_imx_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @i2c_adap_imx_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @i2c_imx_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @i2c_adap_imx_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @i2c_imx_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_imx_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %216, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %9 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %8) #8
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = ptrtoint ptr %9 to i32
  br label %216

13:                                               ; preds = %7
  %14 = load i32, ptr %8, align 4
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 848, i32 noundef 3520) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %216, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 19
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 20
  tail call void @hrtimer_init(ptr noundef %19, i32 noundef 1, i32 noundef 0) #8
  %20 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 20, i32 2
  store ptr @i2c_imx_slave_timeout, ptr %20, align 8
  %21 = tail call ptr @device_get_match_data(ptr noundef %2) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.platform_device_id, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = inttoptr i32 %27 to ptr
  br label %29

29:                                               ; preds = %23, %17
  %30 = phi ptr [ %28, %23 ], [ %21, %17 ]
  %31 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 11
  store ptr %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 12
  %33 = load ptr, ptr %0, align 8
  %34 = tail call i32 @strscpy(ptr noundef %32, ptr noundef %33, i32 noundef 48) #8
  store ptr null, ptr %15, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 2
  store ptr @i2c_imx_algo, ptr %35, align 8
  %36 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 9
  %37 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 9, i32 1
  store ptr %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 11
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 9, i32 25
  store ptr %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 3
  store ptr %9, ptr %44, align 8
  %45 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #8
  %46 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 1
  store ptr %45, ptr %46, align 8
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = ptrtoint ptr %45 to i32
  %50 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %49, ptr noundef nonnull @.str.1) #8
  br label %216

51:                                               ; preds = %29
  %52 = tail call i32 @clk_prepare(ptr noundef %45) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = tail call i32 @clk_enable(ptr noundef %45) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  tail call void @clk_unprepare(ptr noundef %45) #8
  br label %58

58:                                               ; preds = %57, %51
  %59 = phi i32 [ %55, %57 ], [ %52, %51 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %59) #9
  br label %216

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %61, ptr noundef nonnull @.str.3, ptr noundef nonnull @i2c_imx_probe.__key) #8
  %62 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 9, i32 8
  store ptr %15, ptr %62, align 8
  %63 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %15, ptr %63, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 10) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #8
  %64 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %2) #8
  %65 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %206, label %67

67:                                               ; preds = %60
  %68 = load ptr, ptr %0, align 8
  %69 = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @i2c_imx_isr, ptr noundef null, i32 noundef 128, ptr noundef %68, ptr noundef nonnull %15) #8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %5) #9
  br label %206

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 10
  store i32 100000, ptr %73, align 4
  %74 = load ptr, ptr %41, align 8
  %75 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %74, ptr noundef nonnull @.str.5, ptr noundef %73, i32 noundef 1, i32 noundef 0) #8
  %76 = icmp slt i32 %75, 0
  %77 = icmp ne ptr %4, null
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, ptr %4, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  store i32 %80, ptr %73, align 4
  br label %83

83:                                               ; preds = %82, %79, %72
  %84 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 2
  store ptr @i2c_imx_clk_notifier_call, ptr %84, align 4
  %85 = load ptr, ptr %46, align 8
  %86 = tail call i32 @clk_notifier_register(ptr noundef %85, ptr noundef %84) #8
  %87 = load ptr, ptr %46, align 8
  %88 = tail call i32 @clk_get_rate(ptr noundef %87) #8
  %89 = load ptr, ptr %31, align 8
  %90 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 9
  %93 = load i32, ptr %92, align 8
  %94 = icmp eq i32 %93, %88
  br i1 %94, label %135, label %95

95:                                               ; preds = %83
  store i32 %88, ptr %92, align 8
  %96 = load i32, ptr %73, align 4
  %97 = add i32 %88, -1
  %98 = add i32 %97, %96
  %99 = udiv i32 %98, %96
  %100 = load i16, ptr %91, align 2
  %101 = zext i16 %100 to i32
  %102 = icmp ult i32 %99, %101
  br i1 %102, label %120, label %103

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %89, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, -1
  %107 = getelementptr %struct.imx_i2c_clk_pair, ptr %91, i32 %106
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i32
  %110 = icmp ugt i32 %99, %109
  br i1 %110, label %120, label %111

111:                                              ; preds = %103
  %112 = icmp ugt i32 %99, %101
  br i1 %112, label %113, label %120

113:                                              ; preds = %113, %111
  %114 = phi i32 [ %115, %113 ], [ 0, %111 ]
  %115 = add i32 %114, 1
  %116 = getelementptr %struct.imx_i2c_clk_pair, ptr %91, i32 %115
  %117 = load i16, ptr %116, align 2
  %118 = zext i16 %117 to i32
  %119 = icmp ugt i32 %99, %118
  br i1 %119, label %113, label %120

120:                                              ; preds = %113, %111, %103, %95
  %121 = phi i32 [ 0, %95 ], [ %106, %103 ], [ 0, %111 ], [ %115, %113 ]
  %122 = getelementptr %struct.imx_i2c_clk_pair, ptr %91, i32 %121
  %123 = getelementptr %struct.imx_i2c_clk_pair, ptr %91, i32 %121, i32 1
  %124 = load i16, ptr %123, align 2
  %125 = zext i16 %124 to i32
  %126 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 8
  store i32 %125, ptr %126, align 4
  %127 = load i16, ptr %122, align 2
  %128 = zext i16 %127 to i32
  %129 = mul i32 %128, 500000
  %130 = lshr i32 %88, 1
  %131 = add nsw i32 %130, -1
  %132 = add i32 %131, %129
  %133 = udiv i32 %132, %130
  %134 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 6
  store i32 %133, ptr %134, align 4
  br label %135

135:                                              ; preds = %120, %83
  %136 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %89, i32 0, i32 5
  %137 = load i32, ptr %136, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %138 = trunc i32 %137 to i8
  %139 = xor i8 %138, -128
  %140 = load ptr, ptr %44, align 8
  %141 = load ptr, ptr %31, align 8
  %142 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %141, i32 0, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = shl i32 2, %143
  %145 = getelementptr i8, ptr %140, i32 %144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %145, i8 %139) #8, !srcloc !9
  %146 = load ptr, ptr %31, align 8
  %147 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %146, i32 0, i32 4
  %148 = load i32, ptr %147, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %149 = trunc i32 %148 to i8
  %150 = xor i8 %149, -19
  %151 = load ptr, ptr %44, align 8
  %152 = load ptr, ptr %31, align 8
  %153 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %152, i32 0, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = shl i32 3, %154
  %156 = getelementptr i8, ptr %151, i32 %155
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %156, i8 %150) #8, !srcloc !9
  %157 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 12
  %158 = tail call ptr @devm_pinctrl_get(ptr noundef %2) #8
  %159 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 13
  store ptr %158, ptr %159, align 8
  %160 = icmp eq ptr %158, null
  %161 = icmp ugt ptr %158, inttoptr (i32 -4096 to ptr)
  %162 = or i1 %160, %161
  br i1 %162, label %191, label %163

163:                                              ; preds = %135
  %164 = tail call ptr @pinctrl_lookup_state(ptr noundef nonnull %158, ptr noundef nonnull @.str.15) #8
  %165 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 14
  store ptr %164, ptr %165, align 4
  %166 = load ptr, ptr %159, align 8
  %167 = tail call ptr @pinctrl_lookup_state(ptr noundef %166, ptr noundef nonnull @.str.16) #8
  %168 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 15
  store ptr %167, ptr %168, align 8
  %169 = tail call ptr @devm_gpiod_get(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 1) #8
  %170 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 12, i32 9
  store ptr %169, ptr %170, align 4
  %171 = tail call ptr @devm_gpiod_get(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 15) #8
  %172 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 12, i32 8
  store ptr %171, ptr %172, align 4
  %173 = load ptr, ptr %170, align 4
  %174 = icmp eq ptr %173, inttoptr (i32 -517 to ptr)
  %175 = icmp eq ptr %171, inttoptr (i32 -517 to ptr)
  %176 = select i1 %174, i1 true, i1 %175
  br i1 %176, label %201, label %177

177:                                              ; preds = %163
  %178 = icmp ugt ptr %173, inttoptr (i32 -4096 to ptr)
  %179 = icmp ugt ptr %171, inttoptr (i32 -4096 to ptr)
  %180 = select i1 %178, i1 true, i1 %179
  br i1 %180, label %194, label %181

181:                                              ; preds = %177
  %182 = load ptr, ptr %165, align 4
  %183 = icmp ugt ptr %182, inttoptr (i32 -4096 to ptr)
  br i1 %183, label %194, label %184

184:                                              ; preds = %181
  %185 = load ptr, ptr %168, align 8
  %186 = icmp ugt ptr %185, inttoptr (i32 -4096 to ptr)
  br i1 %186, label %194, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 12, i32 6
  store ptr @i2c_imx_prepare_recovery, ptr %188, align 4
  %189 = getelementptr inbounds %struct.imx_i2c_struct, ptr %15, i32 0, i32 12, i32 7
  store ptr @i2c_imx_unprepare_recovery, ptr %189, align 4
  store ptr @i2c_generic_scl_recovery, ptr %157, align 4
  %190 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 16
  store ptr %157, ptr %190, align 4
  br label %194

191:                                              ; preds = %135
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.14) #9
  %192 = load ptr, ptr %159, align 8
  %193 = icmp eq ptr %192, inttoptr (i32 -517 to ptr)
  br i1 %193, label %201, label %194

194:                                              ; preds = %191, %187, %184, %181, %177
  %195 = tail call i32 @i2c_add_numbered_adapter(ptr noundef nonnull %15) #8
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %194
  %198 = tail call i64 @ktime_get_mono_fast_ns() #8
  %199 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %198, ptr %199, align 8
  %200 = tail call i32 @__pm_runtime_suspend(ptr noundef %2, i32 noundef 13) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.6) #9
  tail call fastcc void @i2c_imx_dma_request(ptr noundef nonnull %15, i32 noundef %14)
  br label %216

201:                                              ; preds = %194, %191, %163
  %202 = phi i32 [ -517, %191 ], [ %195, %194 ], [ -517, %163 ]
  %203 = load ptr, ptr %46, align 8
  %204 = tail call i32 @clk_notifier_unregister(ptr noundef %203, ptr noundef %84) #8
  %205 = tail call ptr @free_irq(i32 noundef %5, ptr noundef nonnull %15) #8
  br label %206

206:                                              ; preds = %201, %71, %60
  %207 = phi i32 [ %65, %60 ], [ %69, %71 ], [ %202, %201 ]
  %208 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %208) #8, !srcloc !11
  %209 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %208, ptr %208, i32 0, i32 -1, ptr elementtype(i32) %208) #8, !srcloc !12
  %210 = extractvalue { i32, i32, i32 } %209, 0
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %206
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  br label %213

213:                                              ; preds = %212, %206
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #8
  %214 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 2) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext false) #8
  %215 = load ptr, ptr %46, align 8
  tail call void @clk_disable(ptr noundef %215) #8
  tail call void @clk_unprepare(ptr noundef %215) #8
  br label %216

216:                                              ; preds = %213, %197, %58, %48, %13, %11, %1
  %217 = phi i32 [ %12, %11 ], [ %50, %48 ], [ %59, %58 ], [ %207, %213 ], [ 0, %197 ], [ %5, %1 ], [ -12, %13 ]
  ret i32 %217
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_imx_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #8, !srcloc !11
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 0, i32 -1, ptr elementtype(i32) %8) #8, !srcloc !12
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %64, label %12

12:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  br label %64

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.imx_i2c_struct, ptr %3, i32 0, i32 20
  %15 = tail call i32 @hrtimer_cancel(ptr noundef %14) #8
  tail call void @i2c_del_adapter(ptr noundef %3) #8
  %16 = getelementptr inbounds %struct.imx_i2c_struct, ptr %3, i32 0, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.imx_i2c_dma, ptr %17, i32 0, i32 4
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.imx_i2c_dma, ptr %17, i32 0, i32 5
  store i32 0, ptr %21, align 4
  %22 = load ptr, ptr %17, align 4
  tail call void @dma_release_channel(ptr noundef %22) #8
  store ptr null, ptr %17, align 4
  %23 = getelementptr inbounds %struct.imx_i2c_dma, ptr %17, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void @dma_release_channel(ptr noundef %24) #8
  store ptr null, ptr %23, align 4
  %25 = getelementptr inbounds %struct.imx_i2c_dma, ptr %17, i32 0, i32 2
  store ptr null, ptr %25, align 4
  br label %26

26:                                               ; preds = %19, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %27 = getelementptr inbounds %struct.imx_i2c_struct, ptr %3, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.imx_i2c_struct, ptr %3, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %30 = load ptr, ptr %27, align 8
  %31 = load ptr, ptr %29, align 8
  %32 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = shl nuw i32 1, %33
  %35 = getelementptr i8, ptr %30, i32 %34
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %36 = load ptr, ptr %27, align 8
  %37 = load ptr, ptr %29, align 8
  %38 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = shl i32 2, %39
  %41 = getelementptr i8, ptr %36, i32 %40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %41, i8 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %42 = load ptr, ptr %27, align 8
  %43 = load ptr, ptr %29, align 8
  %44 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 3, %45
  %47 = getelementptr i8, ptr %42, i32 %46
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %47, i8 0) #8, !srcloc !9
  %48 = getelementptr inbounds %struct.imx_i2c_struct, ptr %3, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.imx_i2c_struct, ptr %3, i32 0, i32 2
  %51 = tail call i32 @clk_notifier_unregister(ptr noundef %49, ptr noundef %50) #8
  %52 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %26
  %55 = tail call ptr @free_irq(i32 noundef %52, ptr noundef %3) #8
  br label %56

56:                                               ; preds = %54, %26
  %57 = load ptr, ptr %48, align 8
  tail call void @clk_disable(ptr noundef %57) #8
  tail call void @clk_unprepare(ptr noundef %57) #8
  %58 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #8, !srcloc !11
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 0, i32 -1, ptr elementtype(i32) %58) #8, !srcloc !12
  %60 = extractvalue { i32, i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  br label %63

63:                                               ; preds = %62, %56
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #8
  br label %64

64:                                               ; preds = %63, %12, %7
  %65 = phi i32 [ 0, %63 ], [ %5, %7 ], [ %5, %12 ]
  ret i32 %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_imx_slave_timeout(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -800
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr i8, ptr %0, i32 -128
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %0, i32 -88
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 3, %10
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %14 = zext i8 %13 to i32
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 2, %18
  %20 = getelementptr i8, ptr %15, i32 %19
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %20) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %22 = zext i8 %21 to i32
  tail call fastcc void @i2c_imx_slave_handle(ptr noundef %2, i32 noundef %14, i32 noundef %22)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_imx_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 3, %11
  %13 = getelementptr i8, ptr %7, i32 %12
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %15 = zext i8 %14 to i32
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %8, align 8
  %18 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 2, %19
  %21 = getelementptr i8, ptr %16, i32 %20
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %21) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %23 = zext i8 %22 to i32
  %24 = and i32 %15, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %67, label %26

26:                                               ; preds = %2
  %27 = load ptr, ptr %8, align 8
  %28 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %30 = trunc i32 %29 to i8
  %31 = xor i8 %30, -3
  %32 = load ptr, ptr %6, align 8
  %33 = load ptr, ptr %8, align 8
  %34 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 3, %35
  %37 = getelementptr i8, ptr %32, i32 %36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 %31) #8, !srcloc !9
  %38 = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 17
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %64, label %41

41:                                               ; preds = %26
  %42 = and i32 %23, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  tail call fastcc void @i2c_imx_slave_handle(ptr noundef %1, i32 noundef %15, i32 noundef %23)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  br label %68

45:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1
  %46 = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 18
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %61, %45
  %49 = phi i32 [ %62, %61 ], [ %47, %45 ]
  br label %50

50:                                               ; preds = %50, %48
  switch i32 %49, label %50 [
    i32 4, label %63
    i32 0, label %51
    i32 1, label %56
    i32 2, label %56
    i32 3, label %56
  ]

51:                                               ; preds = %50
  %52 = load ptr, ptr %38, align 8
  %53 = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 8
  %55 = call i32 %54(ptr noundef %52, i32 noundef 2, ptr noundef nonnull %3) #8
  br label %61

56:                                               ; preds = %50, %50, %50
  %57 = load ptr, ptr %38, align 8
  %58 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 8
  %59 = load ptr, ptr %58, align 8
  %60 = call i32 %59(ptr noundef %57, i32 noundef 4, ptr noundef nonnull %3) #8
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i32 [ 4, %56 ], [ 2, %51 ]
  store i32 %62, ptr %46, align 4
  br label %48

63:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br label %64

64:                                               ; preds = %63, %26
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  %65 = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 5
  store i32 %15, ptr %65, align 8
  %66 = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 4
  call void @__wake_up(ptr noundef %66, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %68

67:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  br label %68

68:                                               ; preds = %67, %64, %44
  %69 = phi i32 [ 1, %64 ], [ 1, %44 ], [ 0, %67 ]
  ret i32 %69
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_imx_clk_notifier_call(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #5 {
  %4 = and i32 %1, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %57, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 52
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 44
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %57, label %16

16:                                               ; preds = %6
  store i32 %8, ptr %13, align 8
  %17 = getelementptr i8, ptr %0, i32 48
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %8, -1
  %20 = add i32 %19, %18
  %21 = udiv i32 %20, %18
  %22 = load i16, ptr %12, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %42, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %10, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -1
  %29 = getelementptr %struct.imx_i2c_clk_pair, ptr %12, i32 %28
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp ugt i32 %21, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %25
  %34 = icmp ugt i32 %21, %23
  br i1 %34, label %35, label %42

35:                                               ; preds = %35, %33
  %36 = phi i32 [ %37, %35 ], [ 0, %33 ]
  %37 = add i32 %36, 1
  %38 = getelementptr %struct.imx_i2c_clk_pair, ptr %12, i32 %37
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp ugt i32 %21, %40
  br i1 %41, label %35, label %42

42:                                               ; preds = %35, %33, %25, %16
  %43 = phi i32 [ 0, %16 ], [ %28, %25 ], [ 0, %33 ], [ %37, %35 ]
  %44 = getelementptr %struct.imx_i2c_clk_pair, ptr %12, i32 %43
  %45 = getelementptr %struct.imx_i2c_clk_pair, ptr %12, i32 %43, i32 1
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = getelementptr i8, ptr %0, i32 40
  store i32 %47, ptr %48, align 4
  %49 = load i16, ptr %44, align 2
  %50 = zext i16 %49 to i32
  %51 = mul i32 %50, 500000
  %52 = lshr i32 %8, 1
  %53 = add nsw i32 %52, -1
  %54 = add i32 %53, %51
  %55 = udiv i32 %54, %52
  %56 = getelementptr i8, ptr %0, i32 32
  store i32 %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %42, %6, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @i2c_imx_dma_request(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.dma_slave_config, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false), !annotation !16
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 44, i32 noundef 3520) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %85, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @dma_request_chan(ptr noundef %4, ptr noundef nonnull @.str.19) #8
  store ptr %8, ptr %5, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = ptrtoint ptr %8 to i32
  switch i32 %11, label %12 [
    i32 -19, label %84
    i32 -517, label %84
  ]

12:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.20, i32 noundef %11) #9
  br label %84

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 4, %17
  %19 = add i32 %18, %1
  %20 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  store i32 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 6
  store i32 1, ptr %22, align 4
  store i32 1, ptr %3, align 4
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 44
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %13
  %28 = call i32 %25(ptr noundef %8, ptr noundef nonnull %3) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %13
  %31 = phi i32 [ %28, %27 ], [ -38, %13 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.21, i32 noundef %31) #9
  br label %83

32:                                               ; preds = %27
  %33 = call ptr @dma_request_chan(ptr noundef %4, ptr noundef nonnull @.str.22) #8
  %34 = getelementptr inbounds %struct.imx_i2c_dma, ptr %5, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = ptrtoint ptr %33 to i32
  switch i32 %37, label %38 [
    i32 -19, label %83
    i32 -517, label %83
  ]

38:                                               ; preds = %36
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.23, i32 noundef %37) #9
  br label %83

39:                                               ; preds = %32
  %40 = load ptr, ptr %14, align 8
  %41 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 4, %42
  %44 = add i32 %43, %1
  %45 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 1
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  store i32 1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 5
  store i32 1, ptr %47, align 4
  store i32 2, ptr %3, align 4
  %48 = load ptr, ptr %33, align 4
  %49 = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 44
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = call i32 %50(ptr noundef %33, ptr noundef nonnull %3) #8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52, %39
  %56 = phi i32 [ %53, %52 ], [ -38, %39 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.24, i32 noundef %56) #9
  call void @dma_release_channel(ptr noundef %33) #8
  br label %83

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 16
  store ptr %5, ptr %58, align 4
  %59 = getelementptr inbounds %struct.imx_i2c_dma, ptr %5, i32 0, i32 3
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.imx_i2c_dma, ptr %5, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %60, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #8
  %61 = load ptr, ptr %5, align 4
  %62 = getelementptr inbounds %struct.dma_chan, ptr %61, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.dma_chan_dev, ptr %63, i32 0, i32 1, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.dma_chan_dev, ptr %63, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  br label %70

70:                                               ; preds = %67, %57
  %71 = phi ptr [ %69, %67 ], [ %65, %57 ]
  %72 = load ptr, ptr %34, align 4
  %73 = getelementptr inbounds %struct.dma_chan, ptr %72, i32 0, i32 5
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.dma_chan_dev, ptr %74, i32 0, i32 1, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.dma_chan_dev, ptr %74, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  br label %81

81:                                               ; preds = %78, %70
  %82 = phi ptr [ %80, %78 ], [ %76, %70 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.25, ptr noundef %71, ptr noundef %82) #9
  br label %85

83:                                               ; preds = %55, %38, %36, %36, %30
  call void @dma_release_channel(ptr noundef %8) #8
  br label %84

84:                                               ; preds = %83, %12, %10, %10
  call void @devm_kfree(ptr noundef %4, ptr noundef nonnull %5) #8
  br label %85

85:                                               ; preds = %84, %81, %2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @i2c_imx_slave_handle(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1
  %8 = and i32 %1, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %12, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %15 = trunc i32 %14 to i8
  %16 = xor i8 %15, -17
  %17 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %11, align 8
  %20 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 3, %21
  %23 = getelementptr i8, ptr %18, i32 %22
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 %16) #8, !srcloc !9
  %24 = and i32 %1, 64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %214, label %26

26:                                               ; preds = %10, %3
  %27 = and i32 %1, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1
  %30 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 18
  %31 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 17
  %32 = load i32, ptr %30, align 4
  br label %33

33:                                               ; preds = %46, %29
  %34 = phi i32 [ %47, %46 ], [ %32, %29 ]
  br label %35

35:                                               ; preds = %35, %33
  switch i32 %34, label %35 [
    i32 4, label %48
    i32 0, label %36
    i32 1, label %41
    i32 2, label %41
    i32 3, label %41
  ]

36:                                               ; preds = %35
  %37 = load ptr, ptr %31, align 8
  %38 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 8
  %39 = load ptr, ptr %38, align 8
  %40 = call i32 %39(ptr noundef %37, i32 noundef 2, ptr noundef nonnull %6) #8
  br label %46

41:                                               ; preds = %35, %35, %35
  %42 = load ptr, ptr %31, align 8
  %43 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 8
  %44 = load ptr, ptr %43, align 8
  %45 = call i32 %44(ptr noundef %42, i32 noundef 4, ptr noundef nonnull %6) #8
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i32 [ 4, %41 ], [ 2, %36 ]
  store i32 %47, ptr %30, align 4
  br label %33

48:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  br label %214

49:                                               ; preds = %26
  %50 = and i32 %1, 128
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %200, label %52

52:                                               ; preds = %49
  %53 = and i32 %1, 64
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %118, label %55

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1
  %56 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 18
  %57 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 17
  %58 = load i32, ptr %56, align 4
  br label %59

59:                                               ; preds = %72, %55
  %60 = phi i32 [ %73, %72 ], [ %58, %55 ]
  br label %61

61:                                               ; preds = %61, %59
  switch i32 %60, label %61 [
    i32 4, label %74
    i32 0, label %62
    i32 1, label %67
    i32 2, label %67
    i32 3, label %67
  ]

62:                                               ; preds = %61
  %63 = load ptr, ptr %57, align 8
  %64 = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 8
  %65 = load ptr, ptr %64, align 8
  %66 = call i32 %65(ptr noundef %63, i32 noundef 2, ptr noundef nonnull %5) #8
  br label %72

67:                                               ; preds = %61, %61, %61
  %68 = load ptr, ptr %57, align 8
  %69 = getelementptr inbounds %struct.i2c_client, ptr %68, i32 0, i32 8
  %70 = load ptr, ptr %69, align 8
  %71 = call i32 %70(ptr noundef %68, i32 noundef 4, ptr noundef nonnull %5) #8
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i32 [ 4, %67 ], [ 2, %62 ]
  store i32 %73, ptr %56, align 4
  br label %59

74:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  %75 = and i32 %1, 4
  %76 = icmp eq i32 %75, 0
  %77 = load ptr, ptr %57, align 8
  %78 = getelementptr inbounds %struct.i2c_client, ptr %77, i32 0, i32 8
  %79 = load ptr, ptr %78, align 8
  br i1 %76, label %99, label %80

80:                                               ; preds = %74
  %81 = call i32 %79(ptr noundef %77, i32 noundef 0, ptr noundef nonnull %7) #8
  store i32 0, ptr %56, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  call void @arm_heavy_mb() #8
  %82 = trunc i32 %2 to i8
  %83 = or i8 %82, 16
  %84 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 3
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 11
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %87, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = shl i32 2, %89
  %91 = getelementptr i8, ptr %85, i32 %90
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %91, i8 %83) #8, !srcloc !9
  %92 = load i8, ptr %7, align 1
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  call void @arm_heavy_mb() #8
  %93 = load ptr, ptr %84, align 8
  %94 = load ptr, ptr %86, align 8
  %95 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %94, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = shl i32 4, %96
  %98 = getelementptr i8, ptr %93, i32 %97
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %98, i8 %92) #8, !srcloc !9
  br label %200

99:                                               ; preds = %74
  %100 = call i32 %79(ptr noundef %77, i32 noundef 1, ptr noundef nonnull %7) #8
  store i32 1, ptr %56, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  call void @arm_heavy_mb() #8
  %101 = trunc i32 %2 to i8
  %102 = and i8 %101, -17
  %103 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 3
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 11
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %106, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = shl i32 2, %108
  %110 = getelementptr i8, ptr %104, i32 %109
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %110, i8 %102) #8, !srcloc !9
  %111 = load ptr, ptr %103, align 8
  %112 = load ptr, ptr %105, align 8
  %113 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %112, i32 0, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = shl i32 4, %114
  %116 = getelementptr i8, ptr %111, i32 %115
  %117 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %116) #8, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  br label %200

118:                                              ; preds = %52
  %119 = and i32 %2, 16
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 3
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 11
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %125, i32 0, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = shl i32 4, %127
  %129 = getelementptr i8, ptr %123, i32 %128
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %129) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  store i8 %130, ptr %7, align 1
  %131 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 17
  %132 = load ptr, ptr %131, align 8
  %133 = getelementptr inbounds %struct.i2c_client, ptr %132, i32 0, i32 8
  %134 = load ptr, ptr %133, align 8
  %135 = call i32 %134(ptr noundef %132, i32 noundef 3, ptr noundef nonnull %7) #8
  %136 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 18
  store i32 3, ptr %136, align 4
  br label %200

137:                                              ; preds = %118
  %138 = and i32 %1, 1
  %139 = icmp eq i32 %138, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  %140 = trunc i32 %2 to i8
  br i1 %139, label %141, label %164

141:                                              ; preds = %137
  %142 = or i8 %140, 16
  %143 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 3
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 11
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %146, i32 0, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = shl i32 2, %148
  %150 = getelementptr i8, ptr %144, i32 %149
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %150, i8 %142) #8, !srcloc !9
  %151 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 17
  %152 = load ptr, ptr %151, align 8
  %153 = getelementptr inbounds %struct.i2c_client, ptr %152, i32 0, i32 8
  %154 = load ptr, ptr %153, align 8
  %155 = call i32 %154(ptr noundef %152, i32 noundef 2, ptr noundef nonnull %7) #8
  %156 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 18
  store i32 2, ptr %156, align 4
  %157 = load i8, ptr %7, align 1
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  call void @arm_heavy_mb() #8
  %158 = load ptr, ptr %143, align 8
  %159 = load ptr, ptr %145, align 8
  %160 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %159, i32 0, i32 1
  %161 = load i32, ptr %160, align 4
  %162 = shl i32 4, %161
  %163 = getelementptr i8, ptr %158, i32 %162
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %163, i8 %157) #8, !srcloc !9
  br label %200

164:                                              ; preds = %137
  %165 = and i8 %140, -17
  %166 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 3
  %167 = load ptr, ptr %166, align 8
  %168 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 11
  %169 = load ptr, ptr %168, align 8
  %170 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %169, i32 0, i32 1
  %171 = load i32, ptr %170, align 4
  %172 = shl i32 2, %171
  %173 = getelementptr i8, ptr %167, i32 %172
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %173, i8 %165) #8, !srcloc !9
  %174 = load ptr, ptr %166, align 8
  %175 = load ptr, ptr %168, align 8
  %176 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %175, i32 0, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = shl i32 4, %177
  %179 = getelementptr i8, ptr %174, i32 %178
  %180 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %179) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1
  %181 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 18
  %182 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 17
  %183 = load i32, ptr %181, align 4
  br label %184

184:                                              ; preds = %197, %164
  %185 = phi i32 [ %198, %197 ], [ %183, %164 ]
  br label %186

186:                                              ; preds = %186, %184
  switch i32 %185, label %186 [
    i32 4, label %199
    i32 0, label %187
    i32 1, label %192
    i32 2, label %192
    i32 3, label %192
  ]

187:                                              ; preds = %186
  %188 = load ptr, ptr %182, align 8
  %189 = getelementptr inbounds %struct.i2c_client, ptr %188, i32 0, i32 8
  %190 = load ptr, ptr %189, align 8
  %191 = call i32 %190(ptr noundef %188, i32 noundef 2, ptr noundef nonnull %4) #8
  br label %197

192:                                              ; preds = %186, %186, %186
  %193 = load ptr, ptr %182, align 8
  %194 = getelementptr inbounds %struct.i2c_client, ptr %193, i32 0, i32 8
  %195 = load ptr, ptr %194, align 8
  %196 = call i32 %195(ptr noundef %193, i32 noundef 4, ptr noundef nonnull %4) #8
  br label %197

197:                                              ; preds = %192, %187
  %198 = phi i32 [ 4, %192 ], [ 2, %187 ]
  store i32 %198, ptr %181, align 4
  br label %184

199:                                              ; preds = %186
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  br label %214

200:                                              ; preds = %141, %121, %99, %80, %49
  %201 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 20
  %202 = call i32 @hrtimer_try_to_cancel(ptr noundef %201) #8
  %203 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 20, i32 3
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %204, i32 0, i32 6
  %206 = load ptr, ptr %205, align 4
  %207 = call i64 %206() #8
  %208 = call i64 @hrtimer_forward(ptr noundef %201, i64 noundef %207, i64 noundef 30000) #8
  %209 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 20, i32 1
  %210 = load i64, ptr %209, align 8
  %211 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 20, i32 0, i32 1
  %212 = load i64, ptr %211, align 8
  %213 = sub i64 %212, %210
  call void @hrtimer_start_range_ns(ptr noundef %201, i64 noundef %210, i64 noundef %213, i32 noundef 0) #8
  br label %214

214:                                              ; preds = %200, %199, %48, %10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_imx_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #8, !srcloc !11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #8, !srcloc !12
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  br label %23

16:                                               ; preds = %3
  %17 = tail call fastcc i32 @i2c_imx_xfer_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  %18 = load ptr, ptr %6, align 4
  %19 = tail call i64 @ktime_get_mono_fast_ns() #8
  %20 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 11, i32 22
  store volatile i64 %19, ptr %20, align 8
  %21 = load ptr, ptr %6, align 4
  %22 = tail call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #8
  br label %23

23:                                               ; preds = %16, %15, %10
  %24 = phi i32 [ %17, %16 ], [ %8, %10 ], [ %8, %15 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_imx_xfer_atomic(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.imx_i2c_struct, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @clk_enable(ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @i2c_imx_xfer_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true)
  %12 = load ptr, ptr %6, align 8
  tail call void @clk_disable(ptr noundef %12) #8
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i32 [ %11, %10 ], [ %8, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @i2c_imx_func(ptr nocapture noundef readnone %0) #6 {
  ret i32 268369929
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_imx_reg_slave(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.imx_i2c_struct, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  store ptr %0, ptr %6, align 8
  %10 = getelementptr inbounds %struct.imx_i2c_struct, ptr %5, i32 0, i32 18
  store i32 4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #8, !srcloc !11
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 0, i32 -1, ptr elementtype(i32) %16) #8, !srcloc !12
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  br label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.12) #9
  br label %24

23:                                               ; preds = %9
  tail call fastcc void @i2c_imx_slave_init(ptr noundef %5)
  br label %24

24:                                               ; preds = %23, %21, %1
  %25 = phi i32 [ %13, %21 ], [ 0, %23 ], [ -16, %1 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_imx_unreg_slave(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.imx_i2c_struct, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %10 = getelementptr inbounds %struct.imx_i2c_struct, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.imx_i2c_struct, ptr %5, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 0) #8, !srcloc !9
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %16 = trunc i32 %15 to i8
  %17 = xor i8 %16, -128
  %18 = load ptr, ptr %10, align 8
  %19 = load ptr, ptr %12, align 8
  %20 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 2, %21
  %23 = getelementptr i8, ptr %18, i32 %22
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 %17) #8, !srcloc !9
  %24 = load ptr, ptr %12, align 8
  %25 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %24, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %27 = trunc i32 %26 to i8
  %28 = xor i8 %27, -19
  %29 = load ptr, ptr %10, align 8
  %30 = load ptr, ptr %12, align 8
  %31 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = shl i32 3, %32
  %34 = getelementptr i8, ptr %29, i32 %33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 %28) #8, !srcloc !9
  store ptr null, ptr %6, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @__pm_runtime_idle(ptr noundef %36, i32 noundef 4) #8
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %9
  %40 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.13) #9
  br label %41

41:                                               ; preds = %39, %9, %1
  %42 = phi i32 [ -22, %1 ], [ %37, %39 ], [ %37, %9 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2c_imx_xfer_common(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call fastcc i32 @i2c_imx_start(ptr noundef %6, i1 noundef zeroext %3)
  %8 = icmp eq i32 %7, 0
  %9 = or i1 %8, %3
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %569, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @i2c_recover_bus(ptr noundef %6) #8
  %16 = tail call fastcc i32 @i2c_imx_start(ptr noundef %6, i1 noundef zeroext false)
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi i32 [ %16, %14 ], [ %7, %4 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %569

20:                                               ; preds = %17
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %569, label %22

22:                                               ; preds = %20
  %23 = add i32 %2, -1
  %24 = getelementptr inbounds %struct.imx_i2c_struct, ptr %6, i32 0, i32 3
  %25 = getelementptr inbounds %struct.imx_i2c_struct, ptr %6, i32 0, i32 11
  %26 = getelementptr inbounds %struct.imx_i2c_struct, ptr %6, i32 0, i32 16
  %27 = getelementptr inbounds %struct.imx_i2c_struct, ptr %6, i32 0, i32 7
  br label %28

28:                                               ; preds = %566, %22
  %29 = phi i1 [ false, %22 ], [ %32, %566 ]
  %30 = phi i32 [ 0, %22 ], [ %567, %566 ]
  %31 = icmp eq i32 %30, %23
  %32 = select i1 %31, i1 true, i1 %29
  %33 = icmp eq i32 %30, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %24, align 8
  %36 = load ptr, ptr %25, align 8
  %37 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 2, %38
  %40 = getelementptr i8, ptr %35, i32 %39
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %40) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %42 = or i8 %41, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %43 = load ptr, ptr %24, align 8
  %44 = load ptr, ptr %25, align 8
  %45 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = shl i32 2, %46
  %48 = getelementptr i8, ptr %43, i32 %47
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %48, i8 %42) #8, !srcloc !9
  %49 = tail call fastcc i32 @i2c_imx_bus_busy(ptr noundef %6, i32 noundef 1, i1 noundef zeroext %3)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %569

51:                                               ; preds = %34, %28
  %52 = getelementptr %struct.i2c_msg, ptr %1, i32 %30
  %53 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 1
  %54 = load i16, ptr %53, align 2
  %55 = and i16 %54, 1
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %376, label %57

57:                                               ; preds = %51
  %58 = and i16 %54, 1024
  %59 = load ptr, ptr %26, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 2
  %63 = load i16, ptr %62, align 4
  %64 = icmp ugt i16 %63, 15
  %65 = icmp eq i16 %58, 0
  %66 = select i1 %64, i1 %65, i1 false
  br label %67

67:                                               ; preds = %61, %57
  %68 = phi i1 [ false, %57 ], [ %66, %61 ]
  %69 = load i16, ptr %52, align 4
  %70 = trunc i16 %69 to i8
  %71 = shl i8 %70, 1
  %72 = trunc i16 %54 to i8
  %73 = and i8 %72, 1
  %74 = or i8 %71, %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %75 = load ptr, ptr %24, align 8
  %76 = load ptr, ptr %25, align 8
  %77 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %76, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = shl i32 4, %78
  %80 = getelementptr i8, ptr %75, i32 %79
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %80, i8 %74) #8, !srcloc !9
  %81 = tail call fastcc i32 @i2c_imx_trx_complete(ptr noundef %6, i1 noundef zeroext %3) #8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %569

83:                                               ; preds = %67
  %84 = load ptr, ptr %24, align 8
  %85 = load ptr, ptr %25, align 8
  %86 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %85, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = shl i32 3, %87
  %89 = getelementptr i8, ptr %84, i32 %88
  %90 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %89) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %569

93:                                               ; preds = %83
  %94 = load ptr, ptr %24, align 8
  %95 = load ptr, ptr %25, align 8
  %96 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %95, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = shl i32 2, %97
  %99 = getelementptr i8, ptr %94, i32 %98
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %99) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %101 = and i8 %100, -17
  %102 = zext i8 %101 to i32
  %103 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 2
  %104 = load i16, ptr %103, align 4
  %105 = icmp ne i16 %104, 1
  %106 = icmp ne i16 %58, 0
  %107 = select i1 %105, i1 true, i1 %106
  %108 = and i32 %102, 231
  %109 = select i1 %107, i32 %108, i32 %102
  %110 = or i32 %109, 2
  %111 = select i1 %68, i32 %110, i32 %109
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %112 = trunc i32 %111 to i8
  %113 = load ptr, ptr %24, align 8
  %114 = load ptr, ptr %25, align 8
  %115 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %114, i32 0, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = shl i32 2, %116
  %118 = getelementptr i8, ptr %113, i32 %117
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %118, i8 %112) #8, !srcloc !9
  %119 = load ptr, ptr %24, align 8
  %120 = load ptr, ptr %25, align 8
  %121 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %120, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = shl i32 4, %122
  %124 = getelementptr i8, ptr %119, i32 %123
  %125 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %124) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  br i1 %68, label %131, label %126

126:                                              ; preds = %93
  %127 = load i16, ptr %103, align 4
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %566, label %129

129:                                              ; preds = %126
  %130 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 3
  br label %279

131:                                              ; preds = %93
  %132 = load volatile i32, ptr @jiffies, align 64
  %133 = load ptr, ptr %26, align 4
  %134 = getelementptr inbounds %struct.imx_i2c_dma, ptr %133, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.imx_i2c_dma, ptr %133, i32 0, i32 2
  store ptr %135, ptr %136, align 4
  %137 = getelementptr inbounds %struct.imx_i2c_dma, ptr %133, i32 0, i32 6
  store i32 2, ptr %137, align 4
  %138 = getelementptr inbounds %struct.imx_i2c_dma, ptr %133, i32 0, i32 7
  store i32 2, ptr %138, align 4
  %139 = load i16, ptr %103, align 4
  %140 = zext i16 %139 to i32
  %141 = add nsw i32 %140, -2
  %142 = getelementptr inbounds %struct.imx_i2c_dma, ptr %133, i32 0, i32 5
  store i32 %141, ptr %142, align 4
  %143 = tail call fastcc i32 @i2c_imx_dma_xfer(ptr noundef %6, ptr noundef %52) #8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %569

145:                                              ; preds = %131
  %146 = load ptr, ptr %26, align 4
  %147 = getelementptr inbounds %struct.imx_i2c_dma, ptr %146, i32 0, i32 3
  %148 = tail call i32 @wait_for_completion_timeout(ptr noundef %147, i32 noundef 100) #8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %145
  %151 = load ptr, ptr %24, align 8
  %152 = load ptr, ptr %25, align 8
  %153 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %152, i32 0, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = shl i32 3, %154
  %156 = getelementptr i8, ptr %151, i32 %155
  %157 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %156) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %158 = icmp sgt i8 %157, -1
  br i1 %158, label %159, label %190

159:                                              ; preds = %150
  %160 = add i32 %132, 100
  br label %177

161:                                              ; preds = %145
  %162 = getelementptr inbounds %struct.imx_i2c_dma, ptr %133, i32 0, i32 2
  %163 = load ptr, ptr %162, align 4
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.dma_device, ptr %164, i32 0, i32 47
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %569, label %168

168:                                              ; preds = %161
  %169 = tail call i32 %166(ptr noundef %163) #8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %569

171:                                              ; preds = %168
  %172 = load ptr, ptr %163, align 4
  %173 = getelementptr inbounds %struct.dma_device, ptr %172, i32 0, i32 48
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %569, label %176

176:                                              ; preds = %171
  tail call void %174(ptr noundef %163) #8
  br label %569

177:                                              ; preds = %181, %159
  %178 = load volatile i32, ptr @jiffies, align 64
  %179 = sub i32 %160, %178
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %569, label %181

181:                                              ; preds = %177
  tail call void @schedule() #8
  %182 = load ptr, ptr %24, align 8
  %183 = load ptr, ptr %25, align 8
  %184 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %183, i32 0, i32 1
  %185 = load i32, ptr %184, align 4
  %186 = shl i32 3, %185
  %187 = getelementptr i8, ptr %182, i32 %186
  %188 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %187) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %189 = icmp sgt i8 %188, -1
  br i1 %189, label %177, label %190

190:                                              ; preds = %181, %150
  %191 = load ptr, ptr %24, align 8
  %192 = load ptr, ptr %25, align 8
  %193 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %192, i32 0, i32 1
  %194 = load i32, ptr %193, align 4
  %195 = shl i32 2, %194
  %196 = getelementptr i8, ptr %191, i32 %195
  %197 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %196) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %198 = and i8 %197, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %199 = load ptr, ptr %24, align 8
  %200 = load ptr, ptr %25, align 8
  %201 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %200, i32 0, i32 1
  %202 = load i32, ptr %201, align 4
  %203 = shl i32 2, %202
  %204 = getelementptr i8, ptr %199, i32 %203
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %204, i8 %198) #8, !srcloc !9
  %205 = load ptr, ptr %24, align 8
  %206 = load ptr, ptr %25, align 8
  %207 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %206, i32 0, i32 1
  %208 = load i32, ptr %207, align 4
  %209 = shl i32 2, %208
  %210 = getelementptr i8, ptr %205, i32 %209
  %211 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %210) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %212 = or i8 %211, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %213 = load ptr, ptr %24, align 8
  %214 = load ptr, ptr %25, align 8
  %215 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %214, i32 0, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = shl i32 2, %216
  %218 = getelementptr i8, ptr %213, i32 %217
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %218, i8 %212) #8, !srcloc !9
  %219 = load ptr, ptr %24, align 8
  %220 = load ptr, ptr %25, align 8
  %221 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %220, i32 0, i32 1
  %222 = load i32, ptr %221, align 4
  %223 = shl i32 4, %222
  %224 = getelementptr i8, ptr %219, i32 %223
  %225 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %224) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %226 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 3
  %227 = load ptr, ptr %226, align 4
  %228 = load i16, ptr %103, align 4
  %229 = zext i16 %228 to i32
  %230 = add nsw i32 %229, -2
  %231 = getelementptr i8, ptr %227, i32 %230
  store i8 %225, ptr %231, align 1
  %232 = tail call fastcc i32 @i2c_imx_trx_complete(ptr noundef %6, i1 noundef zeroext false) #8
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %569

234:                                              ; preds = %190
  %235 = load ptr, ptr %24, align 8
  %236 = load ptr, ptr %25, align 8
  %237 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %236, i32 0, i32 1
  %238 = load i32, ptr %237, align 4
  %239 = shl i32 2, %238
  %240 = getelementptr i8, ptr %235, i32 %239
  %241 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %240) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8
  br i1 %32, label %242, label %258

242:                                              ; preds = %234
  %243 = and i8 %241, 32
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  store i32 1, ptr %27, align 8
  br label %246

246:                                              ; preds = %245, %242
  %247 = and i8 %241, -49
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %248 = load ptr, ptr %24, align 8
  %249 = load ptr, ptr %25, align 8
  %250 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %249, i32 0, i32 1
  %251 = load i32, ptr %250, align 4
  %252 = shl i32 2, %251
  %253 = getelementptr i8, ptr %248, i32 %252
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %253, i8 %247) #8, !srcloc !9
  %254 = load i32, ptr %27, align 8
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %266

256:                                              ; preds = %246
  %257 = tail call fastcc i32 @i2c_imx_bus_busy(ptr noundef %6, i32 noundef 0, i1 noundef zeroext false) #8
  br label %266

258:                                              ; preds = %234
  %259 = or i8 %241, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %260 = load ptr, ptr %24, align 8
  %261 = load ptr, ptr %25, align 8
  %262 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %261, i32 0, i32 1
  %263 = load i32, ptr %262, align 4
  %264 = shl i32 2, %263
  %265 = getelementptr i8, ptr %260, i32 %264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %265, i8 %259) #8, !srcloc !9
  br label %266

266:                                              ; preds = %258, %256, %246
  %267 = load ptr, ptr %24, align 8
  %268 = load ptr, ptr %25, align 8
  %269 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %268, i32 0, i32 1
  %270 = load i32, ptr %269, align 4
  %271 = shl i32 4, %270
  %272 = getelementptr i8, ptr %267, i32 %271
  %273 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %272) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %274 = load ptr, ptr %226, align 4
  %275 = load i16, ptr %103, align 4
  %276 = zext i16 %275 to i32
  %277 = add nsw i32 %276, -1
  %278 = getelementptr i8, ptr %274, i32 %277
  store i8 %273, ptr %278, align 1
  br label %566

279:                                              ; preds = %371, %129
  %280 = phi i32 [ 0, %129 ], [ %372, %371 ]
  %281 = tail call fastcc i32 @i2c_imx_trx_complete(ptr noundef %6, i1 noundef zeroext %3) #8
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %569

283:                                              ; preds = %279
  %284 = icmp eq i32 %280, 0
  %285 = select i1 %284, i1 %106, i1 false
  br i1 %285, label %288, label %286

286:                                              ; preds = %283
  %287 = load i16, ptr %103, align 4
  br label %302

288:                                              ; preds = %283
  %289 = load ptr, ptr %24, align 8
  %290 = load ptr, ptr %25, align 8
  %291 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %290, i32 0, i32 1
  %292 = load i32, ptr %291, align 4
  %293 = shl i32 4, %292
  %294 = getelementptr i8, ptr %289, i32 %293
  %295 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %294) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %296 = add i8 %295, -33
  %297 = icmp ult i8 %296, -32
  br i1 %297, label %569, label %298

298:                                              ; preds = %288
  %299 = zext i8 %295 to i16
  %300 = load i16, ptr %103, align 4
  %301 = add i16 %300, %299
  store i16 %301, ptr %103, align 4
  br label %302

302:                                              ; preds = %298, %286
  %303 = phi i16 [ %301, %298 ], [ %287, %286 ]
  %304 = phi i8 [ %295, %298 ], [ 0, %286 ]
  %305 = zext i16 %303 to i32
  %306 = add nsw i32 %305, -1
  %307 = icmp eq i32 %280, %306
  br i1 %307, label %308, label %340

308:                                              ; preds = %302
  %309 = load ptr, ptr %24, align 8
  %310 = load ptr, ptr %25, align 8
  %311 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %310, i32 0, i32 1
  %312 = load i32, ptr %311, align 4
  %313 = shl i32 2, %312
  %314 = getelementptr i8, ptr %309, i32 %313
  %315 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %314) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8
  br i1 %32, label %316, label %332

316:                                              ; preds = %308
  %317 = and i8 %315, 32
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %316
  store i32 1, ptr %27, align 8
  br label %320

320:                                              ; preds = %319, %316
  %321 = and i8 %315, -49
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %322 = load ptr, ptr %24, align 8
  %323 = load ptr, ptr %25, align 8
  %324 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %323, i32 0, i32 1
  %325 = load i32, ptr %324, align 4
  %326 = shl i32 2, %325
  %327 = getelementptr i8, ptr %322, i32 %326
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %327, i8 %321) #8, !srcloc !9
  %328 = load i32, ptr %27, align 8
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %358

330:                                              ; preds = %320
  %331 = tail call fastcc i32 @i2c_imx_bus_busy(ptr noundef %6, i32 noundef 0, i1 noundef zeroext %3) #8
  br label %358

332:                                              ; preds = %308
  %333 = or i8 %315, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %334 = load ptr, ptr %24, align 8
  %335 = load ptr, ptr %25, align 8
  %336 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %335, i32 0, i32 1
  %337 = load i32, ptr %336, align 4
  %338 = shl i32 2, %337
  %339 = getelementptr i8, ptr %334, i32 %338
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %339, i8 %333) #8, !srcloc !9
  br label %358

340:                                              ; preds = %302
  %341 = add nsw i32 %305, -2
  %342 = icmp eq i32 %280, %341
  br i1 %342, label %343, label %358

343:                                              ; preds = %340
  %344 = load ptr, ptr %24, align 8
  %345 = load ptr, ptr %25, align 8
  %346 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %345, i32 0, i32 1
  %347 = load i32, ptr %346, align 4
  %348 = shl i32 2, %347
  %349 = getelementptr i8, ptr %344, i32 %348
  %350 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %349) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %351 = or i8 %350, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %352 = load ptr, ptr %24, align 8
  %353 = load ptr, ptr %25, align 8
  %354 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %353, i32 0, i32 1
  %355 = load i32, ptr %354, align 4
  %356 = shl i32 2, %355
  %357 = getelementptr i8, ptr %352, i32 %356
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %357, i8 %351) #8, !srcloc !9
  br label %358

358:                                              ; preds = %343, %340, %332, %330, %320
  br i1 %285, label %359, label %361

359:                                              ; preds = %358
  %360 = load ptr, ptr %130, align 4
  store i8 %304, ptr %360, align 1
  br label %371

361:                                              ; preds = %358
  %362 = load ptr, ptr %24, align 8
  %363 = load ptr, ptr %25, align 8
  %364 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %363, i32 0, i32 1
  %365 = load i32, ptr %364, align 4
  %366 = shl i32 4, %365
  %367 = getelementptr i8, ptr %362, i32 %366
  %368 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %367) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %369 = load ptr, ptr %130, align 4
  %370 = getelementptr i8, ptr %369, i32 %280
  store i8 %368, ptr %370, align 1
  br label %371

371:                                              ; preds = %361, %359
  %372 = add nuw nsw i32 %280, 1
  %373 = load i16, ptr %103, align 4
  %374 = zext i16 %373 to i32
  %375 = icmp ult i32 %372, %374
  br i1 %375, label %279, label %566

376:                                              ; preds = %51
  br i1 %3, label %508, label %377

377:                                              ; preds = %376
  %378 = load ptr, ptr %26, align 4
  %379 = icmp eq ptr %378, null
  br i1 %379, label %508, label %380

380:                                              ; preds = %377
  %381 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 2
  %382 = load i16, ptr %381, align 4
  %383 = icmp ugt i16 %382, 15
  br i1 %383, label %384, label %508

384:                                              ; preds = %380
  %385 = load volatile i32, ptr @jiffies, align 64
  %386 = load ptr, ptr %378, align 4
  %387 = getelementptr inbounds %struct.imx_i2c_dma, ptr %378, i32 0, i32 2
  store ptr %386, ptr %387, align 4
  %388 = getelementptr inbounds %struct.imx_i2c_dma, ptr %378, i32 0, i32 6
  store i32 1, ptr %388, align 4
  %389 = getelementptr inbounds %struct.imx_i2c_dma, ptr %378, i32 0, i32 7
  store i32 1, ptr %389, align 4
  %390 = load i16, ptr %381, align 4
  %391 = zext i16 %390 to i32
  %392 = add nsw i32 %391, -1
  %393 = getelementptr inbounds %struct.imx_i2c_dma, ptr %378, i32 0, i32 5
  store i32 %392, ptr %393, align 4
  %394 = tail call fastcc i32 @i2c_imx_dma_xfer(ptr noundef %6, ptr noundef %52) #8
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %569

396:                                              ; preds = %384
  %397 = load ptr, ptr %24, align 8
  %398 = load ptr, ptr %25, align 8
  %399 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %398, i32 0, i32 1
  %400 = load i32, ptr %399, align 4
  %401 = shl i32 2, %400
  %402 = getelementptr i8, ptr %397, i32 %401
  %403 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %402) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %404 = or i8 %403, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %405 = load ptr, ptr %24, align 8
  %406 = load ptr, ptr %25, align 8
  %407 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %406, i32 0, i32 1
  %408 = load i32, ptr %407, align 4
  %409 = shl i32 2, %408
  %410 = getelementptr i8, ptr %405, i32 %409
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %410, i8 %404) #8, !srcloc !9
  %411 = load i16, ptr %52, align 4
  %412 = trunc i16 %411 to i8
  %413 = shl i8 %412, 1
  %414 = load i16, ptr %53, align 2
  %415 = trunc i16 %414 to i8
  %416 = and i8 %415, 1
  %417 = or i8 %416, %413
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %418 = load ptr, ptr %24, align 8
  %419 = load ptr, ptr %25, align 8
  %420 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %419, i32 0, i32 1
  %421 = load i32, ptr %420, align 4
  %422 = shl i32 4, %421
  %423 = getelementptr i8, ptr %418, i32 %422
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %423, i8 %417) #8, !srcloc !9
  %424 = load ptr, ptr %26, align 4
  %425 = getelementptr inbounds %struct.imx_i2c_dma, ptr %424, i32 0, i32 3
  %426 = tail call i32 @wait_for_completion_timeout(ptr noundef %425, i32 noundef 100) #8
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %439, label %428

428:                                              ; preds = %396
  %429 = load ptr, ptr %24, align 8
  %430 = load ptr, ptr %25, align 8
  %431 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %430, i32 0, i32 1
  %432 = load i32, ptr %431, align 4
  %433 = shl i32 3, %432
  %434 = getelementptr i8, ptr %429, i32 %433
  %435 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %434) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %436 = icmp sgt i8 %435, -1
  br i1 %436, label %437, label %468

437:                                              ; preds = %428
  %438 = add i32 %385, 100
  br label %455

439:                                              ; preds = %396
  %440 = getelementptr inbounds %struct.imx_i2c_dma, ptr %378, i32 0, i32 2
  %441 = load ptr, ptr %440, align 4
  %442 = load ptr, ptr %441, align 4
  %443 = getelementptr inbounds %struct.dma_device, ptr %442, i32 0, i32 47
  %444 = load ptr, ptr %443, align 4
  %445 = icmp eq ptr %444, null
  br i1 %445, label %569, label %446

446:                                              ; preds = %439
  %447 = tail call i32 %444(ptr noundef %441) #8
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %569

449:                                              ; preds = %446
  %450 = load ptr, ptr %441, align 4
  %451 = getelementptr inbounds %struct.dma_device, ptr %450, i32 0, i32 48
  %452 = load ptr, ptr %451, align 4
  %453 = icmp eq ptr %452, null
  br i1 %453, label %569, label %454

454:                                              ; preds = %449
  tail call void %452(ptr noundef %441) #8
  br label %569

455:                                              ; preds = %459, %437
  %456 = load volatile i32, ptr @jiffies, align 64
  %457 = sub i32 %438, %456
  %458 = icmp slt i32 %457, 0
  br i1 %458, label %569, label %459

459:                                              ; preds = %455
  tail call void @schedule() #8
  %460 = load ptr, ptr %24, align 8
  %461 = load ptr, ptr %25, align 8
  %462 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %461, i32 0, i32 1
  %463 = load i32, ptr %462, align 4
  %464 = shl i32 3, %463
  %465 = getelementptr i8, ptr %460, i32 %464
  %466 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %465) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %467 = icmp sgt i8 %466, -1
  br i1 %467, label %455, label %468

468:                                              ; preds = %459, %428
  %469 = load ptr, ptr %24, align 8
  %470 = load ptr, ptr %25, align 8
  %471 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %470, i32 0, i32 1
  %472 = load i32, ptr %471, align 4
  %473 = shl i32 2, %472
  %474 = getelementptr i8, ptr %469, i32 %473
  %475 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %474) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %476 = and i8 %475, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %477 = load ptr, ptr %24, align 8
  %478 = load ptr, ptr %25, align 8
  %479 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %478, i32 0, i32 1
  %480 = load i32, ptr %479, align 4
  %481 = shl i32 2, %480
  %482 = getelementptr i8, ptr %477, i32 %481
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %482, i8 %476) #8, !srcloc !9
  %483 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 3
  %484 = load ptr, ptr %483, align 4
  %485 = load i16, ptr %381, align 4
  %486 = zext i16 %485 to i32
  %487 = add nsw i32 %486, -1
  %488 = getelementptr i8, ptr %484, i32 %487
  %489 = load i8, ptr %488, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %490 = load ptr, ptr %24, align 8
  %491 = load ptr, ptr %25, align 8
  %492 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %491, i32 0, i32 1
  %493 = load i32, ptr %492, align 4
  %494 = shl i32 4, %493
  %495 = getelementptr i8, ptr %490, i32 %494
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %495, i8 %489) #8, !srcloc !9
  %496 = tail call fastcc i32 @i2c_imx_trx_complete(ptr noundef %6, i1 noundef zeroext false) #8
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %569

498:                                              ; preds = %468
  %499 = load ptr, ptr %24, align 8
  %500 = load ptr, ptr %25, align 8
  %501 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %500, i32 0, i32 1
  %502 = load i32, ptr %501, align 4
  %503 = shl i32 3, %502
  %504 = getelementptr i8, ptr %499, i32 %503
  %505 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %504) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %506 = and i8 %505, 1
  %507 = icmp eq i8 %506, 0
  br i1 %507, label %566, label %569

508:                                              ; preds = %380, %377, %376
  %509 = load i16, ptr %52, align 4
  %510 = trunc i16 %509 to i8
  %511 = shl i8 %510, 1
  %512 = trunc i16 %54 to i8
  %513 = and i8 %512, 1
  %514 = or i8 %513, %511
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %515 = load ptr, ptr %24, align 8
  %516 = load ptr, ptr %25, align 8
  %517 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %516, i32 0, i32 1
  %518 = load i32, ptr %517, align 4
  %519 = shl i32 4, %518
  %520 = getelementptr i8, ptr %515, i32 %519
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %520, i8 %514) #8, !srcloc !9
  %521 = tail call fastcc i32 @i2c_imx_trx_complete(ptr noundef %6, i1 noundef zeroext %3) #8
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %569

523:                                              ; preds = %508
  %524 = load ptr, ptr %24, align 8
  %525 = load ptr, ptr %25, align 8
  %526 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %525, i32 0, i32 1
  %527 = load i32, ptr %526, align 4
  %528 = shl i32 3, %527
  %529 = getelementptr i8, ptr %524, i32 %528
  %530 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %529) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %531 = and i8 %530, 1
  %532 = icmp eq i8 %531, 0
  br i1 %532, label %533, label %569

533:                                              ; preds = %523
  %534 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 3
  %535 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 2
  %536 = load i16, ptr %535, align 4
  %537 = icmp eq i16 %536, 0
  br i1 %537, label %566, label %543

538:                                              ; preds = %556
  %539 = add nuw nsw i32 %544, 1
  %540 = load i16, ptr %535, align 4
  %541 = zext i16 %540 to i32
  %542 = icmp ult i32 %539, %541
  br i1 %542, label %543, label %566

543:                                              ; preds = %538, %533
  %544 = phi i32 [ %539, %538 ], [ 0, %533 ]
  %545 = load ptr, ptr %534, align 4
  %546 = getelementptr i8, ptr %545, i32 %544
  %547 = load i8, ptr %546, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %548 = load ptr, ptr %24, align 8
  %549 = load ptr, ptr %25, align 8
  %550 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %549, i32 0, i32 1
  %551 = load i32, ptr %550, align 4
  %552 = shl i32 4, %551
  %553 = getelementptr i8, ptr %548, i32 %552
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %553, i8 %547) #8, !srcloc !9
  %554 = tail call fastcc i32 @i2c_imx_trx_complete(ptr noundef %6, i1 noundef zeroext %3) #8
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %569

556:                                              ; preds = %543
  %557 = load ptr, ptr %24, align 8
  %558 = load ptr, ptr %25, align 8
  %559 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %558, i32 0, i32 1
  %560 = load i32, ptr %559, align 4
  %561 = shl i32 3, %560
  %562 = getelementptr i8, ptr %557, i32 %561
  %563 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %562) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %564 = and i8 %563, 1
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %538, label %569

566:                                              ; preds = %538, %533, %498, %371, %266, %126
  %567 = add nuw i32 %30, 1
  %568 = icmp eq i32 %567, %2
  br i1 %568, label %569, label %28

569:                                              ; preds = %566, %556, %543, %523, %508, %498, %468, %455, %454, %449, %446, %439, %384, %288, %279, %190, %177, %176, %171, %168, %161, %131, %83, %67, %34, %20, %17, %10
  %570 = phi i32 [ %18, %17 ], [ %7, %10 ], [ -110, %454 ], [ -110, %449 ], [ -110, %446 ], [ -110, %439 ], [ -110, %176 ], [ -110, %171 ], [ -110, %168 ], [ -110, %161 ], [ 0, %20 ], [ %554, %543 ], [ -6, %556 ], [ -110, %455 ], [ -110, %177 ], [ -71, %288 ], [ %281, %279 ], [ %49, %34 ], [ 0, %566 ], [ %81, %67 ], [ -6, %83 ], [ %143, %131 ], [ %232, %190 ], [ -6, %498 ], [ %394, %384 ], [ %496, %468 ], [ %521, %508 ], [ -6, %523 ]
  %571 = getelementptr inbounds %struct.imx_i2c_struct, ptr %6, i32 0, i32 7
  %572 = load i32, ptr %571, align 8
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %599

574:                                              ; preds = %569
  %575 = getelementptr inbounds %struct.imx_i2c_struct, ptr %6, i32 0, i32 3
  %576 = load ptr, ptr %575, align 8
  %577 = getelementptr inbounds %struct.imx_i2c_struct, ptr %6, i32 0, i32 11
  %578 = load ptr, ptr %577, align 8
  %579 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %578, i32 0, i32 1
  %580 = load i32, ptr %579, align 4
  %581 = shl i32 2, %580
  %582 = getelementptr i8, ptr %576, i32 %581
  %583 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %582) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %584 = and i8 %583, 32
  %585 = icmp eq i8 %584, 0
  br i1 %585, label %586, label %587

586:                                              ; preds = %574
  store i32 1, ptr %571, align 8
  br label %587

587:                                              ; preds = %586, %574
  %588 = getelementptr inbounds %struct.imx_i2c_struct, ptr %6, i32 0, i32 16
  %589 = load ptr, ptr %588, align 4
  %590 = icmp eq ptr %589, null
  %591 = select i1 %590, i8 -49, i8 -51
  %592 = and i8 %591, %583
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %593 = load ptr, ptr %575, align 8
  %594 = load ptr, ptr %577, align 8
  %595 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %594, i32 0, i32 1
  %596 = load i32, ptr %595, align 4
  %597 = shl i32 2, %596
  %598 = getelementptr i8, ptr %593, i32 %597
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %598, i8 %592) #8, !srcloc !9
  br label %599

599:                                              ; preds = %587, %569
  %600 = getelementptr inbounds %struct.imx_i2c_struct, ptr %6, i32 0, i32 11
  %601 = load ptr, ptr %600, align 8
  %602 = load i32, ptr %601, align 4
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %608

604:                                              ; preds = %599
  %605 = getelementptr inbounds %struct.imx_i2c_struct, ptr %6, i32 0, i32 6
  %606 = load i32, ptr %605, align 4
  %607 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %607(i32 noundef %606) #8
  br label %608

608:                                              ; preds = %604, %599
  %609 = load i32, ptr %571, align 8
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %613

611:                                              ; preds = %608
  %612 = tail call fastcc i32 @i2c_imx_bus_busy(ptr noundef %6, i32 noundef 0, i1 noundef zeroext %3) #8
  br label %613

613:                                              ; preds = %611, %608
  %614 = load ptr, ptr %600, align 8
  %615 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %614, i32 0, i32 5
  %616 = load i32, ptr %615, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %617 = trunc i32 %616 to i8
  %618 = xor i8 %617, -128
  %619 = getelementptr inbounds %struct.imx_i2c_struct, ptr %6, i32 0, i32 3
  %620 = load ptr, ptr %619, align 8
  %621 = load ptr, ptr %600, align 8
  %622 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %621, i32 0, i32 1
  %623 = load i32, ptr %622, align 4
  %624 = shl i32 2, %623
  %625 = getelementptr i8, ptr %620, i32 %624
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %625, i8 %618) #8, !srcloc !9
  %626 = getelementptr inbounds %struct.imx_i2c_struct, ptr %6, i32 0, i32 17
  %627 = load ptr, ptr %626, align 8
  %628 = icmp eq ptr %627, null
  br i1 %628, label %630, label %629

629:                                              ; preds = %613
  tail call fastcc void @i2c_imx_slave_init(ptr noundef %6)
  br label %630

630:                                              ; preds = %629, %613
  %631 = icmp slt i32 %570, 0
  %632 = select i1 %631, i32 %570, i32 %2
  ret i32 %632
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2c_imx_start(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = shl nuw i32 1, %11
  %13 = getelementptr i8, ptr %7, i32 %12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %5) #8, !srcloc !9
  %14 = load ptr, ptr %8, align 8
  %15 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %14, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %17 = trunc i32 %16 to i8
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 3, %21
  %23 = getelementptr i8, ptr %18, i32 %22
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 %17) #8, !srcloc !9
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %24, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %27 = trunc i32 %26 to i8
  %28 = load ptr, ptr %6, align 8
  %29 = load ptr, ptr %8, align 8
  %30 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 2, %31
  %33 = getelementptr i8, ptr %28, i32 %32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %27) #8, !srcloc !9
  br i1 %1, label %34, label %36

34:                                               ; preds = %2
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 10737400) #8
  br label %37

36:                                               ; preds = %2
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 150, i32 noundef 2) #8
  br label %37

37:                                               ; preds = %36, %34
  %38 = load ptr, ptr %6, align 8
  %39 = load ptr, ptr %8, align 8
  %40 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 2, %41
  %43 = getelementptr i8, ptr %38, i32 %42
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %43) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %45 = or i8 %44, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %46 = load ptr, ptr %6, align 8
  %47 = load ptr, ptr %8, align 8
  %48 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = shl i32 2, %49
  %51 = getelementptr i8, ptr %46, i32 %50
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %51, i8 %45) #8, !srcloc !9
  %52 = tail call fastcc i32 @i2c_imx_bus_busy(ptr noundef %0, i32 noundef 1, i1 noundef zeroext %1)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %37
  %55 = or i8 %44, 120
  %56 = and i8 %55, -67
  %57 = select i1 %1, i8 %56, i8 %55
  %58 = and i8 %57, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %59 = load ptr, ptr %6, align 8
  %60 = load ptr, ptr %8, align 8
  %61 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %60, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = shl i32 2, %62
  %64 = getelementptr i8, ptr %59, i32 %63
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %64, i8 %58) #8, !srcloc !9
  br label %65

65:                                               ; preds = %54, %37
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2c_imx_bus_busy(ptr nocapture noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 3, %10
  %12 = getelementptr i8, ptr %7, i32 %11
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = icmp eq i32 %1, 0
  %19 = add i32 %4, 50
  br label %32

20:                                               ; preds = %51, %3
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %21, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %24 = trunc i32 %23 to i8
  %25 = xor i8 %24, -17
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 3, %29
  %31 = getelementptr i8, ptr %26, i32 %30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %25) #8, !srcloc !9
  br label %62

32:                                               ; preds = %51, %17
  %33 = phi i32 [ %14, %17 ], [ %59, %51 ]
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %18, i1 true, i1 %35
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 7
  store i32 0, ptr %38, align 8
  br label %62

39:                                               ; preds = %32
  %40 = select i1 %18, i1 %35, i1 false
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 7
  store i32 1, ptr %42, align 8
  br label %62

43:                                               ; preds = %39
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = sub i32 %19, %44
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  br i1 %2, label %48, label %50

48:                                               ; preds = %47
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 21474800) #8
  br label %51

50:                                               ; preds = %47
  tail call void @schedule() #8
  br label %51

51:                                               ; preds = %50, %48
  %52 = load ptr, ptr %5, align 8
  %53 = load ptr, ptr %6, align 8
  %54 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %53, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = shl i32 3, %55
  %57 = getelementptr i8, ptr %52, i32 %56
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %57) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %32, label %20

62:                                               ; preds = %43, %41, %37, %20
  %63 = phi i32 [ -11, %20 ], [ 0, %41 ], [ 0, %37 ], [ -110, %43 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @i2c_imx_slave_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = trunc i16 %5 to i8
  %7 = shl i8 %6, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %8 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %7) #8, !srcloc !9
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %14 = trunc i32 %13 to i8
  %15 = xor i8 %14, -128
  %16 = load ptr, ptr %8, align 8
  %17 = load ptr, ptr %10, align 8
  %18 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 2, %19
  %21 = getelementptr i8, ptr %16, i32 %20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 %15) #8, !srcloc !9
  %22 = load ptr, ptr %10, align 8
  %23 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %25 = trunc i32 %24 to i8
  %26 = xor i8 %25, -19
  %27 = load ptr, ptr %8, align 8
  %28 = load ptr, ptr %10, align 8
  %29 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 3, %30
  %32 = getelementptr i8, ptr %27, i32 %31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %32, i8 %26) #8, !srcloc !9
  %33 = load ptr, ptr %10, align 8
  %34 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %33, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %36 = trunc i32 %35 to i8
  %37 = load ptr, ptr %8, align 8
  %38 = load ptr, ptr %10, align 8
  %39 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = shl i32 2, %40
  %42 = getelementptr i8, ptr %37, i32 %41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %42, i8 %36) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %43 = or i8 %36, 64
  %44 = load ptr, ptr %8, align 8
  %45 = load ptr, ptr %10, align 8
  %46 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = shl i32 2, %47
  %49 = getelementptr i8, ptr %44, i32 %48
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %49, i8 %43) #8, !srcloc !9
  %50 = load ptr, ptr %10, align 8
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %67

53:                                               ; preds = %1
  %54 = load ptr, ptr %8, align 8
  %55 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %50, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = shl i32 5, %56
  %58 = getelementptr i8, ptr %54, i32 %57
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %58) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %60 = or i8 %59, -128
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %61 = load ptr, ptr %8, align 8
  %62 = load ptr, ptr %10, align 8
  %63 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %62, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = shl i32 5, %64
  %66 = getelementptr i8, ptr %61, i32 %65
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %66, i8 %60) #8, !srcloc !9
  br label %67

67:                                               ; preds = %53, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2c_imx_trx_complete(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca %struct.wait_queue_entry, align 4
  br i1 %1, label %4, label %45

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 3, %10
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = tail call i64 @ktime_get() #8
  %14 = add i64 %13, 1100000
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %25, %4
  %20 = tail call i64 @ktime_get() #8
  %21 = icmp sgt i64 %20, %14
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %24 = zext i8 %23 to i32
  br label %31

25:                                               ; preds = %19
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 1073740) #8
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %19, label %31

31:                                               ; preds = %25, %22, %4
  %32 = phi i32 [ %24, %22 ], [ %16, %4 ], [ %28, %25 ]
  %33 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 5
  store i32 %32, ptr %33, align 8
  %34 = load ptr, ptr %7, align 8
  %35 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %34, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %37 = trunc i32 %36 to i8
  %38 = xor i8 %37, -19
  %39 = load ptr, ptr %5, align 8
  %40 = load ptr, ptr %7, align 8
  %41 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 3, %42
  %44 = getelementptr i8, ptr %39, i32 %43
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 %38) #8, !srcloc !9
  br label %70

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 5
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !16
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #8
  %51 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 4
  %52 = call i32 @prepare_to_wait_event(ptr noundef %51, ptr noundef nonnull %3, i32 noundef 2) #8
  %53 = load i32, ptr %46, align 8
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %56, %50
  %57 = phi i32 [ %66, %56 ], [ 10, %50 ]
  %58 = call i32 @schedule_timeout(i32 noundef %57) #8
  %59 = call i32 @prepare_to_wait_event(ptr noundef %51, ptr noundef nonnull %3, i32 noundef 2) #8
  %60 = load i32, ptr %46, align 8
  %61 = and i32 %60, 2
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = icmp ne i32 %58, 0
  %65 = select i1 %63, i1 true, i1 %64
  %66 = select i1 %65, i32 %58, i32 1
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %62, i1 true, i1 %67
  br i1 %68, label %69, label %56

69:                                               ; preds = %56, %50
  call void @finish_wait(ptr noundef %51, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  br label %70

70:                                               ; preds = %69, %45, %31
  %71 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 5
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %94, label %75, !prof !19

75:                                               ; preds = %70
  %76 = and i32 %72, 16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 11
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %80, i32 0, i32 4
  %82 = load i32, ptr %81, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  call void @arm_heavy_mb() #8
  %83 = trunc i32 %82 to i8
  %84 = xor i8 %83, -17
  %85 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 3
  %86 = load ptr, ptr %85, align 8
  %87 = load ptr, ptr %79, align 8
  %88 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %87, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = shl i32 3, %89
  %91 = getelementptr i8, ptr %86, i32 %90
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %91, i8 %84) #8, !srcloc !9
  br label %92

92:                                               ; preds = %78, %75
  %93 = phi i32 [ -11, %78 ], [ 0, %75 ]
  store i32 0, ptr %71, align 8
  br label %94

94:                                               ; preds = %92, %70
  %95 = phi i32 [ -110, %70 ], [ %93, %92 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2c_imx_dma_xfer(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca %struct.scatterlist, align 4
  %4 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %7 = getelementptr inbounds %struct.imx_i2c_dma, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.imx_i2c_dma, ptr %5, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.imx_i2c_dma, ptr %5, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %13) #8
  %19 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %31, !prof !19

22:                                               ; preds = %2
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %23 = tail call ptr @dev_driver_string(ptr noundef %11) #8
  %24 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load ptr, ptr %11, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi ptr [ %28, %27 ], [ %25, %22 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %23, ptr noundef %30) #8
  br label %31

31:                                               ; preds = %29, %2
  br i1 %18, label %32, label %34

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.imx_i2c_dma, ptr %5, i32 0, i32 4
  store i32 -1, ptr %33, align 4
  br label %44

34:                                               ; preds = %31
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %13 to i32
  %37 = add i32 %36, 1073741824
  %38 = lshr i32 %37, 12
  %39 = getelementptr %struct.page, ptr %35, i32 %38
  %40 = and i32 %36, 4095
  %41 = tail call i32 @dma_map_page_attrs(ptr noundef %11, ptr noundef %39, i32 noundef %40, i32 noundef %15, i32 noundef %17, i32 noundef 0) #8
  %42 = getelementptr inbounds %struct.imx_i2c_dma, ptr %5, i32 0, i32 4
  store i32 %41, ptr %42, align 4
  %43 = icmp eq i32 %41, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %34, %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #9
  br label %97

45:                                               ; preds = %34
  %46 = load ptr, ptr %7, align 4
  %47 = load i32, ptr %14, align 4
  %48 = getelementptr inbounds %struct.imx_i2c_dma, ptr %5, i32 0, i32 6
  %49 = load i32, ptr %48, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #8, !annotation !16
  call void @sg_init_table(ptr noundef nonnull %3, i32 noundef 1) #8
  %50 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 3
  store i32 %41, ptr %50, align 4
  %51 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 4
  store i32 %47, ptr %51, align 4
  %52 = icmp eq ptr %46, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %45
  %54 = load ptr, ptr %46, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 39
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %53, %45
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  br label %64

61:                                               ; preds = %56
  %62 = call ptr %58(ptr noundef nonnull %46, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %49, i32 noundef 3, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %60
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8) #9
  br label %93

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.imx_i2c_dma, ptr %5, i32 0, i32 3
  store i32 0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %62, i32 0, i32 6
  store ptr @i2c_imx_dma_callback, ptr %67, align 4
  %68 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %62, i32 0, i32 8
  store ptr %0, ptr %68, align 4
  %69 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %62, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 %70(ptr noundef nonnull %62) #8
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %88, label %73

73:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.9) #9
  %74 = load ptr, ptr %7, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.dma_device, ptr %75, i32 0, i32 47
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %93, label %79

79:                                               ; preds = %73
  %80 = call i32 %77(ptr noundef %74) #8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load ptr, ptr %74, align 4
  %84 = getelementptr inbounds %struct.dma_device, ptr %83, i32 0, i32 48
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  call void %85(ptr noundef %74) #8
  br label %93

88:                                               ; preds = %65
  %89 = load ptr, ptr %7, align 4
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.dma_device, ptr %90, i32 0, i32 50
  %92 = load ptr, ptr %91, align 4
  call void %92(ptr noundef %89) #8
  br label %97

93:                                               ; preds = %87, %82, %79, %73, %64
  %94 = load i32, ptr %42, align 4
  %95 = load i32, ptr %14, align 4
  %96 = load i32, ptr %16, align 4
  call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %94, i32 noundef %95, i32 noundef %96, i32 noundef 0) #8
  br label %97

97:                                               ; preds = %93, %88, %44
  %98 = phi i32 [ 0, %88 ], [ -22, %93 ], [ -22, %44 ]
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_imx_dma_callback(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.imx_i2c_dma, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.imx_i2c_dma, ptr %3, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.imx_i2c_dma, ptr %3, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.imx_i2c_dma, ptr %3, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef 0) #8
  %15 = getelementptr inbounds %struct.imx_i2c_dma, ptr %3, i32 0, i32 3
  tail call void @complete(ptr noundef %15) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_imx_prepare_recovery(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @pinctrl_select_state(ptr noundef %3, ptr noundef %5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_imx_unprepare_recovery(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.imx_i2c_struct, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @pinctrl_select_state(ptr noundef %3, ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_generic_scl_recovery(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_imx_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.imx_i2c_struct, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  tail call void @clk_disable(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_imx_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.imx_i2c_struct, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @clk_enable(ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %6) #9
  br label %9

9:                                                ; preds = %8, %1
  ret i32 %6
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 2154387120}
!9 = !{i64 5694051}
!10 = !{i64 2148049551}
!11 = !{i64 547861, i64 2148037832, i64 2148037858, i64 2148037905, i64 2148037927, i64 2148037955, i64 2148037975}
!12 = !{i64 534430, i64 534455, i64 534477, i64 534493, i64 534505, i64 534525, i64 534549, i64 534565, i64 534577}
!13 = !{i64 2148049677}
!14 = !{i64 5694446}
!15 = !{i64 2154387646}
!16 = !{!"auto-init"}
!17 = !{i64 2154396189}
!18 = !{i64 2154396366}
!19 = !{!"branch_weights", i32 1, i32 2000}
