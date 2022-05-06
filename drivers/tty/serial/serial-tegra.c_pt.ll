; ModuleID = '/llk/IR/drivers/tty/serial/serial-tegra.c_pt.bc'
source_filename = "../drivers/tty/serial/serial-tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_uart_chip_data = type { i8, i8, i8, i8, i32, i32, i32, i32 }
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
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.tegra_uart_port = type { %struct.uart_port, ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i8, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8 }
%struct.tegra_baud_tolerance = type { i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.34, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.34 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.64, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }

@.str = private unnamed_addr constant [31 x i8] c"\016Unloading tegra uart driver\0A\00", align 1
@tegra_uart_platform_driver = internal global %struct.platform_driver { ptr @tegra_uart_probe, ptr @tegra_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_uart_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_uart_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@tegra_uart_driver = internal global %struct.uart_driver { ptr null, ptr @.str.38, ptr @.str.39, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null }, align 4
@__initcall__kmod_serial_tegra__244_1712_tegra_uart_init6 = internal global ptr @tegra_uart_init, section ".initcall6.init", align 4
@__exitcall_tegra_uart_exit = internal global ptr @tegra_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias245 = internal constant [41 x i8] c"serial_tegra.alias=platform:serial-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [66 x i8] c"serial_tegra.description=High speed UART driver for tegra chipset\00", section ".modinfo", align 1
@__UNIQUE_ID_author247 = internal constant [59 x i8] c"serial_tegra.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [50 x i8] c"serial_tegra.file=drivers/tty/serial/serial-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [28 x i8] c"serial_tegra.license=GPL v2\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"serial-tegra\00", align 1
@tegra_uart_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-hsuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_uart_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-hsuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_uart_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-hsuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_uart_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-hsuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_uart_chip_data }, %struct.of_device_id zeroinitializer], align 4
@tegra_uart_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_uart_suspend, ptr @tegra_uart_resume, ptr @tegra_uart_suspend, ptr @tegra_uart_resume, ptr @tegra_uart_suspend, ptr @tegra_uart_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to allocate memory for tup\0A\00", align 1
@tegra_uart_ops = internal constant %struct.uart_ops { ptr @tegra_uart_tx_empty, ptr @tegra_uart_set_mctrl, ptr @tegra_uart_get_mctrl, ptr @tegra_uart_stop_tx, ptr @tegra_uart_start_tx, ptr null, ptr null, ptr null, ptr @tegra_uart_stop_rx, ptr @tegra_uart_enable_ms, ptr @tegra_uart_break_ctl, ptr @tegra_uart_startup, ptr @tegra_uart_shutdown, ptr @tegra_uart_flush_buffer, ptr @tegra_uart_set_termios, ptr null, ptr null, ptr @tegra_uart_type, ptr @tegra_uart_release_port, ptr @tegra_uart_request_port, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"No IO memory resource\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Couldn't get the clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Couldn't get the reset\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Failed to add uart port, err %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"failed to get alias id, errno %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"nvidia,enable-modem-interrupt\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"dma-names\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"RX in PIO mode\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"TX in PIO mode\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"nvidia,adjust-baud-rates\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Not able to get desc for Tx\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.18 = private unnamed_addr constant [34 x i8] c"drivers/tty/serial/serial-tegra.c\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"RxData copy to tty layer failed\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.20 = private unnamed_addr constant [36 x i8] c"Tx Dma allocation failed, err = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"Rx Dma allocation failed, err = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Uart HW init failed, err = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"Failed to register ISR for IRQ %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"DMA channel alloc failed: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Not able to allocate the dma buffer\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"dma_map_single tx failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"Dma slave config failed, err = %d\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.30 = private unnamed_addr constant [32 x i8] c"Failed to enable FIFO mode: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"Failed to set baud rate\0A\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"clk_set_rate() failed for rate %lu\0A\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"configured baud rate is out of range by %ld\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"Not able to get desc for Rx\0A\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"Tx Fifo not empty, CTS disabled, waiting\0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"Slave not ready\0A\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"TEGRA_UART\00", align 1
@tegra30_uart_chip_data = internal global %struct.tegra_uart_chip_data { i8 1, i8 0, i8 1, i8 0, i32 5, i32 4, i32 -4, i32 4 }, align 4
@tegra20_uart_chip_data = internal global %struct.tegra_uart_chip_data { i8 0, i8 1, i8 0, i8 0, i32 5, i32 4, i32 -4, i32 4 }, align 4
@tegra186_uart_chip_data = internal global %struct.tegra_uart_chip_data { i8 1, i8 0, i8 1, i8 1, i32 8, i32 8, i32 0, i32 4 }, align 4
@tegra194_uart_chip_data = internal global %struct.tegra_uart_chip_data { i8 1, i8 0, i8 1, i8 1, i32 8, i32 8, i32 -2, i32 2 }, align 4
@.str.38 = private unnamed_addr constant [13 x i8] c"tegra_hsuart\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"ttyTHS\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"\013Could not register %s driver\0A\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"\013Uart platform driver register failed, e = %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias245, ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_tegra_uart_exit, ptr @__initcall__kmod_serial_tegra__244_1712_tegra_uart_init6, ptr @tegra_uart_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_uart_exit() #0 section ".exit.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_uart_platform_driver) #10
  tail call void @uart_unregister_driver(ptr noundef nonnull @tegra_uart_driver) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_uart_init() #0 section ".init.text" {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @tegra_uart_of_match, ptr noundef null) #10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @of_match_node(ptr noundef nonnull @tegra_uart_of_match, ptr noundef nonnull %1) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %8, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr getelementptr inbounds (%struct.uart_driver, ptr @tegra_uart_driver, i32 0, i32 5), align 4
  br label %13

13:                                               ; preds = %10, %6, %3, %0
  %14 = tail call i32 @uart_register_driver(ptr noundef nonnull @tegra_uart_driver) #10
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @tegra_uart_driver, i32 0, i32 1), align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %17) #9
  br label %24

19:                                               ; preds = %13
  %20 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_uart_platform_driver, ptr noundef null) #10
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %20) #9
  tail call void @uart_unregister_driver(ptr noundef nonnull @tegra_uart_driver) #10
  br label %24

24:                                               ; preds = %22, %19, %16
  %25 = phi i32 [ %14, %16 ], [ %20, %22 ], [ 0, %19 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_uart_probe(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_device_get_match_data(ptr noundef %3) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #9
  br label %117

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 444, i32 noundef 3520) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #9
  br label %117

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %14 = tail call i32 @of_alias_get_id(ptr noundef %13, ptr noundef nonnull @.str.6) #10
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %14) #9
  br label %73

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 41
  store i32 %14, ptr %18, align 4
  %19 = tail call ptr @of_find_property(ptr noundef %13, ptr noundef nonnull @.str.10, ptr noundef null) #10
  %20 = icmp ne ptr %19, null
  %21 = getelementptr inbounds %struct.tegra_uart_port, ptr %8, i32 0, i32 12
  %22 = zext i1 %20 to i8
  store i8 %22, ptr %21, align 4
  %23 = tail call i32 @of_property_match_string(ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #10
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tegra_uart_port, ptr %8, i32 0, i32 32
  store i8 1, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.13) #9
  br label %27

27:                                               ; preds = %25, %17
  %28 = tail call i32 @of_property_match_string(ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tegra_uart_port, ptr %8, i32 0, i32 33
  store i8 1, ptr %31, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.15) #9
  br label %32

32:                                               ; preds = %30, %27
  %33 = tail call i32 @of_property_count_elems_of_size(ptr noundef %13, ptr noundef nonnull @.str.16, i32 noundef 4) #10
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %32
  %36 = udiv i32 %33, 3
  %37 = getelementptr inbounds %struct.tegra_uart_port, ptr %8, i32 0, i32 29
  store i32 %36, ptr %37, align 4
  %38 = mul i32 %36, 12
  %39 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %38, i32 noundef 3520) #10
  %40 = getelementptr inbounds %struct.tegra_uart_port, ptr %8, i32 0, i32 28
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %73, label %42

42:                                               ; preds = %67, %35
  %43 = phi i32 [ %68, %67 ], [ 0, %35 ]
  %44 = phi i32 [ %69, %67 ], [ 0, %35 ]
  %45 = call i32 @of_property_read_u32_index(ptr noundef %13, ptr noundef nonnull @.str.16, i32 noundef %43, ptr noundef nonnull %2) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, ptr %2, align 4
  %49 = load ptr, ptr %40, align 4
  %50 = getelementptr %struct.tegra_baud_tolerance, ptr %49, i32 %44
  store i32 %48, ptr %50, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = add nsw i32 %43, 1
  %53 = call i32 @of_property_read_u32_index(ptr noundef %13, ptr noundef nonnull @.str.16, i32 noundef %52, ptr noundef nonnull %2) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, ptr %2, align 4
  %57 = load ptr, ptr %40, align 4
  %58 = getelementptr %struct.tegra_baud_tolerance, ptr %57, i32 %44, i32 1
  store i32 %56, ptr %58, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = add i32 %43, 2
  %61 = call i32 @of_property_read_u32_index(ptr noundef %13, ptr noundef nonnull @.str.16, i32 noundef %60, ptr noundef nonnull %2) #10
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, ptr %2, align 4
  %65 = load ptr, ptr %40, align 4
  %66 = getelementptr %struct.tegra_baud_tolerance, ptr %65, i32 %44, i32 2
  store i32 %64, ptr %66, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = add i32 %43, 3
  %69 = add i32 %44, 1
  %70 = icmp slt i32 %68, %33
  br i1 %70, label %42, label %75

