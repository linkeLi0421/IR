; ModuleID = '/llk/IR/drivers/tty/serial/stm32-usart.c_pt.bc'
source_filename = "../drivers/tty/serial/stm32-usart.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stm32_usart_info = type { %struct.stm32_usart_offsets, %struct.stm32_usart_config }
%struct.stm32_usart_offsets = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.stm32_usart_config = type { i8, i8, i8, i8, i8, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stm32_port = type { %struct.uart_port, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i8, i32, ptr, %struct.dma_tx_state }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.34, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.34 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }

@stm32f4_info = dso_local global %struct.stm32_usart_info { %struct.stm32_usart_offsets { i8 12, i8 16, i8 20, i8 8, i8 24, i8 -1, i8 -1, i8 0, i8 -1, i8 4, i8 4 }, %struct.stm32_usart_config { i8 13, i8 0, i8 0, i8 0, i8 0, i32 1 } }, align 4
@stm32f7_info = dso_local global %struct.stm32_usart_info { %struct.stm32_usart_offsets { i8 0, i8 4, i8 8, i8 12, i8 16, i8 20, i8 24, i8 28, i8 32, i8 36, i8 40 }, %struct.stm32_usart_config { i8 0, i8 1, i8 1, i8 0, i8 0, i32 1 } }, align 4
@stm32h7_info = dso_local global %struct.stm32_usart_info { %struct.stm32_usart_offsets { i8 0, i8 4, i8 8, i8 12, i8 16, i8 20, i8 24, i8 28, i8 32, i8 36, i8 40 }, %struct.stm32_usart_config { i8 0, i8 1, i8 1, i8 1, i8 1, i32 16 } }, align 4
@stm32_serial_driver = internal global %struct.platform_driver { ptr @stm32_usart_serial_probe, ptr @stm32_usart_serial_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_serial_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@stm32_usart_driver = internal global %struct.uart_driver { ptr null, ptr @.str, ptr @.str.20, i32 0, i32 0, i32 8, ptr @stm32_console, ptr null, ptr null }, align 4
@__initcall__kmod_stm32_usart__229_1899_stm32_usart_init6 = internal global ptr @stm32_usart_init, section ".initcall6.init", align 4
@__exitcall_stm32_usart_exit = internal global ptr @stm32_usart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias230 = internal constant [39 x i8] c"stm32_usart.alias=platform:stm32-usart\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [68 x i8] c"stm32_usart.description=STMicroelectronics STM32 serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [48 x i8] c"stm32_usart.file=drivers/tty/serial/stm32-usart\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [27 x i8] c"stm32_usart.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"stm32-usart\00", align 1
@stm32_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32f4_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f7-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32f7_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_info }, %struct.of_device_id zeroinitializer], align 4
@stm32_serial_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_usart_serial_suspend, ptr @stm32_usart_serial_resume, ptr @stm32_usart_serial_suspend, ptr @stm32_usart_serial_resume, ptr @stm32_usart_serial_suspend, ptr @stm32_usart_serial_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_usart_runtime_suspend, ptr @stm32_usart_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"interrupt mode for rx (no dma)\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"interrupt mode for tx (no dma)\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to get alias id, errno %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"drivers/tty/serial/stm32-usart.c\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"st,hw-flow-ctrl\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"uart-has-rtscts\00", align 1
@stm32_ports = internal global [8 x %struct.stm32_port] zeroinitializer, align 4
@stm32_uart_ops = internal constant %struct.uart_ops { ptr @stm32_usart_tx_empty, ptr @stm32_usart_set_mctrl, ptr @stm32_usart_get_mctrl, ptr @stm32_usart_stop_tx, ptr @stm32_usart_start_tx, ptr @stm32_usart_throttle, ptr @stm32_usart_unthrottle, ptr null, ptr @stm32_usart_stop_rx, ptr @stm32_usart_enable_ms, ptr @stm32_usart_break_ctl, ptr @stm32_usart_startup, ptr @stm32_usart_shutdown, ptr @stm32_usart_flush_buffer, ptr @stm32_usart_set_termios, ptr null, ptr @stm32_usart_pm, ptr @stm32_usart_type, ptr @stm32_usart_release_port, ptr @stm32_usart_request_port, ptr @stm32_usart_config_port, ptr @stm32_usart_verify_port, ptr null }, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"rx-tx-swap\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"rx-threshold\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"tx-threshold\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Conflicting RTS/CTS config\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"1 character may be erased\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.16 = private unnamed_addr constant [27 x i8] c"rx dma prep cyclic failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Transmission is not complete\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"rx dma channel config failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"tx dma channel config failed\0A\00", align 1
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"ttySTM\00", align 1
@stm32_console = internal global %struct.console { [16 x i8] c"ttySTM\00\00\00\00\00\00\00\00\00\00", ptr @stm32_usart_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @stm32_usart_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @stm32_usart_driver, ptr null }, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@stm32_usart_init.banner = internal global [31 x i8] c"STM32 USART driver initialized\00", section ".init.data", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"\016%s\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_stm32_usart_exit, ptr @__initcall__kmod_stm32_usart__229_1899_stm32_usart_init6, ptr @stm32_usart_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stm32_usart_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_serial_driver) #11
  tail call void @uart_unregister_driver(ptr noundef nonnull @stm32_usart_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32_usart_init() #0 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @stm32_usart_init.banner) #12
  %2 = tail call i32 @uart_register_driver(ptr noundef nonnull @stm32_usart_driver) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_serial_driver, ptr noundef null) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @uart_unregister_driver(ptr noundef nonnull @stm32_usart_driver) #11
  br label %8

8:                                                ; preds = %7, %4, %0
  %9 = phi i32 [ %2, %0 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usart_serial_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %296, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @of_alias_get_id(ptr noundef nonnull %7, ptr noundef nonnull @.str.5) #11
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %10) #12
  br label %296

13:                                               ; preds = %9
  %14 = icmp ugt i32 %10, 7
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1387, i32 noundef 9, ptr noundef null) #11
  br label %296

16:                                               ; preds = %13
  %17 = tail call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.8, ptr noundef null) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = tail call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.9, ptr noundef null) #11
  %21 = icmp ne ptr %20, null
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ true, %16 ], [ %21, %19 ]
  %24 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10
  %25 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 14
  %26 = zext i1 %23 to i8
  store i8 %26, ptr %25, align 2
  %27 = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 41
  store i32 %10, ptr %27, align 4
  %28 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 9
  store i32 32, ptr %28, align 4
  %29 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 10
  store i32 0, ptr %29, align 4
  %30 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 11
  store i32 4096, ptr %30, align 4
  %31 = icmp eq ptr %24, null
  br i1 %31, label %296, label %32

32:                                               ; preds = %22
  %33 = tail call ptr @of_device_get_match_data(ptr noundef %5) #11
  %34 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 2
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %296, label %36

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4, !annotation !9
  %37 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %191, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 26
  store i8 2, ptr %40, align 2
  %41 = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 33
  store i32 268435456, ptr %41, align 4
  %42 = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 39
  store ptr @stm32_uart_ops, ptr %42, align 4
  %43 = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 45
  store ptr %5, ptr %43, align 4
  %44 = load ptr, ptr %34, align 4
  %45 = getelementptr inbounds %struct.stm32_usart_info, ptr %44, i32 0, i32 1, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 23
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 48
  store i8 1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 20
  store i32 %37, ptr %49, align 4
  %50 = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 18
  store ptr @stm32_usart_config_rs485, ptr %50, align 4
  %51 = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 56
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 56, i32 1
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 56, i32 2
  store i32 0, ptr %53, align 4
  %54 = load ptr, ptr %6, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %191, label %56

56:                                               ; preds = %39
  %57 = tail call i32 @uart_get_rs485_mode(ptr noundef nonnull %24) #11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %191

59:                                               ; preds = %56
  %60 = load ptr, ptr %34, align 4
  %61 = getelementptr inbounds %struct.stm32_usart_info, ptr %60, i32 0, i32 1, i32 3
  %62 = load i8, ptr %61, align 1, !range !10
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %6, align 8
  %66 = tail call ptr @of_find_property(ptr noundef %65, ptr noundef nonnull @.str.10, ptr noundef null) #11
  %67 = icmp ne ptr %66, null
  %68 = load ptr, ptr %34, align 4
  br label %69

69:                                               ; preds = %64, %59
  %70 = phi ptr [ %60, %59 ], [ %68, %64 ]
  %71 = phi i1 [ false, %59 ], [ %67, %64 ]
  %72 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 19
  %73 = zext i1 %71 to i8
  store i8 %73, ptr %72, align 4
  %74 = getelementptr inbounds %struct.stm32_usart_info, ptr %70, i32 0, i32 1, i32 2
  %75 = load i8, ptr %74, align 2, !range !10
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %69
  %78 = load ptr, ptr %6, align 8
  %79 = tail call ptr @of_find_property(ptr noundef %78, ptr noundef nonnull @.str.11, ptr noundef null) #11
  %80 = icmp ne ptr %79, null
  %81 = load ptr, ptr %34, align 4
  br label %82

82:                                               ; preds = %77, %69
  %83 = phi ptr [ %70, %69 ], [ %81, %77 ]
  %84 = phi i1 [ false, %69 ], [ %80, %77 ]
  %85 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 15
  %86 = zext i1 %84 to i8
  store i8 %86, ptr %85, align 1
  %87 = getelementptr inbounds %struct.stm32_usart_info, ptr %83, i32 0, i32 1, i32 4
  %88 = load i8, ptr %87, align 4, !range !10
  %89 = icmp eq i8 %88, 0
  %90 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 16
  store i8 %88, ptr %90, align 4
  br i1 %89, label %144, label %91

91:                                               ; preds = %82
  %92 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !9
  %93 = load ptr, ptr %6, align 8
  %94 = call i32 @of_property_read_variable_u32_array(ptr noundef %93, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #11
  %95 = icmp sgt i32 %94, -1
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = load i32, ptr %3, align 4
  %98 = icmp ugt i32 %97, 1
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = icmp eq i32 %97, 2
  br i1 %100, label %112, label %101

101:                                              ; preds = %99
  %102 = icmp ugt i32 %97, 4
  br i1 %102, label %103, label %112

103:                                              ; preds = %101
  %104 = icmp ugt i32 %97, 8
  br i1 %104, label %105, label %112

105:                                              ; preds = %103
  %106 = icmp ugt i32 %97, 12
  br i1 %106, label %107, label %112

107:                                              ; preds = %105
  %108 = icmp ugt i32 %97, 14
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = icmp ugt i32 %97, 16
  %111 = select i1 %110, i32 7, i32 6
  br label %112

112:                                              ; preds = %109, %107, %105, %103, %101, %99, %96, %91
  %113 = phi i32 [ 0, %96 ], [ 1, %99 ], [ 2, %101 ], [ 3, %103 ], [ 4, %105 ], [ 5, %107 ], [ 3, %91 ], [ %111, %109 ]
  %114 = call i32 @llvm.umin.i32(i32 %113, i32 6) #11
  %115 = icmp eq i32 %114, 0
  %116 = add nsw i32 %114, -1
  %117 = select i1 %115, i32 -22, i32 %116
  store i32 %117, ptr %92, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %118 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !9
  %119 = load ptr, ptr %6, align 8
  %120 = call i32 @of_property_read_variable_u32_array(ptr noundef %119, ptr noundef nonnull @.str.13, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %121 = icmp sgt i32 %120, -1
  br i1 %121, label %122, label %138

122:                                              ; preds = %112
  %123 = load i32, ptr %2, align 4
  %124 = icmp ugt i32 %123, 1
  br i1 %124, label %125, label %138

125:                                              ; preds = %122
  %126 = icmp eq i32 %123, 2
  br i1 %126, label %138, label %127

127:                                              ; preds = %125
  %128 = icmp ugt i32 %123, 4
  br i1 %128, label %129, label %138

129:                                              ; preds = %127
  %130 = icmp ugt i32 %123, 8
  br i1 %130, label %131, label %138

131:                                              ; preds = %129
  %132 = icmp ugt i32 %123, 12
  br i1 %132, label %133, label %138

133:                                              ; preds = %131
  %134 = icmp ugt i32 %123, 14
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = icmp ugt i32 %123, 16
  %137 = select i1 %136, i32 7, i32 6
  br label %138

138:                                              ; preds = %135, %133, %131, %129, %127, %125, %122, %112
  %139 = phi i32 [ 0, %122 ], [ 1, %125 ], [ 2, %127 ], [ 3, %129 ], [ 4, %131 ], [ 5, %133 ], [ 3, %112 ], [ %137, %135 ]
  %140 = call i32 @llvm.umin.i32(i32 %139, i32 6) #11
  %141 = icmp eq i32 %140, 0
  %142 = add nsw i32 %140, -1
  %143 = select i1 %141, i32 -22, i32 %142
  store i32 %143, ptr %118, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %144

144:                                              ; preds = %138, %82
  %145 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #11
  %146 = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 2
  store ptr %145, ptr %146, align 4
  %147 = icmp ugt ptr %145, inttoptr (i32 -4096 to ptr)
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = ptrtoint ptr %145 to i32
  br label %196

150:                                              ; preds = %144
  %151 = load ptr, ptr %4, align 4
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 43
  store i32 %152, ptr %153, align 4
  store i32 0, ptr %24, align 4
  %154 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef null) #11
  %155 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 1
  store ptr %154, ptr %155, align 4
  %156 = icmp ugt ptr %154, inttoptr (i32 -4096 to ptr)
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = ptrtoint ptr %154 to i32
  br label %196

159:                                              ; preds = %150
  %160 = call i32 @clk_prepare(ptr noundef %154) #11
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %191

162:                                              ; preds = %159
  %163 = call i32 @clk_enable(ptr noundef %154) #11
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %162
  call void @clk_unprepare(ptr noundef %154) #11
  br label %191

166:                                              ; preds = %162
  %167 = load ptr, ptr %155, align 4
  %168 = call i32 @clk_get_rate(ptr noundef %167) #11
  %169 = getelementptr inbounds %struct.uart_port, ptr %24, i32 0, i32 22
  store i32 %168, ptr %169, align 4
  %170 = icmp eq i32 %168, 0
  br i1 %170, label %188, label %171

171:                                              ; preds = %166
  %172 = call ptr @mctrl_gpio_init(ptr noundef nonnull %24, i32 noundef 0) #11
  %173 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 21
  store ptr %172, ptr %173, align 4
  %174 = icmp ugt ptr %172, inttoptr (i32 -4096 to ptr)
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = ptrtoint ptr %172 to i32
  br label %188

177:                                              ; preds = %171
  %178 = load i8, ptr %25, align 2, !range !10
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %193, label %180

180:                                              ; preds = %177
  %181 = call ptr @mctrl_gpio_to_gpiod(ptr noundef %172, i32 noundef 0) #11
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load ptr, ptr %173, align 4
  %185 = call ptr @mctrl_gpio_to_gpiod(ptr noundef %184, i32 noundef 4) #11
  %186 = icmp eq ptr %185, null
  br i1 %186, label %193, label %187

187:                                              ; preds = %183, %180
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14) #12
  br label %188

