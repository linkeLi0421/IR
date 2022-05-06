; ModuleID = '/llk/IR/drivers/tty/serial/imx.c_pt.bc'
source_filename = "../drivers/tty/serial/imx.c"
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
%struct.imx_uart_data = type { i32, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
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
%struct.imx_port = type { %struct.uart_port, %struct.timer_list, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, ptr, ptr, %struct.scatterlist, [2 x %struct.scatterlist], ptr, %struct.circ_buf, i32, i32, i32, i32, i32, i32, [10 x i32], i8, i32, %struct.hrtimer, %struct.hrtimer }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.34, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.34 = type { ptr }
%struct.llist_head = type { ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.64, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@imx_uart_platform_driver = internal global %struct.platform_driver { ptr @imx_uart_probe, ptr @imx_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_uart_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_uart_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@imx_uart_uart_driver = internal global %struct.uart_driver { ptr null, ptr @.str.33, ptr @.str.34, i32 207, i32 16, i32 8, ptr @imx_uart_console, ptr null, ptr null }, align 4
@__initcall__kmod_imx__228_2623_imx_uart_init6 = internal global ptr @imx_uart_init, section ".initcall6.init", align 4
@__exitcall_imx_uart_exit = internal global ptr @imx_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [24 x i8] c"imx.author=Sascha Hauer\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [47 x i8] c"imx.description=IMX generic serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [32 x i8] c"imx.file=drivers/tty/serial/imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [16 x i8] c"imx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [28 x i8] c"imx.alias=platform:imx-uart\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"imx-uart\00", align 1
@imx_uart_dt_ids = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @imx_uart_devdata, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @imx_uart_devdata, i64 16) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx1-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_uart_devdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @imx_uart_devdata, i64 8) }, %struct.of_device_id zeroinitializer], align 4
@imx_uart_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @imx_uart_suspend, ptr @imx_uart_resume, ptr @imx_uart_freeze, ptr @imx_uart_thaw, ptr null, ptr @imx_uart_thaw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_uart_suspend_noirq, ptr @imx_uart_resume_noirq, ptr @imx_uart_suspend_noirq, ptr null, ptr null, ptr @imx_uart_resume_noirq, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to get alias id, errno %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"uart-has-rtscts\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"fsl,uart-has-rtscts\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"fsl,dte-mode\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"rts-gpios\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"fsl,inverted-tx\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"fsl,inverted-rx\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"fsl,dma-info\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"serial%d out of range\0A\00", align 1
@imx_uart_pops = internal constant %struct.uart_ops { ptr @imx_uart_tx_empty, ptr @imx_uart_set_mctrl, ptr @imx_uart_get_mctrl, ptr @imx_uart_stop_tx, ptr @imx_uart_start_tx, ptr null, ptr null, ptr null, ptr @imx_uart_stop_rx, ptr @imx_uart_enable_ms, ptr @imx_uart_break_ctl, ptr @imx_uart_startup, ptr @imx_uart_shutdown, ptr @imx_uart_flush_buffer, ptr @imx_uart_set_termios, ptr null, ptr null, ptr @imx_uart_type, ptr null, ptr null, ptr @imx_uart_config_port, ptr @imx_uart_verify_port, ptr null }, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"failed to get ipg clk: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"per\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"failed to get per clk: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"failed to enable per clk: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"no RTS control, disabling rs485\0A\00", align 1
@.str.17 = private unnamed_addr constant [69 x i8] c"low-active RTS not possible when receiver is off, enabling receiver\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"failed to request rx irq: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"failed to request tx irq: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"failed to request rts irq: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"failed to request irq: %d\0A\00", align 1
@imx_uart_ports = internal unnamed_addr global [8 x ptr] zeroinitializer, align 4
@.str.22 = private unnamed_addr constant [27 x i8] c"DMA mapping error for TX.\0A\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"We cannot prepare for the TX slave dma!\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.24 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"error in RX dma configuration.\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"cannot get the TX DMA channel!\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"error in TX dma configuration.\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"DMA mapping error for RX.\0A\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"We cannot prepare for the RX slave dma!\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"drivers/tty/serial/imx.c\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"IMX\00", align 1
@imx_uart_devdata = internal global [4 x %struct.imx_uart_data] [%struct.imx_uart_data { i32 208, i32 0 }, %struct.imx_uart_data { i32 180, i32 1 }, %struct.imx_uart_data { i32 180, i32 2 }, %struct.imx_uart_data { i32 180, i32 3 }], align 4
@.str.33 = private unnamed_addr constant [9 x i8] c"IMX-uart\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"ttymxc\00", align 1
@imx_uart_console = internal global %struct.console { [16 x i8] c"ttymxc\00\00\00\00\00\00\00\00\00\00", ptr @imx_uart_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @imx_uart_console_setup, ptr @imx_uart_console_exit, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @imx_uart_uart_driver, ptr null }, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str.35 = private unnamed_addr constant [45 x i8] c"Console IMX rounded baud rate from %d to %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_imx_uart_exit, ptr @__initcall__kmod_imx__228_2623_imx_uart_init6, ptr @imx_uart_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx_uart_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_uart_platform_driver) #12
  tail call void @uart_unregister_driver(ptr noundef nonnull @imx_uart_uart_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_uart_init() #0 section ".init.text" {
  %1 = tail call i32 @uart_register_driver(ptr noundef nonnull @imx_uart_uart_driver) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_uart_platform_driver, ptr noundef null) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @uart_unregister_driver(ptr noundef nonnull @imx_uart_uart_driver) #12
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x i32], align 8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8, !annotation !8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 640, i32 noundef 3520) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %266, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @of_device_get_match_data(ptr noundef %3) #12
  %10 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 6
  store ptr %9, ptr %10, align 4
  %11 = tail call i32 @of_alias_get_id(ptr noundef %5, ptr noundef nonnull @.str.1) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %11) #13
  br label %266

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 41
  store i32 %11, ptr %15, align 8
  %16 = tail call ptr @of_get_property(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef null) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = tail call ptr @of_get_property(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef null) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 3
  %23 = load i8, ptr %22, align 8
  %24 = or i8 %23, 1
  store i8 %24, ptr %22, align 8
  br label %25

25:                                               ; preds = %21, %18
  %26 = tail call ptr @of_get_property(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef null) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 3
  %30 = load i8, ptr %29, align 8
  %31 = or i8 %30, 4
  store i8 %31, ptr %29, align 8
  br label %32

32:                                               ; preds = %28, %25
  %33 = tail call ptr @of_get_property(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef null) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 3
  %37 = load i8, ptr %36, align 8
  %38 = or i8 %37, 2
  store i8 %38, ptr %36, align 8
  br label %39

39:                                               ; preds = %35, %32
  %40 = tail call ptr @of_get_property(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef null) #12
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 3
  %44 = load i8, ptr %43, align 8
  %45 = or i8 %44, 8
  store i8 %45, ptr %43, align 8
  br label %46

46:                                               ; preds = %42, %39
  %47 = tail call ptr @of_get_property(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef null) #12
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 3
  %51 = load i8, ptr %50, align 8
  %52 = or i8 %51, 16
  store i8 %52, ptr %50, align 8
  br label %53

53:                                               ; preds = %49, %46
  %54 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #12
  %55 = icmp sgt i32 %54, -1
  %56 = load i32, ptr %2, align 8
  %57 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = select i1 %55, i32 %56, i32 1024
  %60 = select i1 %55, i32 %58, i32 16
  %61 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 21
  store i32 %59, ptr %61, align 4
  %62 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 22
  store i32 %60, ptr %62, align 8
  %63 = load i32, ptr %15, align 8
  %64 = icmp ugt i32 %63, 7
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %63) #13
  br label %266

66:                                               ; preds = %53
  %67 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #12
  %68 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %67) #12
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = ptrtoint ptr %68 to i32
  br label %266

72:                                               ; preds = %66
  %73 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #12
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %266, label %75

75:                                               ; preds = %72
  %76 = call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 1) #12
  %77 = call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 2) #12
  %78 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 45
  store ptr %3, ptr %78, align 8
  %79 = load i32, ptr %67, align 4
  %80 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 43
  store i32 %79, ptr %80, align 8
  %81 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 2
  store ptr %68, ptr %81, align 8
  %82 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 38
  store i32 62, ptr %82, align 4
  %83 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 26
  store i8 2, ptr %83, align 2
  %84 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 20
  store i32 %73, ptr %84, align 8
  %85 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 23
  store i32 32, ptr %85, align 4
  %86 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 48
  store i8 1, ptr %86, align 4
  %87 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 39
  store ptr @imx_uart_pops, ptr %87, align 8
  %88 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 18
  store ptr @imx_uart_rs485_config, ptr %88, align 8
  %89 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 33
  store i32 268435456, ptr %89, align 8
  %90 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 1
  call void @init_timer_key(ptr noundef %90, ptr noundef nonnull @imx_uart_timeout, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  %91 = call ptr @mctrl_gpio_init(ptr noundef nonnull %6, i32 noundef 0) #12
  %92 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 7
  store ptr %91, ptr %92, align 8
  %93 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %94, label %96

94:                                               ; preds = %75
  %95 = ptrtoint ptr %91 to i32
  br label %266

96:                                               ; preds = %75
  %97 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.11) #12
  %98 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 4
  store ptr %97, ptr %98, align 4
  %99 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = ptrtoint ptr %97 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %101) #13
  br label %266

102:                                              ; preds = %96
  %103 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.13) #12
  %104 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 5
  store ptr %103, ptr %104, align 8
  %105 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = ptrtoint ptr %103 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %107) #13
  br label %266

108:                                              ; preds = %102
  %109 = call i32 @clk_get_rate(ptr noundef %103) #12
  %110 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 22
  store i32 %109, ptr %110, align 8
  %111 = load ptr, ptr %98, align 4
  %112 = call i32 @clk_prepare(ptr noundef %111) #12
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = call i32 @clk_enable(ptr noundef %111) #12
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  call void @clk_unprepare(ptr noundef %111) #12
  br label %118

118:                                              ; preds = %117, %108
  %119 = phi i32 [ %115, %117 ], [ %112, %108 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef %119) #13
  br label %266

120:                                              ; preds = %114
  %121 = load ptr, ptr %81, align 8
  %122 = getelementptr i8, ptr %121, i32 128
  %123 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #12, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !10
  %124 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 8
  store i32 %123, ptr %124, align 4
  %125 = load ptr, ptr %81, align 8
  %126 = getelementptr i8, ptr %125, i32 132
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #12, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %128 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 9
  store i32 %127, ptr %128, align 8
  %129 = load ptr, ptr %81, align 8
  %130 = getelementptr i8, ptr %129, i32 136
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #12, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %132 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 10
  store i32 %131, ptr %132, align 4
  %133 = load ptr, ptr %81, align 8
  %134 = getelementptr i8, ptr %133, i32 140
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #12, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !13
  %136 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 11
  store i32 %135, ptr %136, align 8
  %137 = load ptr, ptr %81, align 8
  %138 = getelementptr i8, ptr %137, i32 144
  %139 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #12, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !14
  %140 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 12
  store i32 %139, ptr %140, align 4
  %141 = call i32 @uart_get_rs485_mode(ptr noundef nonnull %6) #12
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %120
  %144 = load ptr, ptr %98, align 4
  call void @clk_disable(ptr noundef %144) #12
  call void @clk_unprepare(ptr noundef %144) #12
  br label %266

145:                                              ; preds = %120
  %146 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 56
  %147 = load i32, ptr %146, align 8
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %172, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 3
  %152 = load i8, ptr %151, align 8
  %153 = and i8 %152, 3
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16) #13
  %156 = load i32, ptr %146, align 8
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %172, label %159

159:                                              ; preds = %155, %150
  %160 = phi i32 [ %156, %155 ], [ %147, %150 ]
  %161 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 3
  %162 = load i8, ptr %161, align 8
  %163 = and i8 %162, 3
  %164 = icmp eq i8 %163, 1
  %165 = and i32 %160, 2
  %166 = icmp eq i32 %165, 0
  %167 = select i1 %164, i1 %166, i1 false
  %168 = and i32 %160, 16
  %169 = icmp eq i32 %168, 0
  %170 = select i1 %167, i1 %169, i1 false
  br i1 %170, label %171, label %172

171:                                              ; preds = %159
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #13
  br label %172

172:                                              ; preds = %171, %159, %155, %145
  %173 = call i32 @imx_uart_rs485_config(ptr noundef nonnull %6, ptr noundef %146)
  %174 = load i32, ptr %124, align 4
  %175 = and i32 %174, -45601
  store i32 %175, ptr %124, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %176 = load ptr, ptr %81, align 8
  %177 = getelementptr i8, ptr %176, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %175) #12, !srcloc !16
  %178 = load ptr, ptr %10, align 4
  %179 = getelementptr inbounds %struct.imx_uart_data, ptr %178, i32 0, i32 1
  %180 = load i32, ptr %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %198, label %182

182:                                              ; preds = %172
  %183 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 3
  %184 = load i8, ptr %183, align 8
  %185 = and i8 %184, 4
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %198, label %187

187:                                              ; preds = %182
  %188 = load i32, ptr %140, align 4
  %189 = and i32 %188, 64
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = or i32 %188, 64
  store i32 %192, ptr %140, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %193 = load ptr, ptr %81, align 8
  %194 = getelementptr i8, ptr %193, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 %192) #12, !srcloc !16
  br label %195

195:                                              ; preds = %191, %187
  store i32 1156, ptr %132, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %196 = load ptr, ptr %81, align 8
  %197 = getelementptr i8, ptr %196, i32 136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 1156) #12, !srcloc !16
  br label %215

198:                                              ; preds = %182, %172
  %199 = load i32, ptr %140, align 4
  %200 = and i32 %199, 64
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %209, label %202

202:                                              ; preds = %198
  %203 = and i32 %199, -65
  store i32 %203, ptr %140, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %204 = load ptr, ptr %81, align 8
  %205 = getelementptr i8, ptr %204, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 %203) #12, !srcloc !16
  %206 = load ptr, ptr %10, align 4
  %207 = getelementptr inbounds %struct.imx_uart_data, ptr %206, i32 0, i32 1
  %208 = load i32, ptr %207, align 4
  br label %209