71:                                               ; preds = %32
  %72 = getelementptr inbounds %struct.tegra_uart_port, ptr %8, i32 0, i32 29
  store i32 0, ptr %72, align 4
  br label %75

73:                                               ; preds = %35, %16
  %74 = phi i32 [ -12, %35 ], [ %14, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %117

75:                                               ; preds = %71, %67
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %76 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 45
  store ptr %3, ptr %76, align 4
  %77 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 39
  store ptr @tegra_uart_ops, ptr %77, align 4
  %78 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 38
  store i32 20, ptr %78, align 4
  %79 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 23
  store i32 32, ptr %79, align 4
  %80 = getelementptr inbounds %struct.tegra_uart_port, ptr %8, i32 0, i32 1
  store ptr %4, ptr %80, align 4
  %81 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %81, align 8
  %82 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #10
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #9
  br label %117

85:                                               ; preds = %75
  %86 = load i32, ptr %82, align 4
  %87 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 43
  store i32 %86, ptr %87, align 4
  %88 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %82) #10
  %89 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 2
  store ptr %88, ptr %89, align 4
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = ptrtoint ptr %88 to i32
  br label %117

93:                                               ; preds = %85
  %94 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #10
  %95 = getelementptr inbounds %struct.tegra_uart_port, ptr %8, i32 0, i32 2
  store ptr %94, ptr %95, align 4
  %96 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #9
  %98 = load ptr, ptr %95, align 4
  %99 = ptrtoint ptr %98 to i32
  br label %117

100:                                              ; preds = %93
  %101 = call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %102 = getelementptr inbounds %struct.tegra_uart_port, ptr %8, i32 0, i32 3
  store ptr %101, ptr %102, align 4
  %103 = icmp ugt ptr %101, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #9
  %105 = load ptr, ptr %102, align 4
  %106 = ptrtoint ptr %105 to i32
  br label %117

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 26
  store i8 3, ptr %108, align 2
  %109 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 20
  store i32 %109, ptr %112, align 4
  %113 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 25
  store i8 2, ptr %113, align 1
  %114 = call i32 @uart_add_one_port(ptr noundef nonnull @tegra_uart_driver, ptr noundef nonnull %8) #10
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %114) #9
  br label %117

117:                                              ; preds = %116, %111, %107, %104, %97, %91, %84, %73, %10, %6
  %118 = phi i32 [ %92, %91 ], [ %99, %97 ], [ %106, %104 ], [ %114, %116 ], [ -19, %84 ], [ -12, %10 ], [ -19, %6 ], [ %109, %107 ], [ %114, %111 ], [ %74, %73 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_uart_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @tegra_uart_driver, ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_uart_tx_empty(ptr noundef %0) #3 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl i32 5, %11
  %13 = getelementptr i8, ptr %8, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %15 = and i32 %14, 96
  %16 = icmp eq i32 %15, 96
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %6, %1
  %19 = phi i32 [ 0, %1 ], [ %17, %6 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #10
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_uart_set_mctrl(ptr nocapture noundef %0, i32 noundef %1) #3 {
  %3 = and i32 %1, 4
  %4 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 9
  %5 = lshr exact i32 %3, 2
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -65
  %10 = shl nuw nsw i32 %3, 4
  %11 = or i32 %9, %10
  %12 = icmp eq i32 %11, %8
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 4, %18
  %20 = getelementptr i8, ptr %15, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %11) #10, !srcloc !12
  store i32 %11, ptr %7, align 4
  br label %21

21:                                               ; preds = %13, %2
  %22 = phi i32 [ %8, %2 ], [ %11, %13 ]
  %23 = and i32 %22, -2
  %24 = lshr i32 %1, 1
  %25 = and i32 %24, 1
  %26 = or i32 %23, %25
  %27 = icmp eq i32 %26, %22
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 4, %33
  %35 = getelementptr i8, ptr %30, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %26) #10, !srcloc !12
  store i32 %26, ptr %7, align 4
  br label %36

36:                                               ; preds = %28, %21
  %37 = phi i32 [ %22, %21 ], [ %26, %28 ]
  %38 = and i32 %37, -17
  %39 = lshr i32 %1, 11
  %40 = and i32 %39, 16
  %41 = or i32 %38, %40
  %42 = icmp eq i32 %41, %37
  br i1 %42, label %51, label %43

43:                                               ; preds = %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %44 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 4, %48
  %50 = getelementptr i8, ptr %45, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %41) #10, !srcloc !12
  store i32 %41, ptr %7, align 4
  br label %51

51:                                               ; preds = %43, %36
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @tegra_uart_get_mctrl(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 12
  %3 = load i8, ptr %2, align 4, !range !13
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, i32 32, i32 480
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_uart_stop_tx(ptr nocapture noundef %0) #3 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %41

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = tail call i32 %13(ptr noundef %10) #10
  %17 = load ptr, ptr %9, align 4
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %15, %8
  %20 = phi ptr [ %11, %8 ], [ %18, %15 ]
  %21 = phi ptr [ %10, %8 ], [ %17, %15 ]
  %22 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 24
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 49
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %21, i32 noundef %23, ptr noundef nonnull %2) #10
  %27 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 26
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %28, %30
  %32 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 22
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 2
  store i32 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %31, %38
  %40 = and i32 %39, 4095
  store i32 %40, ptr %37, align 4
  store i32 0, ptr %5, align 4
  br label %41

41:                                               ; preds = %19, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_uart_start_tx(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call fastcc void @tegra_uart_start_next_tx(ptr noundef %0)
  br label %14

14:                                               ; preds = %13, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_uart_stop_rx(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 4, !range !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -65
  %11 = icmp eq i32 %10, %9
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 4, %17
  %19 = getelementptr i8, ptr %14, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %10) #10, !srcloc !12
  store i32 %10, ptr %8, align 4
  br label %20

20:                                               ; preds = %12, %7, %1
  %21 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 14
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %52, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = add i32 %26, -1
  %30 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 15
  %31 = load i32, ptr %30, align 4
  %32 = mul i32 %31, 1000000
  %33 = add i32 %29, %32
  %34 = udiv i32 %33, %26
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %34) #10
  br label %36

36:                                               ; preds = %28, %24
  %37 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 8
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, -54
  store i32 %39, ptr %37, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw i32 1, %44
  %46 = getelementptr i8, ptr %41, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %39) #10, !srcloc !12
  store i32 0, ptr %21, align 4
  %47 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 32
  %48 = load i8, ptr %47, align 4, !range !13
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  tail call fastcc void @tegra_uart_terminate_rx_dma(ptr noundef %0)
  br label %52

51:                                               ; preds = %36
  tail call fastcc void @tegra_uart_handle_rx_pio(ptr noundef %0, ptr noundef %3)
  br label %52

52:                                               ; preds = %51, %50, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_uart_enable_ms(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 12
  %3 = load i8, ptr %2, align 4, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 8
  store i32 %8, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 1, %13
  %15 = getelementptr i8, ptr %10, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %8) #10, !srcloc !12
  br label %16

16:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_uart_break_ctl(ptr nocapture noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  %6 = and i32 %4, -65
  %7 = select i1 %5, i32 0, i32 64
  %8 = or i32 %6, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl i32 3, %13
  %15 = getelementptr i8, ptr %10, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %8) #10, !srcloc !12
  store i32 %8, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_uart_startup(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 33
  %3 = load i8, ptr %2, align 1, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @tegra_uart_dma_channel_allocate(ptr noundef %0, i1 noundef zeroext false)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.20, i32 noundef %6) #9
  br label %193

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 32
  %13 = load i8, ptr %12, align 4, !range !13
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @tegra_uart_dma_channel_allocate(ptr noundef %0, i1 noundef zeroext true)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.21, i32 noundef %16) #9
  br label %172

21:                                               ; preds = %15, %11
  %22 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 5
  %23 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 7
  %24 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 8
  %25 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 4
  %26 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %25, i8 0, i64 20, i1 false) #10
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @clk_prepare(ptr noundef %27) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = tail call i32 @clk_enable(ptr noundef %27) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @clk_unprepare(ptr noundef %27) #10
  br label %34

34:                                               ; preds = %33, %30, %21
  %35 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @reset_control_assert(ptr noundef %36) #10
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 2147480) #10
  %39 = load ptr, ptr %35, align 4
  %40 = tail call i32 @reset_control_deassert(ptr noundef %39) #10
  %41 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 14
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 10
  store i32 0, ptr %42, align 4
  store i32 1, ptr %22, align 4
  %43 = load i8, ptr %12, align 4, !range !13
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %47, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 8
  %51 = select i1 %50, i32 129, i32 65
  br label %52

52:                                               ; preds = %45, %34
  %53 = phi i32 [ 193, %34 ], [ %51, %45 ]
  store i32 %53, ptr %22, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %54 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 2, %58
  %60 = getelementptr i8, ptr %55, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %53) #10, !srcloc !12
  %61 = load ptr, ptr %54, align 4
  %62 = load i8, ptr %56, align 1
  %63 = zext i8 %62 to i32
  %64 = shl i32 7, %63
  %65 = getelementptr i8, ptr %61, i32 %64
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %67 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %68, i32 0, i32 3
  %70 = load i8, ptr %69, align 1, !range !13
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %82, %52
  %73 = phi i32 [ %84, %82 ], [ 100, %52 ]
  %74 = load ptr, ptr %54, align 4
  %75 = load i8, ptr %56, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 2, %76
  %78 = getelementptr i8, ptr %74, i32 %77
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %80 = and i32 %79, 64
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %72
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748) #10
  %84 = add nsw i32 %73, -1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %72

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %88 = load ptr, ptr %87, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.30, i32 noundef -110) #9
  br label %121

