; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-tegra.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_i2c_hw_feature = type { i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, ptr, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
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
%struct.tegra_i2c_dev = type { ptr, %struct.i2c_adapter, ptr, ptr, i32, i32, i32, ptr, [2 x %struct.clk_bulk_data], i32, ptr, %struct.i2c_timings, %struct.completion, i32, i32, ptr, %struct.completion, ptr, ptr, i32, i32, ptr, i8, i8, i8, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_tegra__382_1960_tegra_i2c_driver_init6 = internal global ptr @tegra_i2c_driver_init, section ".initcall6.init", align 4
@tegra_i2c_driver = internal global %struct.platform_driver { ptr @tegra_i2c_probe, ptr @tegra_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_i2c_of_match, ptr @tegra_i2c_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_i2c_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_i2c_driver_exit = internal global ptr @tegra_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description383 = internal constant [61 x i8] c"i2c_tegra.description=NVIDIA Tegra I2C Bus Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author384 = internal constant [29 x i8] c"i2c_tegra.author=Colin Cross\00", section ".modinfo", align 1
@__UNIQUE_ID_file385 = internal constant [44 x i8] c"i2c_tegra.file=drivers/i2c/busses/i2c-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license386 = internal constant [25 x i8] c"i2c_tegra.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"tegra-i2c\00", align 1
@tegra_i2c_of_match = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_i2c_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_i2c_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-i2c-vi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_i2c_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_i2c_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_i2c_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_i2c_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_i2c_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_i2c_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-i2c-dvc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_i2c_hw }, %struct.of_device_id zeroinitializer], align 4
@tegra_i2c_acpi_match = internal constant [4 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"NVDA0101\00", i32 ptrtoint (ptr @tegra210_i2c_hw to i32), i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"NVDA0201\00", i32 ptrtoint (ptr @tegra186_i2c_hw to i32), i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"NVDA0301\00", i32 ptrtoint (ptr @tegra194_i2c_hw to i32), i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 4
@tegra_i2c_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_i2c_suspend, ptr @tegra_i2c_resume, ptr @tegra_i2c_suspend, ptr @tegra_i2c_resume, ptr @tegra_i2c_suspend, ptr @tegra_i2c_resume, ptr @tegra_i2c_runtime_suspend, ptr @tegra_i2c_runtime_resume, ptr null }, align 4
@tegra_i2c_algo = internal constant %struct.i2c_algorithm { ptr @tegra_i2c_xfer, ptr @tegra_i2c_xfer_atomic, ptr null, ptr null, ptr @tegra_i2c_func, ptr null, ptr null }, align 4
@tegra_i2c_recovery_info = internal global %struct.i2c_bus_recovery_info { ptr @tegra_i2c_issue_bus_clear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"IRQ status 0 %08x %08x %08x\0A\00", align 1
@tegra_i2c_isr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"drivers/i2c/busses/i2c-tegra.c\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to load config\0A\00", align 1
@tegra_i2c_empty_rx_fifo.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra_i2c_empty_rx_fifo.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"multi-master\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"nvidia,tegra20-i2c-dvc\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"nvidia,tegra210-i2c-vi\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"failed to get reset control\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"div-clk\00", align 1
@tegra20_i2c_hw = internal constant %struct.tegra_i2c_hw_feature { i8 0, i8 0, i8 0, i32 3, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @tegra_i2c_quirks, i8 0, i8 1, i32 4, i32 2, i32 4, i32 2, i32 0, i32 0, i32 0, i8 0 }, align 4
@tegra30_i2c_hw = internal constant %struct.tegra_i2c_hw_feature { i8 1, i8 0, i8 0, i32 3, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @tegra_i2c_quirks, i8 0, i8 1, i32 4, i32 2, i32 4, i32 2, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"fast-clk\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"failed to enable div-clk: %d\0A\00", align 1
@tegra_i2c_quirks = internal constant %struct.i2c_adapter_quirks { i64 96, i32 0, i16 4084, i16 4096, i16 0, i16 0 }, align 8
@.str.15 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"failed to allocate DMA buffer\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"cannot use DMA: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"falling back to PIO\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"runtime resume failed: %d\0A\00", align 1
@tegra_i2c_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"failed to set div-clk rate: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"failed to flush FIFO\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"runtime resume failed %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"DMA transfer timed out\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"I2C transfer timed out\0A\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"DMA config failed: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"failed to get %s DMA descriptor\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"failed to clear bus\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"un-recovered arbitration lost\0A\00", align 1
@tegra194_i2c_hw = internal constant %struct.tegra_i2c_hw_feature { i8 1, i8 1, i8 1, i32 1, i32 79, i32 60, i32 22, i8 1, i8 1, i8 1, ptr @tegra194_i2c_quirks, i8 1, i8 0, i32 8, i32 7, i32 2, i32 2, i32 134744072, i32 33686018, i32 592137, i8 1 }, align 4
@tegra186_i2c_hw = internal constant %struct.tegra_i2c_hw_feature { i8 1, i8 1, i8 1, i32 1, i32 22, i32 25, i32 16, i8 0, i8 1, i8 0, ptr @tegra_i2c_quirks, i8 1, i8 0, i32 4, i32 3, i32 4, i32 2, i32 0, i32 0, i32 0, i8 1 }, align 4
@tegra210_i2c_hw = internal constant %struct.tegra_i2c_hw_feature { i8 1, i8 1, i8 1, i32 1, i32 25, i32 25, i32 16, i8 0, i8 1, i8 0, ptr @tegra_i2c_quirks, i8 1, i8 1, i32 4, i32 2, i32 4, i32 2, i32 0, i32 0, i32 0, i8 1 }, align 4
@tegra124_i2c_hw = internal constant %struct.tegra_i2c_hw_feature { i8 1, i8 1, i8 1, i32 1, i32 25, i32 25, i32 16, i8 0, i8 1, i8 0, ptr @tegra_i2c_quirks, i8 1, i8 1, i32 4, i32 2, i32 4, i32 2, i32 0, i32 0, i32 0, i8 1 }, align 4
@tegra114_i2c_hw = internal constant %struct.tegra_i2c_hw_feature { i8 1, i8 1, i8 0, i32 1, i32 25, i32 25, i32 16, i8 0, i8 0, i8 0, ptr @tegra_i2c_quirks, i8 1, i8 1, i32 4, i32 2, i32 4, i32 2, i32 0, i32 0, i32 0, i8 0 }, align 4
@tegra194_i2c_quirks = internal constant %struct.i2c_adapter_quirks { i64 96, i32 0, i16 -12, i16 0, i16 0, i16 0 }, align 8
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author384, ptr @__UNIQUE_ID_description383, ptr @__UNIQUE_ID_file385, ptr @__UNIQUE_ID_license386, ptr @__exitcall_tegra_i2c_driver_exit, ptr @__initcall__kmod_i2c_tegra__382_1960_tegra_i2c_driver_init6, ptr @tegra_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_i2c_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 816, i32 noundef 3520) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %164, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %7, align 8
  %8 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 12
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #10
  %10 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 16
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 16, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #10
  %12 = tail call ptr @device_get_match_data(ptr noundef %3) #10
  %13 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 2
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 4
  store i32 %15, ptr %16, align 8
  store ptr %3, ptr %4, align 8
  %17 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #10
  %18 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 7
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = ptrtoint ptr %17 to i32
  br label %164

22:                                               ; preds = %6
  %23 = load ptr, ptr %2, align 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 6
  store i32 %24, ptr %25, align 8
  %26 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %164, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 5
  store i32 %26, ptr %29, align 4
  call void @irq_modify_status(i32 noundef %26, i32 noundef 0, i32 noundef 4096) #10
  %30 = load ptr, ptr %4, align 8
  %31 = load i32, ptr %29, align 4
  %32 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load ptr, ptr %30, align 4
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi ptr [ %36, %35 ], [ %33, %28 ]
  %39 = call i32 @devm_request_threaded_irq(ptr noundef %30, i32 noundef %31, ptr noundef null, ptr noundef nonnull @tegra_i2c_isr, i32 noundef 24576, ptr noundef %38, ptr noundef nonnull %4) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %164

41:                                               ; preds = %37
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 25
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 11
  call void @i2c_parse_fw_timings(ptr noundef %42, ptr noundef %45, i1 noundef zeroext true) #10
  %46 = load ptr, ptr %4, align 8
  %47 = call zeroext i1 @device_property_present(ptr noundef %46, ptr noundef nonnull @.str.6) #10
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 22
  store i8 %48, ptr %49, align 8
  %50 = call i32 @of_device_is_compatible(ptr noundef %44, ptr noundef nonnull @.str.7) #10
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 26
  store i8 1, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %41
  %55 = call i32 @of_device_is_compatible(ptr noundef %44, ptr noundef nonnull @.str.8) #10
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 27
  store i8 1, ptr %58, align 1
  br label %59

59:                                               ; preds = %57, %54
  %60 = load ptr, ptr %4, align 8
  %61 = call ptr @__devm_reset_control_get(ptr noundef %60, ptr noundef nonnull @.str.9, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %62 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 3
  store ptr %61, ptr %62, align 4
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load ptr, ptr %4, align 8
  %66 = ptrtoint ptr %61 to i32
  %67 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %65, i32 noundef %66, ptr noundef nonnull @.str.10) #10
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %164

69:                                               ; preds = %64, %59
  %70 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 8
  %71 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 9
  %72 = load i32, ptr %71, align 8
  %73 = add i32 %72, 1
  store i32 %73, ptr %71, align 8
  %74 = getelementptr %struct.tegra_i2c_dev, ptr %4, i32 0, i32 8, i32 %72
  store ptr @.str.11, ptr %74, align 8
  %75 = load ptr, ptr %13, align 8
  %76 = icmp eq ptr %75, @tegra20_i2c_hw
  %77 = icmp eq ptr %75, @tegra30_i2c_hw
  %78 = or i1 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load i32, ptr %71, align 8
  %81 = add i32 %80, 1
  store i32 %81, ptr %71, align 8
  %82 = getelementptr %struct.tegra_i2c_dev, ptr %4, i32 0, i32 8, i32 %80
  store ptr @.str.12, ptr %82, align 8
  br label %83

83:                                               ; preds = %79, %69
  %84 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 27
  %85 = load i8, ptr %84, align 1, !range !9
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, ptr %71, align 8
  %89 = add i32 %88, 1
  store i32 %89, ptr %71, align 8
  %90 = getelementptr %struct.tegra_i2c_dev, ptr %4, i32 0, i32 8, i32 %88
  store ptr @.str.13, ptr %90, align 8
  br label %91

91:                                               ; preds = %87, %83
  %92 = load ptr, ptr %4, align 8
  %93 = load i32, ptr %71, align 8
  %94 = call i32 @devm_clk_bulk_get(ptr noundef %92, i32 noundef %93, ptr noundef %70) #10
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %164

96:                                               ; preds = %91
  %97 = load i32, ptr %71, align 8
  %98 = call i32 @clk_bulk_prepare(i32 noundef %97, ptr noundef %70) #10
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %164

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 8, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 10
  store ptr %102, ptr %103, align 4
  %104 = load i8, ptr %49, align 8, !range !9
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = call i32 @clk_enable(ptr noundef %102) #10
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.14, i32 noundef %107) #11
  %111 = load i32, ptr %71, align 8
  call void @clk_bulk_unprepare(i32 noundef %111, ptr noundef %70) #10
  br label %164

112:                                              ; preds = %106, %100
  %113 = call fastcc i32 @tegra_i2c_init_dma(ptr noundef nonnull %4)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %162

115:                                              ; preds = %112
  %116 = load i8, ptr %84, align 1, !range !9
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load ptr, ptr %4, align 8
  call void @pm_runtime_irq_safe(ptr noundef %119) #10
  br label %120

120:                                              ; preds = %118, %115
  %121 = load ptr, ptr %4, align 8
  call void @pm_runtime_enable(ptr noundef %121) #10
  %122 = call fastcc i32 @tegra_i2c_init_hardware(ptr noundef nonnull %4)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %159

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 1
  %126 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 1, i32 9, i32 8
  store ptr %4, ptr %126, align 8
  %127 = load ptr, ptr %4, align 8
  %128 = getelementptr inbounds %struct.device, ptr %127, i32 0, i32 25
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 1, i32 9, i32 25
  store ptr %129, ptr %130, align 8
  %131 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 1, i32 9, i32 1
  store ptr %127, ptr %131, align 4
  %132 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 1, i32 8
  store i32 1, ptr %132, align 8
  %133 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 1, i32 7
  store i32 600, ptr %133, align 4
  %134 = load ptr, ptr %13, align 8
  %135 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %134, i32 0, i32 10
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 1, i32 17
  store ptr %136, ptr %137, align 8
  store ptr null, ptr %125, align 8
  %138 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 1, i32 1
  store i32 256, ptr %138, align 4
  %139 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 1, i32 2
  store ptr @tegra_i2c_algo, ptr %139, align 8
  %140 = load i32, ptr %14, align 4
  %141 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 1, i32 11
  store i32 %140, ptr %141, align 4
  %142 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %134, i32 0, i32 11
  %143 = load i8, ptr %142, align 4, !range !9
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %124
  %146 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 1, i32 16
  store ptr @tegra_i2c_recovery_info, ptr %146, align 4
  br label %147

147:                                              ; preds = %145, %124
  %148 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %4, i32 0, i32 1, i32 12
  %149 = getelementptr inbounds %struct.device, ptr %127, i32 0, i32 3
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load ptr, ptr %127, align 4
  br label %154

154:                                              ; preds = %152, %147
  %155 = phi ptr [ %153, %152 ], [ %150, %147 ]
  %156 = call i32 @strlcpy(ptr noundef %148, ptr noundef %155, i32 noundef 48) #10
  %157 = call i32 @i2c_add_numbered_adapter(ptr noundef %125) #10
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %154, %120
  %160 = phi i32 [ %122, %120 ], [ %157, %154 ]
  %161 = load ptr, ptr %4, align 8
  call void @__pm_runtime_disable(ptr noundef %161, i1 noundef zeroext true) #10
  call fastcc void @tegra_i2c_release_dma(ptr noundef nonnull %4)
  br label %162

162:                                              ; preds = %159, %112
  %163 = phi i32 [ %113, %112 ], [ %160, %159 ]
  call fastcc void @tegra_i2c_release_clocks(ptr noundef nonnull %4)
  br label %164

164:                                              ; preds = %162, %154, %109, %96, %91, %64, %37, %22, %20, %1
  %165 = phi i32 [ %21, %20 ], [ %163, %162 ], [ -12, %1 ], [ %26, %22 ], [ %39, %37 ], [ %67, %64 ], [ 0, %154 ], [ %98, %96 ], [ %94, %91 ], [ %107, %109 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %4) #10
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @pm_runtime_force_suspend(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 19
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 20
  %15 = load i32, ptr %14, align 8
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %8, i32 noundef %15, i32 noundef 0) #10
  store ptr null, ptr %7, align 4
  br label %16

16:                                               ; preds = %10, %1
  %17 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @dma_release_channel(ptr noundef nonnull %18) #10
  store ptr null, ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 18
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @dma_release_channel(ptr noundef nonnull %23) #10
  store ptr null, ptr %22, align 8
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 22
  %28 = load i8, ptr %27, align 8, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  tail call void @clk_disable(ptr noundef %32) #10
  br label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 9
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 8
  tail call void @clk_bulk_unprepare(i32 noundef %35, ptr noundef %36) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_i2c_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 26
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %11 = load i8, ptr %10, align 1, !range !9
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 104, i32 3488
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i32 [ 120, %2 ], [ %13, %9 ]
  %16 = getelementptr i8, ptr %5, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %14
  %20 = load ptr, ptr %1, align 8
  %21 = load ptr, ptr %4, align 4
  %22 = load i8, ptr %6, align 4, !range !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %26 = load i8, ptr %25, align 1, !range !9
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i32 88, i32 3424
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i32 [ 104, %19 ], [ %28, %24 ]
  %31 = getelementptr i8, ptr %21, i32 %30
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !10
  %33 = load ptr, ptr %4, align 4
  %34 = load i8, ptr %6, align 4, !range !9
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %38 = load i8, ptr %37, align 1, !range !9
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %39, i32 28, i32 3184
  br label %41

41:                                               ; preds = %36, %29
  %42 = phi i32 [ 92, %29 ], [ %40, %36 ]
  %43 = getelementptr i8, ptr %33, i32 %42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #10, !srcloc !10
  %45 = load ptr, ptr %4, align 4
  %46 = load i8, ptr %6, align 4, !range !9
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %50 = load i8, ptr %49, align 1, !range !9
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %51, i32 0, i32 3072
  br label %53

53:                                               ; preds = %48, %41
  %54 = phi i32 [ 64, %41 ], [ %52, %48 ]
  %55 = getelementptr i8, ptr %45, i32 %54
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #10, !srcloc !10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.2, i32 noundef %32, i32 noundef %44, i32 noundef %56) #11
  br label %315

57:                                               ; preds = %14
  %58 = and i32 %17, 12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %149, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 11
  %62 = load i32, ptr %61, align 8
  %63 = add i32 %62, 1999999
  %64 = udiv i32 %63, %62
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #10
  %66 = load ptr, ptr %4, align 4
  %67 = load i8, ptr %6, align 4, !range !9
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %71 = load i8, ptr %70, align 1, !range !9
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, i32 0, i32 3072
  br label %74

74:                                               ; preds = %69, %60
  %75 = phi i32 [ 64, %60 ], [ %73, %69 ]
  %76 = getelementptr i8, ptr %66, i32 %75
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #10, !srcloc !10
  %78 = and i32 %77, 1024
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %74
  %81 = and i32 %77, -1025
  %82 = load ptr, ptr %4, align 4
  %83 = load i8, ptr %6, align 4, !range !9
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %87 = load i8, ptr %86, align 1, !range !9
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, i32 0, i32 3072
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i32 [ 64, %80 ], [ %89, %85 ]
  %92 = getelementptr i8, ptr %82, i32 %91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %81) #10, !srcloc !11
  %93 = load ptr, ptr %4, align 4
  %94 = load i8, ptr %6, align 4, !range !9
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %98 = load i8, ptr %97, align 1, !range !9
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %99, i32 0, i32 3072
  br label %101