209:                                              ; preds = %202, %198
  %210 = phi i32 [ %208, %202 ], [ %180, %198 ]
  %211 = icmp eq i32 %210, 0
  %212 = select i1 %211, i32 1024, i32 1156
  store i32 %212, ptr %132, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %213 = load ptr, ptr %81, align 8
  %214 = getelementptr i8, ptr %213, i32 136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %212) #12, !srcloc !16
  br label %215

215:                                              ; preds = %209, %195
  %216 = load ptr, ptr %98, align 4
  call void @clk_disable(ptr noundef %216) #12
  call void @clk_unprepare(ptr noundef %216) #12
  %217 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 29
  call void @hrtimer_init(ptr noundef %217, i32 noundef 1, i32 noundef 1) #12
  %218 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 30
  call void @hrtimer_init(ptr noundef %218, i32 noundef 1, i32 noundef 1) #12
  %219 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 29, i32 2
  store ptr @imx_trigger_start_tx, ptr %219, align 8
  %220 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 30, i32 2
  store ptr @imx_trigger_stop_tx, ptr %220, align 8
  %221 = icmp sgt i32 %76, 0
  %222 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %221, label %225, label %253

225:                                              ; preds = %215
  br i1 %224, label %226, label %228

226:                                              ; preds = %225
  %227 = load ptr, ptr %3, align 4
  br label %228

228:                                              ; preds = %226, %225
  %229 = phi ptr [ %227, %226 ], [ %223, %225 ]
  %230 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %73, ptr noundef nonnull @imx_uart_rxint, ptr noundef null, i32 noundef 0, ptr noundef %229, ptr noundef nonnull %6) #12
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %230) #13
  br label %266

233:                                              ; preds = %228
  %234 = load ptr, ptr %222, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = load ptr, ptr %3, align 4
  br label %238

238:                                              ; preds = %236, %233
  %239 = phi ptr [ %237, %236 ], [ %234, %233 ]
  %240 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %76, ptr noundef nonnull @imx_uart_txint, ptr noundef null, i32 noundef 0, ptr noundef %239, ptr noundef nonnull %6) #12
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %238
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %240) #13
  br label %266

243:                                              ; preds = %238
  %244 = load ptr, ptr %222, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = load ptr, ptr %3, align 4
  br label %248

248:                                              ; preds = %246, %243
  %249 = phi ptr [ %247, %246 ], [ %244, %243 ]
  %250 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %77, ptr noundef nonnull @imx_uart_rtsint, ptr noundef null, i32 noundef 0, ptr noundef %249, ptr noundef nonnull %6) #12
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %261, label %252

252:                                              ; preds = %248
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %250) #13
  br label %266

253:                                              ; preds = %215
  br i1 %224, label %254, label %256

254:                                              ; preds = %253
  %255 = load ptr, ptr %3, align 4
  br label %256

256:                                              ; preds = %254, %253
  %257 = phi ptr [ %255, %254 ], [ %223, %253 ]
  %258 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %73, ptr noundef nonnull @imx_uart_int, ptr noundef null, i32 noundef 0, ptr noundef %257, ptr noundef nonnull %6) #12
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %256
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %258) #13
  br label %266

261:                                              ; preds = %256, %248
  %262 = load i32, ptr %15, align 8
  %263 = getelementptr [8 x ptr], ptr @imx_uart_ports, i32 0, i32 %262
  store ptr %6, ptr %263, align 4
  %264 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %264, align 8
  %265 = call i32 @uart_add_one_port(ptr noundef nonnull @imx_uart_uart_driver, ptr noundef nonnull %6) #12
  br label %266

266:                                              ; preds = %261, %260, %252, %242, %232, %143, %118, %106, %100, %94, %72, %70, %65, %13, %1
  %267 = phi i32 [ %11, %13 ], [ -22, %65 ], [ %71, %70 ], [ %95, %94 ], [ %101, %100 ], [ %107, %106 ], [ %119, %118 ], [ %141, %143 ], [ %230, %232 ], [ %240, %242 ], [ %250, %252 ], [ %265, %261 ], [ %258, %260 ], [ -12, %1 ], [ %73, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i32 %267
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @imx_uart_uart_driver, ptr noundef %3) #12
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_rs485_config(ptr nocapture noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 3
  %6 = icmp eq i8 %5, 0
  %7 = load i32, ptr %1, align 4
  br i1 %6, label %8, label %10

8:                                                ; preds = %2
  %9 = and i32 %7, -2
  store i32 %9, ptr %1, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %7, %2 ]
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %59, label %14

14:                                               ; preds = %10
  %15 = load i8, ptr %3, align 8
  %16 = and i8 %15, 3
  %17 = icmp eq i8 %16, 1
  %18 = and i32 %11, 2
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = or i32 %11, 16
  store i32 %22, ptr %1, align 4
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi i32 [ %22, %21 ], [ %11, %14 ]
  %25 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 9
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr i8, ptr %31, i32 132
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  store i32 %33, ptr %25, align 8
  %34 = load i32, ptr %1, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = phi i32 [ %34, %29 ], [ %24, %23 ]
  %37 = phi i32 [ %33, %29 ], [ %26, %23 ]
  %38 = and i32 %36, 4
  %39 = icmp eq i32 %38, 0
  %40 = and i32 %37, -12289
  br i1 %39, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, 4
  store i32 %44, ptr %42, align 4
  br label %50

45:                                               ; preds = %35
  %46 = or i32 %40, 4096
  %47 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, -5
  store i32 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i32 [ %49, %45 ], [ %44, %41 ]
  %52 = phi i32 [ %46, %45 ], [ %40, %41 ]
  %53 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 7
  %54 = load ptr, ptr %53, align 8
  tail call void @mctrl_gpio_set(ptr noundef %54, i32 noundef %51) #12
  store i32 %52, ptr %25, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %55 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr i8, ptr %56, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %52) #12, !srcloc !16
  %58 = load i32, ptr %1, align 4
  br label %59

59:                                               ; preds = %50, %10
  %60 = phi i32 [ %58, %50 ], [ %11, %10 ]
  %61 = and i32 %60, 17
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %90, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 9
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr i8, ptr %72, i32 132
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  br label %75

75:                                               ; preds = %70, %63
  %76 = phi i32 [ %74, %70 ], [ %67, %63 ]
  %77 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 13
  %78 = load i8, ptr %77, align 8
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, i32 512, i32 260
  %82 = or i32 %81, %65
  %83 = select i1 %80, i32 10, i32 2
  %84 = or i32 %83, %76
  store i32 %84, ptr %66, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %85 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr i8, ptr %86, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %84) #12, !srcloc !16
  store i32 %82, ptr %64, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %88 = load ptr, ptr %85, align 8
  %89 = getelementptr i8, ptr %88, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %82) #12, !srcloc !16
  br label %90

90:                                               ; preds = %75, %59
  %91 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %91, ptr noundef align 4 dereferenceable(32) %1, i32 32, i1 false)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_uart_timeout(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -212
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -320
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  tail call fastcc void @imx_uart_mctrl_check(ptr noundef %6)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #12
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = add i32 %8, 25
  %10 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %9) #12
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_rs485_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_trigger_start_tx(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -544
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #12
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @imx_uart_start_tx(ptr noundef %2)
  br label %8

8:                                                ; preds = %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_trigger_stop_tx(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -592
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #12
  %4 = getelementptr i8, ptr %0, i32 -52
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @imx_uart_stop_tx(ptr noundef %2)
  br label %8

8:                                                ; preds = %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_rxint(i32 noundef %0, ptr noundef %1) #2 {
  tail call void @_raw_spin_lock(ptr noundef %1) #12
  tail call fastcc void @__imx_uart_rxint(ptr noundef %1)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %3 = load i16, ptr %1, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !21
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_txint(i32 noundef %0, ptr noundef %1) #2 {
  tail call void @_raw_spin_lock(ptr noundef %1) #12
  tail call fastcc void @imx_uart_transmit_buffer(ptr noundef %1)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %3 = load i16, ptr %1, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !21
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_rtsint(i32 noundef %0, ptr noundef %1) #2 {
  tail call void @_raw_spin_lock(ptr noundef %1) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 4096) #12, !srcloc !16
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr i8, ptr %6, i32 148
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %9 = lshr i32 %8, 14
  %10 = and i32 %9, 1
  tail call void @uart_handle_cts_change(ptr noundef %1, i32 noundef %10) #12
  %11 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tty_port, ptr %12, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %13, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %14 = load i16, ptr %1, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !21
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_int(i32 noundef %0, ptr noundef %1) #2 {
  tail call void @_raw_spin_lock(ptr noundef %1) #12
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 148
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr i8, ptr %7, i32 152
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %10 = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 9
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr i8, ptr %17, i32 132
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  store i32 %19, ptr %12, align 8
  br label %20

20:                                               ; preds = %16, %2
  %21 = phi i32 [ %19, %16 ], [ %13, %2 ]
  %22 = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.imx_port, ptr %1, i32 0, i32 11
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %11, 512
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %6, -513
  %29 = select i1 %27, i32 %28, i32 %6
  %30 = and i32 %21, 8
  %31 = icmp eq i32 %30, 0
  %32 = and i32 %29, -257
  %33 = select i1 %31, i32 %32, i32 %29
  %34 = and i32 %11, 8192
  %35 = icmp eq i32 %34, 0
  %36 = and i32 %33, -8193
  %37 = select i1 %35, i32 %36, i32 %33
  %38 = and i32 %25, 8
  %39 = icmp eq i32 %38, 0
  %40 = and i32 %9, -9
  %41 = select i1 %39, i32 %40, i32 %9
  %42 = and i32 %23, 8
  %43 = icmp eq i32 %42, 0
  %44 = and i32 %37, -129
  %45 = select i1 %43, i32 %44, i32 %37
  %46 = and i32 %11, 32
  %47 = icmp eq i32 %46, 0
  %48 = and i32 %45, -4097
  %49 = select i1 %47, i32 %48, i32 %45
  %50 = and i32 %23, 16
  %51 = icmp eq i32 %50, 0
  %52 = and i32 %49, -17
  %53 = select i1 %51, i32 %52, i32 %49
  %54 = and i32 %25, 2
  %55 = icmp eq i32 %54, 0
  %56 = and i32 %41, -3
  %57 = select i1 %55, i32 %56, i32 %41
  %58 = and i32 %53, 768
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %61 = load ptr, ptr %3, align 8
  %62 = getelementptr i8, ptr %61, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 256) #12, !srcloc !16
  tail call fastcc void @__imx_uart_rxint(ptr noundef %1)
  br label %63

63:                                               ; preds = %60, %20
  %64 = phi i32 [ 1, %60 ], [ 0, %20 ]
  %65 = and i32 %53, 8192
  %66 = icmp eq i32 %65, 0
  %67 = and i32 %57, 8
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  tail call fastcc void @imx_uart_transmit_buffer(ptr noundef %1)
  br label %71

71:                                               ; preds = %70, %63
  %72 = phi i32 [ 1, %70 ], [ %64, %63 ]
  %73 = and i32 %53, 128
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %76 = load ptr, ptr %3, align 8
  %77 = getelementptr i8, ptr %76, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 128) #12, !srcloc !16
  tail call fastcc void @imx_uart_mctrl_check(ptr noundef %1)
  br label %78

78:                                               ; preds = %75, %71
  %79 = phi i32 [ 1, %75 ], [ %72, %71 ]
  %80 = and i32 %53, 4096
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %78
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %83 = load ptr, ptr %3, align 8
  %84 = getelementptr i8, ptr %83, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 4096) #12, !srcloc !16
  %85 = load ptr, ptr %3, align 8
  %86 = getelementptr i8, ptr %85, i32 148
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %88 = lshr i32 %87, 14
  %89 = and i32 %88, 1
  tail call void @uart_handle_cts_change(ptr noundef %1, i32 noundef %89) #12
  %90 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.tty_port, ptr %91, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %92, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %93

93:                                               ; preds = %82, %78
  %94 = phi i32 [ 1, %82 ], [ %79, %78 ]
  %95 = and i32 %53, 16
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %98 = load ptr, ptr %3, align 8
  %99 = getelementptr i8, ptr %98, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 16) #12, !srcloc !16
  br label %100

100:                                              ; preds = %97, %93
  %101 = phi i32 [ 1, %97 ], [ %94, %93 ]
  %102 = and i32 %57, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 7
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %108 = load ptr, ptr %3, align 8
  %109 = getelementptr i8, ptr %108, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 2) #12, !srcloc !16
  br label %110

110:                                              ; preds = %104, %100
  %111 = phi i32 [ 1, %104 ], [ %101, %100 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %112 = load i16, ptr %1, align 4
  %113 = add i16 %112, 1
  store i16 %113, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !21
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_tx_empty(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 152
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  %8 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 13
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 4
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i32 %7, i32 0
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_uart_set_mctrl(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 9
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i32 132
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i32 [ %16, %12 ], [ %9, %7 ]
  %19 = and i32 %18, -12289
  %20 = and i32 %1, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = or i32 %19, 4096
  %24 = and i32 %18, 16384
  %25 = icmp eq i32 %24, 0
  %26 = or i32 %18, 12288
  %27 = select i1 %25, i32 %26, i32 %23
  br label %28

28:                                               ; preds = %22, %17
  %29 = phi i32 [ %19, %17 ], [ %27, %22 ]
  store i32 %29, ptr %8, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr i8, ptr %31, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %29) #12, !srcloc !16
  br label %33

33:                                               ; preds = %28, %2
  %34 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, -1025
  %37 = shl i32 %1, 9
  %38 = and i32 %37, 1024
  %39 = or i32 %36, %38
  %40 = xor i32 %39, 1024
  store i32 %40, ptr %34, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %41 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr i8, ptr %42, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %40) #12, !srcloc !16
  %44 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, -128
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 30) #12
  switch i32 %48, label %69 [
    i32 0, label %49
    i32 1, label %52
    i32 2, label %61
    i32 3, label %63
    i32 4, label %66
  ]

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  br label %73