89:                                               ; preds = %52
  %90 = load i32, ptr %25, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = shl i32 %90, 4
  %94 = add i32 %93, 2999999
  %95 = udiv i32 %94, %93
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %96(i32 noundef %95) #10
  br label %97

97:                                               ; preds = %92, %89, %72
  %98 = tail call fastcc i32 @tegra_set_baudrate(ptr noundef %0, i32 noundef 115200) #10
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %102 = load ptr, ptr %101, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.31) #9
  br label %121

103:                                              ; preds = %97
  %104 = load i8, ptr %12, align 4, !range !13
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  store i32 3, ptr %23, align 4
  %107 = load i32, ptr %22, align 4
  %108 = or i32 %107, 8
  store i32 %108, ptr %22, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %109 = load ptr, ptr %54, align 4
  %110 = load i8, ptr %56, align 1
  %111 = zext i8 %110 to i32
  %112 = shl i32 2, %111
  %113 = getelementptr i8, ptr %109, i32 %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %108) #10, !srcloc !12
  br label %125

114:                                              ; preds = %103
  %115 = load i32, ptr %22, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %116 = load ptr, ptr %54, align 4
  %117 = load i8, ptr %56, align 1
  %118 = zext i8 %117 to i32
  %119 = shl i32 2, %118
  %120 = getelementptr i8, ptr %116, i32 %119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %115) #10, !srcloc !12
  br label %125

121:                                              ; preds = %100, %86
  %122 = phi i32 [ %98, %100 ], [ -110, %86 ]
  %123 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %124 = load ptr, ptr %123, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.22, i32 noundef %122) #9
  br label %150

125:                                              ; preds = %114, %106
  store i32 1, ptr %41, align 4
  %126 = load i8, ptr %12, align 4, !range !13
  %127 = icmp eq i8 %126, 0
  %128 = select i1 %127, i32 53, i32 21
  store i32 %128, ptr %24, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %129 = load ptr, ptr %54, align 4
  %130 = load i8, ptr %56, align 1
  %131 = zext i8 %130 to i32
  %132 = shl nuw i32 1, %131
  %133 = getelementptr i8, ptr %129, i32 %132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %128) #10, !srcloc !12
  %134 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.device, ptr %137, i32 0, i32 3
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %125
  %142 = load ptr, ptr %137, align 4
  br label %143

143:                                              ; preds = %141, %125
  %144 = phi ptr [ %142, %141 ], [ %139, %125 ]
  %145 = tail call i32 @request_threaded_irq(i32 noundef %135, ptr noundef nonnull @tegra_uart_isr, ptr noundef null, i32 noundef 0, ptr noundef %144, ptr noundef %0) #10
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %193

147:                                              ; preds = %143
  %148 = load ptr, ptr %136, align 4
  %149 = load i32, ptr %134, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.23, i32 noundef %149) #9
  br label %150

150:                                              ; preds = %147, %121
  %151 = phi i32 [ %122, %121 ], [ %145, %147 ]
  %152 = load i8, ptr %12, align 4, !range !13
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 16
  %156 = load ptr, ptr %155, align 4
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.dma_device, ptr %157, i32 0, i32 47
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %154
  %162 = tail call i32 %159(ptr noundef %156) #10
  %163 = load ptr, ptr %155, align 4
  br label %164

164:                                              ; preds = %161, %154
  %165 = phi ptr [ %156, %154 ], [ %163, %161 ]
  tail call void @dma_release_channel(ptr noundef %165) #10
  %166 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 20
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 18
  %171 = load i32, ptr %170, align 4
  tail call void @dma_free_attrs(ptr noundef %167, i32 noundef 4096, ptr noundef %169, i32 noundef %171, i32 noundef 0) #10
  store ptr null, ptr %155, align 4
  store i32 0, ptr %170, align 4
  store ptr null, ptr %168, align 4
  br label %172

172:                                              ; preds = %164, %150, %18
  %173 = phi i32 [ %151, %150 ], [ %151, %164 ], [ %16, %18 ]
  %174 = load i8, ptr %2, align 1, !range !13
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 17
  %178 = load ptr, ptr %177, align 4
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.dma_device, ptr %179, i32 0, i32 47
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %176
  %184 = tail call i32 %181(ptr noundef %178) #10
  %185 = load ptr, ptr %177, align 4
  br label %186

186:                                              ; preds = %183, %176
  %187 = phi ptr [ %178, %176 ], [ %185, %183 ]
  tail call void @dma_release_channel(ptr noundef %187) #10
  %188 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 19
  %191 = load i32, ptr %190, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %189, i32 noundef %191, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #10
  store ptr null, ptr %177, align 4
  store i32 0, ptr %190, align 4
  %192 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 21
  store ptr null, ptr %192, align 4
  br label %193

193:                                              ; preds = %186, %172, %143, %8
  %194 = phi i32 [ %6, %8 ], [ 0, %143 ], [ %173, %186 ], [ %173, %172 ]
  ret i32 %194
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_uart_shutdown(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 9999999
  %5 = udiv i32 %4, %3
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 1, %13
  %15 = getelementptr i8, ptr %10, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #10, !srcloc !12
  %16 = load ptr, ptr %9, align 4
  %17 = load i8, ptr %11, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 5, %18
  %20 = getelementptr i8, ptr %16, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %22 = and i32 %21, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %80

24:                                               ; preds = %1
  %25 = load ptr, ptr %9, align 4
  %26 = load i8, ptr %11, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 6, %27
  %29 = getelementptr i8, ptr %25, i32 %28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %31 = load ptr, ptr %9, align 4
  %32 = load i8, ptr %11, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 4, %33
  %35 = getelementptr i8, ptr %31, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %37 = and i32 %36, 32
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %30, 16
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %24
  %43 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.35) #9
  br label %45

45:                                               ; preds = %42, %24
  br label %46

46:                                               ; preds = %74, %45
  %47 = phi i32 [ %50, %74 ], [ %8, %45 ]
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 100) #10
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %49(i32 noundef %48) #10
  %50 = sub i32 %47, %48
  %51 = icmp eq i32 %50, 0
  %52 = load ptr, ptr %9, align 4
  %53 = load i8, ptr %11, align 1
  %54 = zext i8 %53 to i32
  br i1 %51, label %55, label %74

55:                                               ; preds = %46
  %56 = zext i8 %53 to i32
  %57 = shl i32 6, %56
  %58 = getelementptr i8, ptr %52, i32 %57
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %60 = load ptr, ptr %9, align 4
  %61 = load i8, ptr %11, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 4, %62
  %64 = getelementptr i8, ptr %60, i32 %63
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %66 = and i32 %65, 32
  %67 = icmp eq i32 %66, 0
  %68 = and i32 %59, 16
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %67, i1 true, i1 %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %73 = load ptr, ptr %72, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.36) #9
  br label %80

74:                                               ; preds = %46
  %75 = shl i32 5, %54
  %76 = getelementptr i8, ptr %52, i32 %75
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %78 = and i32 %77, 64
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %46, label %80

80:                                               ; preds = %74, %71, %55, %1
  %81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #10
  tail call fastcc void @tegra_uart_fifo_reset(ptr noundef %0, i8 noundef zeroext 6) #10
  store i32 0, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %81) #10
  %82 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 14
  store i32 0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 10
  store i32 0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 32
  %85 = load i8, ptr %84, align 4, !range !13
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 16
  %89 = load ptr, ptr %88, align 4
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.dma_device, ptr %90, i32 0, i32 47
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = tail call i32 %92(ptr noundef %89) #10
  %96 = load ptr, ptr %88, align 4
  br label %97

97:                                               ; preds = %94, %87
  %98 = phi ptr [ %89, %87 ], [ %96, %94 ]
  tail call void @dma_release_channel(ptr noundef %98) #10
  %99 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 20
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 18
  %104 = load i32, ptr %103, align 4
  tail call void @dma_free_attrs(ptr noundef %100, i32 noundef 4096, ptr noundef %102, i32 noundef %104, i32 noundef 0) #10
  store ptr null, ptr %88, align 4
  store i32 0, ptr %103, align 4
  store ptr null, ptr %101, align 4
  br label %105

105:                                              ; preds = %97, %80
  %106 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 33
  %107 = load i8, ptr %106, align 1, !range !13
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 17
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.dma_device, ptr %112, i32 0, i32 47
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %109
  %117 = tail call i32 %114(ptr noundef %111) #10
  %118 = load ptr, ptr %110, align 4
  br label %119

119:                                              ; preds = %116, %109
  %120 = phi ptr [ %111, %109 ], [ %118, %116 ]
  tail call void @dma_release_channel(ptr noundef %120) #10
  %121 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 19
  %124 = load i32, ptr %123, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %122, i32 noundef %124, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #10
  store ptr null, ptr %110, align 4
  store i32 0, ptr %123, align 4
  %125 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 21
  store ptr null, ptr %125, align 4
  br label %126