188:                                              ; preds = %187, %175, %166
  %189 = phi i32 [ %176, %175 ], [ -22, %187 ], [ -22, %166 ]
  %190 = load ptr, ptr %155, align 4
  call void @clk_disable(ptr noundef %190) #11
  call void @clk_unprepare(ptr noundef %190) #11
  br label %196

191:                                              ; preds = %165, %159, %56, %39, %36
  %192 = phi i32 [ %160, %159 ], [ %163, %165 ], [ -19, %39 ], [ %57, %56 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %296

193:                                              ; preds = %183, %177
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %194 = load i8, ptr %72, align 4, !range !10
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %202, label %198

196:                                              ; preds = %188, %157, %148
  %197 = phi i32 [ %149, %148 ], [ %158, %157 ], [ %189, %188 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %296

198:                                              ; preds = %193
  call void @device_set_wakeup_capable(ptr noundef %5, i1 noundef zeroext true) #11
  %199 = load i32, ptr %49, align 4
  %200 = call i32 @dev_pm_set_wake_irq(ptr noundef %5, i32 noundef %199) #11
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %288

202:                                              ; preds = %198, %193
  %203 = call ptr @dma_request_chan(ptr noundef %5, ptr noundef nonnull @.str.1) #11
  %204 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 3
  store ptr %203, ptr %204, align 4
  %205 = icmp eq ptr %203, inttoptr (i32 -517 to ptr)
  br i1 %205, label %283, label %206

206:                                              ; preds = %202
  %207 = icmp ugt ptr %203, inttoptr (i32 -4096 to ptr)
  br i1 %207, label %208, label %209

208:                                              ; preds = %206
  store ptr null, ptr %204, align 4
  br label %209

209:                                              ; preds = %208, %206
  %210 = call ptr @dma_request_chan(ptr noundef %5, ptr noundef nonnull @.str.2) #11
  %211 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 6
  store ptr %210, ptr %211, align 4
  %212 = icmp eq ptr %210, inttoptr (i32 -517 to ptr)
  br i1 %212, label %278, label %213

213:                                              ; preds = %209
  %214 = icmp ugt ptr %210, inttoptr (i32 -4096 to ptr)
  br i1 %214, label %215, label %216

215:                                              ; preds = %213
  store ptr null, ptr %211, align 4
  br label %216

216:                                              ; preds = %215, %213
  %217 = load ptr, ptr %204, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %224, label %219

219:                                              ; preds = %216
  %220 = call fastcc i32 @stm32_usart_of_dma_rx_probe(ptr noundef nonnull %24, ptr noundef %0)
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %219
  %223 = load ptr, ptr %204, align 4
  call void @dma_release_channel(ptr noundef %223) #11
  store ptr null, ptr %204, align 4
  br label %224

224:                                              ; preds = %222, %219, %216
  %225 = load ptr, ptr %211, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %232, label %227

227:                                              ; preds = %224
  %228 = call fastcc i32 @stm32_usart_of_dma_tx_probe(ptr noundef nonnull %24, ptr noundef %0)
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %227
  %231 = load ptr, ptr %211, align 4
  call void @dma_release_channel(ptr noundef %231) #11
  store ptr null, ptr %211, align 4
  br label %232

232:                                              ; preds = %230, %227, %224
  %233 = load ptr, ptr %204, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.3) #12
  br label %236

236:                                              ; preds = %235, %232
  %237 = load ptr, ptr %211, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.4) #12
  br label %240

240:                                              ; preds = %239, %236
  %241 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %24, ptr %241, align 8
  %242 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %242) #11, !srcloc !11
  %243 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %242, ptr %242, i32 1, ptr elementtype(i32) %242) #11, !srcloc !12
  %244 = call i32 @__pm_runtime_set_status(ptr noundef %5, i32 noundef 0) #11
  call void @pm_runtime_enable(ptr noundef %5) #11
  %245 = call i32 @uart_add_one_port(ptr noundef nonnull @stm32_usart_driver, ptr noundef nonnull %24) #11
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %240
  %248 = call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #11
  br label %296

249:                                              ; preds = %240
  call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #11
  %250 = call i32 @__pm_runtime_set_status(ptr noundef %5, i32 noundef 2) #11
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %242) #11, !srcloc !11
  %251 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %242, ptr %242, i32 0, i32 -1, ptr elementtype(i32) %242) #11, !srcloc !14
  %252 = extractvalue { i32, i32, i32 } %251, 0
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %249
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  br label %255

255:                                              ; preds = %254, %249
  %256 = load ptr, ptr %211, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %268, label %258

258:                                              ; preds = %255
  %259 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 8
  %260 = load ptr, ptr %259, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %266, label %262

262:                                              ; preds = %258
  %263 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 7
  %264 = load i32, ptr %263, align 4
  call void @dma_free_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef nonnull %260, i32 noundef %264, i32 noundef 0) #11
  %265 = load ptr, ptr %211, align 4
  br label %266

266:                                              ; preds = %262, %258
  %267 = phi ptr [ %256, %258 ], [ %265, %262 ]
  call void @dma_release_channel(ptr noundef %267) #11
  br label %268

268:                                              ; preds = %266, %255
  %269 = load ptr, ptr %204, align 4
  %270 = icmp eq ptr %269, null
  br i1 %270, label %283, label %271

271:                                              ; preds = %268
  %272 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 5
  %273 = load ptr, ptr %272, align 4
  %274 = icmp eq ptr %273, null
  br i1 %274, label %278, label %275

275:                                              ; preds = %271
  %276 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %10, i32 4
  %277 = load i32, ptr %276, align 4
  call void @dma_free_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef nonnull %273, i32 noundef %277, i32 noundef 0) #11
  br label %278

278:                                              ; preds = %275, %271, %209
  %279 = phi i32 [ %245, %275 ], [ %245, %271 ], [ -517, %209 ]
  %280 = load ptr, ptr %204, align 4
  %281 = icmp eq ptr %280, null
  br i1 %281, label %283, label %282

282:                                              ; preds = %278
  call void @dma_release_channel(ptr noundef nonnull %280) #11
  br label %283

283:                                              ; preds = %282, %278, %268, %202
  %284 = phi i32 [ %279, %282 ], [ %279, %278 ], [ -517, %202 ], [ %245, %268 ]
  %285 = load i8, ptr %72, align 4, !range !10
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %293, label %287

287:                                              ; preds = %283
  call void @dev_pm_clear_wake_irq(ptr noundef %5) #11
  br label %288

288:                                              ; preds = %287, %198
  %289 = phi i32 [ %284, %287 ], [ %200, %198 ]
  %290 = load i8, ptr %72, align 4
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %293, label %292

292:                                              ; preds = %288
  call void @device_set_wakeup_capable(ptr noundef %5, i1 noundef zeroext false) #11
  br label %293

293:                                              ; preds = %292, %288, %283
  %294 = phi i32 [ %289, %292 ], [ %289, %288 ], [ %284, %283 ]
  %295 = load ptr, ptr %155, align 4
  call void @clk_disable(ptr noundef %295) #11
  call void @clk_unprepare(ptr noundef %295) #11
  br label %296

296:                                              ; preds = %293, %247, %196, %191, %32, %22, %15, %12, %1
  %297 = phi i32 [ %294, %293 ], [ 0, %247 ], [ -19, %22 ], [ -22, %32 ], [ %197, %196 ], [ %192, %191 ], [ -19, %12 ], [ -19, %15 ], [ -19, %1 ]
  ret i32 %297
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usart_serial_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #11
  %8 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @stm32_usart_driver, ptr noundef %3) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %82

10:                                               ; preds = %1
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #11
  %11 = tail call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 2) #11
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #11, !srcloc !11
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #11, !srcloc !14
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  br label %17

17:                                               ; preds = %16, %10
  %18 = load i8, ptr %5, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %19
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !16
  %24 = and i32 %23, -257
  %25 = load ptr, ptr %20, align 4
  %26 = getelementptr i8, ptr %25, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #11, !srcloc !17
  %27 = load ptr, ptr %20, align 4
  %28 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %5, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr i8, ptr %27, i32 %30
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #11, !srcloc !16
  %33 = and i32 %32, -8258
  %34 = load ptr, ptr %20, align 4
  %35 = load i8, ptr %28, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr i8, ptr %34, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %33) #11, !srcloc !17
  %38 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %17
  %42 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  tail call void @dma_free_attrs(ptr noundef %6, i32 noundef 4096, ptr noundef nonnull %43, i32 noundef %47, i32 noundef 0) #11
  %48 = load ptr, ptr %38, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi ptr [ %39, %41 ], [ %48, %45 ]
  tail call void @dma_release_channel(ptr noundef %50) #11
  br label %51

51:                                               ; preds = %49, %17
  %52 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  tail call void @dma_free_attrs(ptr noundef %6, i32 noundef 4096, ptr noundef nonnull %57, i32 noundef %61, i32 noundef 0) #11
  %62 = load ptr, ptr %52, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi ptr [ %53, %55 ], [ %62, %59 ]
  tail call void @dma_release_channel(ptr noundef %64) #11
  br label %65

65:                                               ; preds = %63, %51
  %66 = load i8, ptr %28, align 1
  %67 = zext i8 %66 to i32
  %68 = load ptr, ptr %20, align 4
  %69 = getelementptr i8, ptr %68, i32 %67
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #11, !srcloc !16
  %71 = and i32 %70, -129
  %72 = load ptr, ptr %20, align 4
  %73 = getelementptr i8, ptr %72, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #11, !srcloc !17
  %74 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 19
  %75 = load i8, ptr %74, align 4, !range !10
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %65
  tail call void @dev_pm_clear_wake_irq(ptr noundef %6) #11
  %78 = tail call i32 @device_init_wakeup(ptr noundef %6, i1 noundef zeroext false) #11
  br label %79

79:                                               ; preds = %77, %65
  %80 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  tail call void @clk_disable(ptr noundef %81) #11
  tail call void @clk_unprepare(ptr noundef %81) #11
  br label %82