52:                                               ; preds = %33
  %53 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 9
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load ptr, ptr %41, align 8
  %59 = getelementptr i8, ptr %58, i32 %46
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  store i32 %60, ptr %53, align 8
  br label %73

61:                                               ; preds = %33
  %62 = load i32, ptr %34, align 4
  br label %73

63:                                               ; preds = %33
  %64 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 11
  %65 = load i32, ptr %64, align 8
  br label %73

66:                                               ; preds = %33
  %67 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 12
  %68 = load i32, ptr %67, align 4
  br label %73

69:                                               ; preds = %33
  %70 = load ptr, ptr %41, align 8
  %71 = getelementptr i8, ptr %70, i32 %46
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  br label %73

73:                                               ; preds = %69, %66, %63, %61, %57, %52, %49
  %74 = phi i32 [ %72, %69 ], [ %68, %66 ], [ %65, %63 ], [ %62, %61 ], [ %51, %49 ], [ %60, %57 ], [ %54, %52 ]
  %75 = and i32 %74, -4097
  %76 = lshr i32 %1, 3
  %77 = and i32 %76, 4096
  %78 = or i32 %75, %77
  %79 = load ptr, ptr %44, align 4
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, -128
  %82 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 30) #12
  switch i32 %82, label %92 [
    i32 0, label %83
    i32 1, label %85
    i32 2, label %87
    i32 3, label %88
    i32 4, label %90
  ]

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  store i32 %78, ptr %84, align 4
  br label %92

85:                                               ; preds = %73
  %86 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 9
  store i32 %78, ptr %86, align 8
  br label %92

87:                                               ; preds = %73
  store i32 %78, ptr %34, align 4
  br label %92

88:                                               ; preds = %73
  %89 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 11
  store i32 %78, ptr %89, align 8
  br label %92

90:                                               ; preds = %73
  %91 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 12
  store i32 %78, ptr %91, align 4
  br label %92

92:                                               ; preds = %90, %88, %87, %85, %83, %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %93 = load ptr, ptr %41, align 8
  %94 = getelementptr i8, ptr %93, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %78) #12, !srcloc !16
  %95 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 7
  %96 = load ptr, ptr %95, align 8
  tail call void @mctrl_gpio_set(ptr noundef %96, i32 noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_get_mctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 148
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr i8, ptr %7, i32 152
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %10 = and i32 %6, 16384
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 256, i32 288
  %13 = shl i32 %9, 1
  %14 = and i32 %13, 64
  %15 = or i32 %14, %12
  %16 = xor i32 %15, 64
  %17 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 3
  %18 = load i8, ptr %17, align 8
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %1
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr i8, ptr %22, i32 152
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %25 = lshr i32 %24, 2
  %26 = and i32 %25, 128
  %27 = or i32 %26, %16
  %28 = xor i32 %27, 128
  br label %29

29:                                               ; preds = %21, %1
  %30 = phi i32 [ %16, %1 ], [ %28, %21 ]
  store i32 %30, ptr %2, align 4
  %31 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 7
  %32 = load ptr, ptr %31, align 8
  %33 = call i32 @mctrl_gpio_get(ptr noundef %32, ptr noundef nonnull %2) #12
  %34 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_uart_stop_tx(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 28
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %95, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 13
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %95

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -8193
  store i32 %13, ptr %11, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #12, !srcloc !16
  %17 = load ptr, ptr %14, align 8
  %18 = getelementptr i8, ptr %17, i32 152
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %95, label %22

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 11
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -9
  store i32 %25, ptr %23, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %26 = load ptr, ptr %14, align 8
  %27 = getelementptr i8, ptr %26, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #12, !srcloc !16
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %94, label %32

32:                                               ; preds = %22
  %33 = load i32, ptr %2, align 4
  switch i32 %33, label %95 [
    i32 2, label %34
    i32 1, label %40
    i32 3, label %40
  ]

34:                                               ; preds = %32
  store i32 3, ptr %2, align 4
  %35 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 30
  %36 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = zext i32 %37 to i64
  %39 = mul nuw nsw i64 %38, 1000000
  tail call void @hrtimer_start_range_ns(ptr noundef %35, i64 noundef %39, i64 noundef 0, i32 noundef 1) #12
  br label %95

40:                                               ; preds = %32, %32
  %41 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 29
  %42 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %41) #12
  %43 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 9
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load ptr, ptr %14, align 8
  %49 = getelementptr i8, ptr %48, i32 132
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  store i32 %50, ptr %43, align 8
  br label %51

51:                                               ; preds = %47, %40
  %52 = phi i32 [ %50, %47 ], [ %44, %40 ]
  %53 = load i32, ptr %28, align 4
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  %56 = and i32 %52, -12289
  br i1 %55, label %61, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, 4
  store i32 %60, ptr %58, align 4
  br label %66

61:                                               ; preds = %51
  %62 = or i32 %56, 4096
  %63 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, -5
  store i32 %65, ptr %63, align 4
  br label %66

66:                                               ; preds = %61, %57
  %67 = phi i32 [ %65, %61 ], [ %60, %57 ]
  %68 = phi i32 [ %62, %61 ], [ %56, %57 ]
  %69 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 7
  %70 = load ptr, ptr %69, align 8
  tail call void @mctrl_gpio_set(ptr noundef %70, i32 noundef %67) #12
  store i32 %68, ptr %43, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %71 = load ptr, ptr %14, align 8
  %72 = getelementptr i8, ptr %71, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %68) #12, !srcloc !16
  %73 = load i32, ptr %11, align 4
  %74 = load i32, ptr %43, align 8
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %66
  %78 = load ptr, ptr %14, align 8
  %79 = getelementptr i8, ptr %78, i32 132
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  br label %81

81:                                               ; preds = %77, %66
  %82 = phi i32 [ %80, %77 ], [ %74, %66 ]
  %83 = load i8, ptr %6, align 8
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = select i1 %85, i32 512, i32 260
  %87 = or i32 %86, %73
  %88 = select i1 %85, i32 10, i32 2
  %89 = or i32 %88, %82
  store i32 %89, ptr %43, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr i8, ptr %90, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #12, !srcloc !16
  store i32 %87, ptr %11, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %92 = load ptr, ptr %14, align 8
  %93 = getelementptr i8, ptr %92, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %87) #12, !srcloc !16
  store i32 0, ptr %2, align 4
  br label %95

94:                                               ; preds = %22
  store i32 0, ptr %2, align 4
  br label %95

95:                                               ; preds = %94, %81, %34, %32, %10, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_uart_start_tx(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 24
  %3 = load i8, ptr %2, align 8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uart_state, ptr %7, i32 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uart_state, ptr %7, i32 0, i32 2, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %127, label %13

13:                                               ; preds = %5, %1
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 28
  br i1 %17, label %79, label %19

19:                                               ; preds = %13
  %20 = load i32, ptr %18, align 4
  switch i32 %20, label %80 [
    i32 0, label %21
    i32 3, label %65
    i32 1, label %65
  ]

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 9
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr i8, ptr %28, i32 132
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  store i32 %30, ptr %22, align 8
  %31 = load i32, ptr %14, align 4
  br label %32

32:                                               ; preds = %26, %21
  %33 = phi i32 [ %31, %26 ], [ %15, %21 ]
  %34 = phi i32 [ %30, %26 ], [ %23, %21 ]
  %35 = and i32 %33, 2
  %36 = icmp eq i32 %35, 0
  %37 = and i32 %34, -12289
  br i1 %36, label %42, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 4
  store i32 %41, ptr %39, align 4
  br label %47

42:                                               ; preds = %32
  %43 = or i32 %37, 4096
  %44 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, -5
  store i32 %46, ptr %44, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i32 [ %46, %42 ], [ %41, %38 ]
  %49 = phi i32 [ %43, %42 ], [ %37, %38 ]
  %50 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 7
  %51 = load ptr, ptr %50, align 8
  tail call void @mctrl_gpio_set(ptr noundef %51, i32 noundef %48) #12
  store i32 %49, ptr %22, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %52 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr i8, ptr %53, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %49) #12, !srcloc !16
  %55 = load i32, ptr %14, align 4
  %56 = and i32 %55, 16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  tail call void @imx_uart_stop_rx(ptr noundef %0)
  br label %59

59:                                               ; preds = %58, %47
  store i32 1, ptr %18, align 4
  %60 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 29
  %61 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = zext i32 %62 to i64
  %64 = mul nuw nsw i64 %63, 1000000
  tail call void @hrtimer_start_range_ns(ptr noundef %60, i64 noundef %64, i64 noundef 0, i32 noundef 1) #12
  br label %127

65:                                               ; preds = %19, %19
  %66 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 30
  %67 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %66) #12
  %68 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 13
  %69 = load i8, ptr %68, align 8
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 11
  %74 = load i32, ptr %73, align 8
  %75 = or i32 %74, 8
  store i32 %75, ptr %73, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %76 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr i8, ptr %77, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %75) #12, !srcloc !16
  br label %79

79:                                               ; preds = %72, %65, %13
  store i32 2, ptr %18, align 4
  br label %80

80:                                               ; preds = %79, %19
  %81 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 13
  %82 = load i8, ptr %81, align 8
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  %87 = load i32, ptr %86, align 4
  %88 = or i32 %87, 8192
  store i32 %88, ptr %86, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %89 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr i8, ptr %90, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %88) #12, !srcloc !16
  %92 = load i8, ptr %81, align 8
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %127, label %95

95:                                               ; preds = %85, %80
  %96 = load i8, ptr %2, align 8
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, -8201
  %102 = or i32 %101, 8192
  store i32 %102, ptr %99, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %103 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr i8, ptr %104, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %102) #12, !srcloc !16
  br label %127

106:                                              ; preds = %95
  %107 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.uart_state, ptr %108, i32 0, i32 2, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.uart_state, ptr %108, i32 0, i32 2, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %127, label %114

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.tty_port, ptr %108, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.tty_struct, ptr %116, i32 0, i32 19, i32 1
  %120 = load i8, ptr %119, align 4, !range !23
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118, %114
  %123 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  tail call fastcc void @imx_uart_dma_tx(ptr noundef %0)
  br label %127

127:                                              ; preds = %126, %122, %118, %106, %98, %85, %59, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_uart_stop_rx(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 132
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  store i32 %12, ptr %4, align 8
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i32 [ %12, %8 ], [ %5, %1 ]
  %15 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 11
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 13
  %18 = load i8, ptr %17, align 8
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  %21 = and i32 %14, -11
  %22 = and i32 %16, -3
  %23 = select i1 %20, i32 -513, i32 -261
  %24 = and i32 %23, %3
  %25 = select i1 %20, i32 %21, i32 %14
  %26 = select i1 %20, i32 %22, i32 %16
  store i32 %24, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr i8, ptr %28, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %24) #12, !srcloc !16
  store i32 %26, ptr %15, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %30 = load ptr, ptr %27, align 8
  %31 = getelementptr i8, ptr %30, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %26) #12, !srcloc !16
  %32 = and i32 %25, -3
  store i32 %32, ptr %4, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %33 = load ptr, ptr %27, align 8
  %34 = getelementptr i8, ptr %33, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #12, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_uart_enable_ms(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = tail call i32 @mod_timer(ptr noundef %2, i32 noundef %3) #12
  %5 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  tail call void @mctrl_gpio_enable_ms(ptr noundef %6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_uart_break_ctl(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -17
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 0, i32 16
  %9 = or i32 %6, %8
  store i32 %9, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #12, !srcloc !16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_startup(ptr noundef %0) #2 {
  %2 = alloca %struct.dma_slave_config, align 4
  %3 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %294

7:                                                ; preds = %1
  %8 = tail call i32 @clk_enable(ptr noundef %4) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %4) #12
  br label %294

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_prepare(ptr noundef %13) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = tail call i32 @clk_enable(ptr noundef %13) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  tail call void @clk_unprepare(ptr noundef %13) #12
  br label %20

20:                                               ; preds = %19, %11
  %21 = phi i32 [ %17, %19 ], [ %14, %11 ]
  %22 = load ptr, ptr %3, align 8
  tail call void @clk_disable(ptr noundef %22) #12
  tail call void @clk_unprepare(ptr noundef %22) #12
  br label %294

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 960
  %27 = or i32 %26, 2049
  store i32 %27, ptr %24, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr i8, ptr %29, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %27) #12, !srcloc !16
  %31 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 11
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, -64514
  %34 = or i32 %33, 16384
  store i32 %34, ptr %31, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %35 = load ptr, ptr %28, align 8
  %36 = getelementptr i8, ptr %35, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #12, !srcloc !16
  %37 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.console, ptr %38, i32 0, i32 9
  %42 = load i16, ptr %41, align 2
  %43 = sext i16 %42 to i32
  %44 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, %43
  br i1 %46, label %102, label %47

47:                                               ; preds = %40, %23
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %2, i8 0, i32 48, i1 false) #12
  %48 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %49 = load ptr, ptr %48, align 8
  %50 = tail call ptr @dma_request_chan(ptr noundef %49, ptr noundef nonnull @.str.24) #12
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  %52 = select i1 %51, ptr null, ptr %50
  %53 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 14
  store ptr %52, ptr %53, align 4
  %54 = icmp eq ptr %52, null
  br i1 %54, label %100, label %55

55:                                               ; preds = %47
  store i32 2, ptr %2, align 4
  %56 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %57 = load i32, ptr %56, align 8
  %58 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 1
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 3
  store i32 1, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 5
  store i32 8, ptr %60, align 4
  %61 = load ptr, ptr %52, align 4
  %62 = getelementptr inbounds %struct.dma_device, ptr %61, i32 0, i32 44
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %98, label %65