101:                                              ; preds = %96, %90
  %102 = phi i32 [ 64, %90 ], [ %100, %96 ]
  %103 = getelementptr i8, ptr %93, i32 %102
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #10, !srcloc !10
  br label %105

105:                                              ; preds = %101, %74
  %106 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 2
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %107, i32 0, i32 2
  %109 = load i8, ptr %108, align 2, !range !9
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %139, label %111

111:                                              ; preds = %105
  %112 = load ptr, ptr %4, align 4
  %113 = load i8, ptr %6, align 4, !range !9
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %117 = load i8, ptr %116, align 1, !range !9
  %118 = icmp eq i8 %117, 0
  %119 = select i1 %118, i32 140, i32 3632
  br label %120

120:                                              ; preds = %115, %111
  %121 = phi i32 [ 156, %111 ], [ %119, %115 ]
  %122 = getelementptr i8, ptr %112, i32 %121
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 1) #10, !srcloc !11
  %123 = load ptr, ptr %4, align 4
  %124 = load i8, ptr %6, align 4, !range !9
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %128 = load i8, ptr %127, align 1, !range !9
  %129 = icmp eq i8 %128, 0
  %130 = select i1 %129, i32 140, i32 3632
  br label %131

131:                                              ; preds = %126, %120
  %132 = phi i32 [ 156, %120 ], [ %130, %126 ]
  %133 = getelementptr i8, ptr %123, i32 %132
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #10, !srcloc !10
  %135 = tail call fastcc i32 @tegra_i2c_poll_register(ptr noundef %1, i32 noundef 140, i32 noundef -1) #10
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %131
  %138 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.4) #11
  br label %139

139:                                              ; preds = %137, %131, %105
  %140 = and i32 %17, 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 14
  %144 = load i32, ptr %143, align 4
  %145 = or i32 %144, 1
  store i32 %145, ptr %143, align 4
  br label %146

146:                                              ; preds = %142, %139
  %147 = and i32 %17, 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %320, label %315

149:                                              ; preds = %57
  %150 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 2
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %151, i32 0, i32 11
  %153 = load i8, ptr %152, align 4, !range !9
  %154 = icmp eq i8 %153, 0
  %155 = and i32 %17, 2048
  %156 = icmp eq i32 %155, 0
  %157 = select i1 %154, i1 true, i1 %156
  br i1 %157, label %158, label %320

158:                                              ; preds = %149
  %159 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 24
  %160 = load i8, ptr %159, align 2, !range !9
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %270

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 25
  %164 = load i8, ptr %163, align 1, !range !9
  %165 = icmp eq i8 %164, 0
  %166 = and i32 %17, 1
  %167 = icmp eq i32 %166, 0
  %168 = select i1 %165, i1 true, i1 %167
  br i1 %168, label %258, label %169

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 13
  %171 = load i32, ptr %170, align 8
  %172 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 15
  %173 = load ptr, ptr %172, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %174 = icmp eq i32 %171, 0
  %175 = load i1, ptr @tegra_i2c_empty_rx_fifo.__already_done, align 1
  %176 = xor i1 %175, true
  %177 = select i1 %174, i1 %176, i1 false
  br i1 %177, label %178, label %179, !prof !12

178:                                              ; preds = %169
  store i1 true, ptr @tegra_i2c_empty_rx_fifo.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 748, i32 noundef 9, ptr noundef null) #10
  br label %179

179:                                              ; preds = %178, %169
  br i1 %174, label %257, label %180

180:                                              ; preds = %179
  %181 = load ptr, ptr %150, align 8
  %182 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %181, i32 0, i32 9
  %183 = load i8, ptr %182, align 2, !range !9
  %184 = icmp eq i8 %183, 0
  %185 = load ptr, ptr %4, align 4
  %186 = load i8, ptr %6, align 4, !range !9
  %187 = icmp eq i8 %186, 0
  br i1 %184, label %199, label %188

188:                                              ; preds = %180
  br i1 %187, label %189, label %194

189:                                              ; preds = %188
  %190 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %191 = load i8, ptr %190, align 1, !range !9
  %192 = icmp eq i8 %191, 0
  %193 = select i1 %192, i32 184, i32 3808
  br label %194

194:                                              ; preds = %189, %188
  %195 = phi i32 [ 200, %188 ], [ %193, %189 ]
  %196 = getelementptr i8, ptr %185, i32 %195
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #10, !srcloc !10
  %198 = and i32 %197, 255
  br label %210

199:                                              ; preds = %180
  br i1 %187, label %200, label %205

200:                                              ; preds = %199
  %201 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %202 = load i8, ptr %201, align 1, !range !9
  %203 = icmp eq i8 %202, 0
  %204 = select i1 %203, i32 96, i32 3456
  br label %205

205:                                              ; preds = %200, %199
  %206 = phi i32 [ 112, %199 ], [ %204, %200 ]
  %207 = getelementptr i8, ptr %185, i32 %206
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #10, !srcloc !10
  %209 = and i32 %208, 15
  br label %210

210:                                              ; preds = %205, %194
  %211 = phi i32 [ %198, %194 ], [ %209, %205 ]
  %212 = lshr i32 %171, 2
  %213 = tail call i32 @llvm.umin.i32(i32 %212, i32 %211) #10
  %214 = load ptr, ptr %4, align 4
  %215 = load i8, ptr %6, align 4, !range !9
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %210
  %218 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %219 = load i8, ptr %218, align 1, !range !9
  %220 = icmp eq i8 %219, 0
  %221 = select i1 %220, i32 84, i32 3408
  br label %222

222:                                              ; preds = %217, %210
  %223 = phi i32 [ 100, %210 ], [ %221, %217 ]
  %224 = getelementptr i8, ptr %214, i32 %223
  tail call void @__raw_readsl(ptr noundef %224, ptr noundef %173, i32 noundef %213) #10
  %225 = shl nuw nsw i32 %213, 2
  %226 = getelementptr i8, ptr %173, i32 %225
  %227 = sub i32 %171, %225
  %228 = sub nsw i32 %211, %213
  %229 = icmp ne i32 %228, 0
  %230 = icmp ne i32 %227, 0
  %231 = select i1 %229, i1 %230, i1 false
  br i1 %231, label %232, label %246

232:                                              ; preds = %222
  %233 = load ptr, ptr %4, align 4
  %234 = load i8, ptr %6, align 4, !range !9
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %238 = load i8, ptr %237, align 1, !range !9
  %239 = icmp eq i8 %238, 0
  %240 = select i1 %239, i32 84, i32 3408
  br label %241

241:                                              ; preds = %236, %232
  %242 = phi i32 [ 100, %232 ], [ %240, %236 ]
  %243 = getelementptr i8, ptr %233, i32 %242
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %243) #10, !srcloc !10
  store i32 %244, ptr %3, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %226, ptr nonnull align 4 %3, i32 %227, i1 false) #10
  %245 = add nsw i32 %228, -1
  br label %246

246:                                              ; preds = %241, %222
  %247 = phi i32 [ %245, %241 ], [ %228, %222 ]
  %248 = phi i32 [ 0, %241 ], [ %227, %222 ]
  %249 = icmp ne i32 %247, 0
  %250 = load i1, ptr @tegra_i2c_empty_rx_fifo.__already_done.5, align 1
  %251 = xor i1 %250, true
  %252 = select i1 %249, i1 %251, i1 false
  br i1 %252, label %253, label %254, !prof !12

253:                                              ; preds = %246
  store i1 true, ptr @tegra_i2c_empty_rx_fifo.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 788, i32 noundef 9, ptr noundef null) #10
  br label %254

254:                                              ; preds = %253, %246
  br i1 %249, label %257, label %255

255:                                              ; preds = %254
  store i32 %248, ptr %170, align 8
  store ptr %226, ptr %172, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %256 = load i8, ptr %163, align 1, !range !9
  br label %258

257:                                              ; preds = %254, %179
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %315

258:                                              ; preds = %255, %162
  %259 = phi i8 [ %256, %255 ], [ %164, %162 ]
  %260 = icmp ne i8 %259, 0
  %261 = and i32 %17, 2
  %262 = icmp eq i32 %261, 0
  %263 = select i1 %260, i1 true, i1 %262
  br i1 %263, label %270, label %264

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 13
  %266 = load i32, ptr %265, align 8
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %264
  tail call fastcc void @tegra_i2c_fill_tx_fifo(ptr noundef %1)
  br label %270

269:                                              ; preds = %264
  tail call fastcc void @tegra_i2c_mask_irq(ptr noundef %1, i32 noundef 2)
  br label %270

270:                                              ; preds = %269, %268, %258, %158
  %271 = load ptr, ptr %4, align 4
  %272 = load i8, ptr %6, align 4, !range !9
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %276 = load i8, ptr %275, align 1, !range !9
  %277 = icmp eq i8 %276, 0
  %278 = select i1 %277, i32 104, i32 3488
  br label %279

279:                                              ; preds = %274, %270
  %280 = phi i32 [ 120, %270 ], [ %278, %274 ]
  %281 = getelementptr i8, ptr %271, i32 %280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 %17) #10, !srcloc !11
  %282 = load ptr, ptr %4, align 4
  %283 = load i8, ptr %6, align 4, !range !9
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %279
  %286 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %287 = load i8, ptr %286, align 1, !range !9
  %288 = icmp eq i8 %287, 0
  %289 = select i1 %288, i32 104, i32 3488
  br label %290

290:                                              ; preds = %285, %279
  %291 = phi i32 [ 120, %279 ], [ %289, %285 ]
  %292 = getelementptr i8, ptr %282, i32 %291
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %292) #10, !srcloc !10
  %294 = load i8, ptr %6, align 4, !range !9
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %290
  %297 = load ptr, ptr %4, align 4
  %298 = getelementptr i8, ptr %297, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 1073741824) #10, !srcloc !11
  br label %299

299:                                              ; preds = %296, %290
  %300 = and i32 %17, 128
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %458, label %302

302:                                              ; preds = %299
  %303 = load i8, ptr %159, align 2, !range !9
  %304 = icmp eq i8 %303, 0
  %305 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 13
  br i1 %304, label %307, label %306

306:                                              ; preds = %302
  store i32 0, ptr %305, align 8
  br label %456

307:                                              ; preds = %302
  %308 = load i32, ptr %305, align 8
  %309 = icmp ne i32 %308, 0
  %310 = load i1, ptr @tegra_i2c_isr.__already_done, align 1
  %311 = xor i1 %310, true
  %312 = select i1 %309, i1 %311, i1 false
  br i1 %312, label %313, label %314, !prof !12

313:                                              ; preds = %307
  store i1 true, ptr @tegra_i2c_isr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 943, i32 noundef 9, ptr noundef null) #10
  br label %315

314:                                              ; preds = %307
  br i1 %309, label %315, label %456

315:                                              ; preds = %314, %313, %257, %146, %53
  %316 = phi i32 [ 8, %257 ], [ 4, %53 ], [ 2, %146 ], [ 4, %313 ], [ 4, %314 ]
  %317 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 14
  %318 = load i32, ptr %317, align 4
  %319 = or i32 %318, %316
  store i32 %319, ptr %317, align 4
  br label %320

320:                                              ; preds = %315, %149, %146
  %321 = load ptr, ptr %4, align 4
  %322 = load i8, ptr %6, align 4, !range !9
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %326 = load i8, ptr %325, align 1, !range !9
  %327 = icmp eq i8 %326, 0
  %328 = select i1 %327, i32 100, i32 3472
  br label %329