82:                                               ; preds = %79, %1
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_usart_of_dma_rx_probe(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.dma_slave_config, align 4
  %4 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.console, ptr %8, i32 0, i32 9
  %12 = load i16, ptr %11, align 2
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %13
  br i1 %16, label %46, label %17

17:                                               ; preds = %10, %2
  %18 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 4
  %19 = tail call ptr @dma_alloc_attrs(ptr noundef %6, i32 noundef 4096, ptr noundef %18, i32 noundef 3264, i32 noundef 0) #11
  %20 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 5
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %46, label %22

22:                                               ; preds = %17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false)
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %5, i32 0, i32 9
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = add i32 %24, %27
  %29 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  store i32 1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 44
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %22
  %38 = call i32 %35(ptr noundef %32, ptr noundef nonnull %3) #11
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37, %22
  %41 = phi i32 [ %38, %37 ], [ -38, %22 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18) #12
  %42 = load ptr, ptr %20, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %18, align 4
  call void @dma_free_attrs(ptr noundef %6, i32 noundef 4096, ptr noundef nonnull %42, i32 noundef %45, i32 noundef 0) #11
  br label %46

46:                                               ; preds = %44, %40, %37, %17, %10
  %47 = phi i32 [ -19, %10 ], [ -12, %17 ], [ 0, %37 ], [ %41, %40 ], [ %41, %44 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_usart_of_dma_tx_probe(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.dma_slave_config, align 4
  %4 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  %7 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 7
  %8 = tail call ptr @dma_alloc_attrs(ptr noundef %6, i32 noundef 4096, ptr noundef %7, i32 noundef 3264, i32 noundef 0) #11
  %9 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 8
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false)
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %5, i32 0, i32 10
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = add i32 %13, %16
  %18 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 44
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %11
  %27 = call i32 %24(ptr noundef %21, ptr noundef nonnull %3) #11
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26, %11
  %30 = phi i32 [ %27, %26 ], [ -38, %11 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.19) #12
  %31 = load ptr, ptr %9, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %7, align 4
  call void @dma_free_attrs(ptr noundef %6, i32 noundef 4096, ptr noundef nonnull %31, i32 noundef %34, i32 noundef 0) #11
  br label %35

35:                                               ; preds = %33, %29, %26, %2
  %36 = phi i32 [ -12, %2 ], [ 0, %26 ], [ %30, %29 ], [ %30, %33 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  ret i32 %36
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usart_config_rs485(ptr nocapture noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_usart_info, ptr %4, i32 0, i32 1
  %6 = load i8, ptr %4, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, ptr %5, align 4
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 1, %9
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %7
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !16
  %15 = xor i32 %10, -1
  %16 = and i32 %14, %15
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr i8, ptr %17, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #11, !srcloc !17
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %19, ptr noundef align 4 dereferenceable(32) %1, i32 32, i1 false)
  %20 = load i32, ptr %1, align 4
  %21 = or i32 %20, 16
  store i32 %21, ptr %1, align 4
  %22 = and i32 %20, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %92, label %24

24:                                               ; preds = %2
  %25 = load ptr, ptr %11, align 4
  %26 = load i8, ptr %4, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr i8, ptr %25, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !16
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr i8, ptr %30, i32 %33
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !16
  %36 = load ptr, ptr %11, align 4
  %37 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 3
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr i8, ptr %36, i32 %39
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !16
  %42 = and i32 %41, 65535
  %43 = and i32 %29, 32768
  %44 = icmp eq i32 %43, 0
  %45 = shl i32 %41, 1
  %46 = and i32 %45, 62
  %47 = select i1 %44, i32 0, i32 %46
  %48 = or i32 %47, %42
  %49 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %48, 1
  %52 = add i32 %51, %50
  %53 = udiv i32 %52, %48
  %54 = getelementptr inbounds %struct.serial_rs485, ptr %1, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.serial_rs485, ptr %1, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = mul i32 %55, %53
  %59 = select i1 %44, i32 4, i32 3
  %60 = shl i32 %58, %59
  %61 = add i32 %60, 500
  %62 = udiv i32 %61, 1000
  %63 = tail call i32 @llvm.umin.i32(i32 %62, i32 31) #11
  %64 = shl nuw nsw i32 %63, 21
  %65 = or i32 %64, %29
  %66 = mul i32 %57, %53
  %67 = shl i32 %66, %59
  %68 = add i32 %67, 500
  %69 = udiv i32 %68, 1000
  %70 = tail call i32 @llvm.umin.i32(i32 %69, i32 31) #11
  %71 = shl nuw nsw i32 %70, 16
  %72 = or i32 %65, %71
  %73 = load i32, ptr %1, align 4
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  %76 = or i32 %35, 49152
  %77 = and i32 %35, -49153
  %78 = or i32 %77, 16384
  %79 = and i32 %73, -5
  %80 = select i1 %75, i32 %76, i32 %78
  %81 = shl nuw nsw i32 %74, 1
  %82 = or i32 %81, %79
  %83 = xor i32 %82, 4
  store i32 %83, ptr %1, align 4
  %84 = load ptr, ptr %11, align 4
  %85 = load i8, ptr %31, align 1
  %86 = zext i8 %85 to i32
  %87 = getelementptr i8, ptr %84, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %80) #11, !srcloc !17
  %88 = load ptr, ptr %11, align 4
  %89 = load i8, ptr %4, align 1
  %90 = zext i8 %89 to i32
  %91 = getelementptr i8, ptr %88, i32 %90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %72) #11, !srcloc !17
  br label %110

92:                                               ; preds = %2
  %93 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 2
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = load ptr, ptr %11, align 4
  %97 = getelementptr i8, ptr %96, i32 %95
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #11, !srcloc !16
  %99 = and i32 %98, -49153
  %100 = load ptr, ptr %11, align 4
  %101 = getelementptr i8, ptr %100, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #11, !srcloc !17
  %102 = load i8, ptr %4, align 1
  %103 = zext i8 %102 to i32
  %104 = load ptr, ptr %11, align 4
  %105 = getelementptr i8, ptr %104, i32 %103
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #11, !srcloc !16
  %107 = and i32 %106, -67043329
  %108 = load ptr, ptr %11, align 4
  %109 = getelementptr i8, ptr %108, i32 %103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #11, !srcloc !17
  br label %110

110:                                              ; preds = %92, %24
  %111 = load i8, ptr %4, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, ptr %5, align 4
  %114 = zext i8 %113 to i32
  %115 = shl nuw i32 1, %114
  %116 = load ptr, ptr %11, align 4
  %117 = getelementptr i8, ptr %116, i32 %112
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #11, !srcloc !16
  %119 = or i32 %118, %115
  %120 = load ptr, ptr %11, align 4
  %121 = getelementptr i8, ptr %120, i32 %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #11, !srcloc !17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_to_gpiod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usart_tx_empty(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 7
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !16
  %11 = lshr i32 %10, 6
  %12 = and i32 %11, 1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_usart_set_mctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = and i32 %1, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 34
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %15
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !16
  %20 = or i32 %19, 256
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr i8, ptr %21, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #11, !srcloc !17
  br label %34

23:                                               ; preds = %7, %2
  %24 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %26
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !16
  %31 = and i32 %30, -257
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr i8, ptr %32, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #11, !srcloc !17
  br label %34