65:                                               ; preds = %55
  %66 = call i32 %63(ptr noundef nonnull %52, ptr noundef nonnull %2) #12
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 21
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 22
  %72 = load i32, ptr %71, align 8
  %73 = mul i32 %72, %70
  %74 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 20
  store i32 %73, ptr %74, align 8
  %75 = call noalias align 64 ptr @__kmalloc(i32 noundef %73, i32 noundef 3520) #14
  %76 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 18
  store ptr %75, ptr %76, align 8
  %77 = icmp eq ptr %75, null
  br i1 %77, label %100, label %78

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 19
  store ptr %75, ptr %79, align 4
  %80 = call ptr @dma_request_chan(ptr noundef %49, ptr noundef nonnull @.str.26) #12
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  %82 = select i1 %81, ptr null, ptr %80
  %83 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 15
  store ptr %82, ptr %83, align 8
  %84 = icmp eq ptr %82, null
  br i1 %84, label %98, label %85

85:                                               ; preds = %78
  store i32 1, ptr %2, align 4
  %86 = load i32, ptr %56, align 8
  %87 = add i32 %86, 64
  %88 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 2
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 4
  store i32 1, ptr %89, align 4
  %90 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 6
  store i32 8, ptr %90, align 4
  %91 = load ptr, ptr %82, align 4
  %92 = getelementptr inbounds %struct.dma_device, ptr %91, i32 0, i32 44
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %85
  %96 = call i32 %93(ptr noundef nonnull %82, ptr noundef nonnull %2) #12
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95, %85, %78, %65, %55
  %99 = phi ptr [ @.str.25, %55 ], [ @.str.25, %65 ], [ @.str.27, %78 ], [ @.str.28, %85 ], [ @.str.28, %95 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull %99) #13
  br label %100

100:                                              ; preds = %98, %68, %47
  call fastcc void @imx_uart_dma_exit(ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #12
  br label %102

101:                                              ; preds = %95
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #12
  br label %102

102:                                              ; preds = %101, %100, %40
  %103 = phi i1 [ true, %40 ], [ false, %101 ], [ true, %100 ]
  %104 = call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  %105 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 9
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load ptr, ptr %28, align 8
  %111 = getelementptr i8, ptr %110, i32 132
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #12, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  br label %113

113:                                              ; preds = %109, %102
  %114 = phi i32 [ %112, %109 ], [ %106, %102 ]
  %115 = and i32 %114, -2
  store i32 %115, ptr %105, align 8
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %116 = load ptr, ptr %28, align 8
  %117 = getelementptr i8, ptr %116, i32 132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #12, !srcloc !16
  br label %118

118:                                              ; preds = %134, %113
  %119 = phi i32 [ 100, %113 ], [ %132, %134 ]
  %120 = load i32, ptr %105, align 8
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load ptr, ptr %28, align 8
  %125 = getelementptr i8, ptr %124, i32 132
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #12, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  store i32 %126, ptr %105, align 8
  br label %127

127:                                              ; preds = %123, %118
  %128 = phi i32 [ %126, %123 ], [ %120, %118 ]
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = add nsw i32 %119, -1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %135(i32 noundef 214748) #12
  br label %118

136:                                              ; preds = %131, %127
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %137 = load ptr, ptr %28, align 8
  %138 = getelementptr i8, ptr %137, i32 148
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 4224) #12, !srcloc !16
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %139 = load ptr, ptr %28, align 8
  %140 = getelementptr i8, ptr %139, i32 152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 2) #12, !srcloc !16
  %141 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  %142 = load i32, ptr %141, align 4
  %143 = and i32 %142, -514
  %144 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 3
  %145 = load i8, ptr %144, align 8
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  %148 = select i1 %147, i32 1, i32 33
  %149 = or i32 %148, %143
  store i32 %149, ptr %141, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %150 = load ptr, ptr %28, align 8
  %151 = getelementptr i8, ptr %150, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %149) #12, !srcloc !16
  %152 = load i32, ptr %31, align 8
  %153 = and i32 %152, -515
  %154 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 13
  %155 = load i8, ptr %154, align 8
  %156 = and i8 %155, 1
  %157 = icmp eq i8 %156, 0
  %158 = or i32 %153, 2
  %159 = select i1 %157, i32 %158, i32 %153
  %160 = load i8, ptr %144, align 8
  %161 = and i8 %160, 16
  %162 = zext i8 %161 to i32
  %163 = shl nuw nsw i32 %162, 5
  %164 = or i32 %163, %159
  store i32 %164, ptr %31, align 8
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %165 = load ptr, ptr %28, align 8
  %166 = getelementptr i8, ptr %165, i32 140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %164) #12, !srcloc !16
  %167 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 10
  %168 = load i32, ptr %167, align 4
  %169 = and i32 %168, -3
  %170 = load i8, ptr %144, align 8
  %171 = lshr i8 %170, 2
  %172 = and i8 %171, 2
  %173 = zext i8 %172 to i32
  %174 = or i32 %169, %173
  %175 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 6
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.imx_uart_data, ptr %176, i32 0, i32 1
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %136
  %181 = or i32 %174, 776
  %182 = and i8 %170, 4
  %183 = icmp eq i8 %182, 0
  %184 = and i32 %181, -769
  %185 = select i1 %183, i32 %181, i32 %184
  br label %186

186:                                              ; preds = %180, %136
  %187 = phi i32 [ %174, %136 ], [ %185, %180 ]
  store i32 %187, ptr %167, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %188 = load ptr, ptr %28, align 8
  %189 = getelementptr i8, ptr %188, i32 136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %187) #12, !srcloc !16
  %190 = load i32, ptr %105, align 8
  %191 = and i32 %190, 1
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load ptr, ptr %28, align 8
  %195 = getelementptr i8, ptr %194, i32 132
  %196 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %195) #12, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  store i32 %196, ptr %105, align 8
  br label %197

197:                                              ; preds = %193, %186
  %198 = phi i32 [ %196, %193 ], [ %190, %186 ]
  %199 = and i32 %198, -15
  %200 = load i8, ptr %144, align 8
  %201 = and i8 %200, 1
  %202 = icmp eq i8 %201, 0
  %203 = select i1 %202, i32 16390, i32 6
  %204 = or i32 %203, %199
  %205 = load ptr, ptr %175, align 4
  %206 = getelementptr inbounds %struct.imx_uart_data, ptr %205, i32 0, i32 1
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 0
  %209 = and i32 %204, -25
  %210 = select i1 %208, i32 %204, i32 %209
  store i32 %210, ptr %105, align 8
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %211 = load ptr, ptr %28, align 8
  %212 = getelementptr i8, ptr %211, i32 132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %212, i32 %210) #12, !srcloc !16
  %213 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 1
  %214 = load volatile i32, ptr @jiffies, align 64
  %215 = call i32 @mod_timer(ptr noundef %213, i32 noundef %214) #12
  %216 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 7
  %217 = load ptr, ptr %216, align 8
  call void @mctrl_gpio_enable_ms(ptr noundef %217) #12
  br i1 %103, label %276, label %218

218:                                              ; preds = %197
  %219 = load i32, ptr %24, align 4
  %220 = and i32 %219, 960
  %221 = or i32 %220, 8201
  store i32 %221, ptr %24, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %222 = load ptr, ptr %28, align 8
  %223 = getelementptr i8, ptr %222, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 %221) #12, !srcloc !16
  %224 = load i32, ptr %141, align 4
  %225 = or i32 %224, 268
  store i32 %225, ptr %141, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %226 = load ptr, ptr %28, align 8
  %227 = getelementptr i8, ptr %226, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 %225) #12, !srcloc !16
  %228 = load i8, ptr %154, align 8
  %229 = or i8 %228, 1
  store i8 %229, ptr %154, align 8
  %230 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 16
  %231 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 14
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %234 = load ptr, ptr %233, align 8
  %235 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 19, i32 1
  store i32 0, ptr %235, align 4
  %236 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 19, i32 2
  store i32 0, ptr %236, align 4
  %237 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 18
  %238 = load ptr, ptr %237, align 8
  %239 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 20
  %240 = load i32, ptr %239, align 8
  call void @sg_init_one(ptr noundef %230, ptr noundef %238, i32 noundef %240) #12
  %241 = call i32 @dma_map_sg_attrs(ptr noundef %234, ptr noundef %230, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %218
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.29) #13
  br label %293

244:                                              ; preds = %218
  %245 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 16, i32 3
  %246 = load i32, ptr %245, align 4
  %247 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 16, i32 4
  %248 = load i32, ptr %247, align 4
  %249 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 22
  %250 = load i32, ptr %249, align 8
  %251 = udiv i32 %248, %250
  %252 = icmp eq ptr %232, null
  br i1 %252, label %263, label %253

253:                                              ; preds = %244
  %254 = load ptr, ptr %232, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %263, label %256

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.dma_device, ptr %254, i32 0, i32 40
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %263, label %260

260:                                              ; preds = %256
  %261 = call ptr %258(ptr noundef nonnull %232, i32 noundef %246, i32 noundef %248, i32 noundef %251, i32 noundef 2, i32 noundef 1) #12
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %264

263:                                              ; preds = %260, %256, %253, %244
  call void @dma_unmap_sg_attrs(ptr noundef %234, ptr noundef %230, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.30) #13
  br label %293

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %261, i32 0, i32 6
  store ptr @imx_uart_dma_rx_callback, ptr %265, align 4
  %266 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %261, i32 0, i32 8
  store ptr %0, ptr %266, align 4
  %267 = load i8, ptr %154, align 8
  %268 = or i8 %267, 2
  store i8 %268, ptr %154, align 8
  %269 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %261, i32 0, i32 4
  %270 = load ptr, ptr %269, align 4
  %271 = call i32 %270(ptr noundef nonnull %261) #12
  %272 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 23
  store i32 %271, ptr %272, align 4
  %273 = load ptr, ptr %232, align 4
  %274 = getelementptr inbounds %struct.dma_device, ptr %273, i32 0, i32 50
  %275 = load ptr, ptr %274, align 4
  call void %275(ptr noundef nonnull %232) #12
  br label %293

276:                                              ; preds = %197
  %277 = load i32, ptr %141, align 4
  %278 = or i32 %277, 512
  store i32 %278, ptr %141, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %279 = load ptr, ptr %28, align 8
  %280 = getelementptr i8, ptr %279, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 %278) #12, !srcloc !16
  %281 = load i32, ptr %105, align 8
  %282 = and i32 %281, 1
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %276
  %285 = load ptr, ptr %28, align 8
  %286 = getelementptr i8, ptr %285, i32 132
  %287 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %286) #12, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  br label %288

288:                                              ; preds = %284, %276
  %289 = phi i32 [ %287, %284 ], [ %281, %276 ]
  %290 = or i32 %289, 8
  store i32 %290, ptr %105, align 8
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %291 = load ptr, ptr %28, align 8
  %292 = getelementptr i8, ptr %291, i32 132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %292, i32 %290) #12, !srcloc !16
  br label %293

293:                                              ; preds = %288, %264, %263, %243
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %104) #12
  br label %294

294:                                              ; preds = %293, %20, %10, %1
  %295 = phi i32 [ %21, %20 ], [ 0, %293 ], [ %8, %10 ], [ %5, %1 ]
  ret i32 %295
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_uart_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 13
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %76, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 47
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %6
  %14 = tail call i32 %11(ptr noundef %8) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 48
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void %19(ptr noundef %8) #12
  br label %22

22:                                               ; preds = %21, %16, %13, %6
  %23 = load i8, ptr %2, align 8
  %24 = and i8 %23, 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 17
  %30 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 25
  %31 = load i32, ptr %30, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %28, ptr noundef %29, i32 noundef %31, i32 noundef 1, i32 noundef 0) #12
  %32 = load i8, ptr %2, align 8
  %33 = and i8 %32, -5
  store i8 %33, ptr %2, align 8
  br label %34

34:                                               ; preds = %26, %22
  %35 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 14
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 47
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %34
  %42 = tail call i32 %39(ptr noundef %36) #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load ptr, ptr %36, align 4
  %46 = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 48
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call void %47(ptr noundef %36) #12
  br label %50

50:                                               ; preds = %49, %44, %41, %34
  %51 = load i8, ptr %2, align 8
  %52 = and i8 %51, 2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 16
  tail call void @dma_unmap_sg_attrs(ptr noundef %56, ptr noundef %57, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %58 = load i8, ptr %2, align 8
  %59 = and i8 %58, -3
  store i8 %59, ptr %2, align 8
  br label %60

60:                                               ; preds = %54, %50
  %61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  tail call void @imx_uart_stop_tx(ptr noundef %0)
  tail call void @imx_uart_stop_rx(ptr noundef %0)
  %62 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, -269
  store i32 %64, ptr %62, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %65 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr i8, ptr %66, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %64) #12, !srcloc !16
  %68 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 12
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 960
  %71 = or i32 %70, 2049
  store i32 %71, ptr %68, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %72 = load ptr, ptr %65, align 8
  %73 = getelementptr i8, ptr %72, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #12, !srcloc !16
  %74 = load i8, ptr %2, align 8
  %75 = and i8 %74, -2
  store i8 %75, ptr %2, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %61) #12
  tail call fastcc void @imx_uart_dma_exit(ptr noundef %0)
  br label %76

76:                                               ; preds = %60, %1
  %77 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 7
  %78 = load ptr, ptr %77, align 8
  tail call void @mctrl_gpio_disable_ms(ptr noundef %78) #12
  %79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  %80 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 9
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr i8, ptr %86, i32 132
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  br label %89