126:                                              ; preds = %119, %105
  %127 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  tail call void @clk_disable(ptr noundef %128) #10
  tail call void @clk_unprepare(ptr noundef %128) #10
  %129 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %130 = load i32, ptr %129, align 4
  %131 = tail call ptr @free_irq(i32 noundef %130, ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_uart_flush_buffer(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 11
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 %9(ptr noundef nonnull %4) #10
  br label %13

13:                                               ; preds = %11, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_uart_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @clk_get_parent(ptr noundef %5) #10
  %7 = tail call i32 @clk_get_rate(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %9, i32 0, i32 2
  %11 = load i8, ptr %10, align 2, !range !13
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 1048560, i32 524272
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #10
  %15 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 9
  %16 = load i8, ptr %15, align 4, !range !13
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, -65
  %22 = icmp eq i32 %21, %20
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 4, %28
  %30 = getelementptr i8, ptr %25, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %21) #10, !srcloc !12
  store i32 %21, ptr %19, align 4
  br label %31

31:                                               ; preds = %23, %18, %3
  %32 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %35 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw i32 1, %39
  %41 = getelementptr i8, ptr %36, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %34) #10, !srcloc !12
  %42 = load ptr, ptr %35, align 4
  %43 = load i8, ptr %37, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw i32 1, %44
  %46 = getelementptr i8, ptr %42, i32 %45
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %48 = load ptr, ptr %35, align 4
  %49 = load i8, ptr %37, align 1
  %50 = zext i8 %49 to i32
  %51 = shl nuw i32 1, %50
  %52 = getelementptr i8, ptr %48, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #10, !srcloc !12
  %53 = load ptr, ptr %35, align 4
  %54 = load i8, ptr %37, align 1
  %55 = zext i8 %54 to i32
  %56 = shl nuw i32 1, %55
  %57 = getelementptr i8, ptr %53, i32 %56
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %59 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, -9
  %62 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, -1073741825
  store i32 %64, ptr %62, align 4
  %65 = and i32 %63, 256
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %31
  %68 = and i32 %63, 512
  %69 = icmp eq i32 %68, 0
  %70 = and i32 %60, -57
  br i1 %69, label %73, label %71

71:                                               ; preds = %67
  %72 = or i32 %70, 8
  br label %75

73:                                               ; preds = %67
  %74 = or i32 %70, 24
  br label %75

75:                                               ; preds = %73, %71, %31
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ], [ %61, %31 ]
  %77 = phi i32 [ 2, %71 ], [ 2, %73 ], [ 1, %31 ]
  %78 = and i32 %76, -4
  %79 = and i32 %63, 48
  switch i32 %79, label %88 [
    i32 0, label %80
    i32 16, label %82
    i32 32, label %85
  ]

80:                                               ; preds = %75
  %81 = add nuw nsw i32 %77, 5
  br label %91

82:                                               ; preds = %75
  %83 = or i32 %78, 1
  %84 = add nuw nsw i32 %77, 6
  br label %91

85:                                               ; preds = %75
  %86 = or i32 %78, 2
  %87 = add nuw nsw i32 %77, 7
  br label %91

88:                                               ; preds = %75
  %89 = or i32 %76, 3
  %90 = or i32 %77, 8
  br label %91

91:                                               ; preds = %88, %85, %82, %80
  %92 = phi i32 [ %89, %88 ], [ %86, %85 ], [ %83, %82 ], [ %78, %80 ]
  %93 = phi i32 [ %90, %88 ], [ %87, %85 ], [ %84, %82 ], [ %81, %80 ]
  %94 = and i32 %63, 64
  %95 = icmp eq i32 %94, 0
  %96 = and i32 %92, -5
  %97 = lshr exact i32 %94, 4
  %98 = or i32 %96, %97
  %99 = select i1 %95, i32 1, i32 2
  %100 = add nsw i32 %93, %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %101 = load ptr, ptr %35, align 4
  %102 = load i8, ptr %37, align 1
  %103 = zext i8 %102 to i32
  %104 = shl i32 3, %103
  %105 = getelementptr i8, ptr %101, i32 %104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %98) #10, !srcloc !12
  store i32 %98, ptr %59, align 4
  %106 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 15
  store i32 %100, ptr %106, align 4
  %107 = udiv i32 %7, %13
  %108 = lshr i32 %7, 4
  %109 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %107, i32 noundef %108) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %14) #10
  %110 = tail call fastcc i32 @tegra_set_baudrate(ptr noundef %0, i32 noundef %109)
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %91
  %113 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %114 = load ptr, ptr %113, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.31) #9
  br label %182

115:                                              ; preds = %91
  %116 = tail call i32 @tty_termios_baud_rate(ptr noundef %1) #10
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  tail call void @tty_termios_encode_baud_rate(ptr noundef %1, i32 noundef %109, i32 noundef %109) #10
  br label %119

119:                                              ; preds = %118, %115
  %120 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #10
  %121 = load i32, ptr %62, align 4
  %122 = icmp sgt i32 %121, -1
  %123 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 6
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, -97
  br i1 %122, label %145, label %126

126:                                              ; preds = %119
  %127 = or i32 %125, 32
  store i32 %127, ptr %123, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %128 = load ptr, ptr %35, align 4
  %129 = load i8, ptr %37, align 1
  %130 = zext i8 %129 to i32
  %131 = shl i32 4, %130
  %132 = getelementptr i8, ptr %128, i32 %131
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %127) #10, !srcloc !12
  %133 = load i8, ptr %15, align 4, !range !13
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %151, label %135

135:                                              ; preds = %126
  %136 = load i32, ptr %123, align 4
  %137 = or i32 %136, 64
  %138 = icmp eq i32 %137, %136
  br i1 %138, label %151, label %139

139:                                              ; preds = %135
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %140 = load ptr, ptr %35, align 4
  %141 = load i8, ptr %37, align 1
  %142 = zext i8 %141 to i32
  %143 = shl i32 4, %142
  %144 = getelementptr i8, ptr %140, i32 %143
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %137) #10, !srcloc !12
  store i32 %137, ptr %123, align 4
  br label %151

145:                                              ; preds = %119
  store i32 %125, ptr %123, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %146 = load ptr, ptr %35, align 4
  %147 = load i8, ptr %37, align 1
  %148 = zext i8 %147 to i32
  %149 = shl i32 4, %148
  %150 = getelementptr i8, ptr %146, i32 %149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %125) #10, !srcloc !12
  br label %151

151:                                              ; preds = %145, %139, %135, %126
  %152 = load i32, ptr %62, align 4
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %152, i32 noundef %109) #10
  %153 = load ptr, ptr %35, align 4
  %154 = load i8, ptr %37, align 1
  %155 = zext i8 %154 to i32
  %156 = shl nuw i32 1, %155
  %157 = getelementptr i8, ptr %153, i32 %156
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %159 = load i32, ptr %32, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %160 = load ptr, ptr %35, align 4
  %161 = load i8, ptr %37, align 1
  %162 = zext i8 %161 to i32
  %163 = shl nuw i32 1, %162
  %164 = getelementptr i8, ptr %160, i32 %163
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %159) #10, !srcloc !12
  %165 = load ptr, ptr %35, align 4
  %166 = load i8, ptr %37, align 1
  %167 = zext i8 %166 to i32
  %168 = shl nuw i32 1, %167
  %169 = getelementptr i8, ptr %165, i32 %168
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %171 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 0, ptr %171, align 4
  %172 = load i32, ptr %62, align 4
  %173 = lshr i32 %172, 7
  %174 = and i32 %173, 1
  %175 = xor i32 %174, 1
  store i32 %175, ptr %171, align 4
  %176 = load i32, ptr %1, align 4
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %151
  %180 = or i32 %175, 16
  store i32 %180, ptr %171, align 4
  br label %181

181:                                              ; preds = %179, %151
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %120) #10
  br label %182

182:                                              ; preds = %181, %112
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @tegra_uart_type(ptr nocapture noundef readnone %0) #6 {
  ret ptr @.str.37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @tegra_uart_release_port(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra_uart_request_port(ptr nocapture noundef readnone %0) #6 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_uart_start_next_tx(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.scatterlist, align 4
  %3 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %104, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_state, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uart_state, ptr %8, i32 0, i32 2, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = ptrtoint ptr %13 to i32
  %15 = sub i32 4096, %12
  %16 = getelementptr inbounds %struct.uart_state, ptr %8, i32 0, i32 2, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %15
  %19 = and i32 %18, 4095
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 %15)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %104, label %22

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 33
  %24 = load i8, ptr %23, align 1, !range !13
  %25 = icmp ne i8 %24, 0
  %26 = icmp ult i32 %20, 16
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = tail call i32 @llvm.umin.i32(i32 %20, i32 16) #10
  %30 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 10
  store i32 1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 11
  store i32 %29, ptr %31, align 4
  %32 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, 2
  store i32 %34, ptr %32, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %35 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw i32 1, %39
  %41 = getelementptr i8, ptr %36, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %34) #10, !srcloc !12
  br label %104

42:                                               ; preds = %22
  %43 = and i32 %14, 3
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 10
  store i32 1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 11
  store i32 %43, ptr %47, align 4
  %48 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, 2
  store i32 %50, ptr %48, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %51 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl nuw i32 1, %55
  %57 = getelementptr i8, ptr %52, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %50) #10, !srcloc !12
  br label %104