34:                                               ; preds = %23, %12
  %35 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 21
  %36 = load ptr, ptr %35, align 4
  tail call void @mctrl_gpio_set(ptr noundef %36, i32 noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usart_get_mctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 352, ptr %2, align 4
  %3 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 21
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @mctrl_gpio_get(ptr noundef %4, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_usart_stop_tx(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %3 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 16
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %15
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !16
  %20 = and i32 %19, -8388609
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr i8, ptr %21, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #11, !srcloc !17
  br label %33

23:                                               ; preds = %8, %1
  %24 = load i8, ptr %4, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %25
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !16
  %30 = and i32 %29, -129
  %31 = load ptr, ptr %26, align 4
  %32 = getelementptr i8, ptr %31, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #11, !srcloc !17
  br label %33

33:                                               ; preds = %23, %12
  %34 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 12
  %35 = load i8, ptr %34, align 4, !range !10
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %38, i32 0, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr i8, ptr %40, i32 %43
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !16
  %46 = and i32 %45, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 2
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load ptr, ptr %39, align 4
  %53 = getelementptr i8, ptr %52, i32 %51
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #11, !srcloc !16
  %55 = and i32 %54, -129
  %56 = load ptr, ptr %39, align 4
  %57 = getelementptr i8, ptr %56, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #11, !srcloc !17
  br label %58

58:                                               ; preds = %48, %37, %33
  %59 = load i32, ptr %2, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 21
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, -5
  %68 = shl i32 %59, 1
  %69 = and i32 %68, 4
  %70 = or i32 %69, %67
  %71 = xor i32 %70, 4
  tail call void @mctrl_gpio_set(ptr noundef %64, i32 noundef %71) #11
  br label %72

72:                                               ; preds = %62, %58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_usart_start_tx(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 24
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %10, %1
  %15 = load i32, ptr %2, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 21
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -5
  %24 = shl i32 %15, 1
  %25 = and i32 %24, 4
  %26 = or i32 %23, %25
  tail call void @mctrl_gpio_set(ptr noundef %20, i32 noundef %26) #11
  br label %27

27:                                               ; preds = %18, %14
  tail call fastcc void @stm32_usart_transmit_chars(ptr noundef %0)
  br label %28

28:                                               ; preds = %27, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_usart_throttle(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %9, i32 0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !16
  %17 = and i32 %16, 64
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr i8, ptr %23, i32 %22
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !16
  %26 = and i32 %25, -65
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr i8, ptr %27, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #11, !srcloc !17
  br label %29

29:                                               ; preds = %19, %8, %1
  %30 = load i8, ptr %3, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 %31
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #11, !srcloc !16
  %38 = xor i32 %33, -1
  %39 = and i32 %37, %38
  %40 = load ptr, ptr %34, align 4
  %41 = getelementptr i8, ptr %40, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #11, !srcloc !17
  %42 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 2
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load ptr, ptr %34, align 4
  %50 = getelementptr i8, ptr %49, i32 %48
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #11, !srcloc !16
  %52 = xor i32 %43, -1
  %53 = and i32 %51, %52
  %54 = load ptr, ptr %34, align 4
  %55 = getelementptr i8, ptr %54, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #11, !srcloc !17
  br label %56

56:                                               ; preds = %45, %29
  %57 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 13
  store i8 1, ptr %57, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_usart_unthrottle(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #11
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %6
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !16
  %13 = or i32 %12, %8
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !17
  %16 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr i8, ptr %23, i32 %22
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !16
  %26 = or i32 %25, %17
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i8, ptr %27, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #11, !srcloc !17
  br label %29

29:                                               ; preds = %19, %1
  %30 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr i8, ptr %37, i32 %36
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !16
  %40 = or i32 %39, 64
  %41 = load ptr, ptr %9, align 4
  %42 = getelementptr i8, ptr %41, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #11, !srcloc !17
  br label %43

43:                                               ; preds = %33, %29
  %44 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 13
  store i8 0, ptr %44, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_usart_stop_rx(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !16
  %15 = and i32 %14, -65
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr i8, ptr %16, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #11, !srcloc !17
  br label %18

18:                                               ; preds = %7, %1
  %19 = load i8, ptr %3, align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !16
  %27 = xor i32 %22, -1
  %28 = and i32 %26, %27
  %29 = load ptr, ptr %23, align 4
  %30 = getelementptr i8, ptr %29, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #11, !srcloc !17
  %31 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load ptr, ptr %23, align 4
  %39 = getelementptr i8, ptr %38, i32 %37
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !16
  %41 = xor i32 %32, -1
  %42 = and i32 %40, %41
  %43 = load ptr, ptr %23, align 4
  %44 = getelementptr i8, ptr %43, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #11, !srcloc !17
  br label %45

45:                                               ; preds = %34, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_usart_enable_ms(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  tail call void @mctrl_gpio_enable_ms(ptr noundef %3) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @stm32_usart_break_ctl(ptr nocapture noundef %0, i32 noundef %1) #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usart_startup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_usart_info, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @request_threaded_irq(i32 noundef %10, ptr noundef nonnull @stm32_usart_interrupt, ptr noundef nonnull @stm32_usart_threaded_interrupt, i32 noundef 24576, ptr noundef %8, ptr noundef %0) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 15
  %15 = load i8, ptr %14, align 1, !range !10
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr i8, ptr %19, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !16
  %25 = or i32 %24, 32768
  %26 = load ptr, ptr %18, align 4
  %27 = load i8, ptr %20, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr i8, ptr %26, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %25) #11, !srcloc !17
  br label %30

30:                                               ; preds = %17, %13
  %31 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 6
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, -1
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = zext i8 %32 to i32
  %36 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 8) #11, !srcloc !17
  br label %39

39:                                               ; preds = %34, %30
  %40 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = tail call fastcc i32 @stm32_usart_start_rx_dma_cyclic(ptr noundef %0)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %9, align 4
  %48 = tail call ptr @free_irq(i32 noundef %47, ptr noundef %0) #11
  br label %66

49:                                               ; preds = %43, %39
  %50 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 9
  %51 = load i32, ptr %50, align 4
  %52 = load i8, ptr %4, align 4
  %53 = zext i8 %52 to i32
  %54 = shl nuw i32 1, %53
  %55 = load i8, ptr %3, align 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 %56
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #11, !srcloc !16
  %61 = or i32 %51, %54
  %62 = or i32 %61, %60
  %63 = or i32 %62, 4
  %64 = load ptr, ptr %57, align 4
  %65 = getelementptr i8, ptr %64, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #11, !srcloc !17
  br label %66

66:                                               ; preds = %49, %46, %1
  %67 = phi i32 [ %44, %46 ], [ 0, %49 ], [ %11, %1 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_usart_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_usart_info, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !16
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load i8, ptr %7, align 1
  %16 = zext i8 %15 to i32
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !16
  %20 = and i32 %19, -129
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i8, ptr %21, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #11, !srcloc !17
  br label %23

23:                                               ; preds = %14, %1
  %24 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 12
  %25 = load i8, ptr %24, align 4, !range !10
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 47
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = tail call i32 %32(ptr noundef %29) #11
  br label %36

36:                                               ; preds = %34, %27
  store i8 0, ptr %24, align 4
  br label %37

37:                                               ; preds = %36, %23
  %38 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 21
  %39 = load ptr, ptr %38, align 4
  tail call void @mctrl_gpio_disable_ms(ptr noundef %39) #11
  %40 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 9
  %41 = load i32, ptr %40, align 4
  %42 = load i8, ptr %4, align 4
  %43 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 16
  %44 = load i8, ptr %43, align 4, !range !10
  %45 = tail call i64 @ktime_get() #11
  %46 = add i64 %45, 100000000
  %47 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 7
  %48 = load ptr, ptr %5, align 4
  %49 = load i8, ptr %47, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr i8, ptr %48, i32 %50
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #11, !srcloc !16
  %53 = and i32 %52, 64
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %64, %37
  %56 = tail call i64 @ktime_get() #11
  %57 = icmp sgt i64 %56, %46
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load ptr, ptr %5, align 4
  %60 = load i8, ptr %47, align 1
  %61 = zext i8 %60 to i32
  %62 = getelementptr i8, ptr %59, i32 %61
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #11, !srcloc !16
  br label %72

64:                                               ; preds = %55
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %65 = load ptr, ptr %5, align 4
  %66 = load i8, ptr %47, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr i8, ptr %65, i32 %67
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #11, !srcloc !16
  %70 = and i32 %69, 64
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %55, label %72

72:                                               ; preds = %64, %58, %37
  %73 = phi i32 [ %63, %58 ], [ %52, %37 ], [ %69, %64 ]
  %74 = and i32 %73, 64
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %78 = load ptr, ptr %77, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.17) #12
  br label %79

79:                                               ; preds = %76, %72
  %80 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %81, align 4
  %85 = getelementptr inbounds %struct.dma_device, ptr %84, i32 0, i32 47
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = tail call i32 %86(ptr noundef nonnull %81) #11
  br label %90

90:                                               ; preds = %88, %83, %79
  %91 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 6
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, -1
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = zext i8 %92 to i32
  %96 = load ptr, ptr %5, align 4
  %97 = getelementptr i8, ptr %96, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 24) #11, !srcloc !17
  br label %98

98:                                               ; preds = %94, %90
  %99 = icmp eq i8 %44, 0
  %100 = zext i8 %42 to i32
  %101 = shl nuw i32 1, %100
  %102 = or i32 %101, %41
  %103 = select i1 %99, i32 140, i32 536871052
  %104 = or i32 %102, %103
  %105 = load i8, ptr %3, align 1
  %106 = zext i8 %105 to i32
  %107 = load ptr, ptr %5, align 4
  %108 = getelementptr i8, ptr %107, i32 %106
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #11, !srcloc !16
  %110 = xor i32 %104, -1
  %111 = and i32 %109, %110
  %112 = load ptr, ptr %5, align 4
  %113 = getelementptr i8, ptr %112, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #11, !srcloc !17
  %114 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %115 = load i32, ptr %114, align 4
  %116 = tail call ptr @free_irq(i32 noundef %115, ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_usart_flush_buffer(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = tail call i32 %10(ptr noundef nonnull %3) #11
  br label %14

14:                                               ; preds = %12, %5
  %15 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 12
  store i8 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %7, i32 0, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %18
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !16
  %23 = and i32 %22, -129
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr i8, ptr %24, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #11, !srcloc !17
  br label %26

26:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_usart_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_usart_info, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %8 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 14
  %11 = load i8, ptr %10, align 2, !range !10
  %12 = icmp eq i8 %11, 0
  %13 = and i32 %9, 2147483647
  %14 = select i1 %12, i32 %13, i32 %9
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 3
  %18 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %17) #11
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #11
  %20 = tail call i64 @ktime_get() #11
  %21 = add i64 %20, 100000000
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %23 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %5, i32 0, i32 7
  %24 = load ptr, ptr %22, align 4
  %25 = load i8, ptr %23, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr i8, ptr %24, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !16
  %29 = and i32 %28, 64
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %40, %3
  %32 = tail call i64 @ktime_get() #11
  %33 = icmp sgt i64 %32, %21
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load ptr, ptr %22, align 4
  %36 = load i8, ptr %23, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !16
  br label %49

40:                                               ; preds = %31
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 2147480) #11
  %42 = load ptr, ptr %22, align 4
  %43 = load i8, ptr %23, align 1
  %44 = zext i8 %43 to i32
  %45 = getelementptr i8, ptr %42, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #11, !srcloc !16
  %47 = and i32 %46, 64
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %31, label %49

49:                                               ; preds = %40, %34, %3
  %50 = phi i32 [ %39, %34 ], [ %28, %3 ], [ %46, %40 ]
  %51 = and i32 %50, 64
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %55 = load ptr, ptr %54, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.17) #12
  br label %56

56:                                               ; preds = %53, %49
  %57 = load ptr, ptr %22, align 4
  %58 = load i8, ptr %5, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr i8, ptr %57, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 0) #11, !srcloc !17
  %61 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %5, i32 0, i32 6
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, -1
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = zext i8 %62 to i32
  %66 = load ptr, ptr %22, align 4
  %67 = getelementptr i8, ptr %66, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 24) #11, !srcloc !17
  br label %68

68:                                               ; preds = %64, %56
  %69 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 16
  %70 = load i8, ptr %69, align 4, !range !10
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %71, i32 12, i32 536870924
  %73 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 15
  %74 = load i8, ptr %73, align 1, !range !10
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %75, i32 0, i32 32768
  %77 = load ptr, ptr %22, align 4
  %78 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %5, i32 0, i32 2
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = getelementptr i8, ptr %77, i32 %80
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #11, !srcloc !16
  %83 = and i32 %82, 276824064
  %84 = load i8, ptr %69, align 4, !range !10
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %68
  %87 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 18
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %88, 29
  %90 = icmp slt i32 %88, 0
  %91 = select i1 %90, i32 0, i32 %89
  %92 = or i32 %91, %83
  %93 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 17
  %94 = load i32, ptr %93, align 4
  %95 = icmp sgt i32 %94, -1
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = shl i32 %94, 25
  %98 = or i32 %92, %97
  br label %99

99:                                               ; preds = %96, %86, %68
  %100 = phi i32 [ %83, %68 ], [ %98, %96 ], [ %92, %86 ]
  %101 = and i32 %14, 64
  %102 = icmp eq i32 %101, 0
  %103 = shl nuw nsw i32 %101, 7
  %104 = or i32 %76, %103
  %105 = tail call zeroext i8 @tty_get_char_size(i32 noundef %14) #11
  %106 = zext i8 %105 to i32
  %107 = shl nsw i32 -1, %106
  %108 = xor i32 %107, -1
  %109 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 20
  store i32 %108, ptr %109, align 4
  %110 = and i32 %14, 256
  %111 = shl nuw nsw i32 %110, 2
  %112 = or i32 %72, %111
  %113 = lshr exact i32 %110, 8
  %114 = add nuw nsw i32 %113, %106
  switch i32 %114, label %123 [
    i32 9, label %115
    i32 7, label %117
  ]

115:                                              ; preds = %99
  %116 = or i32 %112, 4096
  br label %123

117:                                              ; preds = %99
  %118 = getelementptr inbounds %struct.stm32_usart_info, ptr %5, i32 0, i32 1, i32 1
  %119 = load i8, ptr %118, align 1, !range !10
  %120 = icmp eq i8 %119, 0
  %121 = or i32 %112, 268435456
  %122 = select i1 %120, i32 %112, i32 %121
  br label %123

123:                                              ; preds = %117, %115, %99
  %124 = phi i32 [ %112, %99 ], [ %116, %115 ], [ %122, %117 ]
  %125 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %5, i32 0, i32 5
  %126 = load i8, ptr %125, align 1
  %127 = icmp eq i8 %126, -1
  br i1 %127, label %149, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 3
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load i8, ptr %69, align 4, !range !10
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %149, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 17
  %137 = load i32, ptr %136, align 4
  %138 = icmp sgt i32 %137, -1
  br i1 %138, label %139, label %149

139:                                              ; preds = %135, %128
  %140 = select i1 %102, i32 2, i32 3
  %141 = add nuw nsw i32 %114, %140
  %142 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 9
  store i32 67108864, ptr %142, align 4
  %143 = load ptr, ptr %22, align 4
  %144 = load i8, ptr %125, align 1
  %145 = zext i8 %144 to i32
  %146 = getelementptr i8, ptr %143, i32 %145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %141) #11, !srcloc !17
  %147 = or i32 %104, 8388608
  %148 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 10
  store i32 268435456, ptr %148, align 4
  br label %149

149:                                              ; preds = %139, %135, %132, %123
  %150 = phi i32 [ %147, %139 ], [ %104, %135 ], [ %104, %132 ], [ %104, %123 ]
  %151 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 9
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 10
  %154 = load i32, ptr %153, align 4
  %155 = or i32 %154, %100
  %156 = and i32 %14, 512
  %157 = or i32 %124, %156
  %158 = or i32 %157, %152
  %159 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 34
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %160, -13
  store i32 %161, ptr %159, align 4
  %162 = icmp sgt i32 %14, -1
  br i1 %162, label %166, label %163

163:                                              ; preds = %149
  %164 = or i32 %160, 12
  store i32 %164, ptr %159, align 4
  %165 = or i32 %155, 768
  br label %166

166:                                              ; preds = %163, %149
  %167 = phi i32 [ %155, %149 ], [ %165, %163 ]
  %168 = load i32, ptr %15, align 4
  %169 = lshr i32 %18, 1
  %170 = add i32 %168, %169
  %171 = udiv i32 %170, %18
  %172 = icmp ult i32 %171, 16
  br i1 %172, label %173, label %183

173:                                              ; preds = %166
  %174 = or i32 %158, 32768
  %175 = load i8, ptr %5, align 1
  %176 = zext i8 %175 to i32
  %177 = load ptr, ptr %22, align 4
  %178 = getelementptr i8, ptr %177, i32 %176
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #11, !srcloc !16
  %180 = or i32 %179, 32768
  %181 = load ptr, ptr %22, align 4
  %182 = getelementptr i8, ptr %181, i32 %176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %180) #11, !srcloc !17
  br label %193

183:                                              ; preds = %166
  %184 = and i32 %158, -32769
  %185 = load i8, ptr %5, align 1
  %186 = zext i8 %185 to i32
  %187 = load ptr, ptr %22, align 4
  %188 = getelementptr i8, ptr %187, i32 %186
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #11, !srcloc !16
  %190 = and i32 %189, -32769
  %191 = load ptr, ptr %22, align 4
  %192 = getelementptr i8, ptr %191, i32 %186
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 %190) #11, !srcloc !17
  br label %193