89:                                               ; preds = %84, %76
  %90 = phi i32 [ %88, %84 ], [ %81, %76 ]
  %91 = and i32 %90, -13
  store i32 %91, ptr %80, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %92 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr i8, ptr %93, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %91) #12, !srcloc !16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %79) #12
  %95 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 1
  %96 = tail call i32 @del_timer_sync(ptr noundef %95) #12
  %97 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  %98 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, -8998
  store i32 %100, ptr %98, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %101 = load ptr, ptr %92, align 8
  %102 = getelementptr i8, ptr %101, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #12, !srcloc !16
  %103 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 11
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, -9
  store i32 %105, ptr %103, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %106 = load ptr, ptr %92, align 8
  %107 = getelementptr i8, ptr %106, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #12, !srcloc !16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %97) #12
  %108 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 5
  %109 = load ptr, ptr %108, align 8
  tail call void @clk_disable(ptr noundef %109) #12
  tail call void @clk_unprepare(ptr noundef %109) #12
  %110 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 4
  %111 = load ptr, ptr %110, align 4
  tail call void @clk_disable(ptr noundef %111) #12
  tail call void @clk_unprepare(ptr noundef %111) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_uart_flush_buffer(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 17
  %3 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %81, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 24
  store i32 0, ptr %7, align 8
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call i32 %10(ptr noundef nonnull %4) #12
  br label %14

14:                                               ; preds = %12, %6
  %15 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 13
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 25
  %23 = load i32, ptr %22, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %21, ptr noundef %2, i32 noundef %23, i32 noundef 1, i32 noundef 0) #12
  %24 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, -9
  store i32 %26, ptr %24, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr i8, ptr %28, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #12, !srcloc !16
  %30 = load i8, ptr %15, align 8
  %31 = and i8 %30, -5
  store i8 %31, ptr %15, align 8
  br label %32

32:                                               ; preds = %19, %14
  %33 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr i8, ptr %34, i32 164
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %37 = load ptr, ptr %33, align 8
  %38 = getelementptr i8, ptr %37, i32 168
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %40 = load ptr, ptr %33, align 8
  %41 = getelementptr i8, ptr %40, i32 180
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %43 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 9
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %32
  %48 = load ptr, ptr %33, align 8
  %49 = getelementptr i8, ptr %48, i32 132
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  br label %51

51:                                               ; preds = %47, %32
  %52 = phi i32 [ %50, %47 ], [ %44, %32 ]
  %53 = and i32 %52, -2
  store i32 %53, ptr %43, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %54 = load ptr, ptr %33, align 8
  %55 = getelementptr i8, ptr %54, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #12, !srcloc !16
  br label %56

56:                                               ; preds = %72, %51
  %57 = phi i32 [ 100, %51 ], [ %70, %72 ]
  %58 = load i32, ptr %43, align 8
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load ptr, ptr %33, align 8
  %63 = getelementptr i8, ptr %62, i32 132
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  store i32 %64, ptr %43, align 8
  br label %65

65:                                               ; preds = %61, %56
  %66 = phi i32 [ %64, %61 ], [ %58, %56 ]
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = add nsw i32 %57, -1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748) #12
  br label %56

74:                                               ; preds = %69, %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %75 = load ptr, ptr %33, align 8
  %76 = getelementptr i8, ptr %75, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %36) #12, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %77 = load ptr, ptr %33, align 8
  %78 = getelementptr i8, ptr %77, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %39) #12, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %79 = load ptr, ptr %33, align 8
  %80 = getelementptr i8, ptr %79, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %42) #12, !srcloc !16
  br label %81

81:                                               ; preds = %74, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_uart_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = icmp eq ptr %2, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ktermios, ptr %2, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 48
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ 48, %3 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %19, %11
  %16 = phi i32 [ %14, %11 ], [ %21, %19 ]
  %17 = phi i32 [ %12, %11 ], [ 48, %19 ]
  %18 = and i32 %16, 48
  switch i32 %18, label %19 [
    i32 32, label %22
    i32 48, label %22
  ]

19:                                               ; preds = %15
  %20 = and i32 %16, -49
  %21 = or i32 %20, %17
  store i32 %21, ptr %13, align 4
  br label %15

22:                                               ; preds = %15, %15
  %23 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 1
  %24 = tail call i32 @del_timer_sync(ptr noundef %23) #12
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 4
  %28 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 50, i32 noundef %27) #12
  %29 = tail call i32 @uart_get_divisor(ptr noundef %0, i32 noundef %28) #12
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  %31 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 9
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr i8, ptr %37, i32 132
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  store i32 %39, ptr %31, align 8
  br label %40

40:                                               ; preds = %35, %22
  %41 = phi i32 [ %39, %35 ], [ %32, %22 ]
  %42 = and i32 %41, 4110
  %43 = load i32, ptr %13, align 4
  %44 = and i32 %43, 48
  %45 = icmp eq i32 %44, 48
  %46 = select i1 %45, i32 16417, i32 16385
  %47 = or i32 %46, %42
  %48 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 3
  %49 = load i8, ptr %48, align 8
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = and i32 %43, 2147483647
  store i32 %53, ptr %13, align 4
  br label %54

54:                                               ; preds = %52, %40
  %55 = phi i32 [ %53, %52 ], [ %43, %40 ]
  %56 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %54
  %61 = and i32 %57, 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = and i32 %47, 16431
  %65 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %66, 4
  store i32 %67, ptr %65, align 4
  %68 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 7
  %69 = load ptr, ptr %68, align 8
  tail call void @mctrl_gpio_set(ptr noundef %69, i32 noundef %67) #12
  br label %84

70:                                               ; preds = %60
  %71 = or i32 %47, 4096
  %72 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, -5
  store i32 %74, ptr %72, align 4
  %75 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 7
  %76 = load ptr, ptr %75, align 8
  tail call void @mctrl_gpio_set(ptr noundef %76, i32 noundef %74) #12
  br label %84

77:                                               ; preds = %54
  %78 = icmp sgt i32 %55, -1
  br i1 %78, label %92, label %79

79:                                               ; preds = %77
  %80 = and i32 %41, 4096
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = or i32 %47, 8192
  br label %84

84:                                               ; preds = %82, %70, %63
  %85 = phi i32 [ %64, %63 ], [ %71, %70 ], [ %83, %82 ]
  %86 = load i32, ptr %13, align 4
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %92, label %88

88:                                               ; preds = %84, %79
  %89 = phi i32 [ %85, %84 ], [ %47, %79 ]
  %90 = phi i32 [ %86, %84 ], [ %55, %79 ]
  %91 = and i32 %89, -16385
  br label %92

92:                                               ; preds = %88, %84, %77
  %93 = phi i32 [ %86, %84 ], [ %90, %88 ], [ %55, %77 ]
  %94 = phi i32 [ %85, %84 ], [ %91, %88 ], [ %47, %77 ]
  %95 = and i32 %93, 64
  %96 = or i32 %95, %94
  %97 = and i32 %93, 256
  %98 = icmp eq i32 %97, 0
  %99 = and i32 %93, 512
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i32 256, i32 384
  %102 = select i1 %98, i32 0, i32 %101
  %103 = or i32 %96, %102
  %104 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 0, ptr %104, align 4
  %105 = load i32, ptr %1, align 4
  %106 = and i32 %105, 16
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, i32 0, i32 5120
  store i32 %108, ptr %104, align 4
  %109 = load i32, ptr %1, align 4
  %110 = and i32 %109, 10
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %92
  %113 = or i32 %108, 2048
  store i32 %113, ptr %104, align 4
  br label %114

114:                                              ; preds = %112, %92
  %115 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 0, ptr %115, align 8
  %116 = load i32, ptr %1, align 4
  %117 = and i32 %116, 4
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 0, i32 5120
  store i32 %119, ptr %115, align 8
  %120 = load i32, ptr %1, align 4
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %114
  %124 = or i32 %119, 2048
  store i32 %124, ptr %115, align 8
  %125 = load i32, ptr %1, align 4
  %126 = and i32 %125, 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %123
  %129 = or i32 %119, 10240
  store i32 %129, ptr %115, align 8
  br label %130

130:                                              ; preds = %128, %123, %114
  %131 = phi i32 [ %124, %123 ], [ %129, %128 ], [ %119, %114 ]
  %132 = load i32, ptr %13, align 4
  %133 = and i32 %132, 128
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = or i32 %131, 65536
  store i32 %136, ptr %115, align 8
  %137 = load i32, ptr %13, align 4
  br label %138

138:                                              ; preds = %135, %130
  %139 = phi i32 [ %137, %135 ], [ %132, %130 ]
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %139, i32 noundef %28) #12
  %140 = load i32, ptr %25, align 8
  %141 = icmp eq i32 %28, 38400
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = udiv i32 %140, 614400
  %144 = icmp eq i32 %29, %143
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = shl i32 %29, 4
  %147 = udiv i32 %140, %146
  br label %148

148:                                              ; preds = %145, %142, %138
  %149 = phi i32 [ %147, %145 ], [ 38400, %142 ], [ %28, %138 ]
  %150 = shl i32 %149, 4
  %151 = udiv i32 %140, %150
  %152 = tail call i32 @llvm.umin.i32(i32 %151, i32 7)
  %153 = icmp eq i32 %152, 0
  %154 = select i1 %153, i32 1, i32 %152
  %155 = mul i32 %150, %154
  call void @rational_best_approximation(i32 noundef %155, i32 noundef %140, i32 noundef 65536, i32 noundef 65536, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %156 = load i32, ptr %25, align 8
  %157 = zext i32 %156 to i64
  %158 = load i32, ptr %4, align 4
  %159 = zext i32 %158 to i64
  %160 = mul nuw i64 %159, %157
  %161 = load i32, ptr %5, align 4
  %162 = shl i32 %161, 4
  %163 = mul i32 %162, %154
  %164 = icmp ult i64 %160, 4294967296
  br i1 %164, label %165, label %168, !prof !24

165:                                              ; preds = %148
  %166 = trunc i64 %160 to i32
  %167 = udiv i32 %166, %163
  br label %172

168:                                              ; preds = %148
  %169 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %163, i64 %160) #15, !srcloc !25
  %170 = extractvalue { i64, i64 } %169, 1
  %171 = trunc i64 %170 to i32
  br label %172

172:                                              ; preds = %168, %165
  %173 = phi i32 [ %167, %165 ], [ %171, %168 ]
  call void @tty_termios_encode_baud_rate(ptr noundef %1, i32 noundef %173, i32 noundef %173) #12
  %174 = load i32, ptr %4, align 4
  %175 = add i32 %174, -1
  store i32 %175, ptr %4, align 4
  %176 = load i32, ptr %5, align 4
  %177 = add i32 %176, -1
  store i32 %177, ptr %5, align 4
  %178 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 12
  %179 = load i32, ptr %178, align 4
  %180 = and i32 %179, -897
  %181 = icmp eq i32 %154, 7
  %182 = mul nsw i32 %154, -128
  %183 = add nsw i32 %182, 768
  %184 = select i1 %181, i32 768, i32 %183
  %185 = or i32 %180, %184
  store i32 %185, ptr %178, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %186 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %187 = load ptr, ptr %186, align 8
  %188 = getelementptr i8, ptr %187, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 %185) #12, !srcloc !16
  %189 = load ptr, ptr %186, align 8
  %190 = getelementptr i8, ptr %189, i32 164
  %191 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #12, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %192 = load ptr, ptr %186, align 8
  %193 = getelementptr i8, ptr %192, i32 168
  %194 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #12, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %195 = load i32, ptr %4, align 4
  %196 = icmp eq i32 %191, %195
  %197 = load i32, ptr %5, align 4
  %198 = icmp eq i32 %194, %197
  %199 = select i1 %196, i1 %198, i1 false
  br i1 %199, label %206, label %200

200:                                              ; preds = %172
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %201 = load ptr, ptr %186, align 8
  %202 = getelementptr i8, ptr %201, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %195) #12, !srcloc !16
  %203 = load i32, ptr %5, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %204 = load ptr, ptr %186, align 8
  %205 = getelementptr i8, ptr %204, i32 168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 %203) #12, !srcloc !16
  br label %206

206:                                              ; preds = %200, %172
  %207 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 6
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.imx_uart_data, ptr %208, i32 0, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %206
  %213 = load i32, ptr %25, align 8
  %214 = udiv i32 %213, %154
  %215 = udiv i32 %214, 1000
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %216 = load ptr, ptr %186, align 8
  %217 = getelementptr i8, ptr %216, i32 176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 %215) #12, !srcloc !16
  br label %218

218:                                              ; preds = %212, %206
  store i32 %103, ptr %31, align 8
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %219 = load ptr, ptr %186, align 8
  %220 = getelementptr i8, ptr %219, i32 132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %103) #12, !srcloc !16
  %221 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %222 = load i32, ptr %221, align 8
  %223 = and i32 %222, 2048
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %218
  %226 = load i32, ptr %13, align 4
  %227 = and i32 %226, -2147481600
  %228 = icmp eq i32 %227, 2048
  br i1 %228, label %234, label %229

229:                                              ; preds = %225, %218
  %230 = load volatile i32, ptr @jiffies, align 64
  %231 = call i32 @mod_timer(ptr noundef %23, i32 noundef %230) #12
  %232 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 7
  %233 = load ptr, ptr %232, align 8
  call void @mctrl_gpio_enable_ms(ptr noundef %233) #12
  br label %234