329:                                              ; preds = %324, %320
  %330 = phi i32 [ 116, %320 ], [ %328, %324 ]
  %331 = getelementptr i8, ptr %321, i32 %330
  %332 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %331) #10, !srcloc !10
  %333 = and i32 %332, -144
  %334 = load ptr, ptr %4, align 4
  %335 = load i8, ptr %6, align 4, !range !9
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %329
  %338 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %339 = load i8, ptr %338, align 1, !range !9
  %340 = icmp eq i8 %339, 0
  %341 = select i1 %340, i32 100, i32 3472
  br label %342

342:                                              ; preds = %337, %329
  %343 = phi i32 [ 116, %329 ], [ %341, %337 ]
  %344 = getelementptr i8, ptr %334, i32 %343
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %344, i32 %333) #10, !srcloc !11
  %345 = load ptr, ptr %4, align 4
  %346 = load i8, ptr %6, align 4, !range !9
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %342
  %349 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %350 = load i8, ptr %349, align 1, !range !9
  %351 = icmp eq i8 %350, 0
  %352 = select i1 %351, i32 100, i32 3472
  br label %353

353:                                              ; preds = %348, %342
  %354 = phi i32 [ 116, %342 ], [ %352, %348 ]
  %355 = getelementptr i8, ptr %345, i32 %354
  %356 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %355) #10, !srcloc !10
  %357 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 2
  %358 = load ptr, ptr %357, align 8
  %359 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %358, i32 0, i32 11
  %360 = load i8, ptr %359, align 4, !range !9
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %399, label %362

362:                                              ; preds = %353
  %363 = load ptr, ptr %4, align 4
  %364 = load i8, ptr %6, align 4, !range !9
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %368 = load i8, ptr %367, align 1, !range !9
  %369 = icmp eq i8 %368, 0
  %370 = select i1 %369, i32 100, i32 3472
  br label %371

371:                                              ; preds = %366, %362
  %372 = phi i32 [ 116, %362 ], [ %370, %366 ]
  %373 = getelementptr i8, ptr %363, i32 %372
  %374 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %373) #10, !srcloc !10
  %375 = and i32 %374, -2049
  %376 = load ptr, ptr %4, align 4
  %377 = load i8, ptr %6, align 4, !range !9
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %379, label %384

379:                                              ; preds = %371
  %380 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %381 = load i8, ptr %380, align 1, !range !9
  %382 = icmp eq i8 %381, 0
  %383 = select i1 %382, i32 100, i32 3472
  br label %384

384:                                              ; preds = %379, %371
  %385 = phi i32 [ 116, %371 ], [ %383, %379 ]
  %386 = getelementptr i8, ptr %376, i32 %385
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %386, i32 %375) #10, !srcloc !11
  %387 = load ptr, ptr %4, align 4
  %388 = load i8, ptr %6, align 4, !range !9
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %390, label %395

390:                                              ; preds = %384
  %391 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %392 = load i8, ptr %391, align 1, !range !9
  %393 = icmp eq i8 %392, 0
  %394 = select i1 %393, i32 100, i32 3472
  br label %395

395:                                              ; preds = %390, %384
  %396 = phi i32 [ 116, %384 ], [ %394, %390 ]
  %397 = getelementptr i8, ptr %387, i32 %396
  %398 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %397) #10, !srcloc !10
  br label %399

399:                                              ; preds = %395, %353
  %400 = load ptr, ptr %4, align 4
  %401 = load i8, ptr %6, align 4, !range !9
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %403, label %408

403:                                              ; preds = %399
  %404 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %405 = load i8, ptr %404, align 1, !range !9
  %406 = icmp eq i8 %405, 0
  %407 = select i1 %406, i32 104, i32 3488
  br label %408

408:                                              ; preds = %403, %399
  %409 = phi i32 [ 120, %399 ], [ %407, %403 ]
  %410 = getelementptr i8, ptr %400, i32 %409
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %410, i32 %17) #10, !srcloc !11
  %411 = load ptr, ptr %4, align 4
  %412 = load i8, ptr %6, align 4, !range !9
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %414, label %419

414:                                              ; preds = %408
  %415 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %416 = load i8, ptr %415, align 1, !range !9
  %417 = icmp eq i8 %416, 0
  %418 = select i1 %417, i32 104, i32 3488
  br label %419

419:                                              ; preds = %414, %408
  %420 = phi i32 [ 120, %408 ], [ %418, %414 ]
  %421 = getelementptr i8, ptr %411, i32 %420
  %422 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %421) #10, !srcloc !10
  %423 = load i8, ptr %6, align 4, !range !9
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %428, label %425

425:                                              ; preds = %419
  %426 = load ptr, ptr %4, align 4
  %427 = getelementptr i8, ptr %426, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %427, i32 1073741824) #10, !srcloc !11
  br label %428

428:                                              ; preds = %425, %419
  %429 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 24
  %430 = load i8, ptr %429, align 2, !range !9
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %456, label %432

432:                                              ; preds = %428
  %433 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 25
  %434 = load i8, ptr %433, align 1, !range !9
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %445, label %436

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 18
  %438 = load ptr, ptr %437, align 8
  %439 = load ptr, ptr %438, align 4
  %440 = getelementptr inbounds %struct.dma_device, ptr %439, i32 0, i32 47
  %441 = load ptr, ptr %440, align 4
  %442 = icmp eq ptr %441, null
  br i1 %442, label %454, label %443

443:                                              ; preds = %436
  %444 = tail call i32 %441(ptr noundef %438) #10
  br label %454

445:                                              ; preds = %432
  %446 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 17
  %447 = load ptr, ptr %446, align 4
  %448 = load ptr, ptr %447, align 4
  %449 = getelementptr inbounds %struct.dma_device, ptr %448, i32 0, i32 47
  %450 = load ptr, ptr %449, align 4
  %451 = icmp eq ptr %450, null
  br i1 %451, label %454, label %452

452:                                              ; preds = %445
  %453 = tail call i32 %450(ptr noundef %447) #10
  br label %454

454:                                              ; preds = %452, %445, %443, %436
  %455 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 16
  tail call void @complete(ptr noundef %455) #10
  br label %456

456:                                              ; preds = %454, %428, %314, %306
  %457 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 12
  tail call void @complete(ptr noundef %457) #10
  br label %458

458:                                              ; preds = %456, %299
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_i2c_init_dma(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %4, i32 0, i32 12
  %6 = load i8, ptr %5, align 1, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %70, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %10 = load i8, ptr %9, align 1, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %70

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8
  %14 = tail call ptr @dma_request_chan(ptr noundef %13, ptr noundef nonnull @.str.15) #10
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = ptrtoint ptr %14 to i32
  br label %44

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 18
  store ptr %14, ptr %19, align 8
  %20 = load ptr, ptr %0, align 8
  %21 = tail call ptr @dma_request_chan(ptr noundef %20, ptr noundef nonnull @.str.16) #10
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = ptrtoint ptr %21 to i32
  br label %44

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 17
  store ptr %21, ptr %26, align 4
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %27, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %29, i32 0, i32 2
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = add nuw nsw i32 %32, 12
  %34 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 19
  store i32 %33, ptr %34, align 4
  %35 = load ptr, ptr %0, align 8
  %36 = call ptr @dma_alloc_attrs(ptr noundef %35, i32 noundef %33, ptr noundef nonnull %2, i32 noundef 11456, i32 noundef 256) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.17) #11
  br label %44

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 21
  store ptr %36, ptr %41, align 4
  %42 = load i32, ptr %2, align 4
  %43 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 20
  store i32 %42, ptr %43, align 8
  br label %70

44:                                               ; preds = %38, %23, %16
  %45 = phi i32 [ %17, %16 ], [ %24, %23 ], [ -12, %38 ]
  %46 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 21
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %0, align 8
  %51 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 19
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 20
  %54 = load i32, ptr %53, align 8
  call void @dma_free_attrs(ptr noundef %50, i32 noundef %52, ptr noundef nonnull %47, i32 noundef %54, i32 noundef 0) #10
  store ptr null, ptr %46, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 17
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  call void @dma_release_channel(ptr noundef nonnull %57) #10
  store ptr null, ptr %56, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 18
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  call void @dma_release_channel(ptr noundef nonnull %62) #10
  store ptr null, ptr %61, align 8
  br label %65

65:                                               ; preds = %64, %60
  %66 = icmp eq i32 %45, -517
  br i1 %66, label %70, label %67

67:                                               ; preds = %65
  %68 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.18, i32 noundef %45) #11
  %69 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.19) #11
  br label %70

70:                                               ; preds = %67, %65, %40, %8, %1
  %71 = phi i32 [ 0, %67 ], [ 0, %40 ], [ 0, %8 ], [ 0, %1 ], [ -517, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_i2c_init_hardware(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.20, i32 noundef %3) #11
  br label %9

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @tegra_i2c_init(ptr noundef %0)
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %3, %5 ], [ %8, %7 ]
  %11 = load ptr, ptr %0, align 8
  %12 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #10
  ret i32 %10
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_i2c_release_dma(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 19
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 20
  %10 = load i32, ptr %9, align 8
  tail call void @dma_free_attrs(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %3, i32 noundef %10, i32 noundef 0) #10
  store ptr null, ptr %2, align 4
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @dma_release_channel(ptr noundef nonnull %13) #10
  store ptr null, ptr %12, align 4
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 18
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @dma_release_channel(ptr noundef nonnull %18) #10
  store ptr null, ptr %17, align 8
  br label %21

21:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_i2c_release_clocks(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 22
  %3 = load i8, ptr %2, align 8, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 8
  tail call void @clk_bulk_unprepare(i32 noundef %10, ptr noundef %11) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_i2c_fill_tx_fifo(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %7 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %8, i32 0, i32 9
  %10 = load i8, ptr %9, align 2, !range !9
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 26
  %15 = load i8, ptr %14, align 4, !range !9
  %16 = icmp eq i8 %15, 0
  br i1 %11, label %29, label %17

17:                                               ; preds = %1
  br i1 %16, label %18, label %23

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %20 = load i8, ptr %19, align 1, !range !9
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 184, i32 3808
  br label %23

23:                                               ; preds = %18, %17
  %24 = phi i32 [ 200, %17 ], [ %22, %18 ]
  %25 = getelementptr i8, ptr %13, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #10, !srcloc !10
  store i32 %26, ptr %2, align 4
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  br label %41

29:                                               ; preds = %1
  br i1 %16, label %30, label %35

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %32 = load i8, ptr %31, align 1, !range !9
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, i32 96, i32 3456
  br label %35

35:                                               ; preds = %30, %29
  %36 = phi i32 [ 112, %29 ], [ %34, %30 ]
  %37 = getelementptr i8, ptr %13, i32 %36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #10, !srcloc !10
  store i32 %38, ptr %2, align 4
  %39 = lshr i32 %38, 4
  %40 = and i32 %39, 15
  br label %41

41:                                               ; preds = %35, %23
  %42 = phi i32 [ %28, %23 ], [ %40, %35 ]
  %43 = icmp ult i32 %4, 4
  br i1 %43, label %94, label %44

44:                                               ; preds = %41
  %45 = lshr i32 %4, 2
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 %42)
  %47 = shl nuw nsw i32 %46, 2
  %48 = sub i32 %4, %47
  %49 = sub nsw i32 %42, %46
  store i32 %48, ptr %3, align 8
  %50 = getelementptr i8, ptr %6, i32 %47
  store ptr %50, ptr %5, align 8
  %51 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %52 = load i8, ptr %51, align 1, !range !9
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %86, label %54

54:                                               ; preds = %44
  %55 = icmp eq i32 %46, 0
  br i1 %55, label %94, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 7
  %58 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 26
  br label %59

59:                                               ; preds = %84, %56
  %60 = phi ptr [ %6, %56 ], [ %63, %84 ]
  %61 = phi i32 [ %46, %56 ], [ %62, %84 ]
  %62 = add nsw i32 %61, -1
  %63 = getelementptr i32, ptr %60, i32 1
  %64 = load i32, ptr %60, align 4
  %65 = load ptr, ptr %57, align 4
  %66 = load i8, ptr %58, align 4, !range !9
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i8, ptr %51, align 1, !range !9
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, i32 80, i32 3392
  br label %72

72:                                               ; preds = %68, %59
  %73 = phi i32 [ 96, %59 ], [ %71, %68 ]
  %74 = getelementptr i8, ptr %65, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %64) #10, !srcloc !11
  %75 = load i8, ptr %51, align 1, !range !9
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr %57, align 4
  %79 = load i8, ptr %58, align 4, !range !9
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, i32 3488, i32 120
  %82 = getelementptr i8, ptr %78, i32 %81
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #10, !srcloc !10
  br label %84

84:                                               ; preds = %77, %72
  %85 = icmp eq i32 %62, 0
  br i1 %85, label %94, label %59

86:                                               ; preds = %44
  %87 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 7
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 26
  %90 = load i8, ptr %89, align 4, !range !9
  %91 = icmp eq i8 %90, 0
  %92 = select i1 %91, i32 80, i32 96
  %93 = getelementptr i8, ptr %88, i32 %92
  tail call void @__raw_writesl(ptr noundef %93, ptr noundef %6, i32 noundef %46) #10
  br label %94

94:                                               ; preds = %86, %84, %54, %41
  %95 = phi i32 [ %42, %41 ], [ %49, %86 ], [ %49, %54 ], [ %49, %84 ]
  %96 = phi ptr [ %6, %41 ], [ %50, %86 ], [ %50, %54 ], [ %50, %84 ]
  %97 = phi i32 [ %4, %41 ], [ %48, %86 ], [ %48, %54 ], [ %48, %84 ]
  %98 = icmp ne i32 %95, 0
  %99 = icmp ne i32 %97, 0
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %101, label %126

101:                                              ; preds = %94
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %2, ptr align 1 %96, i32 %97, i1 false)
  store i32 0, ptr %3, align 8
  store ptr null, ptr %5, align 8
  %102 = load i32, ptr %2, align 4
  %103 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 7
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 26
  %106 = load i8, ptr %105, align 4, !range !9
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %110 = load i8, ptr %109, align 1, !range !9
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %111, i32 80, i32 3392
  br label %113

113:                                              ; preds = %108, %101
  %114 = phi i32 [ 96, %101 ], [ %112, %108 ]
  %115 = getelementptr i8, ptr %104, i32 %114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %102) #10, !srcloc !11
  %116 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %117 = load i8, ptr %116, align 1, !range !9
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %113
  %120 = load ptr, ptr %103, align 4
  %121 = load i8, ptr %105, align 4, !range !9
  %122 = icmp eq i8 %121, 0
  %123 = select i1 %122, i32 3488, i32 120
  %124 = getelementptr i8, ptr %120, i32 %123
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #10, !srcloc !10
  br label %126