193:                                              ; preds = %183, %173
  %194 = phi i32 [ %174, %173 ], [ %184, %183 ]
  %195 = phi i32 [ 8, %173 ], [ 16, %183 ]
  %196 = freeze i32 %171
  %197 = udiv i32 %196, %195
  %198 = shl i32 %197, 4
  %199 = mul i32 %197, %195
  %200 = sub i32 %196, %199
  %201 = or i32 %198, %200
  %202 = load ptr, ptr %22, align 4
  %203 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %5, i32 0, i32 3
  %204 = load i8, ptr %203, align 1
  %205 = zext i8 %204 to i32
  %206 = getelementptr i8, ptr %202, i32 %205
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %201) #11, !srcloc !17
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %14, i32 noundef %18) #11
  %207 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 8, ptr %207, align 4
  %208 = load i32, ptr %1, align 4
  %209 = and i32 %208, 16
  %210 = icmp eq i32 %209, 0
  %211 = select i1 %210, i32 8, i32 11
  store i32 %211, ptr %207, align 4
  %212 = load i32, ptr %1, align 4
  %213 = and i32 %212, 11
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %193
  %216 = or i32 %211, 2
  store i32 %216, ptr %207, align 4
  br label %217

217:                                              ; preds = %215, %193
  %218 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 0, ptr %218, align 4
  %219 = load i32, ptr %1, align 4
  %220 = and i32 %219, 4
  %221 = icmp eq i32 %220, 0
  %222 = select i1 %221, i32 0, i32 3
  store i32 %222, ptr %218, align 4
  %223 = load i32, ptr %1, align 4
  %224 = and i32 %223, 1
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %233, label %226

226:                                              ; preds = %217
  %227 = or i32 %222, 2
  store i32 %227, ptr %218, align 4
  %228 = load i32, ptr %1, align 4
  %229 = and i32 %228, 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %226
  %232 = or i32 %222, 10
  store i32 %232, ptr %218, align 4
  br label %233

233:                                              ; preds = %231, %226, %217
  %234 = phi i32 [ %227, %226 ], [ %232, %231 ], [ %222, %217 ]
  %235 = load i32, ptr %8, align 4
  %236 = and i32 %235, 128
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = or i32 %234, 65536
  store i32 %239, ptr %218, align 4
  br label %240

240:                                              ; preds = %238, %233
  %241 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 3
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  %244 = or i32 %194, 256
  %245 = or i32 %167, 8257
  %246 = select i1 %243, i32 %194, i32 %244
  %247 = select i1 %243, i32 %167, i32 %245
  %248 = load i32, ptr %7, align 4
  %249 = and i32 %248, 1
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %282, label %251

251:                                              ; preds = %240
  %252 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56, i32 1
  %253 = load i32, ptr %252, align 4
  %254 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56, i32 2
  %255 = load i32, ptr %254, align 4
  %256 = and i32 %246, 32768
  %257 = icmp eq i32 %256, 0
  %258 = mul i32 %253, %18
  %259 = select i1 %257, i32 4, i32 3
  %260 = shl i32 %258, %259
  %261 = add i32 %260, 500
  %262 = udiv i32 %261, 1000
  %263 = tail call i32 @llvm.umin.i32(i32 %262, i32 31) #11
  %264 = shl nuw nsw i32 %263, 21
  %265 = or i32 %264, %246
  %266 = mul i32 %255, %18
  %267 = shl i32 %266, %259
  %268 = add i32 %267, 500
  %269 = udiv i32 %268, 1000
  %270 = tail call i32 @llvm.umin.i32(i32 %269, i32 31) #11
  %271 = shl nuw nsw i32 %270, 16
  %272 = or i32 %265, %271
  %273 = and i32 %248, 2
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %251
  %276 = and i32 %247, -49153
  %277 = or i32 %276, 16384
  %278 = and i32 %248, -5
  store i32 %278, ptr %7, align 4
  br label %285

279:                                              ; preds = %251
  %280 = or i32 %247, 49152
  %281 = or i32 %248, 4
  store i32 %281, ptr %7, align 4
  br label %285

282:                                              ; preds = %240
  %283 = and i32 %247, -49153
  %284 = and i32 %246, -67043329
  br label %285

285:                                              ; preds = %282, %279, %275
  %286 = phi i32 [ %284, %282 ], [ %272, %279 ], [ %272, %275 ]
  %287 = phi i32 [ %283, %282 ], [ %280, %279 ], [ %277, %275 ]
  %288 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 19
  %289 = load i8, ptr %288, align 4, !range !10
  %290 = icmp eq i8 %289, 0
  %291 = and i32 %287, -3145729
  %292 = or i32 %291, 2097152
  %293 = select i1 %290, i32 %287, i32 %292
  %294 = load ptr, ptr %22, align 4
  %295 = load i8, ptr %78, align 1
  %296 = zext i8 %295 to i32
  %297 = getelementptr i8, ptr %294, i32 %296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 %293) #11, !srcloc !17
  %298 = load ptr, ptr %22, align 4
  %299 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %5, i32 0, i32 1
  %300 = load i8, ptr %299, align 1
  %301 = zext i8 %300 to i32
  %302 = getelementptr i8, ptr %298, i32 %301
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %302, i32 %150) #11, !srcloc !17
  %303 = load ptr, ptr %22, align 4
  %304 = load i8, ptr %5, align 1
  %305 = zext i8 %304 to i32
  %306 = getelementptr i8, ptr %303, i32 %305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %306, i32 %286) #11, !srcloc !17
  %307 = load i8, ptr %5, align 1
  %308 = zext i8 %307 to i32
  %309 = load i8, ptr %6, align 4
  %310 = zext i8 %309 to i32
  %311 = shl nuw i32 1, %310
  %312 = load ptr, ptr %22, align 4
  %313 = getelementptr i8, ptr %312, i32 %308
  %314 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %313) #11, !srcloc !16
  %315 = or i32 %314, %311
  %316 = load ptr, ptr %22, align 4
  %317 = getelementptr i8, ptr %316, i32 %308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %317, i32 %315) #11, !srcloc !17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %19) #11
  %318 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %319 = load i32, ptr %318, align 4
  %320 = and i32 %319, 2048
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %285
  %323 = load i32, ptr %8, align 4
  %324 = and i32 %323, -2147481600
  %325 = icmp eq i32 %324, 2048
  br i1 %325, label %329, label %326

326:                                              ; preds = %322, %285
  %327 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 21
  %328 = load ptr, ptr %327, align 4
  tail call void @mctrl_gpio_enable_ms(ptr noundef %328) #11
  br label %332

329:                                              ; preds = %322
  %330 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 21
  %331 = load ptr, ptr %330, align 4
  tail call void @mctrl_gpio_disable_ms(ptr noundef %331) #11
  br label %332

332:                                              ; preds = %329, %326
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_usart_pm(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  switch i32 %1, label %29 [
    i32 0, label %4
    i32 3, label %8
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #11
  br label %29

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.stm32_usart_info, ptr %10, i32 0, i32 1
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #11
  %13 = load i8, ptr %10, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, ptr %11, align 4
  %16 = zext i8 %15 to i32
  %17 = shl nuw i32 1, %16
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %14
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !16
  %22 = xor i32 %17, -1
  %23 = and i32 %21, %22
  %24 = load ptr, ptr %18, align 4
  %25 = getelementptr i8, ptr %24, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #11, !srcloc !17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %12) #11
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @__pm_runtime_idle(ptr noundef %27, i32 noundef 4) #11
  br label %29

29:                                               ; preds = %8, %4, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @stm32_usart_type(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 113
  %5 = select i1 %4, ptr @.str, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @stm32_usart_release_port(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stm32_usart_request_port(ptr nocapture noundef readnone %0) #6 {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @stm32_usart_config_port(ptr nocapture noundef writeonly %0, i32 noundef %1) #8 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 113, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stm32_usart_verify_port(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #6 {
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctrl_gpio_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_usart_transmit_chars(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.scatterlist, align 4
  %3 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 24
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %91, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 12
  %10 = load i8, ptr %9, align 4, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !16
  %20 = and i32 %19, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %12
  %23 = load i8, ptr %15, align 1
  %24 = zext i8 %23 to i32
  %25 = load ptr, ptr %13, align 4
  %26 = getelementptr i8, ptr %25, i32 %24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !16
  %28 = and i32 %27, -129
  %29 = load ptr, ptr %13, align 4
  %30 = getelementptr i8, ptr %29, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #11, !srcloc !17
  br label %31

31:                                               ; preds = %22, %12, %8
  %32 = tail call i64 @ktime_get() #11
  %33 = add i64 %32, 1000000
  %34 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %35 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 7
  %36 = load ptr, ptr %34, align 4
  %37 = load i8, ptr %35, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr i8, ptr %36, i32 %38
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !16
  %41 = and i32 %40, 128
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %52, %31
  %44 = tail call i64 @ktime_get() #11
  %45 = icmp sgt i64 %44, %33
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load ptr, ptr %34, align 4
  %48 = load i8, ptr %35, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr i8, ptr %47, i32 %49
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #11, !srcloc !16
  br label %61

52:                                               ; preds = %43
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 2147480) #11
  %54 = load ptr, ptr %34, align 4
  %55 = load i8, ptr %35, align 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr i8, ptr %54, i32 %56
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #11, !srcloc !16
  %59 = and i32 %58, 128
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %43, label %61

61:                                               ; preds = %52, %46, %31
  %62 = phi i32 [ %51, %46 ], [ %40, %31 ], [ %58, %52 ]
  %63 = and i32 %62, 128
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %67 = load ptr, ptr %66, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull @.str.15) #12
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i8, ptr %5, align 4
  %70 = zext i8 %69 to i32
  %71 = load ptr, ptr %34, align 4
  %72 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 10
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = getelementptr i8, ptr %71, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %70) #11, !srcloc !17
  store i8 0, ptr %5, align 4
  %76 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 4
  %79 = load i8, ptr %9, align 4, !range !10
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %314, label %81

81:                                               ; preds = %68
  %82 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 2
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load ptr, ptr %34, align 4
  %86 = getelementptr i8, ptr %85, i32 %84
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #11, !srcloc !16
  %88 = or i32 %87, 128
  %89 = load ptr, ptr %34, align 4
  %90 = getelementptr i8, ptr %89, i32 %84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #11, !srcloc !17
  br label %314

91:                                               ; preds = %1
  %92 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.uart_state, ptr %93, i32 0, i32 2, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.uart_state, ptr %93, i32 0, i32 2, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %111, label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.tty_port, ptr %93, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.tty_struct, ptr %101, i32 0, i32 19, i32 1
  %105 = load i8, ptr %104, align 4, !range !10
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103, %99
  %108 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %140, label %111

111:                                              ; preds = %107, %103, %91
  %112 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 16
  %113 = load i8, ptr %112, align 4, !range !10
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 18
  %117 = load i32, ptr %116, align 4
  %118 = icmp sgt i32 %117, -1
  br i1 %118, label %119, label %130

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 2
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr i8, ptr %124, i32 %122
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #11, !srcloc !16
  %127 = and i32 %126, -8388609
  %128 = load ptr, ptr %123, align 4
  %129 = getelementptr i8, ptr %128, i32 %122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #11, !srcloc !17
  br label %314

130:                                              ; preds = %115, %111
  %131 = load i8, ptr %4, align 1
  %132 = zext i8 %131 to i32
  %133 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr i8, ptr %134, i32 %132
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #11, !srcloc !16
  %137 = and i32 %136, -129
  %138 = load ptr, ptr %133, align 4
  %139 = getelementptr i8, ptr %138, i32 %132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %137) #11, !srcloc !17
  br label %314

140:                                              ; preds = %107
  %141 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 8
  %142 = load i8, ptr %141, align 1
  %143 = icmp eq i8 %142, -1
  br i1 %143, label %144, label %155

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 7
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr i8, ptr %149, i32 %147
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #11, !srcloc !16
  %152 = and i32 %151, -65
  %153 = load ptr, ptr %148, align 4
  %154 = getelementptr i8, ptr %153, i32 %147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %152) #11, !srcloc !17
  br label %160

155:                                              ; preds = %140
  %156 = zext i8 %142 to i32
  %157 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr i8, ptr %158, i32 %156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 64) #11, !srcloc !17
  br label %160

160:                                              ; preds = %155, %144
  %161 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 6
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %270, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr %3, align 4
  %166 = load ptr, ptr %92, align 4
  %167 = getelementptr inbounds %struct.uart_state, ptr %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 12
  %169 = load i8, ptr %168, align 4, !range !10
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %190, label %171

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %165, i32 0, i32 2
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  %177 = getelementptr i8, ptr %173, i32 %176
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #11, !srcloc !16
  %179 = and i32 %178, 128
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %271

181:                                              ; preds = %171
  %182 = load i8, ptr %174, align 1
  %183 = zext i8 %182 to i32
  %184 = load ptr, ptr %172, align 4
  %185 = getelementptr i8, ptr %184, i32 %183
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #11, !srcloc !16
  %187 = or i32 %186, 128
  %188 = load ptr, ptr %172, align 4
  %189 = getelementptr i8, ptr %188, i32 %183
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %187) #11, !srcloc !17
  br label %271