58:                                               ; preds = %42
  %59 = and i32 %20, -16
  %60 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 11
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 19
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %11, align 4
  %64 = add i32 %63, %62
  %65 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %66 = load ptr, ptr %65, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %66, i32 noundef %64, i32 noundef %59, i32 noundef 1) #10
  %67 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 17
  %68 = load ptr, ptr %67, align 4
  %69 = load i32, ptr %60, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #10, !annotation !8
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #10
  %70 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %64, ptr %70, align 4
  %71 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 %69, ptr %71, align 4
  %72 = icmp eq ptr %68, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %58
  %74 = load ptr, ptr %68, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.dma_device, ptr %74, i32 0, i32 39
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %76, %73, %58
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  %81 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 22
  store ptr null, ptr %81, align 4
  br label %86

82:                                               ; preds = %76
  %83 = call ptr %78(ptr noundef nonnull %68, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  %84 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 22
  store ptr %83, ptr %84, align 4
  %85 = icmp eq ptr %83, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %80
  %87 = load ptr, ptr %65, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.17) #9
  br label %104

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %83, i32 0, i32 6
  store ptr @tegra_uart_tx_dma_complete, ptr %89, align 4
  %90 = load ptr, ptr %84, align 4
  %91 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %90, i32 0, i32 8
  store ptr %0, ptr %91, align 4
  %92 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 10
  store i32 2, ptr %92, align 4
  %93 = load i32, ptr %60, align 4
  %94 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 26
  store i32 %93, ptr %94, align 4
  %95 = load ptr, ptr %84, align 4
  %96 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %95, i32 0, i32 4
  %97 = load ptr, ptr %96, align 4
  %98 = call i32 %97(ptr noundef %95) #10
  %99 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 24
  store i32 %98, ptr %99, align 4
  %100 = load ptr, ptr %67, align 4
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.dma_device, ptr %101, i32 0, i32 50
  %103 = load ptr, ptr %102, align 4
  call void %103(ptr noundef %100) #10
  br label %104

104:                                              ; preds = %88, %86, %45, %28, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_uart_tx_dma_complete(ptr noundef %0) #3 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 49
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 %11(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %2) #10
  %13 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 26
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 22
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 2
  store i32 %22, ptr %20, align 4
  %23 = call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #10
  %24 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %17, %25
  %27 = and i32 %26, 4095
  store i32 %27, ptr %24, align 4
  %28 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 10
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %24, align 4
  %32 = sub i32 %30, %31
  %33 = and i32 %32, 3840
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  call void @uart_write_wakeup(ptr noundef %0) #10
  br label %36

36:                                               ; preds = %35, %1
  call fastcc void @tegra_uart_start_next_tx(ptr noundef %0)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %23) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_uart_terminate_rx_dma(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.dma_tx_state, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 34
  %4 = load i8, ptr %3, align 2, !range !13
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @tty_port_tty_get(ptr noundef %8) #10
  %10 = load ptr, ptr %7, align 4
  tail call fastcc void @tegra_uart_handle_rx_pio(ptr noundef %0, ptr noundef %10) #10
  %11 = icmp eq ptr %9, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %6
  tail call void @tty_flip_buffer_push(ptr noundef %10) #10
  tail call void @tty_kref_put(ptr noundef nonnull %9) #10
  br label %34

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 47
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = tail call i32 %18(ptr noundef %15) #10
  %22 = load ptr, ptr %14, align 4
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi ptr [ %16, %13 ], [ %23, %20 ]
  %26 = phi ptr [ %15, %13 ], [ %22, %20 ]
  %27 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 25
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 49
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %26, i32 noundef %28, ptr noundef nonnull %2) #10
  %32 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  call fastcc void @tegra_uart_rx_buffer_push(ptr noundef %0, i32 noundef %33)
  store i8 0, ptr %3, align 2
  br label %34

34:                                               ; preds = %24, %12, %6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_uart_handle_rx_pio(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %3, align 4
  %6 = load i8, ptr %4, align 1
  %7 = zext i8 %6 to i32
  %8 = shl i32 5, %7
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %111, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 7
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 8
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 6
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 9
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  %21 = getelementptr inbounds %struct.tty_bufhead, ptr %1, i32 0, i32 8
  br label %22

22:                                               ; preds = %102, %13
  %23 = phi i32 [ %10, %13 ], [ %108, %102 ]
  %24 = and i32 %23, 30
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %52, label %26, !prof !14

26:                                               ; preds = %22
  %27 = and i32 %23, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = and i32 %23, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = and i32 %23, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = and i32 %23, 16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void @uart_insert_char(ptr noundef %0, i32 noundef %23, i32 noundef 2, i32 noundef 0, i32 noundef 0) #10
  br label %52

39:                                               ; preds = %35
  %40 = and i32 %23, 129
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call fastcc void @tegra_uart_fifo_reset(ptr noundef %0, i8 noundef zeroext 2) #10
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, ptr %17, align 4
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %102

47:                                               ; preds = %43, %32, %29, %26
  %48 = phi ptr [ %14, %26 ], [ %15, %29 ], [ %16, %32 ], [ %18, %43 ]
  %49 = phi i32 [ 4, %26 ], [ 3, %29 ], [ 2, %32 ], [ 1, %43 ]
  %50 = load i32, ptr %48, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %48, align 4
  tail call void @uart_insert_char(ptr noundef %0, i32 noundef %23, i32 noundef 2, i32 noundef 0, i32 noundef %49) #10
  br label %102

52:                                               ; preds = %38, %22
  %53 = load ptr, ptr %3, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %55 = trunc i32 %54 to i8
  %56 = load i32, ptr %19, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %19, align 4
  %58 = and i32 %54, 255
  %59 = load i32, ptr %20, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %52
  %62 = icmp eq i32 %58, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %61
  %64 = load volatile i32, ptr @jiffies, align 64
  %65 = sub i32 %64, %59
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = tail call i32 @sysrq_mask() #10
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %0, i32 noundef %58) #10
  br i1 %71, label %102, label %72

72:                                               ; preds = %70, %63, %61
  store i32 0, ptr %20, align 4
  br label %74

73:                                               ; preds = %67
  tail call void @handle_sysrq(i32 noundef %58) #10
  store i32 0, ptr %20, align 4
  br label %102

74:                                               ; preds = %72, %52
  %75 = load i32, ptr %17, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %74
  %79 = load ptr, ptr %21, align 4
  %80 = getelementptr inbounds %struct.tty_buffer, ptr %79, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.tty_buffer, ptr %79, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.tty_buffer, ptr %79, i32 0, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.tty_buffer, ptr %79, i32 0, i32 6
  %92 = getelementptr i8, ptr %91, i32 %81
  %93 = getelementptr i8, ptr %92, i32 %83
  store i8 0, ptr %93, align 1
  %94 = load i32, ptr %80, align 4
  br label %95

95:                                               ; preds = %90, %85
  %96 = phi i32 [ %94, %90 ], [ %81, %85 ]
  %97 = add i32 %96, 1
  store i32 %97, ptr %80, align 4
  %98 = getelementptr inbounds %struct.tty_buffer, ptr %79, i32 0, i32 6
  %99 = getelementptr i8, ptr %98, i32 %96
  store i8 %55, ptr %99, align 1
  br label %102

100:                                              ; preds = %78
  %101 = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext %55, i8 noundef zeroext 0) #10
  br label %102

102:                                              ; preds = %100, %95, %74, %73, %70, %47, %43
  %103 = load ptr, ptr %3, align 4
  %104 = load i8, ptr %4, align 1
  %105 = zext i8 %104 to i32
  %106 = shl i32 5, %105
  %107 = getelementptr i8, ptr %103, i32 %106
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %22

111:                                              ; preds = %102, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_uart_rx_buffer_push(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 2
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 27
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %11, %1
  %13 = icmp eq i32 %11, %1
  br i1 %13, label %36, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %12
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 18
  %26 = load i32, ptr %25, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %24, i32 noundef %26, i32 noundef %12, i32 noundef 2) #10
  %27 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 20
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %4, ptr noundef %28, i8 noundef zeroext 0, i32 noundef %12) #10
  %30 = icmp eq i32 %29, %12
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 691, i32 noundef 9, ptr noundef null) #10
  %32 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.19) #9
  br label %33

33:                                               ; preds = %31, %22
  %34 = load ptr, ptr %23, align 4
  %35 = load i32, ptr %25, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %34, i32 noundef %35, i32 noundef %12, i32 noundef 1) #10
  br label %36

36:                                               ; preds = %33, %14, %2
  %37 = load ptr, ptr %3, align 4
  %38 = tail call ptr @tty_port_tty_get(ptr noundef %37) #10
  %39 = load ptr, ptr %3, align 4
  tail call fastcc void @tegra_uart_handle_rx_pio(ptr noundef %0, ptr noundef %39) #10
  %40 = icmp eq ptr %38, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void @tty_flip_buffer_push(ptr noundef %39) #10
  tail call void @tty_kref_put(ptr noundef nonnull %38) #10
  br label %42

42:                                               ; preds = %41, %36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_uart_fifo_reset(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 9
  %6 = load i8, ptr %5, align 4, !range !13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -65
  %12 = icmp eq i32 %11, %10
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 4, %18
  %20 = getelementptr i8, ptr %15, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %11) #10, !srcloc !12
  store i32 %11, ptr %9, align 4
  br label %21