126:                                              ; preds = %119, %113, %94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_i2c_mask_irq(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 26
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %10 = load i8, ptr %9, align 1, !range !9
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i32 100, i32 3472
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ 116, %2 ], [ %12, %8 ]
  %15 = getelementptr i8, ptr %4, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !10
  %17 = xor i32 %1, -1
  %18 = and i32 %16, %17
  %19 = load ptr, ptr %3, align 4
  %20 = load i8, ptr %5, align 4, !range !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %24 = load i8, ptr %23, align 1, !range !9
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i32 100, i32 3472
  br label %27

27:                                               ; preds = %22, %13
  %28 = phi i32 [ 116, %13 ], [ %26, %22 ]
  %29 = getelementptr i8, ptr %19, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %18) #10, !srcloc !11
  %30 = load ptr, ptr %3, align 4
  %31 = load i8, ptr %5, align 4, !range !9
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %35 = load i8, ptr %34, align 1, !range !9
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, i32 100, i32 3472
  br label %38

38:                                               ; preds = %33, %27
  %39 = phi i32 [ 116, %27 ], [ %37, %33 ]
  %40 = getelementptr i8, ptr %30, i32 %39
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #10, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_i2c_poll_register(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 26
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = icmp ugt i32 %1, 79
  %11 = select i1 %10, i32 16, i32 64
  %12 = add i32 %11, %1
  br label %20

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %15 = load i8, ptr %14, align 1, !range !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = shl i32 %1, 2
  %19 = add i32 %18, 3072
  br label %20

20:                                               ; preds = %17, %13, %9
  %21 = phi i32 [ %12, %9 ], [ %19, %17 ], [ %1, %13 ]
  %22 = getelementptr i8, ptr %5, i32 %21
  %23 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 23
  %24 = load i8, ptr %23, align 1, !range !9
  %25 = icmp eq i8 %24, 0
  %26 = tail call i64 @ktime_get() #10
  %27 = add i64 %26, 1000000000
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10
  %29 = and i32 %28, %2
  %30 = icmp eq i32 %29, 0
  br i1 %25, label %31, label %44

31:                                               ; preds = %20
  br i1 %30, label %43, label %32

32:                                               ; preds = %35, %31
  %33 = tail call i64 @ktime_get() #10
  %34 = icmp sgt i64 %33, %27
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #10
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !10
  %37 = and i32 %36, %2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %32

39:                                               ; preds = %32
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !10
  %41 = and i32 %40, %2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %39, %35, %31
  br label %58

44:                                               ; preds = %20
  br i1 %30, label %57, label %45

45:                                               ; preds = %48, %44
  %46 = tail call i64 @ktime_get() #10
  %47 = icmp sgt i64 %46, %27
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #10
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !10
  %51 = and i32 %50, %2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %45

53:                                               ; preds = %45
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !10
  %55 = and i32 %54, %2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %48, %44
  br label %58

58:                                               ; preds = %57, %53, %43, %39
  %59 = phi i32 [ 0, %43 ], [ -110, %39 ], [ 0, %57 ], [ -110, %53 ]
  ret i32 %59
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_i2c_init(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 11
  %3 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @reset_control_reset(ptr noundef %4) #10
  %6 = icmp ne i32 %5, 0
  %7 = load i1, ptr @tegra_i2c_init.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !12

10:                                               ; preds = %1
  store i1 true, ptr @tegra_i2c_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 629, i32 noundef 9, ptr noundef null) #10
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 26
  %13 = load i8, ptr %12, align 4, !range !9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %17, i32 0, i32 7
  %19 = load i8, ptr %18, align 4, !range !9
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i32 11264, i32 142336
  %22 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  br label %46

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #10, !srcloc !10
  %29 = or i32 %28, 1140850688
  %30 = load ptr, ptr %25, align 4
  %31 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #10, !srcloc !11
  %32 = load ptr, ptr %25, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #10, !srcloc !10
  %34 = or i32 %33, 1024
  %35 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %34) #10, !srcloc !11
  %36 = load i8, ptr %12, align 4, !range !9
  %37 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %38, i32 0, i32 7
  %40 = load i8, ptr %39, align 4, !range !9
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, i32 11264, i32 142336
  %43 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq i8 %36, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %24, %15
  %47 = phi ptr [ %23, %15 ], [ %44, %24 ]
  %48 = phi ptr [ %22, %15 ], [ %43, %24 ]
  %49 = phi i32 [ %21, %15 ], [ %42, %24 ]
  %50 = phi ptr [ %16, %15 ], [ %37, %24 ]
  %51 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %52 = load i8, ptr %51, align 1, !range !9
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, i32 0, i32 3072
  br label %55

55:                                               ; preds = %46, %24
  %56 = phi ptr [ %44, %24 ], [ %47, %46 ]
  %57 = phi ptr [ %43, %24 ], [ %48, %46 ]
  %58 = phi i32 [ %42, %24 ], [ %49, %46 ]
  %59 = phi ptr [ %37, %24 ], [ %50, %46 ]
  %60 = phi i32 [ 64, %24 ], [ %54, %46 ]
  %61 = getelementptr i8, ptr %56, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %58) #10, !srcloc !11
  %62 = load ptr, ptr %57, align 4
  %63 = load i8, ptr %12, align 4, !range !9
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %67 = load i8, ptr %66, align 1, !range !9
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, i32 0, i32 3072
  br label %70

70:                                               ; preds = %65, %55
  %71 = phi i32 [ 64, %55 ], [ %69, %65 ]
  %72 = getelementptr i8, ptr %62, i32 %71
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #10, !srcloc !10
  %74 = load ptr, ptr %57, align 4
  %75 = load i8, ptr %12, align 4, !range !9
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %79 = load i8, ptr %78, align 1, !range !9
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, i32 100, i32 3472
  br label %82

82:                                               ; preds = %77, %70
  %83 = phi i32 [ 116, %70 ], [ %81, %77 ]
  %84 = getelementptr i8, ptr %74, i32 %83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 0) #10, !srcloc !11
  %85 = load ptr, ptr %57, align 4
  %86 = load i8, ptr %12, align 4, !range !9
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %90 = load i8, ptr %89, align 1, !range !9
  %91 = icmp eq i8 %90, 0
  %92 = select i1 %91, i32 100, i32 3472
  br label %93

93:                                               ; preds = %88, %82
  %94 = phi i32 [ 116, %82 ], [ %92, %88 ]
  %95 = getelementptr i8, ptr %85, i32 %94
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #10, !srcloc !10
  %97 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %98 = load i8, ptr %97, align 1, !range !9
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %222, label %100

100:                                              ; preds = %93
  %101 = load ptr, ptr %57, align 4
  %102 = load i8, ptr %12, align 4, !range !9
  %103 = icmp eq i8 %102, 0
  %104 = select i1 %103, i32 3664, i32 164
  %105 = getelementptr i8, ptr %101, i32 %104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 516) #10, !srcloc !11
  %106 = load ptr, ptr %57, align 4
  %107 = load i8, ptr %12, align 4, !range !9
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  %110 = load i8, ptr %97, align 1, !range !9
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %111, i32 148, i32 3664
  br label %113

113:                                              ; preds = %109, %100
  %114 = phi i32 [ 164, %100 ], [ %112, %109 ]
  %115 = getelementptr i8, ptr %106, i32 %114
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #10, !srcloc !10
  %117 = load ptr, ptr %57, align 4
  %118 = load i8, ptr %12, align 4, !range !9
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i8, ptr %97, align 1, !range !9
  %122 = icmp eq i8 %121, 0
  %123 = select i1 %122, i32 152, i32 3680
  br label %124

124:                                              ; preds = %120, %113
  %125 = phi i32 [ 168, %113 ], [ %123, %120 ]
  %126 = getelementptr i8, ptr %117, i32 %125
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 67568644) #10, !srcloc !11
  %127 = load ptr, ptr %57, align 4
  %128 = load i8, ptr %12, align 4, !range !9
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i8, ptr %97, align 1, !range !9
  %132 = icmp eq i8 %131, 0
  %133 = select i1 %132, i32 152, i32 3680
  br label %134

134:                                              ; preds = %130, %124
  %135 = phi i32 [ 168, %124 ], [ %133, %130 ]
  %136 = getelementptr i8, ptr %127, i32 %135
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #10, !srcloc !10
  %138 = load ptr, ptr %57, align 4
  %139 = load i8, ptr %12, align 4, !range !9
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load i8, ptr %97, align 1, !range !9
  %143 = icmp eq i8 %142, 0
  %144 = select i1 %143, i32 156, i32 3696
  br label %145

145:                                              ; preds = %141, %134
  %146 = phi i32 [ 172, %134 ], [ %144, %141 ]
  %147 = getelementptr i8, ptr %138, i32 %146
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 776) #10, !srcloc !11
  %148 = load ptr, ptr %57, align 4
  %149 = load i8, ptr %12, align 4, !range !9
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load i8, ptr %97, align 1, !range !9
  %153 = icmp eq i8 %152, 0
  %154 = select i1 %153, i32 156, i32 3696
  br label %155

155:                                              ; preds = %151, %145
  %156 = phi i32 [ 172, %145 ], [ %154, %151 ]
  %157 = getelementptr i8, ptr %148, i32 %156
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #10, !srcloc !10
  %159 = load ptr, ptr %57, align 4
  %160 = load i8, ptr %12, align 4, !range !9
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = load i8, ptr %97, align 1, !range !9
  %164 = icmp eq i8 %163, 0
  %165 = select i1 %164, i32 160, i32 3712
  br label %166

166:                                              ; preds = %162, %155
  %167 = phi i32 [ 176, %155 ], [ %165, %162 ]
  %168 = getelementptr i8, ptr %159, i32 %167
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 723723) #10, !srcloc !11
  %169 = load ptr, ptr %57, align 4
  %170 = load i8, ptr %12, align 4, !range !9
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = load i8, ptr %97, align 1, !range !9
  %174 = icmp eq i8 %173, 0
  %175 = select i1 %174, i32 160, i32 3712
  br label %176

176:                                              ; preds = %172, %166
  %177 = phi i32 [ 176, %166 ], [ %175, %172 ]
  %178 = getelementptr i8, ptr %169, i32 %177
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #10, !srcloc !10
  %180 = load ptr, ptr %57, align 4
  %181 = load i8, ptr %12, align 4, !range !9
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %176
  %184 = load i8, ptr %97, align 1, !range !9
  %185 = icmp eq i8 %184, 0
  %186 = select i1 %185, i32 132, i32 3600
  br label %187

187:                                              ; preds = %183, %176
  %188 = phi i32 [ 148, %176 ], [ %186, %183 ]
  %189 = getelementptr i8, ptr %180, i32 %188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 589828) #10, !srcloc !11
  %190 = load ptr, ptr %57, align 4
  %191 = load i8, ptr %12, align 4, !range !9
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load i8, ptr %97, align 1, !range !9
  %195 = icmp eq i8 %194, 0
  %196 = select i1 %195, i32 132, i32 3600
  br label %197

197:                                              ; preds = %193, %187
  %198 = phi i32 [ 148, %187 ], [ %196, %193 ]
  %199 = getelementptr i8, ptr %190, i32 %198
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %199) #10, !srcloc !10
  %201 = load ptr, ptr %57, align 4
  %202 = load i8, ptr %12, align 4, !range !9
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %197
  %205 = load i8, ptr %97, align 1, !range !9
  %206 = icmp eq i8 %205, 0
  %207 = select i1 %206, i32 52, i32 3280
  br label %208

208:                                              ; preds = %204, %197
  %209 = phi i32 [ 116, %197 ], [ %207, %204 ]
  %210 = getelementptr i8, ptr %201, i32 %209
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 0) #10, !srcloc !11
  %211 = load ptr, ptr %57, align 4
  %212 = load i8, ptr %12, align 4, !range !9
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load i8, ptr %97, align 1, !range !9
  %216 = icmp eq i8 %215, 0
  %217 = select i1 %216, i32 52, i32 3280
  br label %218

218:                                              ; preds = %214, %208
  %219 = phi i32 [ 116, %208 ], [ %217, %214 ]
  %220 = getelementptr i8, ptr %211, i32 %219
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %220) #10, !srcloc !10
  br label %222

222:                                              ; preds = %218, %93
  %223 = load i32, ptr %2, align 4
  %224 = icmp ult i32 %223, 100001
  %225 = load ptr, ptr %59, align 8
  br i1 %224, label %238, label %228

226:                                              ; preds = %228
  %227 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %225, i32 0, i32 6
  br label %246

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %225, i32 0, i32 15
  %230 = load i32, ptr %229, align 4
  %231 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %225, i32 0, i32 16
  %232 = load i32, ptr %231, align 4
  %233 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %225, i32 0, i32 18
  %234 = load i32, ptr %233, align 4
  %235 = icmp ugt i32 %223, 400000
  br i1 %235, label %226, label %236

236:                                              ; preds = %228
  %237 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %225, i32 0, i32 5
  br label %246

238:                                              ; preds = %222
  %239 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %225, i32 0, i32 13
  %240 = load i32, ptr %239, align 4
  %241 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %225, i32 0, i32 14
  %242 = load i32, ptr %241, align 4
  %243 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %225, i32 0, i32 17
  %244 = load i32, ptr %243, align 4
  %245 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %225, i32 0, i32 4
  br label %246

246:                                              ; preds = %238, %236, %226
  %247 = phi ptr [ %245, %238 ], [ %227, %226 ], [ %237, %236 ]
  %248 = phi i32 [ %242, %238 ], [ %232, %226 ], [ %232, %236 ]
  %249 = phi i32 [ %240, %238 ], [ %230, %226 ], [ %230, %236 ]
  %250 = phi i32 [ %244, %238 ], [ %234, %226 ], [ %234, %236 ]
  %251 = load i32, ptr %247, align 4
  %252 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %225, i32 0, i32 3
  %253 = load i32, ptr %252, align 4
  %254 = and i32 %253, 65535
  %255 = shl i32 %251, 16
  %256 = or i32 %254, %255
  %257 = load ptr, ptr %57, align 4
  %258 = load i8, ptr %12, align 4, !range !9
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %246
  %261 = load i8, ptr %97, align 1, !range !9
  %262 = icmp eq i8 %261, 0
  %263 = select i1 %262, i32 108, i32 3504
  br label %264

264:                                              ; preds = %260, %246
  %265 = phi i32 [ 124, %246 ], [ %263, %260 ]
  %266 = getelementptr i8, ptr %257, i32 %265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 %256) #10, !srcloc !11
  %267 = load ptr, ptr %57, align 4
  %268 = load i8, ptr %12, align 4, !range !9
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %264
  %271 = load i8, ptr %97, align 1, !range !9
  %272 = icmp eq i8 %271, 0
  %273 = select i1 %272, i32 108, i32 3504
  br label %274