234:                                              ; preds = %229, %225
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %30) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @imx_uart_type(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 62
  %5 = select i1 %4, ptr @.str.32, ptr null
  ret ptr %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @imx_uart_config_port(ptr nocapture noundef writeonly %0, i32 noundef %1) #7 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 62, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @imx_uart_verify_port(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i32 %3, 62
  %6 = or i1 %4, %5
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  %12 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 9
  %13 = load i8, ptr %12, align 2
  %14 = icmp eq i8 %13, 2
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 4
  %18 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %17, %19
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = icmp eq i32 %22, %25
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %28, %30
  %32 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 11
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i1 %31, i1 false
  %36 = select i1 %35, i1 %26, i1 false
  %37 = select i1 %36, i1 %20, i1 false
  %38 = select i1 %37, i1 %14, i1 false
  %39 = select i1 %38, i1 %11, i1 false
  %40 = select i1 %39, i1 %6, i1 false
  %41 = select i1 %40, i32 0, i32 -22
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctrl_gpio_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @imx_uart_dma_tx(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 17
  %6 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 13
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %113

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 11
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, -9
  store i32 %17, ptr %15, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %17) #12, !srcloc !16
  %21 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %22, %24
  %26 = and i32 %25, 4095
  %27 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 24
  store i32 %26, ptr %27, align 8
  %28 = load i32, ptr %23, align 4
  %29 = load i32, ptr %21, align 4
  %30 = icmp slt i32 %28, %29
  %31 = icmp eq i32 %29, 0
  %32 = or i1 %30, %31
  %33 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 25
  br i1 %32, label %34, label %38

34:                                               ; preds = %14
  store i32 1, ptr %33, align 4
  %35 = load ptr, ptr %4, align 4
  %36 = load i32, ptr %23, align 4
  %37 = getelementptr i8, ptr %35, i32 %36
  tail call void @sg_init_one(ptr noundef %5, ptr noundef %37, i32 noundef %26) #12
  br label %77

38:                                               ; preds = %14
  store i32 2, ptr %33, align 4
  tail call void @sg_init_table(ptr noundef %5, i32 noundef 2) #12
  %39 = load ptr, ptr %4, align 4
  %40 = load i32, ptr %23, align 4
  %41 = getelementptr i8, ptr %39, i32 %40
  %42 = load ptr, ptr @mem_map, align 4
  %43 = ptrtoint ptr %41 to i32
  %44 = add i32 %43, 1073741824
  %45 = lshr i32 %44, 12
  %46 = getelementptr %struct.page, ptr %42, i32 %45
  %47 = ptrtoint ptr %46 to i32
  %48 = and i32 %47, 3
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50, !prof !24

50:                                               ; preds = %38
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !26
  unreachable

51:                                               ; preds = %38
  %52 = sub i32 4096, %40
  %53 = and i32 %43, 4095
  %54 = load i32, ptr %5, align 4
  %55 = and i32 %54, 3
  %56 = or i32 %55, %47
  store i32 %56, ptr %5, align 4
  %57 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i32 %53, ptr %57, align 4
  %58 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 %52, ptr %58, align 4
  %59 = load ptr, ptr %4, align 4
  %60 = ptrtoint ptr %59 to i32
  %61 = add i32 %60, 1073741824
  %62 = lshr i32 %61, 12
  %63 = getelementptr %struct.page, ptr %42, i32 %62
  %64 = ptrtoint ptr %63 to i32
  %65 = and i32 %64, 3
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67, !prof !24

67:                                               ; preds = %51
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !26
  unreachable

68:                                               ; preds = %51
  %69 = load i32, ptr %21, align 4
  %70 = getelementptr %struct.imx_port, ptr %0, i32 0, i32 17, i32 1
  %71 = and i32 %60, 4095
  %72 = load i32, ptr %70, align 4
  %73 = and i32 %72, 3
  %74 = or i32 %73, %64
  store i32 %74, ptr %70, align 4
  %75 = getelementptr %struct.imx_port, ptr %0, i32 0, i32 17, i32 1, i32 1
  store i32 %71, ptr %75, align 4
  %76 = getelementptr %struct.imx_port, ptr %0, i32 0, i32 17, i32 1, i32 2
  store i32 %69, ptr %76, align 4
  br label %77

77:                                               ; preds = %68, %34
  %78 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 25
  %79 = load i32, ptr %78, align 4
  %80 = tail call i32 @dma_map_sg_attrs(ptr noundef %9, ptr noundef %5, i32 noundef %79, i32 noundef 1, i32 noundef 0) #12
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.22) #13
  br label %113

83:                                               ; preds = %77
  %84 = icmp eq ptr %7, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %83
  %86 = load ptr, ptr %7, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %95, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.dma_device, ptr %86, i32 0, i32 39
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = tail call ptr %90(ptr noundef nonnull %7, ptr noundef %5, i32 noundef %80, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92, %88, %85, %83
  %96 = load i32, ptr %78, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %5, i32 noundef %96, i32 noundef 1, i32 noundef 0) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.23) #13
  br label %113

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %93, i32 0, i32 6
  store ptr @imx_uart_dma_tx_callback, ptr %98, align 4
  %99 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %93, i32 0, i32 8
  store ptr %0, ptr %99, align 4
  %100 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  %101 = load i32, ptr %100, align 4
  %102 = or i32 %101, 8
  store i32 %102, ptr %100, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %103 = load ptr, ptr %18, align 8
  %104 = getelementptr i8, ptr %103, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #12, !srcloc !16
  %105 = load i8, ptr %10, align 8
  %106 = or i8 %105, 4
  store i8 %106, ptr %10, align 8
  %107 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %93, i32 0, i32 4
  %108 = load ptr, ptr %107, align 4
  %109 = tail call i32 %108(ptr noundef nonnull %93) #12
  %110 = load ptr, ptr %7, align 4
  %111 = getelementptr inbounds %struct.dma_device, ptr %110, i32 0, i32 50
  %112 = load ptr, ptr %111, align 4
  tail call void %112(ptr noundef nonnull %7) #12
  br label %113

113:                                              ; preds = %97, %95, %82, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_uart_dma_tx_callback(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 17
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 25
  %9 = load i32, ptr %8, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %2, i32 noundef %9, i32 noundef 1, i32 noundef 0) #12
  %10 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -9
  store i32 %12, ptr %10, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #12, !srcloc !16
  %16 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 24
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %19, %17
  %21 = and i32 %20, 4095
  store i32 %21, ptr %16, align 4
  %22 = load i32, ptr %18, align 8
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 13
  %27 = load i8, ptr %26, align 8
  %28 = and i8 %27, -5
  store i8 %28, ptr %26, align 8
  %29 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %16, align 4
  %32 = sub i32 %30, %31
  %33 = and i32 %32, 3840
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  tail call void @uart_write_wakeup(ptr noundef %0) #12
  %36 = load i32, ptr %29, align 4
  %37 = load i32, ptr %16, align 4
  br label %38

38:                                               ; preds = %35, %1
  %39 = phi i32 [ %37, %35 ], [ %31, %1 ]
  %40 = phi i32 [ %36, %35 ], [ %30, %1 ]
  %41 = icmp eq i32 %40, %39
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr inbounds %struct.tty_port, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.tty_struct, ptr %45, i32 0, i32 19, i32 1
  %49 = load i8, ptr %48, align 4, !range !23
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47, %42
  %52 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call fastcc void @imx_uart_dma_tx(ptr noundef %0)
  br label %67

56:                                               ; preds = %51, %47, %38
  %57 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 11
  %63 = load i32, ptr %62, align 8
  %64 = or i32 %63, 8
  store i32 %64, ptr %62, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %65 = load ptr, ptr %13, align 8
  %66 = getelementptr i8, ptr %65, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #12, !srcloc !16
  br label %67

67:                                               ; preds = %61, %56, %55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_enable_ms(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @imx_uart_dma_exit(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = tail call i32 %8(ptr noundef nonnull %3) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 48
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void %16(ptr noundef nonnull %3) #12
  br label %19

19:                                               ; preds = %18, %13, %10, %5
  %20 = load ptr, ptr %2, align 4
  tail call void @dma_release_channel(ptr noundef %20) #12
  store ptr null, ptr %2, align 4
  %21 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 23
  store i32 -22, ptr %21, align 4
  %22 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 18
  %23 = load ptr, ptr %22, align 8
  tail call void @kfree(ptr noundef %23) #12
  store ptr null, ptr %22, align 8
  br label %24

24:                                               ; preds = %19, %1
  %25 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 15
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 47
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = tail call i32 %31(ptr noundef nonnull %26) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load ptr, ptr %26, align 4
  %38 = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 48
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void %39(ptr noundef nonnull %26) #12
  br label %42

42:                                               ; preds = %41, %36, %33, %28
  %43 = load ptr, ptr %25, align 8
  tail call void @dma_release_channel(ptr noundef %43) #12
  store ptr null, ptr %25, align 8
  br label %44

44:                                               ; preds = %42, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_uart_dma_rx_callback(ptr noundef %0) #2 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 16
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 23
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 49
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 %12(ptr noundef %4, i32 noundef %9, ptr noundef nonnull %2) #12
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %123

15:                                               ; preds = %1
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %18, i32 148
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %21 = load ptr, ptr %17, align 8
  %22 = getelementptr i8, ptr %21, i32 152
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #12, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %96, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %30 = load ptr, ptr %17, align 8
  %31 = getelementptr i8, ptr %30, i32 152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 4) #12, !srcloc !16
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 17
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  call void %34(ptr noundef %0) #12
  br label %37

37:                                               ; preds = %36, %26
  %38 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 48
  %39 = load i8, ptr %38, align 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %60, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.console, ptr %43, i32 0, i32 9
  %47 = load i16, ptr %46, align 2
  %48 = sext i16 %47 to i32
  %49 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, %48
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load volatile i32, ptr @jiffies, align 64
  %58 = add i32 %57, 500
  store i32 %58, ptr %53, align 4
  br label %68

59:                                               ; preds = %52
  store i32 0, ptr %53, align 4
  br label %60

60:                                               ; preds = %59, %45, %41, %37
  %61 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.tty_port, ptr %32, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  call void @do_SAK(ptr noundef %67) #12
  br label %68

68:                                               ; preds = %65, %60, %56
  %69 = getelementptr inbounds %struct.tty_bufhead, ptr %16, i32 0, i32 8
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.tty_buffer, ptr %70, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.tty_buffer, ptr %70, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.tty_buffer, ptr %70, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.tty_buffer, ptr %70, i32 0, i32 6
  %83 = getelementptr i8, ptr %82, i32 %77
  %84 = getelementptr i8, ptr %83, i32 %79
  store i8 1, ptr %84, align 1
  %85 = load i32, ptr %76, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %76, align 4
  %87 = getelementptr i8, ptr %82, i32 %85
  store i8 0, ptr %87, align 1
  br label %95

88:                                               ; preds = %75, %68
  %89 = call i32 @__tty_insert_flip_char(ptr noundef %16, i8 noundef zeroext 0, i8 noundef zeroext 1) #12
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 10
  %93 = load i32, ptr %92, align 8
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 8
  br label %95

95:                                               ; preds = %91, %88, %81
  call void @tty_flip_buffer_push(ptr noundef %16) #12
  br label %114

96:                                               ; preds = %15
  %97 = and i32 %20, 1024
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 6
  %101 = load i32, ptr %100, align 8
  %102 = add i32 %101, 1
  store i32 %102, ptr %100, align 8
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %103 = load ptr, ptr %17, align 8
  %104 = getelementptr i8, ptr %103, i32 148
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 1024) #12, !srcloc !16
  br label %114

105:                                              ; preds = %96
  %106 = and i32 %20, 32768
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 8
  %110 = load i32, ptr %109, align 8
  %111 = add i32 %110, 1
  store i32 %111, ptr %109, align 8
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %112 = load ptr, ptr %17, align 8
  %113 = getelementptr i8, ptr %112, i32 148
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 32768) #12, !srcloc !16
  br label %114

114:                                              ; preds = %108, %105, %99, %95
  %115 = and i32 %23, 2
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %176, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 7
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr %118, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %121 = load ptr, ptr %17, align 8
  %122 = getelementptr i8, ptr %121, i32 152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 2) #12, !srcloc !16
  br label %176

123:                                              ; preds = %1
  %124 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 65536
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %176

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 16, i32 4
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = sub i32 %130, %132
  %134 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 19, i32 1
  store i32 %133, ptr %134, align 4
  %135 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 22
  %136 = load i32, ptr %135, align 8
  %137 = udiv i32 %130, %136
  %138 = add i32 %133, -1
  %139 = urem i32 %138, %137
  %140 = sub i32 %138, %139
  %141 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 19, i32 2
  store i32 %140, ptr %141, align 4
  %142 = icmp uge i32 %130, %132
  %143 = icmp sgt i32 %133, %140
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %145, label %165

145:                                              ; preds = %128
  %146 = sub i32 %133, %140
  %147 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %148 = load ptr, ptr %147, align 8
  call void @dma_sync_sg_for_cpu(ptr noundef %148, ptr noundef %5, i32 noundef 1, i32 noundef 2) #12
  %149 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 18
  %150 = load ptr, ptr %149, align 8
  %151 = load i32, ptr %141, align 4
  %152 = getelementptr i8, ptr %150, i32 %151
  %153 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %7, ptr noundef %152, i8 noundef zeroext 0, i32 noundef %146) #12
  %154 = load ptr, ptr %147, align 8
  call void @dma_sync_sg_for_device(ptr noundef %154, ptr noundef %5, i32 noundef 1, i32 noundef 2) #12
  %155 = icmp eq i32 %153, %146
  br i1 %155, label %160, label %156

156:                                              ; preds = %145
  %157 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 10
  %158 = load i32, ptr %157, align 8
  %159 = add i32 %158, 1
  store i32 %159, ptr %157, align 8
  br label %160

160:                                              ; preds = %156, %145
  %161 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %162 = load i32, ptr %161, align 8
  %163 = add i32 %162, %153
  store i32 %163, ptr %161, align 8
  %164 = icmp eq i32 %153, 0
  br i1 %164, label %176, label %175

165:                                              ; preds = %128
  %166 = icmp ult i32 %130, %132
  br i1 %166, label %167, label %170, !prof !27

167:                                              ; preds = %165
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1180, i32 noundef 9, ptr noundef null) #12
  %168 = load i32, ptr %134, align 4
  %169 = load i32, ptr %141, align 4
  br label %170

170:                                              ; preds = %167, %165
  %171 = phi i32 [ %169, %167 ], [ %140, %165 ]
  %172 = phi i32 [ %168, %167 ], [ %133, %165 ]
  %173 = icmp sgt i32 %172, %171
  br i1 %173, label %176, label %174, !prof !24

174:                                              ; preds = %170
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1181, i32 noundef 9, ptr noundef null) #12
  br label %176

175:                                              ; preds = %160
  call void @tty_flip_buffer_push(ptr noundef %7) #12
  br label %176