21:                                               ; preds = %13, %8, %2
  %22 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %23, i32 0, i32 1
  %25 = load i8, ptr %24, align 1, !range !13
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %21
  %28 = and i8 %1, 6
  %29 = zext i8 %28 to i32
  %30 = or i32 %4, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %31 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 2, %35
  %37 = getelementptr i8, ptr %32, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %30) #10, !srcloc !12
  br label %80

38:                                               ; preds = %21
  %39 = and i32 %4, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 2, %44
  %46 = getelementptr i8, ptr %41, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %39) #10, !srcloc !12
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 12884880) #10
  %48 = and i8 %1, 6
  %49 = zext i8 %48 to i32
  %50 = or i32 %39, %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %51 = load ptr, ptr %40, align 4
  %52 = load i8, ptr %42, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 2, %53
  %55 = getelementptr i8, ptr %51, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %50) #10, !srcloc !12
  %56 = or i32 %50, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %57 = load ptr, ptr %40, align 4
  %58 = load i8, ptr %42, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 2, %59
  %61 = getelementptr i8, ptr %57, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %56) #10, !srcloc !12
  %62 = load ptr, ptr %22, align 4
  %63 = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %62, i32 0, i32 3
  %64 = load i8, ptr %63, align 1, !range !13
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %76, %38
  %67 = phi i32 [ %78, %76 ], [ 100, %38 ]
  %68 = load ptr, ptr %40, align 4
  %69 = load i8, ptr %42, align 1
  %70 = zext i8 %69 to i32
  %71 = shl i32 2, %70
  %72 = getelementptr i8, ptr %68, i32 %71
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %74 = and i32 %73, 64
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748) #10
  %78 = add nsw i32 %67, -1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %66

80:                                               ; preds = %76, %66, %38, %27
  %81 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 7, %85
  %87 = getelementptr i8, ptr %82, i32 %86
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %89 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %80
  %93 = shl i32 %90, 4
  %94 = add i32 %93, 31999999
  %95 = udiv i32 %94, %93
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %96(i32 noundef %95) #10
  br label %97

97:                                               ; preds = %92, %80
  br label %98

98:                                               ; preds = %108, %97
  %99 = phi i32 [ %110, %108 ], [ 10000, %97 ]
  %100 = load ptr, ptr %81, align 4
  %101 = load i8, ptr %83, align 1
  %102 = zext i8 %101 to i32
  %103 = shl i32 5, %102
  %104 = getelementptr i8, ptr %100, i32 %103
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %106 = and i32 %105, 65
  %107 = icmp eq i32 %106, 64
  br i1 %107, label %112, label %108

108:                                              ; preds = %98
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 214748) #10
  %110 = add nsw i32 %99, -1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %98

112:                                              ; preds = %108, %98
  %113 = load i8, ptr %5, align 4, !range !13
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = or i32 %117, 64
  %119 = icmp eq i32 %118, %117
  br i1 %119, label %126, label %120

120:                                              ; preds = %115
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %121 = load ptr, ptr %81, align 4
  %122 = load i8, ptr %83, align 1
  %123 = zext i8 %122 to i32
  %124 = shl i32 4, %123
  %125 = getelementptr i8, ptr %121, i32 %124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %118) #10, !srcloc !12
  store i32 %118, ptr %116, align 4
  br label %126

126:                                              ; preds = %120, %115, %112
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_uart_dma_channel_allocate(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #3 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_slave_config, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 48, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %6 = load ptr, ptr %5, align 4
  %7 = select i1 %1, ptr @.str.12, ptr @.str.14
  %8 = tail call ptr @dma_request_chan(ptr noundef %6, ptr noundef nonnull %7) #10
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = ptrtoint ptr %8 to i32
  %12 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.24, i32 noundef %11) #9
  br label %88

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 4
  br i1 %1, label %15, label %35

15:                                               ; preds = %13
  %16 = call ptr @dma_alloc_attrs(ptr noundef %14, i32 noundef 4096, ptr noundef nonnull %3, i32 noundef 3264, i32 noundef 0) #10
  %17 = icmp eq ptr %16, null
  %18 = load ptr, ptr %5, align 4
  br i1 %17, label %19, label %20

19:                                               ; preds = %15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.25) #9
  call void @dma_release_channel(ptr noundef %8) #10
  br label %88

20:                                               ; preds = %15
  %21 = load i32, ptr %3, align 4
  call void @dma_sync_single_for_device(ptr noundef %18, i32 noundef %21, i32 noundef 4096, i32 noundef 1) #10
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 3
  store i32 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %27, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 16
  store ptr %8, ptr %31, align 4
  %32 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 20
  store ptr %16, ptr %32, align 4
  %33 = load i32, ptr %3, align 4
  %34 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 18
  store i32 %33, ptr %34, align 4
  br label %77

35:                                               ; preds = %13
  %36 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.uart_state, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %39) #10
  %41 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %53, !prof !15

44:                                               ; preds = %35
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %45 = tail call ptr @dev_driver_string(ptr noundef %14) #10
  %46 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load ptr, ptr %14, align 4
  br label %51

51:                                               ; preds = %49, %44
  %52 = phi ptr [ %50, %49 ], [ %47, %44 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef %45, ptr noundef %52) #10
  br label %53

53:                                               ; preds = %51, %35
  br i1 %40, label %63, label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr @mem_map, align 4
  %56 = ptrtoint ptr %39 to i32
  %57 = add i32 %56, 1073741824
  %58 = lshr i32 %57, 12
  %59 = getelementptr %struct.page, ptr %55, i32 %58
  %60 = and i32 %56, 4095
  %61 = tail call i32 @dma_map_page_attrs(ptr noundef %14, ptr noundef %59, i32 noundef %60, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #10
  store i32 %61, ptr %3, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %65

63:                                               ; preds = %54, %53
  %64 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.26) #9
  tail call void @dma_release_channel(ptr noundef %8) #10
  br label %88

65:                                               ; preds = %54
  %66 = load ptr, ptr %36, align 4
  %67 = getelementptr inbounds %struct.uart_state, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 2
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  store i32 1, ptr %72, align 4
  %73 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 6
  store i32 16, ptr %73, align 4
  %74 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 17
  store ptr %8, ptr %74, align 4
  %75 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 21
  store ptr %68, ptr %75, align 4
  %76 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 19
  store i32 %61, ptr %76, align 4
  br label %77

77:                                               ; preds = %65, %20
  %78 = load ptr, ptr %8, align 4
  %79 = getelementptr inbounds %struct.dma_device, ptr %78, i32 0, i32 44
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = call i32 %80(ptr noundef %8, ptr noundef nonnull %4) #10
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82, %77
  %86 = phi i32 [ %83, %82 ], [ -38, %77 ]
  %87 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.27, i32 noundef %86) #9
  call fastcc void @tegra_uart_dma_channel_free(ptr noundef %0, i1 noundef zeroext %1)
  br label %88

88:                                               ; preds = %85, %82, %63, %19, %10
  %89 = phi i32 [ %11, %10 ], [ %86, %85 ], [ -12, %19 ], [ -12, %63 ], [ 0, %82 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_uart_isr(i32 noundef %0, ptr noundef %1) #3 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %4 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 25
  %6 = load ptr, ptr %4, align 4
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i32
  %9 = shl i32 2, %8
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %80

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 7
  %16 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 8
  %17 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 6
  %18 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 29
  %19 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 9
  %20 = getelementptr inbounds %struct.tegra_uart_port, ptr %1, i32 0, i32 32
  %21 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %22 = getelementptr inbounds %struct.tegra_uart_port, ptr %1, i32 0, i32 14
  %23 = getelementptr inbounds %struct.tegra_uart_port, ptr %1, i32 0, i32 8
  %24 = getelementptr inbounds %struct.tegra_uart_port, ptr %1, i32 0, i32 11
  %25 = getelementptr inbounds %struct.tegra_uart_port, ptr %1, i32 0, i32 1
  %26 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 5
  %27 = getelementptr inbounds %struct.tegra_uart_port, ptr %1, i32 0, i32 10
  %28 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 2
  %29 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 1
  br label %81

30:                                               ; preds = %247
  %31 = getelementptr inbounds %struct.tegra_uart_port, ptr %1, i32 0, i32 32
  %32 = load i8, ptr %31, align 4, !range !13
  %33 = icmp ne i8 %32, 0
  %34 = xor i1 %249, true
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %78, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.tegra_uart_port, ptr %1, i32 0, i32 9
  %38 = load i8, ptr %37, align 4, !range !13
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tegra_uart_port, ptr %1, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, -65
  %44 = icmp eq i32 %43, %42
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %46 = load ptr, ptr %4, align 4
  %47 = load i8, ptr %5, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 4, %48
  %50 = getelementptr i8, ptr %46, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %43) #10, !srcloc !12
  store i32 %43, ptr %41, align 4
  br label %51

51:                                               ; preds = %45, %40, %36
  tail call fastcc void @tegra_uart_terminate_rx_dma(ptr noundef %1) #10
  %52 = load i8, ptr %37, align 4, !range !13
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.tegra_uart_port, ptr %1, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %56, 64
  %58 = icmp eq i32 %57, %56
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %60 = load ptr, ptr %4, align 4
  %61 = load i8, ptr %5, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 4, %62
  %64 = getelementptr i8, ptr %60, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %57) #10, !srcloc !12
  store i32 %57, ptr %55, align 4
  br label %65