274:                                              ; preds = %270, %264
  %275 = phi i32 [ 124, %264 ], [ %273, %270 ]
  %276 = getelementptr i8, ptr %267, i32 %275
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %276) #10, !srcloc !10
  %278 = load ptr, ptr %59, align 8
  %279 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %278, i32 0, i32 20
  %280 = load i8, ptr %279, align 4, !range !9
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %336, label %282

282:                                              ; preds = %274
  %283 = shl i32 %248, 8
  %284 = and i32 %283, 16128
  %285 = and i32 %249, 63
  %286 = or i32 %284, %285
  %287 = load ptr, ptr %57, align 4
  %288 = load i8, ptr %12, align 4, !range !9
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %282
  %291 = load i8, ptr %97, align 1, !range !9
  %292 = icmp eq i8 %291, 0
  %293 = select i1 %292, i32 148, i32 3664
  br label %294

294:                                              ; preds = %290, %282
  %295 = phi i32 [ 164, %282 ], [ %293, %290 ]
  %296 = getelementptr i8, ptr %287, i32 %295
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %296, i32 %286) #10, !srcloc !11
  %297 = load ptr, ptr %57, align 4
  %298 = load i8, ptr %12, align 4, !range !9
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %294
  %301 = load i8, ptr %97, align 1, !range !9
  %302 = icmp eq i8 %301, 0
  %303 = select i1 %302, i32 148, i32 3664
  br label %304

304:                                              ; preds = %300, %294
  %305 = phi i32 [ 164, %294 ], [ %303, %300 ]
  %306 = getelementptr i8, ptr %297, i32 %305
  %307 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %306) #10, !srcloc !10
  %308 = load ptr, ptr %59, align 8
  %309 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %308, i32 0, i32 20
  %310 = load i8, ptr %309, align 4, !range !9
  %311 = icmp ne i8 %310, 0
  %312 = icmp ne i32 %250, 0
  %313 = select i1 %311, i1 %312, i1 false
  br i1 %313, label %314, label %336

314:                                              ; preds = %304
  %315 = load ptr, ptr %57, align 4
  %316 = load i8, ptr %12, align 4, !range !9
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %314
  %319 = load i8, ptr %97, align 1, !range !9
  %320 = icmp eq i8 %319, 0
  %321 = select i1 %320, i32 152, i32 3680
  br label %322

322:                                              ; preds = %318, %314
  %323 = phi i32 [ 168, %314 ], [ %321, %318 ]
  %324 = getelementptr i8, ptr %315, i32 %323
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %324, i32 %250) #10, !srcloc !11
  %325 = load ptr, ptr %57, align 4
  %326 = load i8, ptr %12, align 4, !range !9
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %322
  %329 = load i8, ptr %97, align 1, !range !9
  %330 = icmp eq i8 %329, 0
  %331 = select i1 %330, i32 152, i32 3680
  br label %332

332:                                              ; preds = %328, %322
  %333 = phi i32 [ 168, %322 ], [ %331, %328 ]
  %334 = getelementptr i8, ptr %325, i32 %333
  %335 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %334) #10, !srcloc !10
  br label %336

336:                                              ; preds = %332, %304, %274
  %337 = add i32 %248, 2
  %338 = add i32 %337, %249
  %339 = add i32 %251, 1
  %340 = mul i32 %339, %338
  %341 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 10
  %342 = load ptr, ptr %341, align 4
  %343 = load i32, ptr %2, align 4
  %344 = mul i32 %340, %343
  %345 = tail call i32 @clk_set_rate(ptr noundef %342, i32 noundef %344) #10
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %349, label %347

347:                                              ; preds = %336
  %348 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %348, ptr noundef nonnull @.str.22, i32 noundef %345) #11
  br label %488

349:                                              ; preds = %336
  %350 = load i8, ptr %12, align 4, !range !9
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %352, label %423

352:                                              ; preds = %349
  %353 = load i8, ptr %97, align 1, !range !9
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %355, label %423

355:                                              ; preds = %352
  %356 = load ptr, ptr %57, align 4
  %357 = getelementptr i8, ptr %356, i32 32
  %358 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %357) #10, !srcloc !10
  %359 = or i32 %358, 6
  %360 = load ptr, ptr %57, align 4
  %361 = load i8, ptr %12, align 4, !range !9
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %355
  %364 = load i8, ptr %97, align 1, !range !9
  %365 = icmp eq i8 %364, 0
  %366 = select i1 %365, i32 32, i32 3200
  br label %367

367:                                              ; preds = %363, %355
  %368 = phi i32 [ 96, %355 ], [ %366, %363 ]
  %369 = getelementptr i8, ptr %360, i32 %368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %369, i32 %359) #10, !srcloc !11
  %370 = load ptr, ptr %57, align 4
  %371 = load i8, ptr %12, align 4, !range !9
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %367
  %374 = load i8, ptr %97, align 1, !range !9
  %375 = icmp eq i8 %374, 0
  %376 = select i1 %375, i32 32, i32 3200
  br label %377

377:                                              ; preds = %373, %367
  %378 = phi i32 [ 96, %367 ], [ %376, %373 ]
  %379 = getelementptr i8, ptr %370, i32 %378
  %380 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %379) #10, !srcloc !10
  %381 = load ptr, ptr %57, align 4
  %382 = load i8, ptr %12, align 4, !range !9
  %383 = icmp eq i8 %382, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %377
  %385 = load i8, ptr %97, align 1, !range !9
  %386 = icmp eq i8 %385, 0
  %387 = select i1 %386, i32 44, i32 3248
  br label %388

388:                                              ; preds = %384, %377
  %389 = phi i32 [ 108, %377 ], [ %387, %384 ]
  %390 = getelementptr i8, ptr %381, i32 %389
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %390, i32 252) #10, !srcloc !11
  %391 = load ptr, ptr %57, align 4
  %392 = load i8, ptr %12, align 4, !range !9
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %394, label %398

394:                                              ; preds = %388
  %395 = load i8, ptr %97, align 1, !range !9
  %396 = icmp eq i8 %395, 0
  %397 = select i1 %396, i32 44, i32 3248
  br label %398

398:                                              ; preds = %394, %388
  %399 = phi i32 [ 108, %388 ], [ %397, %394 ]
  %400 = getelementptr i8, ptr %391, i32 %399
  %401 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %400) #10, !srcloc !10
  %402 = load ptr, ptr %57, align 4
  %403 = load i8, ptr %12, align 4, !range !9
  %404 = icmp eq i8 %403, 0
  br i1 %404, label %405, label %409

405:                                              ; preds = %398
  %406 = load i8, ptr %97, align 1, !range !9
  %407 = icmp eq i8 %406, 0
  %408 = select i1 %407, i32 48, i32 3264
  br label %409

409:                                              ; preds = %405, %398
  %410 = phi i32 [ 112, %398 ], [ %408, %405 ]
  %411 = getelementptr i8, ptr %402, i32 %410
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %411, i32 0) #10, !srcloc !11
  %412 = load ptr, ptr %57, align 4
  %413 = load i8, ptr %12, align 4, !range !9
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %409
  %416 = load i8, ptr %97, align 1, !range !9
  %417 = icmp eq i8 %416, 0
  %418 = select i1 %417, i32 48, i32 3264
  br label %419

419:                                              ; preds = %415, %409
  %420 = phi i32 [ 112, %409 ], [ %418, %415 ]
  %421 = getelementptr i8, ptr %412, i32 %420
  %422 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %421) #10, !srcloc !10
  br label %423

423:                                              ; preds = %419, %352, %349
  %424 = tail call fastcc i32 @tegra_i2c_flush_fifos(ptr noundef %0)
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %488

426:                                              ; preds = %423
  %427 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 22
  %428 = load i8, ptr %427, align 8, !range !9
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %457, label %430

430:                                              ; preds = %426
  %431 = load ptr, ptr %59, align 8
  %432 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %431, i32 0, i32 8
  %433 = load i8, ptr %432, align 1, !range !9
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %457, label %435

435:                                              ; preds = %430
  %436 = load ptr, ptr %57, align 4
  %437 = load i8, ptr %12, align 4, !range !9
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %439, label %443

439:                                              ; preds = %435
  %440 = load i8, ptr %97, align 1, !range !9
  %441 = icmp eq i8 %440, 0
  %442 = select i1 %441, i32 144, i32 3648
  br label %443

443:                                              ; preds = %439, %435
  %444 = phi i32 [ 160, %435 ], [ %442, %439 ]
  %445 = getelementptr i8, ptr %436, i32 %444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %445, i32 1) #10, !srcloc !11
  %446 = load ptr, ptr %57, align 4
  %447 = load i8, ptr %12, align 4, !range !9
  %448 = icmp eq i8 %447, 0
  br i1 %448, label %449, label %453

449:                                              ; preds = %443
  %450 = load i8, ptr %97, align 1, !range !9
  %451 = icmp eq i8 %450, 0
  %452 = select i1 %451, i32 144, i32 3648
  br label %453

453:                                              ; preds = %449, %443
  %454 = phi i32 [ 160, %443 ], [ %452, %449 ]
  %455 = getelementptr i8, ptr %446, i32 %454
  %456 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %455) #10, !srcloc !10
  br label %457

457:                                              ; preds = %453, %430, %426
  %458 = load ptr, ptr %59, align 8
  %459 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %458, i32 0, i32 2
  %460 = load i8, ptr %459, align 2, !range !9
  %461 = icmp eq i8 %460, 0
  br i1 %461, label %488, label %462

462:                                              ; preds = %457
  %463 = load ptr, ptr %57, align 4
  %464 = load i8, ptr %12, align 4, !range !9
  %465 = icmp eq i8 %464, 0
  br i1 %465, label %466, label %470

466:                                              ; preds = %462
  %467 = load i8, ptr %97, align 1, !range !9
  %468 = icmp eq i8 %467, 0
  %469 = select i1 %468, i32 140, i32 3632
  br label %470

470:                                              ; preds = %466, %462
  %471 = phi i32 [ 156, %462 ], [ %469, %466 ]
  %472 = getelementptr i8, ptr %463, i32 %471
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %472, i32 1) #10, !srcloc !11
  %473 = load ptr, ptr %57, align 4
  %474 = load i8, ptr %12, align 4, !range !9
  %475 = icmp eq i8 %474, 0
  br i1 %475, label %476, label %480

476:                                              ; preds = %470
  %477 = load i8, ptr %97, align 1, !range !9
  %478 = icmp eq i8 %477, 0
  %479 = select i1 %478, i32 140, i32 3632
  br label %480

480:                                              ; preds = %476, %470
  %481 = phi i32 [ 156, %470 ], [ %479, %476 ]
  %482 = getelementptr i8, ptr %473, i32 %481
  %483 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %482) #10, !srcloc !10
  %484 = tail call fastcc i32 @tegra_i2c_poll_register(ptr noundef %0, i32 noundef 140, i32 noundef -1) #10
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %488, label %486

486:                                              ; preds = %480
  %487 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %487, ptr noundef nonnull @.str.4) #11
  br label %488

488:                                              ; preds = %486, %480, %457, %423, %347
  %489 = phi i32 [ %345, %347 ], [ %424, %423 ], [ %484, %486 ], [ 0, %457 ], [ 0, %480 ]
  ret i32 %489
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_i2c_flush_fifos(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %3, i32 0, i32 9
  %5 = load i8, ptr %4, align 2, !range !9
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 92, i32 180
  %8 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 26
  %11 = load i8, ptr %10, align 4, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = add nuw nsw i32 %7, 16
  br label %22

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %17 = load i8, ptr %16, align 1, !range !9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = shl nuw nsw i32 %7, 2
  %21 = or i32 %20, 3072
  br label %22

22:                                               ; preds = %19, %15, %13
  %23 = phi i32 [ %14, %13 ], [ %21, %19 ], [ %7, %15 ]
  %24 = getelementptr i8, ptr %9, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #10, !srcloc !10
  %26 = or i32 %25, 3
  %27 = load ptr, ptr %8, align 4
  %28 = load i8, ptr %10, align 4, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = add nuw nsw i32 %7, 16
  br label %39

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %34 = load i8, ptr %33, align 1, !range !9
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = shl nuw nsw i32 %7, 2
  %38 = or i32 %37, 3072
  br label %39

39:                                               ; preds = %36, %32, %30
  %40 = phi i32 [ %31, %30 ], [ %38, %36 ], [ %7, %32 ]
  %41 = getelementptr i8, ptr %27, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %26) #10, !srcloc !11
  %42 = load ptr, ptr %8, align 4
  %43 = load i8, ptr %10, align 4, !range !9
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = add nuw nsw i32 %7, 16
  br label %54

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %49 = load i8, ptr %48, align 1, !range !9
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = shl nuw nsw i32 %7, 2
  %53 = or i32 %52, 3072
  br label %54

54:                                               ; preds = %51, %47, %45
  %55 = phi i32 [ %46, %45 ], [ %53, %51 ], [ %7, %47 ]
  %56 = getelementptr i8, ptr %42, i32 %55
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #10, !srcloc !10
  %58 = tail call fastcc i32 @tegra_i2c_poll_register(ptr noundef %0, i32 noundef %7, i32 noundef 3)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.23) #11
  br label %62

62:                                               ; preds = %60, %54
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_i2c_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %44, label %10

10:                                               ; preds = %3
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %586

12:                                               ; preds = %10
  %13 = add nsw i32 %2, -1
  %14 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 15
  %15 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 13
  %16 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 14
  %17 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 25
  %18 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 12
  %19 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 21
  %20 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 23
  %21 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 24
  %22 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 2
  %23 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 18
  %24 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 26
  %25 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 27
  %26 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 6
  %27 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 1
  %28 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 3
  %29 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 5
  %30 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 17
  %31 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 2
  %32 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  %33 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 6
  %34 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 9
  %35 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 19
  %36 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 20
  %37 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 7
  %38 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 11
  %39 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 4
  %40 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 16
  %41 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 5
  %42 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 22
  %43 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %6, i32 0, i32 1
  br label %52

44:                                               ; preds = %3
  %45 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.24, i32 noundef %8) #11
  %46 = load ptr, ptr %6, align 8
  %47 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #10, !srcloc !14
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 0, i32 -1, ptr elementtype(i32) %47) #10, !srcloc !15
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %592, label %51

51:                                               ; preds = %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  br label %592

52:                                               ; preds = %572, %12
  %53 = phi i32 [ 0, %12 ], [ %573, %572 ]
  %54 = icmp slt i32 %53, %13
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = add nuw nsw i32 %53, 1
  %57 = getelementptr %struct.i2c_msg, ptr %1, i32 %56, i32 1
  %58 = load i16, ptr %57, align 2
  %59 = and i16 %58, 16384
  %60 = icmp eq i16 %59, 0
  %61 = select i1 %60, i32 1, i32 2
  br label %62