190:                                              ; preds = %164
  %191 = getelementptr inbounds %struct.uart_state, ptr %166, i32 0, i32 2, i32 1
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr inbounds %struct.uart_state, ptr %166, i32 0, i32 2, i32 2
  %194 = load i32, ptr %193, align 4
  %195 = sub i32 %192, %194
  %196 = and i32 %195, 4095
  %197 = icmp sgt i32 %192, %194
  br i1 %197, label %198, label %203

198:                                              ; preds = %190
  %199 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 8
  %200 = load ptr, ptr %199, align 4
  %201 = load ptr, ptr %167, align 4
  %202 = getelementptr i8, ptr %201, i32 %194
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %200, ptr align 1 %202, i32 %196, i1 false) #11
  br label %216

203:                                              ; preds = %190
  %204 = sub i32 4096, %194
  %205 = tail call i32 @llvm.umin.i32(i32 %204, i32 %196) #11
  %206 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 8
  %207 = load ptr, ptr %206, align 4
  %208 = load ptr, ptr %167, align 4
  %209 = getelementptr i8, ptr %208, i32 %194
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %207, ptr align 1 %209, i32 %205, i1 false) #11
  %210 = icmp ugt i32 %196, %204
  br i1 %210, label %211, label %216

211:                                              ; preds = %203
  %212 = sub nsw i32 %196, %205
  %213 = load ptr, ptr %206, align 4
  %214 = getelementptr i8, ptr %213, i32 %205
  %215 = load ptr, ptr %167, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %214, ptr align 1 %215, i32 %212, i1 false) #11
  br label %216

216:                                              ; preds = %211, %203, %198
  %217 = load ptr, ptr %161, align 4
  %218 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 7
  %219 = load i32, ptr %218, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #11, !annotation !9
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #11
  %220 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %219, ptr %220, align 4
  %221 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 %196, ptr %221, align 4
  %222 = icmp eq ptr %217, null
  br i1 %222, label %230, label %223

223:                                              ; preds = %216
  %224 = load ptr, ptr %217, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %230, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.dma_device, ptr %224, i32 0, i32 39
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %231

230:                                              ; preds = %226, %223, %216
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #11
  br label %269

231:                                              ; preds = %226
  %232 = call ptr %228(ptr noundef nonnull %217, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #11
  %233 = icmp eq ptr %232, null
  br i1 %233, label %269, label %234

234:                                              ; preds = %231
  store i8 1, ptr %168, align 4
  %235 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %232, i32 0, i32 6
  store ptr @stm32_usart_tx_dma_complete, ptr %235, align 4
  %236 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %232, i32 0, i32 8
  store ptr %0, ptr %236, align 4
  %237 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %232, i32 0, i32 4
  %238 = load ptr, ptr %237, align 4
  %239 = call i32 %238(ptr noundef nonnull %232) #11
  %240 = icmp sgt i32 %239, -1
  %241 = load ptr, ptr %161, align 4
  %242 = load ptr, ptr %241, align 4
  br i1 %240, label %250, label %243

243:                                              ; preds = %234
  %244 = getelementptr inbounds %struct.dma_device, ptr %242, i32 0, i32 47
  %245 = load ptr, ptr %244, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %249, label %247

247:                                              ; preds = %243
  %248 = call i32 %245(ptr noundef %241) #11
  br label %249

249:                                              ; preds = %247, %243
  store i8 0, ptr %168, align 4
  br label %269

250:                                              ; preds = %234
  %251 = getelementptr inbounds %struct.dma_device, ptr %242, i32 0, i32 50
  %252 = load ptr, ptr %251, align 4
  call void %252(ptr noundef %241) #11
  %253 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %165, i32 0, i32 2
  %254 = load i8, ptr %253, align 1
  %255 = zext i8 %254 to i32
  %256 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr i8, ptr %257, i32 %255
  %259 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %258) #11, !srcloc !16
  %260 = or i32 %259, 128
  %261 = load ptr, ptr %256, align 4
  %262 = getelementptr i8, ptr %261, i32 %255
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 %260) #11, !srcloc !17
  %263 = load i32, ptr %193, align 4
  %264 = add i32 %263, %195
  %265 = and i32 %264, 4095
  store i32 %265, ptr %193, align 4
  %266 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %267 = load i32, ptr %266, align 4
  %268 = add i32 %267, %196
  store i32 %268, ptr %266, align 4
  br label %271

269:                                              ; preds = %249, %231, %230
  call fastcc void @stm32_usart_transmit_chars_pio(ptr noundef %0) #11
  br label %271

270:                                              ; preds = %160
  tail call fastcc void @stm32_usart_transmit_chars_pio(ptr noundef %0)
  br label %271

271:                                              ; preds = %270, %269, %250, %181, %171
  %272 = load i32, ptr %94, align 4
  %273 = load i32, ptr %96, align 4
  %274 = sub i32 %272, %273
  %275 = and i32 %274, 3840
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %271
  call void @uart_write_wakeup(ptr noundef %0) #11
  %278 = load i32, ptr %94, align 4
  %279 = load i32, ptr %96, align 4
  br label %280

280:                                              ; preds = %277, %271
  %281 = phi i32 [ %279, %277 ], [ %273, %271 ]
  %282 = phi i32 [ %278, %277 ], [ %272, %271 ]
  %283 = icmp eq i32 %282, %281
  br i1 %283, label %284, label %314

284:                                              ; preds = %280
  %285 = load ptr, ptr %3, align 4
  %286 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 16
  %287 = load i8, ptr %286, align 4, !range !10
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %304, label %289

289:                                              ; preds = %284
  %290 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 18
  %291 = load i32, ptr %290, align 4
  %292 = icmp sgt i32 %291, -1
  br i1 %292, label %293, label %304

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %285, i32 0, i32 2
  %295 = load i8, ptr %294, align 1
  %296 = zext i8 %295 to i32
  %297 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %298 = load ptr, ptr %297, align 4
  %299 = getelementptr i8, ptr %298, i32 %296
  %300 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %299) #11, !srcloc !16
  %301 = and i32 %300, -8388609
  %302 = load ptr, ptr %297, align 4
  %303 = getelementptr i8, ptr %302, i32 %296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %303, i32 %301) #11, !srcloc !17
  br label %314

304:                                              ; preds = %289, %284
  %305 = load i8, ptr %285, align 1
  %306 = zext i8 %305 to i32
  %307 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %308 = load ptr, ptr %307, align 4
  %309 = getelementptr i8, ptr %308, i32 %306
  %310 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %309) #11, !srcloc !16
  %311 = and i32 %310, -129
  %312 = load ptr, ptr %307, align 4
  %313 = getelementptr i8, ptr %312, i32 %306
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 %311) #11, !srcloc !17
  br label %314

314:                                              ; preds = %304, %293, %280, %130, %119, %81, %68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_usart_transmit_chars_pio(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !16
  %14 = and i32 %13, 128
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %1
  %17 = load i8, ptr %9, align 1
  %18 = zext i8 %17 to i32
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr i8, ptr %19, i32 %18
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !16
  %22 = and i32 %21, -129
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr i8, ptr %23, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #11, !srcloc !17
  br label %25

25:                                               ; preds = %16, %1
  %26 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 1
  %27 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 2
  %28 = load i32, ptr %26, align 4
  %29 = load i32, ptr %27, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %65, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 7
  %33 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 10
  %34 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  br label %35

35:                                               ; preds = %43, %31
  %36 = load ptr, ptr %7, align 4
  %37 = load i8, ptr %32, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr i8, ptr %36, i32 %38
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !16
  %41 = and i32 %40, 128
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %6, align 4
  %45 = load i32, ptr %27, align 4
  %46 = getelementptr i8, ptr %44, i32 %45
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load ptr, ptr %7, align 4
  %50 = load i8, ptr %33, align 1
  %51 = zext i8 %50 to i32
  %52 = getelementptr i8, ptr %49, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %48) #11, !srcloc !17
  %53 = load i32, ptr %27, align 4
  %54 = add i32 %53, 1
  %55 = and i32 %54, 4095
  store i32 %55, ptr %27, align 4
  %56 = load i32, ptr %34, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %34, align 4
  %58 = load i32, ptr %26, align 4
  %59 = load i32, ptr %27, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %35

61:                                               ; preds = %35
  %62 = load i32, ptr %26, align 4
  %63 = load i32, ptr %27, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %61, %43, %25
  %66 = load ptr, ptr %2, align 4
  %67 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 16
  %68 = load i8, ptr %67, align 4, !range !10
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 18
  %72 = load i32, ptr %71, align 4
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %66, i32 0, i32 2
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load ptr, ptr %7, align 4
  %79 = getelementptr i8, ptr %78, i32 %77
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #11, !srcloc !16
  %81 = and i32 %80, -8388609
  %82 = load ptr, ptr %7, align 4
  %83 = getelementptr i8, ptr %82, i32 %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #11, !srcloc !17
  br label %121

84:                                               ; preds = %70, %65
  %85 = load i8, ptr %66, align 1
  %86 = zext i8 %85 to i32
  %87 = load ptr, ptr %7, align 4
  %88 = getelementptr i8, ptr %87, i32 %86
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #11, !srcloc !16
  %90 = and i32 %89, -129
  %91 = load ptr, ptr %7, align 4
  %92 = getelementptr i8, ptr %91, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #11, !srcloc !17
  br label %121

93:                                               ; preds = %61
  %94 = load ptr, ptr %2, align 4
  %95 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 16
  %96 = load i8, ptr %95, align 4, !range !10
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 18
  %100 = load i32, ptr %99, align 4
  %101 = icmp sgt i32 %100, -1
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %94, i32 0, i32 2
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = load ptr, ptr %7, align 4
  %107 = getelementptr i8, ptr %106, i32 %105
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #11, !srcloc !16
  %109 = or i32 %108, 8388608
  %110 = load ptr, ptr %7, align 4
  %111 = getelementptr i8, ptr %110, i32 %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #11, !srcloc !17
  br label %121

112:                                              ; preds = %98, %93
  %113 = load i8, ptr %94, align 1
  %114 = zext i8 %113 to i32
  %115 = load ptr, ptr %7, align 4
  %116 = getelementptr i8, ptr %115, i32 %114
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #11, !srcloc !16
  %118 = or i32 %117, 128
  %119 = load ptr, ptr %7, align 4
  %120 = getelementptr i8, ptr %119, i32 %114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #11, !srcloc !17
  br label %121

121:                                              ; preds = %112, %102, %84, %74
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_usart_tx_dma_complete(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 2
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !16
  %11 = and i32 %10, -129
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #11, !srcloc !17
  %14 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 47
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = tail call i32 %18(ptr noundef %15) #11
  br label %22

22:                                               ; preds = %20, %1
  %23 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 12
  store i8 0, ptr %23, align 4
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #11
  tail call fastcc void @stm32_usart_transmit_chars(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %24) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_enable_ms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usart_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %6, i32 0, i32 7
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !16
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %6, i32 0, i32 8
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, -1
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = zext i8 %18 to i32
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr i8, ptr %22, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 2048) #11, !srcloc !17
  br label %24

24:                                               ; preds = %20, %16, %2
  %25 = and i32 %13, 1048576
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %6, i32 0, i32 8
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, -1
  br i1 %30, label %57, label %31

31:                                               ; preds = %27
  %32 = zext i8 %29 to i32
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr i8, ptr %33, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 1048576) #11, !srcloc !17
  %35 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %6, i32 0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr i8, ptr %38, i32 %37
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !16
  %41 = and i32 %40, -4194305
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr i8, ptr %42, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #11, !srcloc !17
  %44 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 20
  %45 = load i32, ptr %44, align 4
  %46 = tail call ptr @irq_get_irq_data(i32 noundef %45) #11
  %47 = getelementptr inbounds %struct.irq_data, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 16384
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %31
  %53 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.tty_struct, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %56, i32 noundef 0, i1 noundef zeroext false) #11
  br label %57

57:                                               ; preds = %52, %31, %27, %24
  %58 = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 13
  %59 = load i8, ptr %58, align 1, !range !10
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %113