176:                                              ; preds = %175, %174, %170, %160, %123, %117, %114
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_disable_ms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_divisor(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rational_best_approximation(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @imx_uart_mctrl_check(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 148
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr i8, ptr %6, i32 152
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %9 = and i32 %5, 16384
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 256, i32 288
  %12 = shl i32 %8, 1
  %13 = and i32 %12, 64
  %14 = or i32 %13, %11
  %15 = xor i32 %14, 64
  %16 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 3
  %17 = load i8, ptr %16, align 8
  %18 = and i8 %17, 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr i8, ptr %21, i32 152
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %24 = lshr i32 %23, 2
  %25 = and i32 %24, 128
  %26 = or i32 %25, %15
  %27 = xor i32 %26, 128
  br label %28

28:                                               ; preds = %20, %1
  %29 = phi i32 [ %15, %1 ], [ %27, %20 ]
  %30 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = xor i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %28
  store i32 %29, ptr %30, align 4
  %35 = and i32 %32, 128
  %36 = icmp eq i32 %35, 0
  %37 = and i32 %29, 128
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = and i32 %32, 256
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = and i32 %32, 64
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = and i32 %29, 64
  tail call void @uart_handle_dcd_change(ptr noundef %0, i32 noundef %55) #12
  br label %56

56:                                               ; preds = %54, %51
  %57 = and i32 %32, 32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = and i32 %29, 32
  tail call void @uart_handle_cts_change(ptr noundef %0, i32 noundef %60) #12
  br label %61

61:                                               ; preds = %59, %56
  %62 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.tty_port, ptr %63, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %64, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %65

65:                                               ; preds = %61, %28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__imx_uart_rxint(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 152
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %187, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 17
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 48
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 9
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 8
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 6
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 7
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %24 = getelementptr inbounds %struct.tty_bufhead, ptr %3, i32 0, i32 8
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 10
  br label %26

26:                                               ; preds = %180, %10
  %27 = phi i32 [ 0, %10 ], [ %181, %180 ]
  %28 = load i32, ptr %11, align 8
  %29 = add i32 %28, 1
  store i32 %29, ptr %11, align 8
  %30 = load ptr, ptr %4, align 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr i8, ptr %32, i32 152
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %70, label %37

37:                                               ; preds = %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr i8, ptr %38, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 4) #12, !srcloc !16
  %40 = load ptr, ptr %2, align 4
  %41 = load ptr, ptr %12, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void %41(ptr noundef %0) #12
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i8, ptr %13, align 4
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %14, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.console, ptr %48, i32 0, i32 9
  %52 = load i16, ptr %51, align 2
  %53 = sext i16 %52 to i32
  %54 = load i32, ptr %15, align 4
  %55 = icmp eq i32 %54, %53
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, ptr %16, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  store i32 0, ptr %16, align 4
  br label %60

60:                                               ; preds = %59, %50, %47, %44
  %61 = load i32, ptr %17, align 4
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.tty_port, ptr %40, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  tail call void @do_SAK(ptr noundef %66) #12
  br label %70

67:                                               ; preds = %56
  %68 = load volatile i32, ptr @jiffies, align 64
  %69 = add i32 %68, 500
  store i32 %69, ptr %16, align 4
  br label %180

70:                                               ; preds = %64, %60, %26
  %71 = and i32 %31, 255
  %72 = load i32, ptr %16, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %70
  %75 = icmp eq i32 %71, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %74
  %77 = load volatile i32, ptr @jiffies, align 64
  %78 = sub i32 %77, %72
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = tail call i32 @sysrq_mask() #12
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %0, i32 noundef %71) #12
  br i1 %84, label %180, label %85

85:                                               ; preds = %83, %76, %74
  store i32 0, ptr %16, align 4
  br label %87

86:                                               ; preds = %80
  tail call void @handle_sysrq(i32 noundef %71) #12
  store i32 0, ptr %16, align 4
  br label %180

87:                                               ; preds = %85, %70
  %88 = and i32 %31, 16384
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92, !prof !24

90:                                               ; preds = %87
  %91 = load i32, ptr %22, align 8
  br label %141

92:                                               ; preds = %87
  %93 = and i32 %31, 2048
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %18, align 4
  %97 = add i32 %96, 1
  store i32 %97, ptr %18, align 4
  br label %110

98:                                               ; preds = %92
  %99 = and i32 %31, 1024
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr %19, align 8
  %103 = add i32 %102, 1
  store i32 %103, ptr %19, align 8
  br label %110

104:                                              ; preds = %98
  %105 = and i32 %31, 4096
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr %20, align 8
  %109 = add i32 %108, 1
  store i32 %109, ptr %20, align 8
  br label %110

110:                                              ; preds = %107, %104, %101, %95
  %111 = and i32 %31, 8192
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %21, align 4
  %115 = add i32 %114, 1
  store i32 %115, ptr %21, align 4
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, ptr %22, align 8
  %118 = and i32 %117, %31
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = add i32 %27, 1
  %122 = icmp ugt i32 %121, 100
  br i1 %122, label %187, label %180

123:                                              ; preds = %116
  %124 = load i32, ptr %23, align 4
  %125 = or i32 %124, 255
  %126 = and i32 %125, %31
  %127 = and i32 %126, 2048
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = and i32 %126, 1024
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = lshr i32 %126, 11
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 2
  br label %136

136:                                              ; preds = %132, %129, %123
  %137 = phi i8 [ 1, %123 ], [ 3, %129 ], [ %135, %132 ]
  %138 = and i32 %126, 8192
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %139, i8 %137, i8 4
  store i32 0, ptr %16, align 4
  br label %141

141:                                              ; preds = %136, %90
  %142 = phi i32 [ %117, %136 ], [ %91, %90 ]
  %143 = phi i32 [ %126, %136 ], [ %31, %90 ]
  %144 = phi i8 [ %140, %136 ], [ 0, %90 ]
  %145 = and i32 %142, 65536
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %187

147:                                              ; preds = %141
  %148 = trunc i32 %143 to i8
  %149 = load ptr, ptr %24, align 4
  %150 = getelementptr inbounds %struct.tty_buffer, ptr %149, i32 0, i32 5
  %151 = load i32, ptr %150, align 4
  %152 = and i32 %151, 1
  %153 = icmp ne i32 %152, 0
  %154 = icmp ne i8 %144, 0
  %155 = and i1 %154, %153
  br i1 %155, label %174, label %156

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.tty_buffer, ptr %149, i32 0, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr inbounds %struct.tty_buffer, ptr %149, i32 0, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %156
  %163 = icmp eq i32 %152, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %162
  %165 = getelementptr inbounds %struct.tty_buffer, ptr %149, i32 0, i32 6
  %166 = getelementptr i8, ptr %165, i32 %158
  %167 = getelementptr i8, ptr %166, i32 %160
  store i8 %144, ptr %167, align 1
  %168 = load i32, ptr %157, align 4
  br label %169

169:                                              ; preds = %164, %162
  %170 = phi i32 [ %168, %164 ], [ %158, %162 ]
  %171 = add i32 %170, 1
  store i32 %171, ptr %157, align 4
  %172 = getelementptr inbounds %struct.tty_buffer, ptr %149, i32 0, i32 6
  %173 = getelementptr i8, ptr %172, i32 %170
  store i8 %148, ptr %173, align 1
  br label %180

174:                                              ; preds = %156, %147
  %175 = tail call i32 @__tty_insert_flip_char(ptr noundef %3, i8 noundef zeroext %148, i8 noundef zeroext %144) #12
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, ptr %25, align 8
  %179 = add i32 %178, 1
  store i32 %179, ptr %25, align 8
  br label %180

180:                                              ; preds = %177, %174, %169, %120, %86, %83, %67
  %181 = phi i32 [ %27, %67 ], [ %27, %86 ], [ %121, %120 ], [ %27, %177 ], [ %27, %174 ], [ %27, %169 ], [ %27, %83 ]
  %182 = load ptr, ptr %4, align 8
  %183 = getelementptr i8, ptr %182, i32 152
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %185 = and i32 %184, 1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %26

187:                                              ; preds = %180, %141, %120, %1
  tail call void @tty_flip_buffer_push(ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @imx_uart_transmit_buffer(ptr noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 24
  %6 = load i8, ptr %5, align 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = zext i8 %6 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #12, !srcloc !16
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  store i8 0, ptr %5, align 8
  br label %126

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tty_struct, ptr %24, i32 0, i32 19, i32 1
  %28 = load i8, ptr %27, align 4, !range !23
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30, %26, %16
  tail call void @imx_uart_stop_tx(ptr noundef %0)
  br label %126

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 13
  %37 = load i8, ptr %36, align 8
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 6
  %42 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 12
  %43 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 11
  %44 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 10
  %45 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 9
  %46 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %47 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  %48 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  br label %64

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, -8193
  %53 = and i8 %37, 4
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = or i32 %52, 8
  store i32 %56, ptr %50, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %57 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr i8, ptr %58, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %56) #12, !srcloc !16
  br label %126

60:                                               ; preds = %49
  store i32 %52, ptr %50, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %61 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr i8, ptr %62, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %52) #12, !srcloc !16
  tail call fastcc void @imx_uart_dma_tx(ptr noundef %0)
  br label %126

64:                                               ; preds = %96, %40
  %65 = load ptr, ptr %41, align 4
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, -128
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 30) #12
  switch i32 %68, label %85 [
    i32 0, label %69
    i32 1, label %71
    i32 2, label %79
    i32 3, label %81
    i32 4, label %83
  ]

69:                                               ; preds = %64
  %70 = load i32, ptr %47, align 4
  br label %89

71:                                               ; preds = %64
  %72 = load i32, ptr %45, align 8
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load ptr, ptr %46, align 8
  %77 = getelementptr i8, ptr %76, i32 %66
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  store i32 %78, ptr %45, align 8
  br label %89

79:                                               ; preds = %64
  %80 = load i32, ptr %44, align 4
  br label %89

81:                                               ; preds = %64
  %82 = load i32, ptr %43, align 8
  br label %89

83:                                               ; preds = %64
  %84 = load i32, ptr %42, align 4
  br label %89

85:                                               ; preds = %64
  %86 = load ptr, ptr %46, align 8
  %87 = getelementptr i8, ptr %86, i32 %66
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  br label %89

89:                                               ; preds = %85, %83, %81, %79, %75, %71, %69
  %90 = phi i32 [ %88, %85 ], [ %84, %83 ], [ %82, %81 ], [ %80, %79 ], [ %70, %69 ], [ %78, %75 ], [ %72, %71 ]
  %91 = and i32 %90, 16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load i32, ptr %17, align 4
  %95 = load i32, ptr %19, align 4
  br label %112

96:                                               ; preds = %89
  %97 = load ptr, ptr %4, align 4
  %98 = load i32, ptr %19, align 4
  %99 = getelementptr i8, ptr %97, i32 %98
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %102 = load ptr, ptr %46, align 8
  %103 = getelementptr i8, ptr %102, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #12, !srcloc !16
  %104 = load i32, ptr %19, align 4
  %105 = add i32 %104, 1
  %106 = and i32 %105, 4095
  store i32 %106, ptr %19, align 4
  %107 = load i32, ptr %48, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %48, align 4
  %109 = load i32, ptr %17, align 4
  %110 = load i32, ptr %19, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %64

112:                                              ; preds = %96, %93
  %113 = phi i32 [ %95, %93 ], [ %109, %96 ]
  %114 = phi i32 [ %94, %93 ], [ %109, %96 ]
  %115 = sub i32 %114, %113
  %116 = and i32 %115, 3840
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  tail call void @uart_write_wakeup(ptr noundef %0) #12
  %119 = load i32, ptr %17, align 4
  %120 = load i32, ptr %19, align 4
  br label %121

121:                                              ; preds = %118, %112
  %122 = phi i32 [ %120, %118 ], [ %113, %112 ]
  %123 = phi i32 [ %119, %118 ], [ %114, %112 ]
  %124 = icmp eq i32 %123, %122
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  tail call void @imx_uart_stop_tx(ptr noundef %0)
  br label %126

126:                                              ; preds = %125, %121, %60, %55, %34, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_suspend_port(ptr noundef nonnull @imx_uart_uart_driver, ptr noundef %3) #12
  %5 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 20
  %6 = load i32, ptr %5, align 8
  tail call void @disable_irq(i32 noundef %6) #12
  %7 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %1
  %12 = tail call i32 @clk_enable(ptr noundef %8) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %8) #12
  br label %36

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %18 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 16) #12, !srcloc !16
  %21 = or i32 %17, 16
  store i32 %21, ptr %16, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %22 = load ptr, ptr %18, align 8
  %23 = getelementptr i8, ptr %22, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #12, !srcloc !16
  %24 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 3
  %25 = load i8, ptr %24, align 8
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %31 = load ptr, ptr %18, align 8
  %32 = getelementptr i8, ptr %31, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 4096) #12, !srcloc !16
  %33 = or i32 %30, 32
  store i32 %33, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %34 = load ptr, ptr %18, align 8
  %35 = getelementptr i8, ptr %34, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #12, !srcloc !16
  br label %36