62:                                               ; preds = %55, %52
  %63 = phi i32 [ 0, %52 ], [ %61, %55 ]
  %64 = getelementptr %struct.i2c_msg, ptr %1, i32 %53
  %65 = call fastcc i32 @tegra_i2c_flush_fifos(ptr noundef %6) #10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %582

67:                                               ; preds = %62
  %68 = getelementptr %struct.i2c_msg, ptr %1, i32 %53, i32 3
  %69 = load ptr, ptr %68, align 4
  store ptr %69, ptr %14, align 8
  %70 = getelementptr %struct.i2c_msg, ptr %1, i32 %53, i32 2
  %71 = load i16, ptr %70, align 4
  %72 = zext i16 %71 to i32
  store i32 %72, ptr %15, align 8
  store i32 0, ptr %16, align 4
  %73 = getelementptr %struct.i2c_msg, ptr %1, i32 %53, i32 1
  %74 = load i16, ptr %73, align 2
  %75 = trunc i16 %74 to i8
  %76 = and i8 %75, 1
  store i8 %76, ptr %17, align 1
  store i32 0, ptr %18, align 4
  %77 = icmp eq i8 %76, 0
  %78 = load i16, ptr %70, align 4
  %79 = zext i16 %78 to i32
  %80 = add nuw nsw i32 %79, 12
  %81 = select i1 %77, i32 %80, i32 %79
  %82 = add nuw nsw i32 %81, 3
  %83 = and i32 %82, 262140
  %84 = icmp ugt i32 %83, 32
  br i1 %84, label %85, label %91

85:                                               ; preds = %67
  %86 = load ptr, ptr %19, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i8, ptr %20, align 1, !range !9
  %90 = icmp eq i8 %89, 0
  br label %91

91:                                               ; preds = %88, %85, %67
  %92 = phi i1 [ false, %85 ], [ false, %67 ], [ %90, %88 ]
  %93 = zext i1 %92 to i8
  store i8 %93, ptr %21, align 2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 48, i1 false) #10
  %94 = load ptr, ptr %22, align 8
  %95 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %94, i32 0, i32 9
  %96 = load i8, ptr %95, align 2, !range !9
  %97 = icmp eq i8 %96, 0
  %98 = select i1 %97, i32 92, i32 180
  br i1 %92, label %99, label %173

99:                                               ; preds = %91
  %100 = and i32 %82, 12
  %101 = icmp eq i32 %100, 0
  %102 = and i32 %82, 16
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, i32 8, i32 4
  %105 = select i1 %101, i32 %104, i32 1
  br i1 %77, label %122, label %106

106:                                              ; preds = %99
  %107 = load ptr, ptr %23, align 8
  %108 = load i8, ptr %24, align 4, !range !9
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i8, ptr %25, align 1, !range !9
  %112 = icmp eq i8 %111, 0
  %113 = select i1 %112, i32 84, i32 3408
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi i32 [ 100, %106 ], [ %113, %110 ]
  %116 = load i32, ptr %26, align 8
  %117 = add i32 %116, %115
  store i32 %117, ptr %27, align 4
  store i32 4, ptr %28, align 4
  store i32 %105, ptr %29, align 4
  %118 = load i8, ptr %95, align 2, !range !9
  %119 = icmp eq i8 %118, 0
  %120 = select i1 %119, i32 2, i32 4
  %121 = select i1 %119, i32 -4, i32 -16
  br label %138

122:                                              ; preds = %99
  %123 = load ptr, ptr %30, align 4
  %124 = load i8, ptr %24, align 4, !range !9
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i8, ptr %25, align 1, !range !9
  %128 = icmp eq i8 %127, 0
  %129 = select i1 %128, i32 80, i32 3392
  br label %130

130:                                              ; preds = %126, %122
  %131 = phi i32 [ 96, %122 ], [ %129, %126 ]
  %132 = load i32, ptr %26, align 8
  %133 = add i32 %132, %131
  store i32 %133, ptr %31, align 4
  store i32 4, ptr %32, align 4
  store i32 %105, ptr %33, align 4
  %134 = load i8, ptr %95, align 2, !range !9
  %135 = icmp eq i8 %134, 0
  %136 = select i1 %135, i32 5, i32 16
  %137 = select i1 %135, i32 -32, i32 -65536
  br label %138

138:                                              ; preds = %130, %114
  %139 = phi i32 [ %120, %114 ], [ %136, %130 ]
  %140 = phi i32 [ %121, %114 ], [ %137, %130 ]
  %141 = phi ptr [ %107, %114 ], [ %123, %130 ]
  store i8 1, ptr %34, align 4
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.dma_device, ptr %142, i32 0, i32 44
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %138
  %147 = shl nuw nsw i32 %105, %139
  %148 = add nsw i32 %147, %140
  %149 = call i32 %144(ptr noundef %141, ptr noundef nonnull %4) #10
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %177, label %151

151:                                              ; preds = %146, %138
  %152 = phi i32 [ %149, %146 ], [ -38, %138 ]
  %153 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.27, i32 noundef %152) #11
  %154 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.19) #11
  %155 = load ptr, ptr %19, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %161, label %157

157:                                              ; preds = %151
  %158 = load ptr, ptr %6, align 8
  %159 = load i32, ptr %35, align 4
  %160 = load i32, ptr %36, align 8
  call void @dma_free_attrs(ptr noundef %158, i32 noundef %159, ptr noundef nonnull %155, i32 noundef %160, i32 noundef 0) #10
  store ptr null, ptr %19, align 4
  br label %161

161:                                              ; preds = %157, %151
  %162 = load ptr, ptr %30, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  call void @dma_release_channel(ptr noundef nonnull %162) #10
  store ptr null, ptr %30, align 4
  br label %165

165:                                              ; preds = %164, %161
  %166 = load ptr, ptr %23, align 8
  %167 = icmp eq ptr %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  call void @dma_release_channel(ptr noundef nonnull %166) #10
  store ptr null, ptr %23, align 8
  br label %169

169:                                              ; preds = %168, %165
  store i8 0, ptr %21, align 2
  %170 = load ptr, ptr %22, align 8
  %171 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %170, i32 0, i32 9
  %172 = load i8, ptr %171, align 2, !range !9
  br label %173

173:                                              ; preds = %169, %91
  %174 = phi i8 [ %172, %169 ], [ %96, %91 ]
  %175 = icmp eq i8 %174, 0
  %176 = select i1 %175, i32 224, i32 458752
  br label %177

177:                                              ; preds = %173, %146
  %178 = phi i32 [ %148, %146 ], [ %176, %173 ]
  %179 = load ptr, ptr %37, align 4
  %180 = load i8, ptr %24, align 4, !range !9
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %177
  %183 = add nuw nsw i32 %98, 16
  br label %190

184:                                              ; preds = %177
  %185 = load i8, ptr %25, align 1, !range !9
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %184
  %188 = shl nuw nsw i32 %98, 2
  %189 = or i32 %188, 3072
  br label %190

190:                                              ; preds = %187, %184, %182
  %191 = phi i32 [ %183, %182 ], [ %189, %187 ], [ %98, %184 ]
  %192 = getelementptr i8, ptr %179, i32 %191
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 %178) #10, !srcloc !11
  %193 = load ptr, ptr %37, align 4
  %194 = load i8, ptr %24, align 4, !range !9
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %190
  %197 = add nuw nsw i32 %98, 16
  br label %204

198:                                              ; preds = %190
  %199 = load i8, ptr %25, align 1, !range !9
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = shl nuw nsw i32 %98, 2
  %203 = or i32 %202, 3072
  br label %204

204:                                              ; preds = %201, %198, %196
  %205 = phi i32 [ %197, %196 ], [ %203, %201 ], [ %98, %198 ]
  %206 = getelementptr i8, ptr %193, i32 %205
  %207 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %206) #10, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #10
  %208 = mul nuw nsw i32 %83, 9
  %209 = or i32 %208, 2
  %210 = mul nuw i32 %209, 1000
  %211 = load i32, ptr %38, align 8
  %212 = lshr i32 %211, 1
  %213 = add i32 %212, %210
  %214 = udiv i32 %213, %211
  %215 = add i32 %214, 100
  %216 = load ptr, ptr %37, align 4
  %217 = load i8, ptr %24, align 4, !range !9
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %204
  %220 = load i8, ptr %25, align 1, !range !9
  %221 = icmp eq i8 %220, 0
  %222 = select i1 %221, i32 100, i32 3472
  br label %223

223:                                              ; preds = %219, %204
  %224 = phi i32 [ 116, %204 ], [ %222, %219 ]
  %225 = getelementptr i8, ptr %216, i32 %224
  %226 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %225) #10, !srcloc !10
  %227 = or i32 %226, 12
  %228 = load ptr, ptr %37, align 4
  %229 = load i8, ptr %24, align 4, !range !9
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %223
  %232 = load i8, ptr %25, align 1, !range !9
  %233 = icmp eq i8 %232, 0
  %234 = select i1 %233, i32 100, i32 3472
  br label %235

235:                                              ; preds = %231, %223
  %236 = phi i32 [ 116, %223 ], [ %234, %231 ]
  %237 = getelementptr i8, ptr %228, i32 %236
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %227) #10, !srcloc !11
  %238 = load ptr, ptr %37, align 4
  %239 = load i8, ptr %24, align 4, !range !9
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %235
  %242 = load i8, ptr %25, align 1, !range !9
  %243 = icmp eq i8 %242, 0
  %244 = select i1 %243, i32 100, i32 3472
  br label %245

245:                                              ; preds = %241, %235
  %246 = phi i32 [ 116, %235 ], [ %244, %241 ]
  %247 = getelementptr i8, ptr %238, i32 %246
  %248 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #10, !srcloc !10
  %249 = load i8, ptr %21, align 2, !range !9
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %260, label %251

251:                                              ; preds = %245
  %252 = load i8, ptr %17, align 1, !range !9
  %253 = icmp eq i8 %252, 0
  %254 = load ptr, ptr %6, align 8
  %255 = load i32, ptr %36, align 8
  br i1 %253, label %259, label %256

256:                                              ; preds = %251
  call void @dma_sync_single_for_device(ptr noundef %254, i32 noundef %255, i32 noundef %83, i32 noundef 2) #10
  %257 = call fastcc i32 @tegra_i2c_dma_submit(ptr noundef %6, i32 noundef %83) #10
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %260, label %582

259:                                              ; preds = %251
  call void @dma_sync_single_for_cpu(ptr noundef %254, i32 noundef %255, i32 noundef %83, i32 noundef 1) #10
  br label %260

260:                                              ; preds = %259, %256, %245
  %261 = load ptr, ptr %19, align 4
  %262 = load i32, ptr %39, align 8
  %263 = shl i32 %262, 12
  %264 = and i32 %263, 61440
  %265 = or i32 %264, 65552
  %266 = load i8, ptr %21, align 2, !range !9
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %273, label %268

268:                                              ; preds = %260
  %269 = load i8, ptr %17, align 1, !range !9
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = getelementptr i32, ptr %261, i32 1
  store i32 %265, ptr %261, align 4
  br label %293

273:                                              ; preds = %268, %260
  %274 = load ptr, ptr %37, align 4
  %275 = load i8, ptr %24, align 4, !range !9
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %273
  %278 = load i8, ptr %25, align 1, !range !9
  %279 = icmp eq i8 %278, 0
  %280 = select i1 %279, i32 80, i32 3392
  br label %281

281:                                              ; preds = %277, %273
  %282 = phi i32 [ 96, %273 ], [ %280, %277 ]
  %283 = getelementptr i8, ptr %274, i32 %282
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %283, i32 %265) #10, !srcloc !11
  %284 = load i8, ptr %25, align 1, !range !9
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %293, label %286

286:                                              ; preds = %281
  %287 = load ptr, ptr %37, align 4
  %288 = load i8, ptr %24, align 4, !range !9
  %289 = icmp eq i8 %288, 0
  %290 = select i1 %289, i32 3488, i32 120
  %291 = getelementptr i8, ptr %287, i32 %290
  %292 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %291) #10, !srcloc !10
  br label %293

293:                                              ; preds = %286, %281, %271
  %294 = phi ptr [ %272, %271 ], [ %261, %281 ], [ %261, %286 ]
  %295 = load i16, ptr %70, align 4
  %296 = zext i16 %295 to i32
  %297 = add nsw i32 %296, -1
  %298 = load i8, ptr %21, align 2, !range !9
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %305, label %300

300:                                              ; preds = %293
  %301 = load i8, ptr %17, align 1, !range !9
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %300
  %304 = getelementptr i32, ptr %294, i32 1
  store i32 %297, ptr %294, align 4
  br label %325

305:                                              ; preds = %300, %293
  %306 = load ptr, ptr %37, align 4
  %307 = load i8, ptr %24, align 4, !range !9
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %305
  %310 = load i8, ptr %25, align 1, !range !9
  %311 = icmp eq i8 %310, 0
  %312 = select i1 %311, i32 80, i32 3392
  br label %313

313:                                              ; preds = %309, %305
  %314 = phi i32 [ 96, %305 ], [ %312, %309 ]
  %315 = getelementptr i8, ptr %306, i32 %314
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %315, i32 %297) #10, !srcloc !11
  %316 = load i8, ptr %25, align 1, !range !9
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %325, label %318

318:                                              ; preds = %313
  %319 = load ptr, ptr %37, align 4
  %320 = load i8, ptr %24, align 4, !range !9
  %321 = icmp eq i8 %320, 0
  %322 = select i1 %321, i32 3488, i32 120
  %323 = getelementptr i8, ptr %319, i32 %322
  %324 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %323) #10, !srcloc !10
  br label %325

325:                                              ; preds = %318, %313, %303
  %326 = phi ptr [ %304, %303 ], [ %294, %313 ], [ %294, %318 ]
  %327 = icmp eq i32 %63, 1
  %328 = select i1 %327, i32 196608, i32 131072
  %329 = icmp eq i32 %63, 2
  %330 = select i1 %329, i32 163840, i32 %328
  %331 = load i16, ptr %73, align 2
  %332 = and i16 %331, 16
  %333 = icmp eq i16 %332, 0
  %334 = load i16, ptr %64, align 4
  %335 = zext i16 %334 to i32
  %336 = or i32 %330, %335
  %337 = or i32 %336, 262144
  %338 = shl nuw nsw i32 %335, 1
  %339 = or i32 %338, %330
  %340 = select i1 %333, i32 %339, i32 %337
  %341 = and i16 %331, 4096
  %342 = zext i16 %341 to i32
  %343 = shl nuw nsw i32 %342, 9
  %344 = and i16 %331, 1
  %345 = zext i16 %344 to i32
  %346 = shl nuw nsw i32 %345, 19
  %347 = or i32 %346, %343
  %348 = or i32 %340, %347
  %349 = load i8, ptr %21, align 2, !range !9
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %355, label %351