61:                                               ; preds = %57
  %62 = and i32 %13, 32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %95, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %5, align 4
  %70 = load ptr, ptr %7, align 4
  %71 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %69, i32 0, i32 2
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = getelementptr i8, ptr %70, i32 %73
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #11, !srcloc !16
  %76 = and i32 %75, 64
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %68, %61
  %79 = and i32 %13, 15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %113, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %113, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %5, align 4
  %87 = load ptr, ptr %7, align 4
  %88 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %86, i32 0, i32 2
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = getelementptr i8, ptr %87, i32 %90
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #11, !srcloc !16
  %93 = and i32 %92, 64
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %85, %68, %64
  tail call void @_raw_spin_lock(ptr noundef %1) #11
  %96 = tail call fastcc i32 @stm32_usart_receive_chars(ptr noundef %1, i1 noundef zeroext false)
  %97 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 48
  %98 = load i8, ptr %97, align 4
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %101 = load i16, ptr %1, align 4
  %102 = add i16 %101, 1
  store i16 %102, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  br label %110

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 47
  %105 = load i32, ptr %104, align 4
  store i32 0, ptr %104, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %106 = load i16, ptr %1, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %108 = icmp eq i32 %105, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  tail call void @handle_sysrq(i32 noundef %105) #11
  br label %110

110:                                              ; preds = %109, %103, %100
  %111 = icmp eq i32 %96, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %110
  tail call void @tty_flip_buffer_push(ptr noundef %4) #11
  br label %113

113:                                              ; preds = %112, %110, %85, %81, %78, %57
  %114 = and i32 %13, 128
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 6
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  tail call void @_raw_spin_lock(ptr noundef %1) #11
  tail call fastcc void @stm32_usart_transmit_chars(ptr noundef %1)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %121 = load i16, ptr %1, align 4
  %122 = add i16 %121, 1
  store i16 %122, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  br label %123

123:                                              ; preds = %120, %116, %113
  %124 = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %138, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %5, align 4
  %129 = load ptr, ptr %7, align 4
  %130 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %128, i32 0, i32 2
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = getelementptr i8, ptr %129, i32 %132
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #11, !srcloc !16
  %135 = and i32 %134, 64
  %136 = icmp eq i32 %135, 0
  %137 = select i1 %136, i32 1, i32 2
  br label %138

138:                                              ; preds = %127, %123
  %139 = phi i32 [ 1, %123 ], [ %137, %127 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usart_threaded_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_port, ptr %1, i32 0, i32 13
  %6 = load i8, ptr %5, align 1, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %10 = tail call fastcc i32 @stm32_usart_receive_chars(ptr noundef %1, i1 noundef zeroext false)
  %11 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 48
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %9) #11
  br label %20

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 47
  %17 = load i32, ptr %16, align 4
  store i32 0, ptr %16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %9) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @handle_sysrq(i32 noundef %17) #11
  br label %20

20:                                               ; preds = %19, %15, %14
  %21 = icmp eq i32 %10, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void @tty_flip_buffer_push(ptr noundef %4) #11
  br label %23

23:                                               ; preds = %22, %20, %2
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_usart_start_rx_dma_cyclic(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 11
  store i32 4096, ptr %4, align 4
  %5 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq ptr %6, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %6, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 40
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call ptr %15(ptr noundef nonnull %6, i32 noundef %8, i32 noundef 4096, i32 noundef 2048, i32 noundef 2, i32 noundef 1) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %13, %10, %1
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.16) #12
  br label %63

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %18, i32 0, i32 6
  store ptr @stm32_usart_rx_dma_complete, ptr %24, align 4
  %25 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %18, i32 0, i32 8
  store ptr %0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %18, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef nonnull %18) #11
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 0) #11
  %30 = icmp sgt i32 %28, -1
  %31 = load ptr, ptr %5, align 4
  %32 = load ptr, ptr %31, align 4
  br i1 %30, label %46, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 47
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %63, label %37

37:                                               ; preds = %33
  %38 = tail call i32 %35(ptr noundef %31) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load ptr, ptr %31, align 4
  %42 = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 48
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %63, label %45

45:                                               ; preds = %40
  tail call void %43(ptr noundef %31) #11
  br label %63

46:                                               ; preds = %23
  %47 = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 50
  %48 = load ptr, ptr %47, align 4
  tail call void %48(ptr noundef %31) #11
  %49 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 13
  %50 = load i8, ptr %49, align 1, !range !10
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 2
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 %55
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #11, !srcloc !16
  %60 = or i32 %59, 64
  %61 = load ptr, ptr %56, align 4
  %62 = getelementptr i8, ptr %61, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #11, !srcloc !17
  br label %63

63:                                               ; preds = %52, %46, %45, %40, %37, %33, %20
  %64 = phi i32 [ -19, %20 ], [ 0, %52 ], [ 0, %46 ], [ %29, %33 ], [ %29, %37 ], [ %29, %40 ], [ %29, %45 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_usart_receive_chars(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !16
  %16 = and i32 %15, 64
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %8, %2
  %19 = phi i1 [ %17, %8 ], [ false, %2 ]
  %20 = or i1 %19, %1
  br i1 %20, label %21, label %174

21:                                               ; preds = %18
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr inbounds %struct.dma_chan, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 22
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 49
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %22, i32 noundef %24, ptr noundef %25) #11
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %154

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 22, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %33, %35
  br i1 %36, label %37, label %79

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = sub i32 4096, %35
  %43 = getelementptr i8, ptr %41, i32 %42
  %44 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 20
  %45 = load i32, ptr %44, align 4
  %46 = icmp ne i32 %45, 255
  %47 = icmp ne i32 %35, 0
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %63

49:                                               ; preds = %37
  %50 = load i8, ptr %43, align 1
  %51 = trunc i32 %45 to i8
  %52 = and i8 %50, %51
  store i8 %52, ptr %43, align 1
  %53 = icmp eq i32 %35, 1
  br i1 %53, label %63, label %54

54:                                               ; preds = %54, %49
  %55 = phi i32 [ %61, %54 ], [ 1, %49 ]
  %56 = load i32, ptr %44, align 4
  %57 = getelementptr i8, ptr %43, i32 %55
  %58 = load i8, ptr %57, align 1
  %59 = trunc i32 %56 to i8
  %60 = and i8 %58, %59
  store i8 %60, ptr %57, align 1
  %61 = add nuw i32 %55, 1
  %62 = icmp eq i32 %61, %35
  br i1 %62, label %63, label %54

63:                                               ; preds = %54, %49, %37
  %64 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %39, ptr noundef %43, i8 noundef zeroext 0, i32 noundef %35) #11
  %65 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, %64
  store i32 %67, ptr %65, align 4
  %68 = icmp eq i32 %64, %35
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 10
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32, ptr %34, align 4
  %75 = sub i32 %74, %64
  %76 = icmp eq i32 %74, %64
  %77 = select i1 %76, i32 4096, i32 %75
  store i32 %77, ptr %34, align 4
  %78 = load i32, ptr %32, align 4
  br label %79

79:                                               ; preds = %73, %31
  %80 = phi i32 [ %78, %73 ], [ %33, %31 ]
  %81 = phi i32 [ %77, %73 ], [ %35, %31 ]
  %82 = phi i32 [ %35, %73 ], [ 0, %31 ]
  %83 = sub i32 %81, %80
  %84 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  %88 = sub i32 4096, %81
  %89 = getelementptr i8, ptr %87, i32 %88
  %90 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 20
  %91 = load i32, ptr %90, align 4
  %92 = icmp ne i32 %91, 255
  %93 = icmp ne i32 %81, %80
  %94 = and i1 %93, %92
  br i1 %94, label %95, label %109

95:                                               ; preds = %79
  %96 = load i8, ptr %89, align 1
  %97 = trunc i32 %91 to i8
  %98 = and i8 %96, %97
  store i8 %98, ptr %89, align 1
  %99 = icmp eq i32 %83, 1
  br i1 %99, label %109, label %100

100:                                              ; preds = %100, %95
  %101 = phi i32 [ %107, %100 ], [ 1, %95 ]
  %102 = load i32, ptr %90, align 4
  %103 = getelementptr i8, ptr %89, i32 %101
  %104 = load i8, ptr %103, align 1
  %105 = trunc i32 %102 to i8
  %106 = and i8 %104, %105
  store i8 %106, ptr %103, align 1
  %107 = add nuw i32 %101, 1
  %108 = icmp eq i32 %107, %83
  br i1 %108, label %109, label %100

109:                                              ; preds = %100, %95, %79
  %110 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %85, ptr noundef %89, i8 noundef zeroext 0, i32 noundef %83) #11
  %111 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, %110
  store i32 %113, ptr %111, align 4
  %114 = icmp eq i32 %110, %83
  br i1 %114, label %119, label %115

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 10
  %117 = load i32, ptr %116, align 4
  %118 = add i32 %117, 1
  store i32 %118, ptr %116, align 4
  br label %119

119:                                              ; preds = %115, %109
  %120 = load i32, ptr %34, align 4
  %121 = sub i32 %120, %110
  %122 = icmp eq i32 %120, %110
  %123 = select i1 %122, i32 4096, i32 %121
  store i32 %123, ptr %34, align 4
  %124 = add i32 %83, %82
  %125 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 7
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = getelementptr i8, ptr %126, i32 %129
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #11, !srcloc !16
  %132 = and i32 %131, 15
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %176, label %134

134:                                              ; preds = %119
  %135 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 2
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = load ptr, ptr %125, align 4
  %139 = getelementptr i8, ptr %138, i32 %137
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #11, !srcloc !16
  %141 = and i32 %140, -65
  %142 = load ptr, ptr %125, align 4
  %143 = getelementptr i8, ptr %142, i32 %137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %141) #11, !srcloc !17
  %144 = tail call fastcc i32 @stm32_usart_receive_chars_pio(ptr noundef %0)
  %145 = add i32 %144, %124
  %146 = load i8, ptr %135, align 1
  %147 = zext i8 %146 to i32
  %148 = load ptr, ptr %125, align 4
  %149 = getelementptr i8, ptr %148, i32 %147
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #11, !srcloc !16
  %151 = or i32 %150, 64
  %152 = load ptr, ptr %125, align 4
  %153 = getelementptr i8, ptr %152, i32 %147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %151) #11, !srcloc !17
  br label %176

154:                                              ; preds = %21
  %155 = load ptr, ptr %5, align 4
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.dma_device, ptr %156, i32 0, i32 47
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %154
  %161 = tail call i32 %158(ptr noundef %155) #11
  br label %162

162:                                              ; preds = %160, %154
  %163 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 2
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr i8, ptr %167, i32 %165
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #11, !srcloc !16
  %170 = and i32 %169, -65
  %171 = load ptr, ptr %166, align 4
  %172 = getelementptr i8, ptr %171, i32 %165
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %170) #11, !srcloc !17
  %173 = tail call fastcc i32 @stm32_usart_receive_chars_pio(ptr noundef %0)
  br label %176

174:                                              ; preds = %18
  %175 = tail call fastcc i32 @stm32_usart_receive_chars_pio(ptr noundef %0)
  br label %176

176:                                              ; preds = %174, %162, %134, %119
  %177 = phi i32 [ %145, %134 ], [ %124, %119 ], [ %173, %162 ], [ %175, %174 ]
  ret i32 %177
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_usart_receive_chars_pio(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 7
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !16
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %168, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 3
  %15 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %3, i32 0, i32 8
  %16 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 20
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 7
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 8
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 6
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 9
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 17
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 48
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 47
  br label %31

31:                                               ; preds = %158, %13
  %32 = phi i32 [ %10, %13 ], [ %165, %158 ]
  %33 = phi i32 [ 0, %13 ], [ %74, %158 ]
  %34 = load ptr, ptr %14, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = and i32 %32, 15
  br label %51

38:                                               ; preds = %31
  %39 = load ptr, ptr %2, align 4
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %39, i32 0, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr i8, ptr %40, i32 %43
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !16
  %46 = and i32 %45, 64
  %47 = icmp ne i32 %46, 0
  %48 = and i32 %32, 15
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %168, label %51

51:                                               ; preds = %38, %36
  %52 = phi i32 [ %37, %36 ], [ %48, %38 ]
  %53 = or i32 %32, 65536
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = load i8, ptr %15, align 1
  %57 = icmp eq i8 %56, -1
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = zext i8 %56 to i32
  %60 = load ptr, ptr %4, align 4
  %61 = getelementptr i8, ptr %60, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %52) #11, !srcloc !17
  br label %62

62:                                               ; preds = %58, %55, %51
  %63 = load ptr, ptr %2, align 4
  %64 = load ptr, ptr %4, align 4
  %65 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %63, i32 0, i32 9
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr i8, ptr %64, i32 %67
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #11, !srcloc !16
  %70 = load i32, ptr %16, align 4
  %71 = and i32 %70, %69
  %72 = load i32, ptr %17, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %17, align 4
  %74 = add i32 %33, 1
  br i1 %54, label %139, label %75

75:                                               ; preds = %62
  %76 = and i32 %32, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %18, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %18, align 4
  br label %128

81:                                               ; preds = %75
  %82 = and i32 %32, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %19, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %19, align 4
  br label %128

87:                                               ; preds = %81
  %88 = and i32 %32, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %128, label %90