65:                                               ; preds = %59, %54, %51
  %66 = getelementptr inbounds %struct.tegra_uart_port, ptr %1, i32 0, i32 14
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.tegra_uart_port, ptr %1, i32 0, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = or i32 %71, 53
  store i32 %72, ptr %70, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %73 = load ptr, ptr %4, align 4
  %74 = load i8, ptr %5, align 1
  %75 = zext i8 %74 to i32
  %76 = shl nuw i32 1, %75
  %77 = getelementptr i8, ptr %73, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %72) #10, !srcloc !12
  br label %80

78:                                               ; preds = %30
  br i1 %248, label %79, label %80

79:                                               ; preds = %78
  tail call fastcc void @tegra_uart_start_rx_dma(ptr noundef %1)
  br label %80

80:                                               ; preds = %79, %78, %69, %65, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %3) #10
  ret i32 1

81:                                               ; preds = %247, %14
  %82 = phi i32 [ %11, %14 ], [ %255, %247 ]
  %83 = phi i1 [ false, %14 ], [ %249, %247 ]
  %84 = phi i1 [ false, %14 ], [ %248, %247 ]
  %85 = lshr i32 %82, 1
  %86 = and i32 %85, 7
  switch i32 %86, label %246 [
    i32 0, label %87
    i32 1, label %118
    i32 4, label %178
    i32 6, label %178
    i32 2, label %191
    i32 3, label %210
    i32 5, label %247
    i32 7, label %247
  ]

87:                                               ; preds = %81
  %88 = load ptr, ptr %4, align 4
  %89 = load i8, ptr %5, align 1
  %90 = zext i8 %89 to i32
  %91 = shl i32 6, %90
  %92 = getelementptr i8, ptr %88, i32 %91
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %94 = and i32 %93, 15
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %247, label %96

96:                                               ; preds = %87
  %97 = and i32 %93, 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, ptr %28, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %28, align 4
  br label %102

102:                                              ; preds = %99, %96
  %103 = and i32 %93, 2
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %29, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %29, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = and i32 %93, 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = and i32 %93, 128
  tail call void @uart_handle_dcd_change(ptr noundef %1, i32 noundef %112) #10
  br label %113

113:                                              ; preds = %111, %108
  %114 = and i32 %93, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %247, label %116

116:                                              ; preds = %113
  %117 = and i32 %93, 16
  tail call void @uart_handle_cts_change(ptr noundef %1, i32 noundef %117) #10
  br label %247

118:                                              ; preds = %81
  %119 = load i32, ptr %23, align 4
  %120 = and i32 %119, -3
  store i32 %120, ptr %23, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %121 = load ptr, ptr %4, align 4
  %122 = load i8, ptr %5, align 1
  %123 = zext i8 %122 to i32
  %124 = shl nuw i32 1, %123
  %125 = getelementptr i8, ptr %121, i32 %124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %120) #10, !srcloc !12
  %126 = load ptr, ptr %21, align 4
  %127 = load i32, ptr %24, align 4
  %128 = getelementptr inbounds %struct.uart_state, ptr %126, i32 0, i32 2
  %129 = icmp sgt i32 %127, 0
  br i1 %129, label %130, label %168

130:                                              ; preds = %118
  %131 = getelementptr inbounds %struct.uart_state, ptr %126, i32 0, i32 2, i32 1
  %132 = getelementptr inbounds %struct.uart_state, ptr %126, i32 0, i32 2, i32 2
  br label %133

133:                                              ; preds = %154, %130
  %134 = phi i32 [ 0, %130 ], [ %166, %154 ]
  %135 = load i32, ptr %131, align 4
  %136 = load i32, ptr %132, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139, !prof !15

138:                                              ; preds = %133
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/serial-tegra.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 492, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

139:                                              ; preds = %133
  %140 = load ptr, ptr %25, align 4
  %141 = load i8, ptr %140, align 4, !range !13
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %139
  %144 = load ptr, ptr %4, align 4
  %145 = load i8, ptr %5, align 1
  %146 = zext i8 %145 to i32
  %147 = shl i32 5, %146
  %148 = getelementptr i8, ptr %144, i32 %147
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %150 = and i32 %149, 256
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %143
  %153 = load i32, ptr %132, align 4
  br label %154

154:                                              ; preds = %152, %139
  %155 = phi i32 [ %153, %152 ], [ %136, %139 ]
  %156 = load ptr, ptr %128, align 4
  %157 = getelementptr i8, ptr %156, i32 %155
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %160 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %159) #10, !srcloc !12
  %161 = load i32, ptr %132, align 4
  %162 = add i32 %161, 1
  %163 = and i32 %162, 4095
  store i32 %163, ptr %132, align 4
  %164 = load i32, ptr %26, align 4
  %165 = add i32 %164, 1
  store i32 %165, ptr %26, align 4
  %166 = add nuw nsw i32 %134, 1
  %167 = icmp eq i32 %166, %127
  br i1 %167, label %168, label %133

168:                                              ; preds = %154, %143, %118
  store i32 0, ptr %27, align 4
  %169 = getelementptr inbounds %struct.uart_state, ptr %126, i32 0, i32 2, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr inbounds %struct.uart_state, ptr %126, i32 0, i32 2, i32 2
  %172 = load i32, ptr %171, align 4
  %173 = sub i32 %170, %172
  %174 = and i32 %173, 3840
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  tail call void @uart_write_wakeup(ptr noundef %1) #10
  br label %177

177:                                              ; preds = %176, %168
  tail call fastcc void @tegra_uart_start_next_tx(ptr noundef %1) #10
  br label %247

178:                                              ; preds = %81, %81
  %179 = load i8, ptr %20, align 4, !range !13
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %204

181:                                              ; preds = %178
  %182 = load i32, ptr %22, align 4
  %183 = icmp ne i32 %182, 0
  %184 = load i32, ptr %23, align 4
  %185 = and i32 %184, -54
  store i32 %185, ptr %23, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %186 = load ptr, ptr %4, align 4
  %187 = load i8, ptr %5, align 1
  %188 = zext i8 %187 to i32
  %189 = shl nuw i32 1, %188
  %190 = getelementptr i8, ptr %186, i32 %189
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %185) #10, !srcloc !12
  br label %247

191:                                              ; preds = %81
  %192 = load i8, ptr %20, align 4, !range !13
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %191
  %195 = load i32, ptr %22, align 4
  %196 = icmp ne i32 %195, 0
  %197 = load i32, ptr %23, align 4
  %198 = and i32 %197, -2
  store i32 %198, ptr %23, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %199 = load ptr, ptr %4, align 4
  %200 = load i8, ptr %5, align 1
  %201 = zext i8 %200 to i32
  %202 = shl nuw i32 1, %201
  %203 = getelementptr i8, ptr %199, i32 %202
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %198) #10, !srcloc !12
  br label %247

204:                                              ; preds = %191, %178
  %205 = load ptr, ptr %21, align 4
  %206 = tail call ptr @tty_port_tty_get(ptr noundef %205) #10
  %207 = load ptr, ptr %21, align 4
  tail call fastcc void @tegra_uart_handle_rx_pio(ptr noundef %1, ptr noundef %207) #10
  %208 = icmp eq ptr %206, null
  br i1 %208, label %247, label %209

209:                                              ; preds = %204
  tail call void @tty_flip_buffer_push(ptr noundef %207) #10
  tail call void @tty_kref_put(ptr noundef nonnull %206) #10
  br label %247

210:                                              ; preds = %81
  %211 = load ptr, ptr %4, align 4
  %212 = load i8, ptr %5, align 1
  %213 = zext i8 %212 to i32
  %214 = shl i32 5, %213
  %215 = getelementptr i8, ptr %211, i32 %214
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %215) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %217 = and i32 %216, 30
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %247, label %219, !prof !14

219:                                              ; preds = %210
  %220 = and i32 %216, 2
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %239

222:                                              ; preds = %219
  %223 = and i32 %216, 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %239

225:                                              ; preds = %222
  %226 = and i32 %216, 8
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %239

228:                                              ; preds = %225
  %229 = and i32 %216, 16
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %244, label %231

231:                                              ; preds = %228
  %232 = and i32 %216, 129
  %233 = icmp eq i32 %232, 128
  br i1 %233, label %234, label %235

234:                                              ; preds = %231
  tail call fastcc void @tegra_uart_fifo_reset(ptr noundef %1, i8 noundef zeroext 2) #10
  br label %235

235:                                              ; preds = %234, %231
  %236 = load i32, ptr %18, align 4
  %237 = and i32 %236, 16
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %235, %225, %222, %219
  %240 = phi ptr [ %15, %219 ], [ %16, %222 ], [ %17, %225 ], [ %19, %235 ]
  %241 = phi i32 [ 4, %219 ], [ 3, %222 ], [ 2, %225 ], [ 1, %235 ]
  %242 = load i32, ptr %240, align 4
  %243 = add i32 %242, 1
  store i32 %243, ptr %240, align 4
  br label %244

244:                                              ; preds = %239, %228
  %245 = phi i32 [ 0, %228 ], [ %241, %239 ]
  tail call void @uart_insert_char(ptr noundef %1, i32 noundef %216, i32 noundef 2, i32 noundef 0, i32 noundef %245) #10
  br label %247

246:                                              ; preds = %81
  unreachable