351:                                              ; preds = %325
  %352 = load i8, ptr %17, align 1, !range !9
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %351
  store i32 %348, ptr %326, align 4
  br label %375

355:                                              ; preds = %351, %325
  %356 = load ptr, ptr %37, align 4
  %357 = load i8, ptr %24, align 4, !range !9
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %355
  %360 = load i8, ptr %25, align 1, !range !9
  %361 = icmp eq i8 %360, 0
  %362 = select i1 %361, i32 80, i32 3392
  br label %363

363:                                              ; preds = %359, %355
  %364 = phi i32 [ 96, %355 ], [ %362, %359 ]
  %365 = getelementptr i8, ptr %356, i32 %364
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %365, i32 %348) #10, !srcloc !11
  %366 = load i8, ptr %25, align 1, !range !9
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %375, label %368

368:                                              ; preds = %363
  %369 = load ptr, ptr %37, align 4
  %370 = load i8, ptr %24, align 4, !range !9
  %371 = icmp eq i8 %370, 0
  %372 = select i1 %371, i32 3488, i32 120
  %373 = getelementptr i8, ptr %369, i32 %372
  %374 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %373) #10, !srcloc !10
  br label %375

375:                                              ; preds = %368, %363, %354
  %376 = load i8, ptr %17, align 1, !range !9
  %377 = icmp eq i8 %376, 0
  br i1 %377, label %378, label %392

378:                                              ; preds = %375
  %379 = load i8, ptr %21, align 2, !range !9
  %380 = icmp eq i8 %379, 0
  br i1 %380, label %391, label %381

381:                                              ; preds = %378
  %382 = load ptr, ptr %19, align 4
  %383 = getelementptr i8, ptr %382, i32 12
  %384 = load ptr, ptr %68, align 4
  %385 = load i16, ptr %70, align 4
  %386 = zext i16 %385 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %383, ptr align 1 %384, i32 %386, i1 false) #10
  %387 = load ptr, ptr %6, align 8
  %388 = load i32, ptr %36, align 8
  call void @dma_sync_single_for_device(ptr noundef %387, i32 noundef %388, i32 noundef %83, i32 noundef 1) #10
  %389 = call fastcc i32 @tegra_i2c_dma_submit(ptr noundef %6, i32 noundef %83) #10
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %392, label %582

391:                                              ; preds = %378
  call fastcc void @tegra_i2c_fill_tx_fifo(ptr noundef %6) #10
  br label %392

392:                                              ; preds = %391, %381, %375
  %393 = load ptr, ptr %22, align 8
  %394 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %393, i32 0, i32 1
  %395 = load i8, ptr %394, align 1, !range !9
  %396 = icmp eq i8 %395, 0
  %397 = select i1 %396, i32 12, i32 140
  %398 = load i8, ptr %21, align 2, !range !9
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %400, label %411

400:                                              ; preds = %392
  %401 = load i16, ptr %73, align 2
  %402 = and i16 %401, 1
  %403 = icmp eq i16 %402, 0
  br i1 %403, label %406, label %404

404:                                              ; preds = %400
  %405 = or i32 %397, 1
  br label %411

406:                                              ; preds = %400
  %407 = load i32, ptr %15, align 8
  %408 = icmp eq i32 %407, 0
  %409 = or i32 %397, 2
  %410 = select i1 %408, i32 %397, i32 %409
  br label %411

411:                                              ; preds = %406, %404, %392
  %412 = phi i32 [ %397, %392 ], [ %405, %404 ], [ %410, %406 ]
  %413 = load ptr, ptr %37, align 4
  %414 = load i8, ptr %24, align 4, !range !9
  %415 = icmp eq i8 %414, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %411
  %417 = load i8, ptr %25, align 1, !range !9
  %418 = icmp eq i8 %417, 0
  %419 = select i1 %418, i32 100, i32 3472
  br label %420

420:                                              ; preds = %416, %411
  %421 = phi i32 [ 116, %411 ], [ %419, %416 ]
  %422 = getelementptr i8, ptr %413, i32 %421
  %423 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %422) #10, !srcloc !10
  %424 = or i32 %423, %412
  %425 = load ptr, ptr %37, align 4
  %426 = load i8, ptr %24, align 4, !range !9
  %427 = icmp eq i8 %426, 0
  br i1 %427, label %428, label %432

428:                                              ; preds = %420
  %429 = load i8, ptr %25, align 1, !range !9
  %430 = icmp eq i8 %429, 0
  %431 = select i1 %430, i32 100, i32 3472
  br label %432

432:                                              ; preds = %428, %420
  %433 = phi i32 [ 116, %420 ], [ %431, %428 ]
  %434 = getelementptr i8, ptr %425, i32 %433
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %434, i32 %424) #10, !srcloc !11
  %435 = load ptr, ptr %37, align 4
  %436 = load i8, ptr %24, align 4, !range !9
  %437 = icmp eq i8 %436, 0
  br i1 %437, label %438, label %442

438:                                              ; preds = %432
  %439 = load i8, ptr %25, align 1, !range !9
  %440 = icmp eq i8 %439, 0
  %441 = select i1 %440, i32 100, i32 3472
  br label %442

442:                                              ; preds = %438, %432
  %443 = phi i32 [ 116, %432 ], [ %441, %438 ]
  %444 = getelementptr i8, ptr %435, i32 %443
  %445 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %444) #10, !srcloc !10
  %446 = load i8, ptr %21, align 2, !range !9
  %447 = icmp eq i8 %446, 0
  br i1 %447, label %507, label %448

448:                                              ; preds = %442
  %449 = load i8, ptr %20, align 1, !range !9
  %450 = icmp eq i8 %449, 0
  br i1 %450, label %451, label %457

451:                                              ; preds = %448
  %452 = load i32, ptr %41, align 4
  call void @enable_irq(i32 noundef %452) #10
  %453 = call i32 @__msecs_to_jiffies(i32 noundef %215) #10
  %454 = call i32 @wait_for_completion_timeout(ptr noundef %40, i32 noundef %453) #10
  %455 = load i32, ptr %41, align 4
  call void @disable_irq(i32 noundef %455) #10
  %456 = icmp eq i32 %454, 0
  br i1 %456, label %457, label %460

457:                                              ; preds = %451, %448
  %458 = phi i32 [ %215, %448 ], [ 0, %451 ]
  %459 = call fastcc i32 @tegra_i2c_poll_completion(ptr noundef %6, ptr noundef %40, i32 noundef %458) #10
  br label %460

460:                                              ; preds = %457, %451
  %461 = phi i32 [ %454, %451 ], [ %459, %457 ]
  %462 = load i8, ptr %17, align 1, !range !9
  %463 = icmp eq i8 %462, 0
  %464 = select i1 %463, ptr %30, ptr %23
  %465 = load ptr, ptr %464, align 4
  %466 = load ptr, ptr %465, align 4
  %467 = getelementptr inbounds %struct.dma_device, ptr %466, i32 0, i32 48
  %468 = load ptr, ptr %467, align 4
  %469 = icmp eq ptr %468, null
  br i1 %469, label %472, label %470

470:                                              ; preds = %460
  call void %468(ptr noundef %465) #10
  %471 = load i8, ptr %17, align 1, !range !9
  br label %472

472:                                              ; preds = %470, %460
  %473 = phi i8 [ %462, %460 ], [ %471, %470 ]
  %474 = icmp eq i8 %473, 0
  %475 = select i1 %474, ptr %30, ptr %23
  %476 = load ptr, ptr %475, align 4
  %477 = load ptr, ptr %476, align 4
  %478 = getelementptr inbounds %struct.dma_device, ptr %477, i32 0, i32 47
  %479 = load ptr, ptr %478, align 4
  %480 = icmp eq ptr %479, null
  br i1 %480, label %490, label %481

481:                                              ; preds = %472
  %482 = call i32 %479(ptr noundef %476) #10
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %490

484:                                              ; preds = %481
  %485 = load ptr, ptr %476, align 4
  %486 = getelementptr inbounds %struct.dma_device, ptr %485, i32 0, i32 48
  %487 = load ptr, ptr %486, align 4
  %488 = icmp eq ptr %487, null
  br i1 %488, label %490, label %489

489:                                              ; preds = %484
  call void %487(ptr noundef %476) #10
  br label %490

490:                                              ; preds = %489, %484, %481, %472
  %491 = icmp eq i32 %461, 0
  br i1 %491, label %492, label %494

492:                                              ; preds = %490
  %493 = call zeroext i1 @completion_done(ptr noundef %40) #10
  br i1 %493, label %494, label %578

494:                                              ; preds = %492, %490
  %495 = load i8, ptr %17, align 1, !range !9
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %507, label %497

497:                                              ; preds = %494
  %498 = load i32, ptr %16, align 4
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %507

500:                                              ; preds = %497
  %501 = load ptr, ptr %6, align 8
  %502 = load i32, ptr %36, align 8
  call void @dma_sync_single_for_cpu(ptr noundef %501, i32 noundef %502, i32 noundef %83, i32 noundef 2) #10
  %503 = load ptr, ptr %14, align 8
  %504 = load ptr, ptr %19, align 4
  %505 = load i16, ptr %70, align 4
  %506 = zext i16 %505 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %503, ptr align 1 %504, i32 %506, i1 false) #10
  br label %507

507:                                              ; preds = %500, %497, %494, %442
  %508 = load i8, ptr %20, align 1, !range !9
  %509 = icmp eq i8 %508, 0
  br i1 %509, label %510, label %516

510:                                              ; preds = %507
  %511 = load i32, ptr %41, align 4
  call void @enable_irq(i32 noundef %511) #10
  %512 = call i32 @__msecs_to_jiffies(i32 noundef %215) #10
  %513 = call i32 @wait_for_completion_timeout(ptr noundef %18, i32 noundef %512) #10
  %514 = load i32, ptr %41, align 4
  call void @disable_irq(i32 noundef %514) #10
  %515 = icmp eq i32 %513, 0
  br i1 %515, label %516, label %519

516:                                              ; preds = %510, %507
  %517 = phi i32 [ %215, %507 ], [ 0, %510 ]
  %518 = call fastcc i32 @tegra_i2c_poll_completion(ptr noundef %6, ptr noundef %18, i32 noundef %517) #10
  br label %519

519:                                              ; preds = %516, %510
  %520 = phi i32 [ %513, %510 ], [ %518, %516 ]
  %521 = load ptr, ptr %37, align 4
  %522 = load i8, ptr %24, align 4, !range !9
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %524, label %528

524:                                              ; preds = %519
  %525 = load i8, ptr %25, align 1, !range !9
  %526 = icmp eq i8 %525, 0
  %527 = select i1 %526, i32 100, i32 3472
  br label %528

528:                                              ; preds = %524, %519
  %529 = phi i32 [ 116, %519 ], [ %527, %524 ]
  %530 = getelementptr i8, ptr %521, i32 %529
  %531 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %530) #10, !srcloc !10
  %532 = xor i32 %412, -1
  %533 = and i32 %531, %532
  %534 = load ptr, ptr %37, align 4
  %535 = load i8, ptr %24, align 4, !range !9
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %537, label %541

537:                                              ; preds = %528
  %538 = load i8, ptr %25, align 1, !range !9
  %539 = icmp eq i8 %538, 0
  %540 = select i1 %539, i32 100, i32 3472
  br label %541

541:                                              ; preds = %537, %528
  %542 = phi i32 [ 116, %528 ], [ %540, %537 ]
  %543 = getelementptr i8, ptr %534, i32 %542
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %543, i32 %533) #10, !srcloc !11
  %544 = load ptr, ptr %37, align 4
  %545 = load i8, ptr %24, align 4, !range !9
  %546 = icmp eq i8 %545, 0
  br i1 %546, label %547, label %551

547:                                              ; preds = %541
  %548 = load i8, ptr %25, align 1, !range !9
  %549 = icmp eq i8 %548, 0
  %550 = select i1 %549, i32 100, i32 3472
  br label %551

551:                                              ; preds = %547, %541
  %552 = phi i32 [ 116, %541 ], [ %550, %547 ]
  %553 = getelementptr i8, ptr %544, i32 %552
  %554 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %553) #10, !srcloc !10
  %555 = icmp eq i32 %520, 0
  br i1 %555, label %578, label %556

556:                                              ; preds = %551
  store i8 0, ptr %21, align 2
  %557 = load i32, ptr %16, align 4
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %572, label %559

559:                                              ; preds = %556
  %560 = call fastcc i32 @tegra_i2c_init(ptr noundef %6) #10
  %561 = load i32, ptr %16, align 4
  switch i32 %561, label %582 [
    i32 2, label %562
    i32 1, label %565
  ]

562:                                              ; preds = %559
  %563 = load i8, ptr %42, align 8, !range !9
  %564 = icmp eq i8 %563, 0
  br i1 %564, label %569, label %582

565:                                              ; preds = %559
  %566 = load i16, ptr %73, align 2
  %567 = and i16 %566, 4096
  %568 = icmp eq i16 %567, 0
  br i1 %568, label %582, label %572

569:                                              ; preds = %562
  %570 = call i32 @i2c_recover_bus(ptr noundef %43) #10
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %582

572:                                              ; preds = %569, %565, %556
  %573 = add nuw nsw i32 %53, 1
  %574 = icmp eq i32 %573, %2
  br i1 %574, label %575, label %52

575:                                              ; preds = %572
  %576 = load ptr, ptr %6, align 8
  %577 = call i32 @__pm_runtime_idle(ptr noundef %576, i32 noundef 5) #10
  br label %590

578:                                              ; preds = %551, %492
  %579 = phi ptr [ @.str.25, %492 ], [ @.str.26, %551 ]
  %580 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %580, ptr noundef nonnull %579) #11
  %581 = call fastcc i32 @tegra_i2c_init(ptr noundef %6) #10
  br label %582

582:                                              ; preds = %578, %569, %565, %562, %559, %381, %256, %62
  %583 = phi i32 [ -110, %578 ], [ %570, %569 ], [ -5, %559 ], [ -11, %562 ], [ %389, %381 ], [ %257, %256 ], [ %65, %62 ], [ -121, %565 ]
  %584 = load ptr, ptr %6, align 8
  %585 = call i32 @__pm_runtime_idle(ptr noundef %584, i32 noundef 5) #10
  br label %592

586:                                              ; preds = %10
  %587 = load ptr, ptr %6, align 8
  %588 = call i32 @__pm_runtime_idle(ptr noundef %587, i32 noundef 5) #10
  %589 = icmp eq i32 %8, 0
  br i1 %589, label %590, label %592

590:                                              ; preds = %586, %575
  %591 = phi i32 [ %2, %575 ], [ 0, %586 ]
  br label %592