36:                                               ; preds = %28, %15, %14, %1
  %37 = phi i32 [ 0, %15 ], [ 0, %28 ], [ %12, %14 ], [ %9, %1 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -17
  store i32 %6, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %7 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #12, !srcloc !16
  %10 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 3
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, -33
  store i32 %17, ptr %15, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr i8, ptr %18, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #12, !srcloc !16
  br label %20

20:                                               ; preds = %14, %1
  %21 = tail call i32 @uart_resume_port(ptr noundef nonnull @imx_uart_uart_driver, ptr noundef %3) #12
  %22 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 20
  %23 = load i32, ptr %22, align 8
  tail call void @enable_irq(i32 noundef %23) #12
  %24 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %25) #12
  tail call void @clk_unprepare(ptr noundef %25) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_freeze(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_suspend_port(ptr noundef nonnull @imx_uart_uart_driver, ptr noundef %3) #12
  %5 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #12
  br label %13

13:                                               ; preds = %12, %9, %1
  %14 = phi i32 [ %7, %1 ], [ %10, %12 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_thaw(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_resume_port(ptr noundef nonnull @imx_uart_uart_driver, ptr noundef %3) #12
  %5 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %6) #12
  tail call void @clk_unprepare(ptr noundef %6) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_suspend_noirq(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %5 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 26
  store i32 %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 9
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i32 132
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  store i32 %16, ptr %8, align 8
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i32 [ %16, %12 ], [ %9, %1 ]
  %19 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 2
  store i32 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 11
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 4
  store i32 %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr i8, ptr %30, i32 156
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %33 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 5
  store i32 %32, ptr %33, align 4
  %34 = load ptr, ptr %29, align 8
  %35 = getelementptr i8, ptr %34, i32 160
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %37 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 6
  store i32 %36, ptr %37, align 8
  %38 = load ptr, ptr %29, align 8
  %39 = getelementptr i8, ptr %38, i32 164
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %41 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 7
  store i32 %40, ptr %41, align 4
  %42 = load ptr, ptr %29, align 8
  %43 = getelementptr i8, ptr %42, i32 168
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %45 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 8
  store i32 %44, ptr %45, align 8
  %46 = load ptr, ptr %29, align 8
  %47 = getelementptr i8, ptr %46, i32 180
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %49 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 9
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 27
  store i8 1, ptr %50, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #12
  %51 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  tail call void @clk_disable(ptr noundef %52) #12
  %53 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_resume_noirq(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_enable(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %63

9:                                                ; preds = %1
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %11 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 27
  %12 = load i8, ptr %11, align 8, !range !23
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %62, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 26
  %16 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 12
  store i32 %17, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %19 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #12, !srcloc !16
  %22 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 5
  %23 = load i32, ptr %22, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %24 = load ptr, ptr %19, align 8
  %25 = getelementptr i8, ptr %24, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #12, !srcloc !16
  %26 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 6
  %27 = load i32, ptr %26, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %28 = load ptr, ptr %19, align 8
  %29 = getelementptr i8, ptr %28, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #12, !srcloc !16
  %30 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 7
  %31 = load i32, ptr %30, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %32 = load ptr, ptr %19, align 8
  %33 = getelementptr i8, ptr %32, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #12, !srcloc !16
  %34 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 8
  %35 = load i32, ptr %34, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %36 = load ptr, ptr %19, align 8
  %37 = getelementptr i8, ptr %36, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #12, !srcloc !16
  %38 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 9
  %39 = load i32, ptr %38, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %40 = load ptr, ptr %19, align 8
  %41 = getelementptr i8, ptr %40, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #12, !srcloc !16
  %42 = load i32, ptr %15, align 8
  %43 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 8
  store i32 %42, ptr %43, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %44 = load ptr, ptr %19, align 8
  %45 = getelementptr i8, ptr %44, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %42) #12, !srcloc !16
  %46 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, 1
  %49 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 9
  store i32 %48, ptr %49, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %50 = load ptr, ptr %19, align 8
  %51 = getelementptr i8, ptr %50, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %48) #12, !srcloc !16
  %52 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 10
  store i32 %53, ptr %54, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %55 = load ptr, ptr %19, align 8
  %56 = getelementptr i8, ptr %55, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %53) #12, !srcloc !16
  %57 = getelementptr %struct.imx_port, ptr %3, i32 0, i32 26, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.imx_port, ptr %3, i32 0, i32 11
  store i32 %58, ptr %59, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %60 = load ptr, ptr %19, align 8
  %61 = getelementptr i8, ptr %60, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %58) #12, !srcloc !16
  store i8 0, ptr %11, align 8
  br label %62

62:                                               ; preds = %14, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %10) #12
  br label %63

63:                                               ; preds = %62, %1
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_uart_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr [8 x ptr], ptr @imx_uart_ports, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 46
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i32, ptr @oops_in_progress, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !28
  %17 = tail call i32 @_raw_spin_trylock(ptr noundef %8) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #12, !srcloc !29
  br label %22

20:                                               ; preds = %12
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #12
  br label %22

22:                                               ; preds = %20, %19, %15, %3
  %23 = phi i1 [ true, %19 ], [ false, %15 ], [ true, %3 ], [ false, %20 ]
  %24 = phi i32 [ %16, %19 ], [ %16, %15 ], [ 0, %3 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.imx_port, ptr %8, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.imx_port, ptr %8, i32 0, i32 9
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr i8, ptr %33, i32 132
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  store i32 %35, ptr %27, align 8
  br label %36

36:                                               ; preds = %31, %22
  %37 = phi i32 [ %35, %31 ], [ %28, %22 ]
  %38 = getelementptr inbounds %struct.imx_port, ptr %8, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.imx_port, ptr %8, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.imx_uart_data, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  %45 = or i32 %26, 4
  %46 = select i1 %44, i32 %45, i32 %26
  %47 = and i32 %46, -8738
  %48 = or i32 %47, 1
  store i32 %48, ptr %25, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %49 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr i8, ptr %50, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %48) #12, !srcloc !16
  %52 = or i32 %37, 4
  store i32 %52, ptr %27, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %53 = load ptr, ptr %49, align 8
  %54 = getelementptr i8, ptr %53, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #12, !srcloc !16
  tail call void @uart_console_write(ptr noundef %8, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @imx_uart_console_putchar) #12
  br label %55

55:                                               ; preds = %55, %36
  %56 = load ptr, ptr %49, align 8
  %57 = getelementptr i8, ptr %56, i32 152
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %59 = and i32 %58, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %55, label %61

61:                                               ; preds = %55
  store i32 %26, ptr %25, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %62 = load ptr, ptr %49, align 8
  %63 = getelementptr i8, ptr %62, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %26) #12, !srcloc !16
  store i32 %37, ptr %27, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %64 = load ptr, ptr %49, align 8
  %65 = getelementptr i8, ptr %64, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %37) #12, !srcloc !16
  store i32 %39, ptr %38, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %66 = load ptr, ptr %49, align 8
  %67 = getelementptr i8, ptr %66, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %39) #12, !srcloc !16
  br i1 %23, label %69, label %68

68:                                               ; preds = %61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %24) #12
  br label %69

69:                                               ; preds = %68, %61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_console_setup(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 9600, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 110, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 110, ptr %6, align 4
  %7 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 2
  %9 = icmp ugt i16 %8, 7
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i16 0, ptr %7, align 2
  br label %11

11:                                               ; preds = %10, %2
  %12 = phi i16 [ %8, %2 ], [ 0, %10 ]
  %13 = zext i16 %12 to i32
  %14 = getelementptr [8 x ptr], ptr @imx_uart_ports, i32 0, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %124, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.imx_port, ptr %15, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_prepare(ptr noundef %19) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %124

22:                                               ; preds = %17
  %23 = tail call i32 @clk_enable(ptr noundef %19) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %19) #12
  br label %124

26:                                               ; preds = %22
  %27 = icmp eq ptr %1, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #12
  br label %96

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.imx_port, ptr %15, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %96, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.imx_port, ptr %15, i32 0, i32 9
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.uart_port, ptr %15, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr i8, ptr %41, i32 132
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  store i32 %43, ptr %35, align 8
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i32 [ %43, %39 ], [ %36, %34 ]
  %46 = and i32 %45, 256
  %47 = icmp eq i32 %46, 0
  %48 = and i32 %45, 128
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 101, i32 111
  %51 = select i1 %47, i32 110, i32 %50
  store i32 %51, ptr %5, align 4
  %52 = and i32 %45, 32
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 7, i32 8
  store i32 %54, ptr %4, align 4
  %55 = getelementptr inbounds %struct.uart_port, ptr %15, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr i8, ptr %56, i32 164
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %59 = and i32 %58, 65535
  %60 = load ptr, ptr %55, align 8
  %61 = getelementptr i8, ptr %60, i32 168
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %63 = getelementptr inbounds %struct.imx_port, ptr %15, i32 0, i32 12
  %64 = load i32, ptr %63, align 4
  %65 = lshr i32 %64, 7
  %66 = and i32 %65, 7
  %67 = icmp eq i32 %66, 6
  %68 = sub nsw i32 6, %66
  %69 = select i1 %67, i32 7, i32 %68
  %70 = getelementptr inbounds %struct.imx_port, ptr %15, i32 0, i32 5
  %71 = load ptr, ptr %70, align 8
  %72 = tail call i32 @clk_get_rate(ptr noundef %71) #12
  %73 = udiv i32 %72, %69
  %74 = add nuw nsw i32 %59, 1
  %75 = shl i32 %62, 4
  %76 = and i32 %75, 1048560
  %77 = add nuw nsw i32 %76, 16
  %78 = freeze i32 %73
  %79 = freeze i32 %77
  %80 = udiv i32 %78, %79
  %81 = mul i32 %80, %79
  %82 = sub i32 %78, %81
  %83 = mul i32 %80, %74
  %84 = mul i32 %82, %74
  %85 = lshr exact i32 %77, 1
  %86 = add i32 %84, %85
  %87 = udiv i32 %86, %77
  %88 = add i32 %83, %87
  %89 = add i32 %88, 50
  %90 = urem i32 %89, 100
  %91 = sub i32 %89, %90
  store i32 %91, ptr %3, align 4
  %92 = icmp eq i32 %91, %88
  br i1 %92, label %96, label %93

93:                                               ; preds = %44
  %94 = getelementptr inbounds %struct.uart_port, ptr %15, i32 0, i32 45
  %95 = load ptr, ptr %94, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %95, ptr noundef nonnull @.str.35, i32 noundef %88, i32 noundef %91) #13
  br label %96

96:                                               ; preds = %93, %44, %29, %28
  %97 = getelementptr inbounds %struct.imx_port, ptr %15, i32 0, i32 12
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, 960
  %100 = or i32 %99, 2049
  store i32 %100, ptr %97, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  call void @arm_heavy_mb() #12
  %101 = getelementptr inbounds %struct.uart_port, ptr %15, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr i8, ptr %102, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %100) #12, !srcloc !16
  %104 = load i32, ptr %3, align 4
  %105 = load i32, ptr %5, align 4
  %106 = load i32, ptr %4, align 4
  %107 = load i32, ptr %6, align 4
  %108 = call i32 @uart_set_options(ptr noundef nonnull %15, ptr noundef %0, i32 noundef %104, i32 noundef %105, i32 noundef %106, i32 noundef %107) #12
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %96
  %111 = load ptr, ptr %18, align 4
  call void @clk_disable(ptr noundef %111) #12
  call void @clk_unprepare(ptr noundef %111) #12
  br label %124

112:                                              ; preds = %96
  %113 = getelementptr inbounds %struct.imx_port, ptr %15, i32 0, i32 5
  %114 = load ptr, ptr %113, align 8
  %115 = call i32 @clk_prepare(ptr noundef %114) #12
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = call i32 @clk_enable(ptr noundef %114) #12
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  call void @clk_unprepare(ptr noundef %114) #12
  br label %121

121:                                              ; preds = %120, %112
  %122 = phi i32 [ %118, %120 ], [ %115, %112 ]
  %123 = load ptr, ptr %18, align 4
  call void @clk_disable(ptr noundef %123) #12
  call void @clk_unprepare(ptr noundef %123) #12
  br label %124

124:                                              ; preds = %121, %117, %110, %25, %17, %11
  %125 = phi i32 [ -19, %11 ], [ %108, %110 ], [ %122, %121 ], [ 0, %117 ], [ %23, %25 ], [ %20, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_uart_console_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %3 = load i16, ptr %2, align 2
  %4 = sext i16 %3 to i32
  %5 = getelementptr [8 x ptr], ptr @imx_uart_ports, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  tail call void @clk_disable(ptr noundef %8) #12
  tail call void @clk_unprepare(ptr noundef %8) #12
  %9 = getelementptr inbounds %struct.imx_port, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #12
  tail call void @clk_unprepare(ptr noundef %10) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_uart_console_putchar(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 12
  %5 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 11
  %6 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 10
  %7 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 9
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.imx_port, ptr %0, i32 0, i32 8
  br label %10

10:                                               ; preds = %39, %2
  %11 = load ptr, ptr %3, align 4
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -128
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 30) #12
  switch i32 %14, label %31 [
    i32 0, label %15
    i32 1, label %17
    i32 2, label %25
    i32 3, label %27
    i32 4, label %29
  ]

15:                                               ; preds = %10
  %16 = load i32, ptr %9, align 4
  br label %35

17:                                               ; preds = %10
  %18 = load i32, ptr %7, align 8
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load ptr, ptr %8, align 8
  %23 = getelementptr i8, ptr %22, i32 %12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  store i32 %24, ptr %7, align 8
  br label %35

25:                                               ; preds = %10
  %26 = load i32, ptr %6, align 4
  br label %35

27:                                               ; preds = %10
  %28 = load i32, ptr %5, align 8
  br label %35

29:                                               ; preds = %10
  %30 = load i32, ptr %4, align 4
  br label %35

31:                                               ; preds = %10
  %32 = load ptr, ptr %8, align 8
  %33 = getelementptr i8, ptr %32, i32 %12
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #12, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  br label %35

35:                                               ; preds = %31, %29, %27, %25, %21, %17, %15
  %36 = phi i32 [ %34, %31 ], [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %16, %15 ], [ %24, %21 ], [ %18, %17 ]
  %37 = and i32 %36, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  br label %10

40:                                               ; preds = %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %41 = load ptr, ptr %8, align 8
  %42 = getelementptr i8, ptr %41, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %1) #12, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }

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
!9 = !{i64 4726375}
!10 = !{i64 2153491881}
!11 = !{i64 2153492247}
!12 = !{i64 2153492613}
!13 = !{i64 2153492979}
!14 = !{i64 2153493345}
!15 = !{i64 2153453690}
!16 = !{i64 4725957}
!17 = !{i64 2153454214}
!18 = !{i64 2148994477}
!19 = !{i64 2148990301}
!20 = !{i64 2148990376, i64 2148990403, i64 2148990450, i64 2148990472, i64 2148990500, i64 2148990520}
!21 = !{i64 2149017480}
!22 = !{i64 2153454596}
!23 = !{i8 0, i8 2}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2147958354, i64 2147958634, i64 2147958968, i64 2147959302}
!26 = !{i64 2153320847, i64 2153321339, i64 2153320884, i64 2153320940, i64 2153320974, i64 2153320998, i64 2153321039, i64 2153321060, i64 2153321088, i64 2153321122}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 515630, i64 515691}
!29 = !{i64 518647}
!30 = !{i64 2153480747}