90:                                               ; preds = %87
  %91 = icmp eq i32 %71, 0
  br i1 %91, label %92, label %125

92:                                               ; preds = %90
  %93 = load i32, ptr %21, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %21, align 4
  %95 = load ptr, ptr %22, align 4
  %96 = load ptr, ptr %23, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  tail call void %96(ptr noundef %0) #11
  br label %99

99:                                               ; preds = %98, %92
  %100 = load i8, ptr %24, align 4
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %25, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %115, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.console, ptr %103, i32 0, i32 9
  %107 = load i16, ptr %106, align 2
  %108 = sext i16 %107 to i32
  %109 = load i32, ptr %26, align 4
  %110 = icmp eq i32 %109, %108
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i32, ptr %27, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %111
  store i32 0, ptr %27, align 4
  br label %115

115:                                              ; preds = %114, %105, %102, %99
  %116 = load i32, ptr %28, align 4
  %117 = and i32 %116, 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.tty_port, ptr %95, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  tail call void @do_SAK(ptr noundef %121) #11
  br label %128

122:                                              ; preds = %111
  %123 = load volatile i32, ptr @jiffies, align 64
  %124 = add i32 %123, 500
  store i32 %124, ptr %27, align 4
  br label %158

125:                                              ; preds = %90
  %126 = load i32, ptr %20, align 4
  %127 = add i32 %126, 1
  store i32 %127, ptr %20, align 4
  br label %128

128:                                              ; preds = %125, %119, %115, %87, %84, %78
  %129 = load i32, ptr %29, align 4
  %130 = and i32 %129, %53
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = and i32 %130, 2
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = icmp eq i32 %71, 0
  %138 = select i1 %137, i32 1, i32 2
  br label %139

139:                                              ; preds = %136, %133, %128, %62
  %140 = phi i32 [ %53, %62 ], [ %130, %133 ], [ %130, %136 ], [ %130, %128 ]
  %141 = phi i32 [ 0, %62 ], [ 0, %133 ], [ %138, %136 ], [ 3, %128 ]
  %142 = load i32, ptr %27, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %157, label %144

144:                                              ; preds = %139
  %145 = icmp eq i32 %71, 0
  br i1 %145, label %155, label %146

146:                                              ; preds = %144
  %147 = load volatile i32, ptr @jiffies, align 64
  %148 = sub i32 %147, %142
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = tail call i32 @sysrq_mask() #11
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %0, i32 noundef %71) #11
  br i1 %154, label %158, label %155

155:                                              ; preds = %153, %146, %144
  store i32 0, ptr %27, align 4
  br label %157

156:                                              ; preds = %150
  store i32 %71, ptr %30, align 4
  store i32 0, ptr %27, align 4
  br label %158

157:                                              ; preds = %155, %139
  tail call void @uart_insert_char(ptr noundef %0, i32 noundef %140, i32 noundef 8, i32 noundef %71, i32 noundef %141) #11
  br label %158

158:                                              ; preds = %157, %156, %153, %122
  %159 = load ptr, ptr %2, align 4
  %160 = load ptr, ptr %4, align 4
  %161 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %159, i32 0, i32 7
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i32
  %164 = getelementptr i8, ptr %160, i32 %163
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #11, !srcloc !16
  %166 = and i32 %165, 32
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %31

168:                                              ; preds = %158, %38, %1
  %169 = phi i32 [ 0, %1 ], [ %33, %38 ], [ %74, %158 ]
  ret i32 %169
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_usart_rx_dma_complete(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #11
  %5 = tail call fastcc i32 @stm32_usart_receive_chars(ptr noundef %0, i1 noundef zeroext false)
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 48
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #11
  br label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 47
  %12 = load i32, ptr %11, align 4
  store i32 0, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @handle_sysrq(i32 noundef %12) #11
  br label %15

15:                                               ; preds = %14, %10, %9
  %16 = icmp eq i32 %5, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  tail call void @tty_flip_buffer_push(ptr noundef %3) #11
  br label %18

18:                                               ; preds = %17, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_disable_ms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tty_get_char_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_rs485_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usart_serial_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_suspend_port(ptr noundef nonnull @stm32_usart_driver, ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9, %1
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %86, label %18

18:                                               ; preds = %13, %9
  %19 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 30
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 19
  %24 = load i8, ptr %23, align 4, !range !10
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %86, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.tty_port, ptr %22, i32 0, i32 11
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %86, label %31

31:                                               ; preds = %26
  %32 = load i8, ptr %20, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 %33
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #11, !srcloc !16
  %38 = or i32 %37, 2
  %39 = load ptr, ptr %34, align 4
  %40 = getelementptr i8, ptr %39, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #11, !srcloc !17
  %41 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %20, i32 0, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load ptr, ptr %34, align 4
  %45 = getelementptr i8, ptr %44, i32 %43
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #11, !srcloc !16
  %47 = or i32 %46, 4194304
  %48 = load ptr, ptr %34, align 4
  %49 = getelementptr i8, ptr %48, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #11, !srcloc !17
  %50 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %84, label %53

53:                                               ; preds = %31
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %55 = load i8, ptr %41, align 1
  %56 = zext i8 %55 to i32
  %57 = load ptr, ptr %34, align 4
  %58 = getelementptr i8, ptr %57, i32 %56
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #11, !srcloc !16
  %60 = and i32 %59, -65
  %61 = load ptr, ptr %34, align 4
  %62 = getelementptr i8, ptr %61, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #11, !srcloc !17
  %63 = tail call fastcc i32 @stm32_usart_receive_chars(ptr noundef %3, i1 noundef zeroext true) #11
  %64 = load ptr, ptr %50, align 4
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 47
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %53
  %70 = tail call i32 %67(ptr noundef %64) #11
  br label %71

71:                                               ; preds = %69, %53
  %72 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 48
  %73 = load i8, ptr %72, align 4
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %54) #11
  br label %81

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 47
  %78 = load i32, ptr %77, align 4
  store i32 0, ptr %77, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %54) #11
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call void @handle_sysrq(i32 noundef %78) #11
  br label %81

81:                                               ; preds = %80, %76, %75
  %82 = icmp eq i32 %63, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %81
  tail call void @tty_flip_buffer_push(ptr noundef %22) #11
  br label %84

84:                                               ; preds = %83, %81, %31
  %85 = tail call fastcc i32 @stm32_usart_receive_chars(ptr noundef %3, i1 noundef zeroext false) #11
  br label %86

86:                                               ; preds = %84, %26, %18, %13
  %87 = load i8, ptr @console_suspend_enabled, align 1, !range !10
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 32
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.console, ptr %91, i32 0, i32 9
  %95 = load i16, ptr %94, align 2
  %96 = sext i16 %95 to i32
  %97 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 41
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, %96
  br i1 %99, label %117, label %100

100:                                              ; preds = %93, %89, %86
  %101 = load i16, ptr %5, align 4
  %102 = and i16 %101, 1
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %106 = load ptr, ptr %105, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %104, %100
  %109 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %110 = load i8, ptr %109, align 4
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %108, %104
  %114 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %0) #11
  br label %117

115:                                              ; preds = %108
  %116 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #11
  br label %117

117:                                              ; preds = %115, %113, %93
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usart_serial_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9, %1
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %57, label %18

18:                                               ; preds = %13, %9
  %19 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 19
  %22 = load i8, ptr %21, align 4, !range !10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 30
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tty_port, ptr %26, i32 0, i32 11
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = tail call fastcc i32 @stm32_usart_start_rx_dma_cyclic(ptr noundef %3) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %35, %31
  %39 = load i8, ptr %20, align 1
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 %40
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !16
  %45 = and i32 %44, -3
  %46 = load ptr, ptr %41, align 4
  %47 = getelementptr i8, ptr %46, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #11, !srcloc !17
  %48 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %20, i32 0, i32 2
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load ptr, ptr %41, align 4
  %52 = getelementptr i8, ptr %51, i32 %50
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !16
  %54 = and i32 %53, -4194305
  %55 = load ptr, ptr %41, align 4
  %56 = getelementptr i8, ptr %55, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #11, !srcloc !17
  br label %57

57:                                               ; preds = %38, %24, %18, %13
  %58 = tail call i32 @uart_resume_port(ptr noundef nonnull @stm32_usart_driver, ptr noundef %3) #11
  br label %59

59:                                               ; preds = %57, %35
  %60 = phi i32 [ %58, %57 ], [ %36, %35 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usart_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usart_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_port, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #11
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = phi i32 [ %6, %1 ], [ %9, %11 ], [ 0, %8 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_usart_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %6
  %8 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %6, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_usart_info, ptr %9, i32 0, i32 1
  %11 = load i32, ptr @oops_in_progress, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !22
  %15 = tail call i32 @_raw_spin_trylock(ptr noundef %7) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #11, !srcloc !23
  br label %20

18:                                               ; preds = %3
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #11
  br label %20

20:                                               ; preds = %18, %17, %13
  %21 = phi i1 [ true, %17 ], [ false, %13 ], [ false, %18 ]
  %22 = phi i32 [ %14, %17 ], [ %14, %13 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = load i8, ptr %9, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr i8, ptr %24, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !16
  %29 = and i32 %28, -201343481
  %30 = load i8, ptr %10, align 4
  %31 = zext i8 %30 to i32
  %32 = shl nuw i32 1, %31
  %33 = or i32 %29, %32
  %34 = or i32 %33, 8
  %35 = load ptr, ptr %23, align 4
  %36 = load i8, ptr %9, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr i8, ptr %35, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %34) #11, !srcloc !17
  tail call void @uart_console_write(ptr noundef %7, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @stm32_usart_console_putchar) #11
  %39 = load ptr, ptr %23, align 4
  %40 = load i8, ptr %9, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr i8, ptr %39, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %28) #11, !srcloc !17
  br i1 %21, label %44, label %43

43:                                               ; preds = %20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %22) #11
  br label %44

44:                                               ; preds = %43, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usart_console_setup(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 9600, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 110, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 110, ptr %6, align 4
  %7 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 2
  %9 = icmp sgt i16 %8, 7
  br i1 %9, label %33, label %10

10:                                               ; preds = %2
  %11 = sext i16 %8 to i32
  %12 = getelementptr [8 x %struct.stm32_port], ptr @stm32_ports, i32 0, i32 %11
  %13 = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 43
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = icmp eq ptr %1, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #11
  %23 = load i32, ptr %3, align 4
  %24 = load i32, ptr %5, align 4
  %25 = load i32, ptr %4, align 4
  %26 = load i32, ptr %6, align 4
  br label %27

27:                                               ; preds = %22, %20
  %28 = phi i32 [ %26, %22 ], [ 110, %20 ]
  %29 = phi i32 [ %25, %22 ], [ 8, %20 ]
  %30 = phi i32 [ %24, %22 ], [ 110, %20 ]
  %31 = phi i32 [ %23, %22 ], [ 9600, %20 ]
  %32 = call i32 @uart_set_options(ptr noundef %12, ptr noundef %0, i32 noundef %31, i32 noundef %30, i32 noundef %29, i32 noundef %28) #11
  br label %33

33:                                               ; preds = %27, %16, %10, %2
  %34 = phi i32 [ %32, %27 ], [ -19, %2 ], [ -6, %16 ], [ -6, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_usart_console_putchar(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.stm32_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 7
  %7 = load ptr, ptr %5, align 4
  %8 = load i8, ptr %6, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !16
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %14, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !24
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !25
  %15 = load ptr, ptr %5, align 4
  %16 = load i8, ptr %6, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !16
  %20 = and i32 %19, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %14, label %22

22:                                               ; preds = %14, %2
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.stm32_usart_offsets, ptr %4, i32 0, i32 10
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr i8, ptr %23, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %1) #11, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{i64 492010, i64 2147981981, i64 2147982007, i64 2147982054, i64 2147982076, i64 2147982104, i64 2147982124}
!12 = !{i64 2147994193, i64 2147994219, i64 2147994248, i64 2147994282, i64 2147994313, i64 2147994336}
!13 = !{i64 2147993700}
!14 = !{i64 478579, i64 478604, i64 478626, i64 478642, i64 478654, i64 478674, i64 478698, i64 478714, i64 478726}
!15 = !{i64 2147993826}
!16 = !{i64 5102170}
!17 = !{i64 5101752}
!18 = !{i64 2148930562}
!19 = !{i64 2148926386}
!20 = !{i64 2148926461, i64 2148926488, i64 2148926535, i64 2148926557, i64 2148926585, i64 2148926605}
!21 = !{i64 2148953565}
!22 = !{i64 387249, i64 387310}
!23 = !{i64 390266}
!24 = !{i64 2153533819}
!25 = !{i64 2153533661}