592:                                              ; preds = %590, %586, %582, %51, %44
  %593 = phi i32 [ %8, %44 ], [ %8, %51 ], [ %583, %582 ], [ %591, %590 ], [ %8, %586 ]
  ret i32 %593
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_i2c_xfer_atomic(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %5, i32 0, i32 23
  store i8 1, ptr %6, align 1
  %7 = tail call i32 @tegra_i2c_xfer(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  store i8 0, ptr %6, align 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @tegra_i2c_func(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 251527183, i32 251527199
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_i2c_dma_submit(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.scatterlist, align 4
  %4 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 16
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 25
  %6 = load i8, ptr %5, align 1, !range !9
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  %9 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 18
  %10 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 17
  %11 = select i1 %7, ptr %10, ptr %9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 20
  %14 = load i32, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #10, !annotation !8
  call void @sg_init_table(ptr noundef nonnull %3, i32 noundef 1) #10
  %15 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 3
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 4
  store i32 %1, ptr %16, align 4
  %17 = icmp eq ptr %12, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load ptr, ptr %12, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 39
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %18, %2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #10
  br label %29

26:                                               ; preds = %21
  %27 = call ptr %23(ptr noundef nonnull %12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %8, i32 noundef 3, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26, %25
  %30 = load ptr, ptr %0, align 8
  %31 = load i8, ptr %5, align 1, !range !9
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, ptr @.str.30, ptr @.str.29
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.28, ptr noundef nonnull %33) #11
  br label %43

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %27, i32 0, i32 6
  store ptr @tegra_i2c_dma_complete, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %27, i32 0, i32 8
  store ptr %0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %27, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 %38(ptr noundef nonnull %27) #10
  %40 = load ptr, ptr %12, align 4
  %41 = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 50
  %42 = load ptr, ptr %41, align 4
  call void %42(ptr noundef nonnull %12) #10
  br label %43

43:                                               ; preds = %34, %29
  %44 = phi i32 [ 0, %34 ], [ -22, %29 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_i2c_dma_complete(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 16
  tail call void @complete(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_i2c_poll_completion(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = tail call i64 @ktime_get() #10
  %5 = zext i32 %2 to i64
  %6 = mul nuw nsw i64 %5, 1000000
  %7 = add i64 %4, %6
  %8 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 7
  %9 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 26
  %10 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 27
  %11 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %0, i32 0, i32 5
  br label %12

12:                                               ; preds = %45, %3
  %13 = phi i64 [ %4, %3 ], [ %46, %45 ]
  %14 = load ptr, ptr %8, align 4
  %15 = load i8, ptr %9, align 4, !range !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i8, ptr %10, align 1, !range !9
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i32 104, i32 3488
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i32 [ 120, %12 ], [ %20, %17 ]
  %23 = getelementptr i8, ptr %14, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %11, align 4
  %28 = tail call i32 @tegra_i2c_isr(i32 noundef %27, ptr noundef %0)
  br label %29

29:                                               ; preds = %26, %21
  %30 = tail call zeroext i1 @completion_done(ptr noundef %1) #10
  br i1 %30, label %31, label %45

31:                                               ; preds = %29
  %32 = sub i64 %7, %13
  %33 = tail call i64 @llvm.abs.i64(i64 %32, i1 false) #10
  %34 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %33) #12, !srcloc !17
  %35 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %33, i64 %34, i32 0) #12, !srcloc !18
  %36 = icmp slt i64 %32, 0
  %37 = extractvalue { i64, i32 } %35, 0
  %38 = lshr i64 %37, 18
  %39 = sub nsw i64 0, %38
  %40 = select i1 %36, i64 %39, i64 %38
  %41 = trunc i64 %40 to i32
  %42 = tail call i32 @__msecs_to_jiffies(i32 noundef %41) #10
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 1, i32 %42
  br label %48

45:                                               ; preds = %29
  %46 = tail call i64 @ktime_get() #10
  %47 = icmp slt i64 %46, %7
  br i1 %47, label %12, label %48

48:                                               ; preds = %45, %31
  %49 = phi i32 [ %44, %31 ], [ 0, %45 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_i2c_issue_bus_clear(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 12
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 26
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 27
  %12 = load i8, ptr %11, align 1, !range !9
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 132, i32 3600
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i32 [ 148, %1 ], [ %14, %10 ]
  %17 = getelementptr i8, ptr %6, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 589830) #10, !srcloc !11
  %18 = load ptr, ptr %5, align 4
  %19 = load i8, ptr %7, align 4, !range !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 27
  %23 = load i8, ptr %22, align 1, !range !9
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i32 132, i32 3600
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi i32 [ 148, %15 ], [ %25, %21 ]
  %28 = getelementptr i8, ptr %18, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #10, !srcloc !10
  %30 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %31, i32 0, i32 2
  %33 = load i8, ptr %32, align 2, !range !9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %61, label %35

35:                                               ; preds = %26
  %36 = load ptr, ptr %5, align 4
  %37 = load i8, ptr %7, align 4, !range !9
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 27
  %41 = load i8, ptr %40, align 1, !range !9
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %42, i32 140, i32 3632
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i32 [ 156, %35 ], [ %43, %39 ]
  %46 = getelementptr i8, ptr %36, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 1) #10, !srcloc !11
  %47 = load ptr, ptr %5, align 4
  %48 = load i8, ptr %7, align 4, !range !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 27
  %52 = load i8, ptr %51, align 1, !range !9
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, i32 140, i32 3632
  br label %55

55:                                               ; preds = %50, %44
  %56 = phi i32 [ 156, %44 ], [ %54, %50 ]
  %57 = getelementptr i8, ptr %47, i32 %56
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #10, !srcloc !10
  %59 = tail call fastcc i32 @tegra_i2c_poll_register(ptr noundef %3, i32 noundef 140, i32 noundef -1) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %187

61:                                               ; preds = %55, %26
  %62 = load ptr, ptr %5, align 4
  %63 = load i8, ptr %7, align 4, !range !9
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 27
  %67 = load i8, ptr %66, align 1, !range !9
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, i32 132, i32 3600
  br label %70

70:                                               ; preds = %65, %61
  %71 = phi i32 [ 148, %61 ], [ %69, %65 ]
  %72 = getelementptr i8, ptr %62, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 589831) #10, !srcloc !11
  %73 = load ptr, ptr %5, align 4
  %74 = load i8, ptr %7, align 4, !range !9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 27
  %78 = load i8, ptr %77, align 1, !range !9
  %79 = icmp eq i8 %78, 0
  %80 = select i1 %79, i32 132, i32 3600
  br label %81

81:                                               ; preds = %76, %70
  %82 = phi i32 [ 148, %70 ], [ %80, %76 ]
  %83 = getelementptr i8, ptr %73, i32 %82
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #10, !srcloc !10
  %85 = load ptr, ptr %5, align 4
  %86 = load i8, ptr %7, align 4, !range !9
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 27
  %90 = load i8, ptr %89, align 1, !range !9
  %91 = icmp eq i8 %90, 0
  %92 = select i1 %91, i32 100, i32 3472
  br label %93

93:                                               ; preds = %88, %81
  %94 = phi i32 [ 116, %81 ], [ %92, %88 ]
  %95 = getelementptr i8, ptr %85, i32 %94
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #10, !srcloc !10
  %97 = or i32 %96, 2048
  %98 = load ptr, ptr %5, align 4
  %99 = load i8, ptr %7, align 4, !range !9
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 27
  %103 = load i8, ptr %102, align 1, !range !9
  %104 = icmp eq i8 %103, 0
  %105 = select i1 %104, i32 100, i32 3472
  br label %106

106:                                              ; preds = %101, %93
  %107 = phi i32 [ 116, %93 ], [ %105, %101 ]
  %108 = getelementptr i8, ptr %98, i32 %107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %97) #10, !srcloc !11
  %109 = load ptr, ptr %5, align 4
  %110 = load i8, ptr %7, align 4, !range !9
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 27
  %114 = load i8, ptr %113, align 1, !range !9
  %115 = icmp eq i8 %114, 0
  %116 = select i1 %115, i32 100, i32 3472
  br label %117

117:                                              ; preds = %112, %106
  %118 = phi i32 [ 116, %106 ], [ %116, %112 ]
  %119 = getelementptr i8, ptr %109, i32 %118
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #10, !srcloc !10
  %121 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 23
  %122 = load i8, ptr %121, align 1, !range !9
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 5
  %126 = load i32, ptr %125, align 4
  tail call void @enable_irq(i32 noundef %126) #10
  %127 = tail call i32 @wait_for_completion_timeout(ptr noundef %4, i32 noundef 5) #10
  %128 = load i32, ptr %125, align 4
  tail call void @disable_irq(i32 noundef %128) #10
  %129 = icmp eq i32 %127, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124, %117
  %131 = phi i32 [ 50, %117 ], [ 0, %124 ]
  %132 = tail call fastcc i32 @tegra_i2c_poll_completion(ptr noundef %3, ptr noundef %4, i32 noundef %131) #10
  br label %133

133:                                              ; preds = %130, %124
  %134 = phi i32 [ %127, %124 ], [ %132, %130 ]
  %135 = load ptr, ptr %5, align 4
  %136 = load i8, ptr %7, align 4, !range !9
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 27
  %140 = load i8, ptr %139, align 1, !range !9
  %141 = icmp eq i8 %140, 0
  %142 = select i1 %141, i32 100, i32 3472
  br label %143

143:                                              ; preds = %138, %133
  %144 = phi i32 [ 116, %133 ], [ %142, %138 ]
  %145 = getelementptr i8, ptr %135, i32 %144
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #10, !srcloc !10
  %147 = and i32 %146, -2049
  %148 = load ptr, ptr %5, align 4
  %149 = load i8, ptr %7, align 4, !range !9
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 27
  %153 = load i8, ptr %152, align 1, !range !9
  %154 = icmp eq i8 %153, 0
  %155 = select i1 %154, i32 100, i32 3472
  br label %156

156:                                              ; preds = %151, %143
  %157 = phi i32 [ 116, %143 ], [ %155, %151 ]
  %158 = getelementptr i8, ptr %148, i32 %157
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %147) #10, !srcloc !11
  %159 = load ptr, ptr %5, align 4
  %160 = load i8, ptr %7, align 4, !range !9
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 27
  %164 = load i8, ptr %163, align 1, !range !9
  %165 = icmp eq i8 %164, 0
  %166 = select i1 %165, i32 100, i32 3472
  br label %167

167:                                              ; preds = %162, %156
  %168 = phi i32 [ 116, %156 ], [ %166, %162 ]
  %169 = getelementptr i8, ptr %159, i32 %168
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #10, !srcloc !10
  %171 = icmp eq i32 %134, 0
  br i1 %171, label %187, label %172

172:                                              ; preds = %167
  %173 = load ptr, ptr %5, align 4
  %174 = load i8, ptr %7, align 4, !range !9
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 27
  %178 = load i8, ptr %177, align 1, !range !9
  %179 = icmp eq i8 %178, 0
  %180 = select i1 %179, i32 136, i32 3616
  br label %181

181:                                              ; preds = %176, %172
  %182 = phi i32 [ 152, %172 ], [ %180, %176 ]
  %183 = getelementptr i8, ptr %173, i32 %182
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #10, !srcloc !10
  %185 = and i32 %184, 1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %181, %167, %55
  %188 = phi ptr [ @.str.4, %55 ], [ @.str.31, %167 ], [ @.str.32, %181 ]
  %189 = phi i32 [ %59, %55 ], [ -110, %167 ], [ -5, %181 ]
  %190 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull %188) #11
  br label %191

191:                                              ; preds = %187, %181
  %192 = phi i32 [ -11, %181 ], [ %189, %187 ]
  ret i32 %192
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_i2c_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %4, i32 noundef 1) #10
  %8 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 1, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %8) #10
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.i2c_lock_operations, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %4, i32 noundef 1) #10
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %16, i32 0, i32 9
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %16, i32 0, i32 8
  tail call void @clk_bulk_disable(i32 noundef %18, ptr noundef %19) #10
  %20 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %0) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %1
  br label %23

23:                                               ; preds = %22, %15
  %24 = phi i32 [ 0, %22 ], [ %20, %15 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_i2c_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 9
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 8
  %10 = tail call i32 @clk_bulk_enable(i32 noundef %8, ptr noundef %9) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 27
  %14 = load i8, ptr %13, align 1, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @tegra_i2c_init(ptr noundef %3) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %7, align 8
  tail call void @clk_bulk_disable(i32 noundef %20, ptr noundef %9) #10
  br label %44

21:                                               ; preds = %16, %12
  %22 = tail call fastcc i32 @tegra_i2c_init(ptr noundef %3)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %29, i32 0, i32 9
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %29, i32 0, i32 8
  tail call void @clk_bulk_disable(i32 noundef %31, ptr noundef %32) #10
  %33 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %0) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28, %24
  %36 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 1
  %37 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 1, i32 4
  %38 = load ptr, ptr %37, align 8
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %36, i32 noundef 1) #10
  %40 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 1, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %40) #10
  %41 = load ptr, ptr %37, align 8
  %42 = getelementptr inbounds %struct.i2c_lock_operations, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %36, i32 noundef 1) #10
  br label %44

44:                                               ; preds = %35, %28, %21, %19, %6, %1
  %45 = phi i32 [ 0, %35 ], [ %22, %21 ], [ %33, %28 ], [ %10, %6 ], [ %4, %1 ], [ %17, %19 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_i2c_runtime_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 9
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 8
  tail call void @clk_bulk_disable(i32 noundef %5, ptr noundef %6) #10
  %7 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %0) #10
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_i2c_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 9
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 8
  %10 = tail call i32 @clk_bulk_enable(i32 noundef %8, ptr noundef %9) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %3, i32 0, i32 27
  %14 = load i8, ptr %13, align 1, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @tegra_i2c_init(ptr noundef %3)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %7, align 8
  tail call void @clk_bulk_disable(i32 noundef %20, ptr noundef %9) #10
  br label %21

21:                                               ; preds = %19, %16, %12, %6, %1
  %22 = phi i32 [ %17, %19 ], [ %4, %1 ], [ %10, %6 ], [ 0, %16 ], [ 0, %12 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

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
!10 = !{i64 5781836}
!11 = !{i64 5781418}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2148058985}
!14 = !{i64 557295, i64 2148047266, i64 2148047292, i64 2148047339, i64 2148047361, i64 2148047389, i64 2148047409}
!15 = !{i64 543864, i64 543889, i64 543911, i64 543927, i64 543939, i64 543959, i64 543983, i64 543999, i64 544011}
!16 = !{i64 2148059111}
!17 = !{i64 1247480, i64 1247507}
!18 = !{i64 1248175, i64 1248202, i64 1248235, i64 1248256, i64 1248283, i64 1248309}