247:                                              ; preds = %244, %235, %210, %209, %204, %194, %181, %177, %116, %113, %87, %81, %81
  %248 = phi i1 [ %84, %81 ], [ %84, %81 ], [ %196, %194 ], [ %84, %181 ], [ %84, %177 ], [ %84, %87 ], [ %84, %113 ], [ %84, %116 ], [ %84, %204 ], [ %84, %209 ], [ %84, %210 ], [ %84, %235 ], [ %84, %244 ]
  %249 = phi i1 [ %83, %81 ], [ %83, %81 ], [ %83, %194 ], [ %183, %181 ], [ %83, %177 ], [ %83, %87 ], [ %83, %113 ], [ %83, %116 ], [ %83, %204 ], [ %83, %209 ], [ %83, %210 ], [ %83, %235 ], [ %83, %244 ]
  %250 = load ptr, ptr %4, align 4
  %251 = load i8, ptr %5, align 1
  %252 = zext i8 %251 to i32
  %253 = shl i32 2, %252
  %254 = getelementptr i8, ptr %250, i32 %253
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %254) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %256 = and i32 %255, 1
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %81, label %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_uart_dma_channel_free(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #3 {
  br i1 %1, label %3, label %21

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = tail call i32 %8(ptr noundef %5) #10
  %12 = load ptr, ptr %4, align 4
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %5, %3 ], [ %12, %10 ]
  tail call void @dma_release_channel(ptr noundef %14) #10
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 20
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 18
  %20 = load i32, ptr %19, align 4
  tail call void @dma_free_attrs(ptr noundef %16, i32 noundef 4096, ptr noundef %18, i32 noundef %20, i32 noundef 0) #10
  store ptr null, ptr %4, align 4
  store i32 0, ptr %19, align 4
  br label %38

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 47
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = tail call i32 %26(ptr noundef %23) #10
  %30 = load ptr, ptr %22, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = phi ptr [ %23, %21 ], [ %30, %28 ]
  tail call void @dma_release_channel(ptr noundef %32) #10
  %33 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 19
  %36 = load i32, ptr %35, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %34, i32 noundef %36, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #10
  store ptr null, ptr %22, align 4
  store i32 0, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 21
  br label %38

38:                                               ; preds = %31, %13
  %39 = phi ptr [ %37, %31 ], [ %17, %13 ]
  store ptr null, ptr %39, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_set_baudrate(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %120, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %8, i32 0, i32 2
  %10 = load i8, ptr %9, align 2, !range !13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %69, label %12

12:                                               ; preds = %6
  %13 = shl i32 %1, 4
  %14 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 30
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 29
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 28
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %36, %18
  %22 = phi i32 [ 0, %18 ], [ %37, %36 ]
  %23 = getelementptr %struct.tegra_baud_tolerance, ptr %20, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %24, %1
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = getelementptr %struct.tegra_baud_tolerance, ptr %20, i32 %22, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %28, %1
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.tegra_baud_tolerance, ptr %20, i32 %22, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = mul i32 %32, %13
  %34 = sdiv i32 %33, 10000
  %35 = add i32 %34, %13
  br label %39

36:                                               ; preds = %26, %21
  %37 = add nuw nsw i32 %22, 1
  %38 = icmp eq i32 %37, %16
  br i1 %38, label %39, label %21

39:                                               ; preds = %36, %30, %12
  %40 = phi i32 [ %13, %12 ], [ %35, %30 ], [ %13, %36 ]
  %41 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @clk_set_rate(ptr noundef %42, i32 noundef %40) #10
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %47 = load ptr, ptr %46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.32, i32 noundef %40) #9
  br label %120

48:                                               ; preds = %39
  %49 = load ptr, ptr %41, align 4
  %50 = tail call i32 @clk_get_rate(ptr noundef %49) #10
  %51 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 31
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %14, align 4
  %53 = sub i32 %50, %52
  %54 = mul i32 %53, 10000
  %55 = sdiv i32 %54, %52
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %56, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = mul i32 %58, 100
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.tegra_uart_chip_data, ptr %56, i32 0, i32 7
  %63 = load i32, ptr %62, align 4
  %64 = mul i32 %63, 100
  %65 = icmp sgt i32 %55, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %61, %48
  %67 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %68 = load ptr, ptr %67, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.33, i32 noundef %55) #9
  br label %120

69:                                               ; preds = %6
  %70 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 @clk_get_rate(ptr noundef %71) #10
  %73 = shl i32 %1, 4
  %74 = lshr exact i32 %73, 1
  %75 = add i32 %72, %74
  %76 = udiv i32 %75, %73
  br label %77

77:                                               ; preds = %69, %61
  %78 = phi i32 [ %76, %69 ], [ 1, %61 ]
  %79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #10
  %80 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 7
  %81 = load i32, ptr %80, align 4
  %82 = or i32 %81, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %83 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl i32 3, %87
  %89 = getelementptr i8, ptr %84, i32 %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %82) #10, !srcloc !12
  %90 = and i32 %78, 255
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %91 = load ptr, ptr %83, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %90) #10, !srcloc !12
  %92 = lshr i32 %78, 8
  %93 = and i32 %92, 255
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %94 = load ptr, ptr %83, align 4
  %95 = load i8, ptr %85, align 1
  %96 = zext i8 %95 to i32
  %97 = shl nuw i32 1, %96
  %98 = getelementptr i8, ptr %94, i32 %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %93) #10, !srcloc !12
  %99 = and i32 %81, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %100 = load ptr, ptr %83, align 4
  %101 = load i8, ptr %85, align 1
  %102 = zext i8 %101 to i32
  %103 = shl i32 3, %102
  %104 = getelementptr i8, ptr %100, i32 %103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %99) #10, !srcloc !12
  %105 = load ptr, ptr %83, align 4
  %106 = load i8, ptr %85, align 1
  %107 = zext i8 %106 to i32
  %108 = shl i32 7, %107
  %109 = getelementptr i8, ptr %105, i32 %108
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %79) #10
  store i32 %1, ptr %3, align 4
  %111 = icmp eq i32 %1, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %77
  %113 = add i32 %1, -1
  %114 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 15
  %115 = load i32, ptr %114, align 4
  %116 = mul i32 %115, 2000000
  %117 = add i32 %113, %116
  %118 = udiv i32 %117, %1
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %119(i32 noundef %118) #10
  br label %120

120:                                              ; preds = %112, %77, %66, %45, %2
  %121 = phi i32 [ %43, %45 ], [ 0, %2 ], [ -5, %66 ], [ 0, %77 ], [ 0, %112 ]
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_uart_start_rx_dma(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.scatterlist, align 4
  %3 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 34
  %4 = load i8, ptr %3, align 2, !range !13
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 18
  %10 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #10, !annotation !8
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #10
  %11 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 4096, ptr %12, align 4
  %13 = icmp eq ptr %8, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %8, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 39
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %14, %6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  %22 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 23
  store ptr null, ptr %22, align 4
  br label %27

23:                                               ; preds = %17
  %24 = call ptr %19(ptr noundef nonnull %8, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  %25 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 23
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %21
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %29 = load ptr, ptr %28, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.34) #9
  br label %44

30:                                               ; preds = %23
  store i8 1, ptr %3, align 2
  %31 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %24, i32 0, i32 6
  store ptr @tegra_uart_rx_dma_complete, ptr %31, align 4
  %32 = load ptr, ptr %25, align 4
  %33 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %32, i32 0, i32 8
  store ptr %0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 27
  store i32 4096, ptr %34, align 4
  %35 = load ptr, ptr %25, align 4
  %36 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(ptr noundef %35) #10
  %39 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 25
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %7, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 50
  %43 = load ptr, ptr %42, align 4
  call void %43(ptr noundef %40) #10
  br label %44

44:                                               ; preds = %30, %27, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_uart_rx_dma_complete(ptr noundef %0) #3 {
  %2 = alloca %struct.dma_tx_state, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 25
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 49
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %2) #10
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %47, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 9
  %15 = load i8, ptr %14, align 4, !range !13
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -65
  %21 = icmp eq i32 %20, %19
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  call void @arm_heavy_mb() #10
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 4, %27
  %29 = getelementptr i8, ptr %24, i32 %28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %20) #10, !srcloc !12
  store i32 %20, ptr %18, align 4
  br label %30

30:                                               ; preds = %22, %17, %13
  %31 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 34
  store i8 0, ptr %31, align 2
  call fastcc void @tegra_uart_rx_buffer_push(ptr noundef %0, i32 noundef 0)
  call fastcc void @tegra_uart_start_rx_dma(ptr noundef %0)
  %32 = load i8, ptr %14, align 4, !range !13
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.tegra_uart_port, ptr %0, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 64
  %38 = icmp eq i32 %37, %36
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  call void @arm_heavy_mb() #10
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 4, %44
  %46 = getelementptr i8, ptr %41, i32 %45
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %37) #10, !srcloc !12
  store i32 %37, ptr %35, align 4
  br label %47

47:                                               ; preds = %39, %34, %30, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_uart_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_suspend_port(ptr noundef nonnull @tegra_uart_driver, ptr noundef %3) #10
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_uart_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_resume_port(ptr noundef nonnull @tegra_uart_driver, ptr noundef %3) #10
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }

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
!9 = !{i64 5119258}
!10 = !{i64 2153631118}
!11 = !{i64 2153631504}
!12 = !{i64 5118840}
!13 = !{i8 0, i8 2}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2153641970, i64 2153642468, i64 2153642007, i64 2153642063, i64 2153642097, i64 2153642121, i64 2153642162, i64 2153642183, i64 2153642211, i64 2153642245}
