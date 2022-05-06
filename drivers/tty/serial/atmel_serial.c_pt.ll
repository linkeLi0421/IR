; ModuleID = '/llk/IR/drivers/tty/serial/atmel_serial.c_pt.bc'
source_filename = "../drivers/tty/serial/atmel_serial.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.atmel_uart_port = type { %struct.uart_port, ptr, i32, i32, i32, i8, i8, i16, [2 x %struct.atmel_dma_buffer], i8, i8, %struct.atmel_dma_buffer, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, i32, i32, %struct.scatterlist, %struct.scatterlist, %struct.tasklet_struct, %struct.tasklet_struct, %struct.atomic_t, i32, i32, %struct.circ_buf, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, %struct.timer_list, i8, i8, i32, i32, %struct.spinlock, i8, i32, i32, %struct.anon.78, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.atmel_dma_buffer = type { ptr, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.77, i32 }
%union.anon.77 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.78 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.page = type { i32, %union.anon.1, %union.anon.69, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.atmel_uart_char = type { i16, i16 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.39, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.39 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.40, %struct.anon.41, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.40 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.41 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }

@__initcall__kmod_atmel_serial__258_3017_atmel_serial_init6 = internal global ptr @atmel_serial_init, section ".initcall6.init", align 4
@atmel_uart = internal global %struct.uart_driver { ptr null, ptr @.str, ptr @.str.1, i32 204, i32 154, i32 8, ptr @atmel_console, ptr null, ptr null }, align 4
@atmel_serial_driver = internal global %struct.platform_driver { ptr @atmel_serial_probe, ptr @atmel_serial_remove, ptr null, ptr @atmel_serial_suspend, ptr @atmel_serial_resume, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_serial_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"atmel_serial\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ttyAT\00", align 1
@atmel_console = internal global %struct.console { [16 x i8] c"ttyAT\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @atmel_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @atmel_uart, ptr null }, align 4
@atmel_ports = internal global [8 x %struct.atmel_uart_port] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"atmel_usart_serial\00", align 1
@atmel_serial_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-usart-serial\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@atmel_ports_in_use = internal global [1 x i32] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"atmel,fifo-size\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Invalid FIFO size\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Using FIFO (%u data)\0A\00", align 1
@atmel_pops = internal constant %struct.uart_ops { ptr @atmel_tx_empty, ptr @atmel_set_mctrl, ptr @atmel_get_mctrl, ptr @atmel_stop_tx, ptr @atmel_start_tx, ptr null, ptr null, ptr null, ptr @atmel_stop_rx, ptr @atmel_enable_ms, ptr @atmel_break_ctl, ptr @atmel_startup, ptr @atmel_shutdown, ptr @atmel_flush_buffer, ptr @atmel_set_termios, ptr @atmel_set_ldisc, ptr @atmel_serial_pm, ptr @atmel_type, ptr @atmel_release_port, ptr @atmel_request_port, ptr @atmel_config_port, ptr @atmel_verify_port, ptr null }, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"usart\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"atmel,use-dma-rx\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"atmel,use-dma-tx\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"using %s for rx DMA transfers\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"DMA rx slave configuration failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Preparing DMA cyclic failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"dma_submit_error %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"RX channel not available, switch to pio\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.19 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"using %s for tx DMA transfers\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"DMA tx slave configuration failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"TX channel not available, switch to pio\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"Failed to send via dma!\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"atmel_startup - Can't get irq\0A\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"Should start RX, but TX fifo is not empty\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"atmel_serial: unknown pm %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"ATMEL_SERIAL\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.28 = private unnamed_addr constant [34 x i8] c"ISO7816: Timeguard exceeding 255\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"ISO7816: Type not supported\0A\00", align 1
@.str.30 = private unnamed_addr constant [49 x i8] c"ISO7816 fidi = 0, Generator generates no signal\0A\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"ISO7816 fidi = %u, value not supported\0A\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"Not supported ip name nor version, set to uart\0A\00", align 1
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_atmel_serial__258_3017_atmel_serial_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @atmel_serial_init() #0 section ".init.text" {
  %1 = tail call i32 @uart_register_driver(ptr noundef nonnull @atmel_uart) #11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_serial_driver, ptr noundef null) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @uart_unregister_driver(ptr noundef nonnull @atmel_uart) #11
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %6
  %8 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !8
  %12 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %6, i32 31
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 1
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #11, !srcloc !9
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr i8, ptr %17, i32 292
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !8
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr i8, ptr %20, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 512) #11, !srcloc !9
  %22 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 64) #11, !srcloc !9
  %23 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %6, i32 40
  store i8 0, ptr %23, align 4
  tail call void @uart_console_write(ptr noundef %7, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @atmel_console_putchar) #11
  br label %24

24:                                               ; preds = %24, %3
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr i8, ptr %25, i32 20
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !8
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %24, label %30

30:                                               ; preds = %24
  %31 = and i32 %19, 256
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %8, align 4
  %35 = getelementptr i8, ptr %34, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 256) #11, !srcloc !9
  br label %36

36:                                               ; preds = %33, %30
  %37 = load ptr, ptr %8, align 4
  %38 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %11) #11, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @atmel_console_setup(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 2
  %9 = sext i16 %8 to i32
  %10 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 115200, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 110, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 110, ptr %6, align 4
  %11 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %39, label %14

14:                                               ; preds = %2
  %15 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %9, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @clk_prepare(ptr noundef %16) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = tail call i32 @clk_enable(ptr noundef %16) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %16) #11
  br label %39

23:                                               ; preds = %19
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 -1) #11, !srcloc !9
  %26 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 260) #11, !srcloc !9
  %27 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 80) #11, !srcloc !9
  %28 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %9, i32 40
  store i8 0, ptr %28, align 4
  %29 = icmp eq ptr %1, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #11
  %31 = load i32, ptr %6, align 4
  br label %33

32:                                               ; preds = %23
  call fastcc void @atmel_console_get_options(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4) #12
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ 110, %32 ], [ %31, %30 ]
  %35 = load i32, ptr %3, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load i32, ptr %4, align 4
  %38 = call i32 @uart_set_options(ptr noundef %10, ptr noundef %0, i32 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %34) #11
  br label %39

39:                                               ; preds = %33, %22, %14, %2
  %40 = phi i32 [ %38, %33 ], [ -19, %2 ], [ %20, %22 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_console_putchar(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !8
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !11
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !8
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %9, label %15

15:                                               ; preds = %9, %2
  %16 = trunc i32 %1 to i8
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %16) #11, !srcloc !12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
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
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @atmel_console_get_options(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 section ".init.text" {
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !8
  %15 = and i32 %14, 192
  %16 = icmp eq i32 %15, 192
  %17 = select i1 %16, i32 8, i32 7
  store i32 %17, ptr %3, align 4
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  %21 = and i32 %20, 3584
  switch i32 %21, label %25 [
    i32 0, label %23
    i32 512, label %22
  ]

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %11
  %24 = phi i32 [ 111, %22 ], [ 101, %11 ]
  store i32 %24, ptr %2, align 4
  br label %25

25:                                               ; preds = %23, %11
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %27 = load i32, ptr %26, align 4
  %28 = shl nuw nsw i32 %9, 4
  %29 = add nsw i32 %28, -16
  %30 = udiv i32 %27, %29
  store i32 %30, ptr %1, align 4
  br label %31

31:                                               ; preds = %25, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_serial_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  store ptr %6, ptr %7, align 8
  %8 = tail call i32 @of_alias_get_id(ptr noundef %6, ptr noundef nonnull @.str.3) #11
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = tail call i32 @_find_first_zero_bit_le(ptr noundef nonnull @atmel_ports_in_use, i32 noundef 8) #11
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i32 [ %11, %10 ], [ %8, %1 ]
  %14 = icmp sgt i32 %13, 7
  br i1 %14, label %205, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @_test_and_set_bit(i32 noundef %13, ptr noundef nonnull @atmel_ports_in_use) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %205

18:                                               ; preds = %15
  %19 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13
  %20 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 3
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 41
  store i32 %13, ptr %21, align 4
  %22 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 48
  store i8 1, ptr %22, align 4
  %23 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 32
  store i32 0, ptr %23, align 4
  %24 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 34
  store i32 0, ptr %24, align 4
  %25 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 33
  store i32 0, ptr %25, align 4
  %26 = load ptr, ptr %7, align 8
  %27 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull @.str.4, ptr noundef %23, i32 noundef 1, i32 noundef 0) #11
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %42

29:                                               ; preds = %18
  %30 = load i32, ptr %23, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = icmp ult i32 %30, 8
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  store i32 0, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #13
  br label %42

35:                                               ; preds = %32
  %36 = lshr i32 %30, 1
  %37 = add i32 %30, -16
  %38 = tail call i32 @llvm.smax.i32(i32 %36, i32 %37) #11
  store i32 %38, ptr %25, align 4
  %39 = lshr i32 %30, 2
  %40 = add i32 %30, -20
  %41 = tail call i32 @llvm.smax.i32(i32 %39, i32 %40) #11
  store i32 %41, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %30) #13
  br label %42

42:                                               ; preds = %35, %34, %29, %18
  %43 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 24
  store volatile i32 0, ptr %43, align 4
  %44 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 44
  store i32 0, ptr %44, align 4
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr i8, ptr %45, i32 -16
  tail call fastcc void @atmel_init_property(ptr noundef %19, ptr noundef %0) #11
  %47 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 5
  %48 = load i8, ptr %47, align 4, !range !13
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 49
  store ptr @atmel_prepare_rx_dma, ptr %51, align 4
  br label %59

52:                                               ; preds = %42
  %53 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 6
  %54 = load i8, ptr %53, align 1, !range !13
  %55 = icmp eq i8 %54, 0
  %56 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 49
  br i1 %55, label %58, label %57

57:                                               ; preds = %52
  store ptr @atmel_prepare_rx_pdc, ptr %56, align 4
  br label %59

58:                                               ; preds = %52
  store ptr null, ptr %56, align 4
  br label %59

59:                                               ; preds = %58, %57, %50
  %60 = phi ptr [ @atmel_rx_from_pdc, %57 ], [ @atmel_rx_from_ring, %58 ], [ @atmel_rx_from_dma, %50 ]
  %61 = phi ptr [ @atmel_release_rx_pdc, %57 ], [ null, %58 ], [ @atmel_release_rx_dma, %50 ]
  %62 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 51
  store ptr %60, ptr %62, align 4
  %63 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 53
  store ptr %61, ptr %63, align 4
  %64 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 9
  %65 = load i8, ptr %64, align 4, !range !13
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %59
  %68 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 50
  store ptr @atmel_prepare_tx_dma, ptr %68, align 4
  br label %76

69:                                               ; preds = %59
  %70 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 10
  %71 = load i8, ptr %70, align 1, !range !13
  %72 = icmp eq i8 %71, 0
  %73 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 50
  br i1 %72, label %75, label %74

74:                                               ; preds = %69
  store ptr @atmel_prepare_tx_pdc, ptr %73, align 4
  br label %76

75:                                               ; preds = %69
  store ptr null, ptr %73, align 4
  br label %76

76:                                               ; preds = %75, %74, %67
  %77 = phi ptr [ @atmel_tx_pdc, %74 ], [ @atmel_tx_chars, %75 ], [ @atmel_tx_dma, %67 ]
  %78 = phi ptr [ @atmel_release_tx_pdc, %74 ], [ null, %75 ], [ @atmel_release_tx_dma, %67 ]
  %79 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 52
  store ptr %77, ptr %79, align 4
  %80 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 54
  store ptr %78, ptr %80, align 4
  %81 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 26
  store i8 2, ptr %81, align 2
  %82 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 33
  store i32 -1879048192, ptr %82, align 4
  %83 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 39
  store ptr @atmel_pops, ptr %83, align 4
  %84 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 23
  store i32 1, ptr %84, align 4
  %85 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 45
  store ptr %2, ptr %85, align 4
  %86 = getelementptr i8, ptr %45, i32 496
  %87 = load ptr, ptr %86, align 8
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 43
  store i32 %88, ptr %89, align 4
  %90 = tail call i32 @platform_get_irq(ptr noundef %46, i32 noundef 0) #11
  %91 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 20
  store i32 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 18
  store ptr @atmel_config_rs485, ptr %92, align 4
  %93 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 19
  store ptr @atmel_config_iso7816, ptr %93, align 4
  %94 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 2
  store ptr null, ptr %94, align 4
  %95 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 27
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %95, i8 0, i32 12, i1 false) #11
  %96 = tail call i32 @uart_get_rs485_mode(ptr noundef %19) #11
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %202

98:                                               ; preds = %76
  %99 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %120

102:                                              ; preds = %98
  %103 = tail call ptr @clk_get(ptr noundef %45, ptr noundef nonnull @.str.7) #11
  store ptr %103, ptr %99, align 4
  %104 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %135, label %105

105:                                              ; preds = %102
  %106 = tail call i32 @clk_prepare(ptr noundef %103) #11
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = tail call i32 @clk_enable(ptr noundef %103) #11
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  tail call void @clk_unprepare(ptr noundef %103) #11
  br label %112

112:                                              ; preds = %111, %105
  %113 = phi i32 [ %109, %111 ], [ %106, %105 ]
  %114 = load ptr, ptr %99, align 4
  tail call void @clk_put(ptr noundef %114) #11
  store ptr null, ptr %99, align 4
  br label %202

115:                                              ; preds = %108
  %116 = load ptr, ptr %99, align 4
  %117 = tail call i32 @clk_get_rate(ptr noundef %116) #11
  %118 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 22
  store i32 %117, ptr %118, align 4
  %119 = load ptr, ptr %99, align 4
  tail call void @clk_disable(ptr noundef %119) #11
  tail call void @clk_unprepare(ptr noundef %119) #11
  br label %120

120:                                              ; preds = %115, %98
  %121 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 56
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 17
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %137, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 58
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 10
  %132 = load i8, ptr %131, align 1, !range !13
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  store i32 512, ptr %84, align 4
  br label %137

135:                                              ; preds = %102
  %136 = ptrtoint ptr %103 to i32
  store ptr null, ptr %99, align 4
  br label %202

137:                                              ; preds = %134, %130, %125, %120
  %138 = phi i32 [ 2064, %134 ], [ 512, %125 ], [ 512, %120 ], [ 2, %130 ]
  %139 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 31
  store i32 %138, ptr %139, align 4
  %140 = tail call ptr @mctrl_gpio_init(ptr noundef %19, i32 noundef 0) #11
  %141 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 28
  store ptr %140, ptr %141, align 4
  %142 = icmp ugt ptr %140, inttoptr (i32 -4096 to ptr)
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = ptrtoint ptr %140 to i32
  br label %202

145:                                              ; preds = %137
  %146 = getelementptr [8 x %struct.atmel_uart_port], ptr @atmel_ports, i32 0, i32 %13, i32 6
  %147 = load i8, ptr %146, align 1, !range !13
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %151 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %150, i32 noundef 3264, i32 noundef 4096) #14
  %152 = icmp eq ptr %151, null
  br i1 %152, label %189, label %153

153:                                              ; preds = %149
  store ptr %151, ptr %95, align 4
  br label %154

154:                                              ; preds = %153, %145
  %155 = load i32, ptr %121, align 4
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  %158 = tail call i32 @uart_add_one_port(ptr noundef nonnull @atmel_uart, ptr noundef %19) #11
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %187

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 32
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %176, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.console, ptr %162, i32 0, i32 9
  %166 = load i16, ptr %165, align 2
  %167 = sext i16 %166 to i32
  %168 = load i32, ptr %21, align 4
  %169 = icmp eq i32 %168, %167
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load i16, ptr getelementptr inbounds (%struct.console, ptr @atmel_console, i32 0, i32 8), align 4
  %172 = and i16 %171, 4
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %170
  %175 = load ptr, ptr %99, align 4
  tail call void @clk_disable(ptr noundef %175) #11
  tail call void @clk_unprepare(ptr noundef %175) #11
  br label %176

176:                                              ; preds = %174, %170, %164, %160
  %177 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext true) #11
  %178 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %19, ptr %178, align 8
  %179 = load ptr, ptr %99, align 4
  %180 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %179)
  br i1 %157, label %185, label %181

181:                                              ; preds = %176
  %182 = load ptr, ptr %94, align 4
  %183 = getelementptr i8, ptr %182, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 0) #11, !srcloc !9
  %184 = load ptr, ptr %94, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 262144) #11, !srcloc !9
  br label %185

185:                                              ; preds = %181, %176
  tail call fastcc void @atmel_get_ip_name(ptr noundef %19)
  %186 = load ptr, ptr %99, align 4
  tail call void @clk_disable(ptr noundef %186) #11
  tail call void @clk_unprepare(ptr noundef %186) #11
  br label %205

187:                                              ; preds = %154
  %188 = load ptr, ptr %95, align 4
  tail call void @kfree(ptr noundef %188) #11
  store ptr null, ptr %95, align 4
  br label %189

189:                                              ; preds = %187, %149
  %190 = phi i32 [ %158, %187 ], [ -12, %149 ]
  %191 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 32
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.console, ptr %192, i32 0, i32 9
  %196 = load i16, ptr %195, align 2
  %197 = sext i16 %196 to i32
  %198 = load i32, ptr %21, align 4
  %199 = icmp eq i32 %198, %197
  br i1 %199, label %202, label %200

200:                                              ; preds = %194, %189
  %201 = load ptr, ptr %99, align 4
  tail call void @clk_put(ptr noundef %201) #11
  store ptr null, ptr %99, align 4
  br label %202

202:                                              ; preds = %200, %194, %143, %135, %112, %76
  %203 = phi i32 [ %136, %135 ], [ %144, %143 ], [ %190, %194 ], [ %190, %200 ], [ %96, %76 ], [ %113, %112 ]
  %204 = load i32, ptr %21, align 4
  tail call void @_clear_bit(i32 noundef %204, ptr noundef nonnull @atmel_ports_in_use) #11
  br label %205

205:                                              ; preds = %202, %185, %15, %12
  %206 = phi i32 [ 0, %185 ], [ %203, %202 ], [ -19, %12 ], [ -16, %15 ]
  ret i32 %206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_serial_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 22
  tail call void @tasklet_kill(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 23
  tail call void @tasklet_kill(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call i32 @device_init_wakeup(ptr noundef %6, i1 noundef zeroext false) #11
  %8 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @atmel_uart, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #11
  %11 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 41
  %12 = load i32, ptr %11, align 4
  tail call void @_clear_bit(i32 noundef %12, ptr noundef nonnull @atmel_ports_in_use) #11
  %13 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_put(ptr noundef %14) #11
  store ptr null, ptr %13, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  store ptr null, ptr %15, align 8
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_serial_suspend(ptr noundef %0, [1 x i32] %1) #3 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 32
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %75, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.console, ptr %6, i32 0, i32 9
  %10 = load i16, ptr %9, align 2
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 41
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, %11
  %15 = load i8, ptr @console_suspend_enabled, align 1
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !8
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %25, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !15
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr i8, ptr %26, i32 20
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !8
  %29 = and i32 %28, 512
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %25, label %31

31:                                               ; preds = %25, %18, %8
  %32 = load ptr, ptr %5, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %75, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.console, ptr %32, i32 0, i32 9
  %36 = load i16, ptr %35, align 2
  %37 = sext i16 %36 to i32
  %38 = load i32, ptr %12, align 4
  %39 = icmp eq i32 %38, %37
  %40 = load i8, ptr @console_suspend_enabled, align 1
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %75

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !8
  %48 = getelementptr inbounds %struct.atmel_uart_port, ptr %4, i32 0, i32 48, i32 1
  store i32 %47, ptr %48, align 4
  %49 = load ptr, ptr %44, align 4
  %50 = getelementptr i8, ptr %49, i32 16
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #11, !srcloc !8
  %52 = getelementptr inbounds %struct.atmel_uart_port, ptr %4, i32 0, i32 48, i32 2
  store i32 %51, ptr %52, align 4
  %53 = load ptr, ptr %44, align 4
  %54 = getelementptr i8, ptr %53, i32 32
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #11, !srcloc !8
  %56 = getelementptr inbounds %struct.atmel_uart_port, ptr %4, i32 0, i32 48, i32 3
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.atmel_uart_port, ptr %4, i32 0, i32 36
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %44, align 4
  %60 = getelementptr i8, ptr %59, i32 %58
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #11, !srcloc !8
  %62 = getelementptr inbounds %struct.atmel_uart_port, ptr %4, i32 0, i32 48, i32 4
  store i32 %61, ptr %62, align 4
  %63 = load ptr, ptr %44, align 4
  %64 = getelementptr i8, ptr %63, i32 40
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #11, !srcloc !8
  %66 = getelementptr inbounds %struct.atmel_uart_port, ptr %4, i32 0, i32 48, i32 5
  store i32 %65, ptr %66, align 4
  %67 = load ptr, ptr %44, align 4
  %68 = getelementptr i8, ptr %67, i32 160
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #11, !srcloc !8
  %70 = getelementptr inbounds %struct.atmel_uart_port, ptr %4, i32 0, i32 48, i32 6
  store i32 %69, ptr %70, align 4
  %71 = load ptr, ptr %44, align 4
  %72 = getelementptr i8, ptr %71, i32 176
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #11, !srcloc !8
  %74 = getelementptr inbounds %struct.atmel_uart_port, ptr %4, i32 0, i32 48, i32 7
  store i32 %73, ptr %74, align 4
  br label %75

75:                                               ; preds = %43, %34, %31, %2
  %76 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %77 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 1
  %78 = load i16, ptr %77, align 4
  %79 = and i16 %78, 1
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 6
  %83 = load ptr, ptr %82, align 8
  %84 = icmp ne ptr %83, null
  %85 = zext i1 %84 to i32
  br label %86

86:                                               ; preds = %81, %75
  %87 = phi i32 [ 0, %75 ], [ %85, %81 ]
  %88 = getelementptr inbounds %struct.atmel_uart_port, ptr %4, i32 0, i32 2
  store i32 %87, ptr %88, align 4
  %89 = tail call i32 @at91_suspend_entering_slow_clock() #11
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.atmel_uart_port, ptr %4, i32 0, i32 44
  %93 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %92) #11
  %94 = getelementptr inbounds %struct.atmel_uart_port, ptr %4, i32 0, i32 41
  store i8 1, ptr %94, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %92, i32 noundef %93) #11
  %95 = tail call i32 @device_set_wakeup_enable(ptr noundef %76, i1 noundef zeroext false) #11
  br label %96

96:                                               ; preds = %91, %86
  %97 = tail call i32 @uart_suspend_port(ptr noundef nonnull @atmel_uart, ptr noundef %4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_serial_resume(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.console, ptr %5, i32 0, i32 9
  %9 = load i16, ptr %8, align 2
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 41
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %10
  %14 = load i8, ptr @console_suspend_enabled, align 1
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %71

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 48, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %19) #11, !srcloc !9
  %23 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 48, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %20, align 4
  %26 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #11, !srcloc !9
  %27 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 48, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %20, align 4
  %30 = getelementptr i8, ptr %29, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #11, !srcloc !9
  %31 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 36
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 48, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %20, align 4
  %36 = getelementptr i8, ptr %35, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #11, !srcloc !9
  %37 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 48, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %20, align 4
  %40 = getelementptr i8, ptr %39, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #11, !srcloc !9
  %41 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 32
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %17
  %45 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 1174405120) #11, !srcloc !9
  %46 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 48, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %20, align 4
  %49 = getelementptr i8, ptr %48, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #11, !srcloc !9
  %50 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 48, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %20, align 4
  %53 = getelementptr i8, ptr %52, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #11, !srcloc !9
  br label %54

54:                                               ; preds = %44, %17
  %55 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 256) #11, !srcloc !9
  %56 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 16) #11, !srcloc !9
  %57 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 6
  %58 = load i8, ptr %57, align 1, !range !13
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 28
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, 264
  %64 = load ptr, ptr %20, align 4
  %65 = getelementptr i8, ptr %64, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #11, !srcloc !9
  %66 = load ptr, ptr %20, align 4
  %67 = getelementptr i8, ptr %66, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 1) #11, !srcloc !9
  br label %71

68:                                               ; preds = %54
  %69 = load ptr, ptr %20, align 4
  %70 = getelementptr i8, ptr %69, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 1) #11, !srcloc !9
  br label %71

71:                                               ; preds = %68, %60, %7, %1
  %72 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 44
  %73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %72) #11
  %74 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 42
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  tail call fastcc void @atmel_handle_receive(ptr noundef %3, i32 noundef %75)
  %78 = load i32, ptr %74, align 4
  %79 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 43
  %80 = load i32, ptr %79, align 4
  tail call fastcc void @atmel_handle_status(ptr noundef %3, i32 noundef %78, i32 noundef %80)
  %81 = load i32, ptr %74, align 4
  tail call fastcc void @atmel_handle_transmit(ptr noundef %3, i32 noundef %81)
  store i32 0, ptr %74, align 4
  br label %82

82:                                               ; preds = %77, %71
  %83 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 41
  store i8 0, ptr %83, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %72, i32 noundef %73) #11
  %84 = tail call i32 @uart_resume_port(ptr noundef nonnull @atmel_uart, ptr noundef %3) #11
  %85 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %86 = getelementptr inbounds %struct.atmel_uart_port, ptr %3, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = icmp ne i32 %87, 0
  %89 = tail call i32 @device_set_wakeup_enable(ptr noundef %85, i1 noundef zeroext %88) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_get_ip_name(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 240
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  %6 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 37
  store i8 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 38
  store i8 0, ptr %7, align 1
  switch i32 %5, label %24 [
    i32 1430344276, label %8
    i32 1431519570, label %10
    i32 1145194325, label %33
  ]

8:                                                ; preds = %1
  store i8 1, ptr %7, align 1
  %9 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 36
  store i32 40, ptr %9, align 4
  br label %33

10:                                               ; preds = %1
  store i8 1, ptr %6, align 4
  store i8 1, ptr %7, align 1
  %11 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 36
  store i32 36, ptr %11, align 4
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 252
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !8
  switch i32 %14, label %21 [
    i32 2068, label %15
    i32 1793, label %15
    i32 1282, label %18
  ]

15:                                               ; preds = %10, %10
  %16 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 46
  store i32 3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 47
  store i32 65535, ptr %17, align 4
  br label %33

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 46
  store i32 3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 47
  store i32 2047, ptr %20, align 4
  br label %33

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 46
  store i32 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 47
  store i32 2047, ptr %23, align 4
  br label %33

24:                                               ; preds = %1
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr i8, ptr %25, i32 252
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !8
  switch i32 %27, label %30 [
    i32 770, label %28
    i32 66067, label %28
    i32 66306, label %28
    i32 515, label %33
    i32 66050, label %33
  ]

28:                                               ; preds = %24, %24, %24
  store i8 1, ptr %6, align 4
  store i8 1, ptr %7, align 1
  %29 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 36
  store i32 36, ptr %29, align 4
  br label %33

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.32) #13
  br label %33

33:                                               ; preds = %30, %28, %24, %24, %21, %18, %15, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_init_property(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef null) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef null) #11
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 5
  br i1 %9, label %12, label %11

11:                                               ; preds = %7
  store i8 1, ptr %10, align 4
  br label %15

12:                                               ; preds = %7
  store i8 0, ptr %10, align 4
  br label %15

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 5
  store i8 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %12, %11
  %16 = phi i8 [ 0, %11 ], [ 1, %12 ], [ 0, %13 ]
  %17 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 6
  store i8 %16, ptr %17, align 1
  %18 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.10, ptr noundef null) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef null) #11
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 9
  br i1 %22, label %25, label %24

24:                                               ; preds = %20
  store i8 1, ptr %23, align 4
  br label %28

25:                                               ; preds = %20
  store i8 0, ptr %23, align 4
  br label %28

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 9
  store i8 0, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %25, %24
  %29 = phi i8 [ 0, %24 ], [ 1, %25 ], [ 0, %26 ]
  %30 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 10
  store i8 %29, ptr %30, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_config_rs485(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 31
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #11, !srcloc !9
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  %11 = and i32 %10, -16
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %12, ptr noundef align 4 dereferenceable(32) %1, i32 32, i1 false)
  %13 = load i32, ptr %1, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = load i32, ptr %12, align 4
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 512, i32 2
  store i32 %20, ptr %3, align 4
  %21 = getelementptr inbounds %struct.serial_rs485, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #11, !srcloc !9
  %25 = or i32 %11, 1
  br label %32

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 10
  %28 = load i8, ptr %27, align 1, !range !13
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 2064, ptr %3, align 4
  br label %32

31:                                               ; preds = %26
  store i32 2, ptr %3, align 4
  br label %32

32:                                               ; preds = %31, %30, %16
  %33 = phi i32 [ %25, %16 ], [ %11, %30 ], [ %11, %31 ]
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #11, !srcloc !9
  %36 = load i32, ptr %3, align 4
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #11, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_config_iso7816(ptr noundef %0, ptr nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 31
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #11, !srcloc !9
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  %11 = load i32, ptr %1, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %87, label %14

14:                                               ; preds = %2
  %15 = and i32 %10, -50609728
  %16 = getelementptr inbounds %struct.serial_iso7816, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 255
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.28) #13
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %1, i8 0, i32 40, i1 false)
  br label %108

22:                                               ; preds = %14
  %23 = trunc i32 %11 to i8
  %24 = and i8 %23, -16
  switch i8 %24, label %26 [
    i8 0, label %29
    i8 16, label %25
  ]

25:                                               ; preds = %22
  br label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.29) #13
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %1, i8 0, i32 40, i1 false)
  br label %108

29:                                               ; preds = %25, %22
  %30 = phi i32 [ 1048582, %25 ], [ 2097156, %22 ]
  %31 = or i32 %15, %30
  %32 = or i32 %31, 50593792
  %33 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @clk_get_rate(ptr noundef %34) #11
  %36 = getelementptr inbounds %struct.serial_iso7816, ptr %1, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = udiv i32 %35, %37
  %39 = getelementptr inbounds %struct.serial_iso7816, ptr %1, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.serial_iso7816, ptr %1, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = udiv i32 %40, %44
  %48 = icmp ugt i32 %44, %40
  br i1 %48, label %49, label %52

49:                                               ; preds = %46, %42, %29
  %50 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %51 = load ptr, ptr %50, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.30) #13
  br label %63

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 46
  %54 = load i32, ptr %53, align 4
  %55 = icmp ult i32 %47, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 47
  %58 = load i32, ptr %57, align 4
  %59 = icmp ugt i32 %47, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %52
  %61 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %62 = load ptr, ptr %61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.31, i32 noundef %47) #13
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %1, i8 0, i32 40, i1 false)
  br label %108

63:                                               ; preds = %56, %49
  %64 = phi i32 [ %47, %56 ], [ 0, %49 ]
  %65 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 58
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load ptr, ptr %5, align 4
  %71 = getelementptr i8, ptr %70, i32 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #11, !srcloc !8
  %73 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 29
  store i32 %72, ptr %73, align 4
  %74 = load ptr, ptr %5, align 4
  %75 = getelementptr i8, ptr %74, i32 32
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #11, !srcloc !8
  %77 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 30
  store i32 %76, ptr %77, align 4
  br label %78

78:                                               ; preds = %69, %63
  %79 = load i32, ptr %16, align 4
  %80 = load ptr, ptr %5, align 4
  %81 = getelementptr i8, ptr %80, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #11, !srcloc !9
  %82 = load ptr, ptr %5, align 4
  %83 = getelementptr i8, ptr %82, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %38) #11, !srcloc !9
  %84 = load ptr, ptr %5, align 4
  %85 = getelementptr i8, ptr %84, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %64) #11, !srcloc !9
  %86 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 144) #11, !srcloc !9
  br label %102

87:                                               ; preds = %2
  %88 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 29
  %89 = load i32, ptr %88, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %1, i8 0, i32 40, i1 false)
  %90 = load ptr, ptr %5, align 4
  %91 = getelementptr i8, ptr %90, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 0) #11, !srcloc !9
  %92 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 30
  %93 = load i32, ptr %92, align 4
  %94 = load ptr, ptr %5, align 4
  %95 = getelementptr i8, ptr %94, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #11, !srcloc !9
  %96 = load ptr, ptr %5, align 4
  %97 = getelementptr i8, ptr %96, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 372) #11, !srcloc !9
  %98 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 10
  %99 = load i8, ptr %98, align 1, !range !13
  %100 = icmp eq i8 %99, 0
  %101 = select i1 %100, i32 2, i32 2064
  br label %102

102:                                              ; preds = %87, %78
  %103 = phi i32 [ 9728, %78 ], [ %101, %87 ]
  %104 = phi i32 [ %32, %78 ], [ %89, %87 ]
  store i32 %103, ptr %3, align 4
  %105 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 58
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %105, ptr noundef align 4 dereferenceable(40) %1, i32 40, i1 false)
  %106 = load ptr, ptr %5, align 4
  %107 = getelementptr i8, ptr %106, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %104) #11, !srcloc !9
  br label %108

108:                                              ; preds = %102, %60, %26, %19
  %109 = phi i32 [ -22, %19 ], [ 0, %102 ], [ -22, %60 ], [ -22, %26 ]
  %110 = load i32, ptr %3, align 4
  %111 = load ptr, ptr %5, align 4
  %112 = getelementptr i8, ptr %111, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #11, !srcloc !9
  ret i32 %109
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_rs485_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_prepare_rx_dma(ptr noundef %0) #3 {
  %2 = alloca %struct.dma_cap_mask_t, align 4
  %3 = alloca %struct.dma_slave_config, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false), !annotation !16
  store i32 0, ptr %2, align 4
  call void @_set_bit(i32 noundef 12, ptr noundef nonnull %2) #11
  %8 = call ptr @dma_request_chan(ptr noundef %7, ptr noundef nonnull @.str.11) #11
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %10 = select i1 %9, ptr null, ptr %8
  %11 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 15
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %105, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 27
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.dma_chan, ptr %10, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %13
  %25 = phi ptr [ %23, %21 ], [ %19, %13 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.12, ptr noundef %25) #13
  %26 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 13
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 21
  call void @sg_init_table(ptr noundef %27, i32 noundef 1) #11
  %28 = load ptr, ptr %14, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = and i32 %29, 4095
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32, !prof !17

32:                                               ; preds = %24
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/atmel_serial.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1217, 0\0A.popsection", ""() #11, !srcloc !18
  unreachable

33:                                               ; preds = %24
  %34 = load ptr, ptr @mem_map, align 4
  %35 = add i32 %29, 1073741824
  %36 = lshr i32 %35, 12
  %37 = getelementptr %struct.page, ptr %34, i32 %36
  %38 = ptrtoint ptr %37 to i32
  %39 = and i32 %38, 3
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41, !prof !17

41:                                               ; preds = %33
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !19
  unreachable

42:                                               ; preds = %33
  %43 = load i32, ptr %27, align 4
  %44 = and i32 %43, 3
  %45 = or i32 %44, %38
  store i32 %45, ptr %27, align 4
  %46 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 21, i32 1
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 21, i32 2
  store i32 4096, ptr %47, align 4
  %48 = load ptr, ptr %4, align 4
  %49 = call i32 @dma_map_sg_attrs(ptr noundef %48, ptr noundef %27, i32 noundef 1, i32 noundef 2, i32 noundef 0) #11
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %105, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %52, i8 0, i32 40, i1 false)
  store i32 2, ptr %3, align 4
  %53 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  store i32 1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 24
  %57 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 1
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 5
  store i32 1, ptr %58, align 4
  %59 = load ptr, ptr %11, align 4
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.dma_device, ptr %60, i32 0, i32 44
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %51
  %65 = call i32 %62(ptr noundef %59, ptr noundef nonnull %3) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64, %51
  %68 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.13) #13
  br label %105

69:                                               ; preds = %64
  %70 = load ptr, ptr %11, align 4
  %71 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 21, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 21, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = lshr i32 %74, 1
  %76 = icmp eq ptr %70, null
  br i1 %76, label %87, label %77

77:                                               ; preds = %69
  %78 = load ptr, ptr %70, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.dma_device, ptr %78, i32 0, i32 40
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = call ptr %82(ptr noundef nonnull %70, i32 noundef %72, i32 noundef %74, i32 noundef %75, i32 noundef 2, i32 noundef 1) #11
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %84, %80, %77, %69
  %88 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.14) #13
  br label %105

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %85, i32 0, i32 6
  store ptr @atmel_complete_rx_dma, ptr %90, align 4
  %91 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %85, i32 0, i32 8
  store ptr %0, ptr %91, align 4
  %92 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 17
  store ptr %85, ptr %92, align 4
  %93 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %85, i32 0, i32 4
  %94 = load ptr, ptr %93, align 4
  %95 = call i32 %94(ptr noundef nonnull %85) #11
  %96 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 19
  store i32 %95, ptr %96, align 4
  %97 = icmp sgt i32 %95, -1
  br i1 %97, label %100, label %98

98:                                               ; preds = %89
  %99 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.15, i32 noundef %95) #13
  br label %105

100:                                              ; preds = %89
  %101 = load ptr, ptr %11, align 4
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.dma_device, ptr %102, i32 0, i32 50
  %104 = load ptr, ptr %103, align 4
  call void %104(ptr noundef %101) #11
  br label %122

105:                                              ; preds = %98, %87, %67, %42, %1
  %106 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.16) #13
  %107 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 5
  store i8 0, ptr %107, align 4
  %108 = load ptr, ptr %11, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %122, label %110

110:                                              ; preds = %105
  %111 = load ptr, ptr %108, align 4
  %112 = getelementptr inbounds %struct.dma_device, ptr %111, i32 0, i32 47
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %110
  %116 = call i32 %113(ptr noundef nonnull %108) #11
  br label %117

117:                                              ; preds = %115, %110
  call void @dma_release_channel(ptr noundef nonnull %108) #11
  %118 = load ptr, ptr %4, align 4
  %119 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 21
  call void @dma_unmap_sg_attrs(ptr noundef %118, ptr noundef %119, i32 noundef 1, i32 noundef 2, i32 noundef 0) #11
  %120 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 17
  store ptr null, ptr %120, align 4
  store ptr null, ptr %11, align 4
  %121 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 19
  store i32 -22, ptr %121, align 4
  br label %122

122:                                              ; preds = %117, %105, %100
  %123 = phi i32 [ 0, %100 ], [ -22, %117 ], [ -22, %105 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_rx_from_dma(ptr noundef %0) #3 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 27
  %6 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !16
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 2048) #11, !srcloc !9
  %10 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 19
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 49
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %7, i32 noundef %11, ptr noundef nonnull %2) #11
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 256) #11, !srcloc !9
  %20 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 22
  %21 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 24
  %22 = load volatile i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %76

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 22, i32 1
  %26 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %25) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %24
  call void @__tasklet_schedule(ptr noundef %20) #11
  br label %76

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 21
  call void @dma_sync_sg_for_cpu(ptr noundef %31, ptr noundef %32, i32 noundef 1, i32 noundef 2) #11
  %33 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 21, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 %34, %36
  %38 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 27, i32 1
  store i32 %37, ptr %38, align 4
  %39 = icmp ult i32 %34, %36
  br i1 %39, label %40, label %41, !prof !20

40:                                               ; preds = %29
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/atmel_serial.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1149, 0\0A.popsection", ""() #11, !srcloc !21
  unreachable

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 27, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = icmp slt i32 %37, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = sub i32 %34, %43
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr i8, ptr %47, i32 %43
  %49 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %4, ptr noundef %48, i8 noundef zeroext 0, i32 noundef %46) #11
  store i32 0, ptr %42, align 4
  %50 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %46
  store i32 %52, ptr %50, align 4
  %53 = load i32, ptr %38, align 4
  br label %54

54:                                               ; preds = %45, %41
  %55 = phi i32 [ %53, %45 ], [ %37, %41 ]
  %56 = phi i32 [ 0, %45 ], [ %43, %41 ]
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = sub i32 %55, %56
  %60 = load ptr, ptr %5, align 4
  %61 = getelementptr i8, ptr %60, i32 %56
  %62 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %4, ptr noundef %61, i8 noundef zeroext 0, i32 noundef %59) #11
  %63 = load i32, ptr %38, align 4
  %64 = load i32, ptr %33, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store i32 0, ptr %38, align 4
  br label %67

67:                                               ; preds = %66, %58
  %68 = phi i32 [ 0, %66 ], [ %63, %58 ]
  store i32 %68, ptr %42, align 4
  %69 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %59
  store i32 %71, ptr %69, align 4
  br label %72

72:                                               ; preds = %67, %54
  %73 = load ptr, ptr %30, align 4
  call void @dma_sync_sg_for_device(ptr noundef %73, ptr noundef %32, i32 noundef 1, i32 noundef 2) #11
  call void @tty_flip_buffer_push(ptr noundef %4) #11
  %74 = load ptr, ptr %8, align 4
  %75 = getelementptr i8, ptr %74, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 256) #11, !srcloc !9
  br label %76

76:                                               ; preds = %72, %28, %24, %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_release_rx_dma(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 %8(ptr noundef nonnull %3) #11
  br label %12

12:                                               ; preds = %10, %5
  tail call void @dma_release_channel(ptr noundef nonnull %3) #11
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 21
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %15, i32 noundef 1, i32 noundef 2, i32 noundef 0) #11
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 17
  store ptr null, ptr %17, align 4
  store ptr null, ptr %2, align 4
  %18 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 19
  store i32 -22, ptr %18, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_prepare_rx_pdc(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 0
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 512) #14
  store ptr %5, ptr %3, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %13

7:                                                ; preds = %37
  %8 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %46, i32 noundef %9, i32 noundef 512, i32 noundef 2, i32 noundef 0) #11
  %10 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %10) #11
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 6
  store i8 0, ptr %12, align 1
  br label %87

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 4
  %15 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %5) #11
  %16 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %28, !prof !20

19:                                               ; preds = %13
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %20 = tail call ptr @dev_driver_string(ptr noundef %14) #11
  %21 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load ptr, ptr %14, align 4
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ %25, %24 ], [ %22, %19 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %20, ptr noundef %27) #11
  br label %28

28:                                               ; preds = %26, %13
  br i1 %15, label %37, label %29

29:                                               ; preds = %28
  %30 = load ptr, ptr @mem_map, align 4
  %31 = ptrtoint ptr %5 to i32
  %32 = add i32 %31, 1073741824
  %33 = lshr i32 %32, 12
  %34 = getelementptr %struct.page, ptr %30, i32 %33
  %35 = and i32 %31, 4088
  %36 = tail call i32 @dma_map_page_attrs(ptr noundef %14, ptr noundef %34, i32 noundef %35, i32 noundef 512, i32 noundef 2, i32 noundef 0) #11
  br label %37

37:                                               ; preds = %29, %28
  %38 = phi i32 [ %36, %29 ], [ -1, %28 ]
  %39 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 0, i32 2
  store i32 512, ptr %40, align 4
  %41 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 0, i32 3
  store i32 0, ptr %41, align 4
  %42 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 1
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3264, i32 noundef 512) #14
  store ptr %44, ptr %42, align 4
  %45 = icmp eq ptr %44, null
  %46 = load ptr, ptr %2, align 4
  br i1 %45, label %7, label %47

47:                                               ; preds = %37
  %48 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %44) #11
  %49 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %61, !prof !20

52:                                               ; preds = %47
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %53 = tail call ptr @dev_driver_string(ptr noundef %46) #11
  %54 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load ptr, ptr %46, align 4
  br label %59

59:                                               ; preds = %57, %52
  %60 = phi ptr [ %58, %57 ], [ %55, %52 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %53, ptr noundef %60) #11
  br label %61

61:                                               ; preds = %59, %47
  br i1 %48, label %70, label %62

62:                                               ; preds = %61
  %63 = load ptr, ptr @mem_map, align 4
  %64 = ptrtoint ptr %44 to i32
  %65 = add i32 %64, 1073741824
  %66 = lshr i32 %65, 12
  %67 = getelementptr %struct.page, ptr %63, i32 %66
  %68 = and i32 %64, 4088
  %69 = tail call i32 @dma_map_page_attrs(ptr noundef %46, ptr noundef %67, i32 noundef %68, i32 noundef 512, i32 noundef 2, i32 noundef 0) #11
  br label %70

70:                                               ; preds = %62, %61
  %71 = phi i32 [ %69, %62 ], [ -1, %61 ]
  %72 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 1, i32 1
  store i32 %71, ptr %72, align 4
  %73 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 1, i32 2
  store i32 512, ptr %73, align 4
  %74 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 1, i32 3
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 7
  store i16 0, ptr %75, align 2
  %76 = load i32, ptr %39, align 4
  %77 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %76) #11, !srcloc !9
  %80 = load ptr, ptr %77, align 4
  %81 = getelementptr i8, ptr %80, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 512) #11, !srcloc !9
  %82 = load i32, ptr %72, align 4
  %83 = load ptr, ptr %77, align 4
  %84 = getelementptr i8, ptr %83, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #11, !srcloc !9
  %85 = load ptr, ptr %77, align 4
  %86 = getelementptr i8, ptr %85, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 512) #11, !srcloc !9
  br label %87

87:                                               ; preds = %70, %11
  %88 = phi i32 [ 0, %70 ], [ -12, %11 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_rx_from_pdc(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 7
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  br label %10

10:                                               ; preds = %53, %1
  %11 = phi i32 [ %6, %1 ], [ %55, %53 ]
  %12 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 2048) #11, !srcloc !9
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr i8, ptr %13, i32 256
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  %16 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 %11, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %15, %17
  %19 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 %11, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 %11, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.umin.i32(i32 %18, i32 %22)
  %24 = icmp eq i32 %23, %20
  br i1 %24, label %39, label %25, !prof !20

25:                                               ; preds = %10
  %26 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 %11
  %27 = load ptr, ptr %8, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %27, i32 noundef %17, i32 noundef %22, i32 noundef 2) #11
  %28 = sub i32 %23, %20
  %29 = load ptr, ptr %26, align 4
  %30 = load i32, ptr %19, align 4
  %31 = getelementptr i8, ptr %29, i32 %30
  %32 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %3, ptr noundef %31, i8 noundef zeroext 0, i32 noundef %28) #11
  %33 = load ptr, ptr %8, align 4
  %34 = load i32, ptr %16, align 4
  %35 = load i32, ptr %21, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef 2) #11
  %36 = load i32, ptr %9, align 4
  %37 = add i32 %36, %28
  store i32 %37, ptr %9, align 4
  store i32 %23, ptr %19, align 4
  %38 = load i32, ptr %21, align 4
  br label %39

39:                                               ; preds = %25, %10
  %40 = phi i32 [ %38, %25 ], [ %22, %10 ]
  %41 = icmp ult i32 %23, %40
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  store i32 0, ptr %19, align 4
  %43 = load i32, ptr %16, align 4
  %44 = load ptr, ptr %7, align 4
  %45 = getelementptr i8, ptr %44, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #11, !srcloc !9
  %46 = load i32, ptr %21, align 4
  %47 = load ptr, ptr %7, align 4
  %48 = getelementptr i8, ptr %47, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #11, !srcloc !9
  %49 = icmp eq i32 %11, 0
  %50 = zext i1 %49 to i32
  %51 = zext i1 %49 to i16
  store i16 %51, ptr %4, align 2
  %52 = load i32, ptr %21, align 4
  br label %53

53:                                               ; preds = %42, %39
  %54 = phi i32 [ %52, %42 ], [ %40, %39 ]
  %55 = phi i32 [ %50, %42 ], [ %11, %39 ]
  %56 = icmp ult i32 %23, %54
  br i1 %56, label %57, label %10

57:                                               ; preds = %53
  tail call void @tty_flip_buffer_push(ptr noundef %3) #11
  %58 = load ptr, ptr %7, align 4
  %59 = getelementptr i8, ptr %58, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 264) #11, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_release_rx_pdc(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 0
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef 2, i32 noundef 0) #11
  %9 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %9) #11
  %10 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 1
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.atmel_uart_port, ptr %0, i32 0, i32 8, i32 1, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef 2, i32 noundef 0) #11
  %16 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %16) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_rx_from_ring(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 27
  %3 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 27, i32 1
  %4 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 27, i32 2
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %93, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 9
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 8
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 6
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 7
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  br label %16

16:                                               ; preds = %89, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  %17 = load ptr, ptr %2, align 4
  %18 = load i32, ptr %4, align 4
  %19 = getelementptr %struct.atmel_uart_char, ptr %17, i32 %18
  %20 = load i16, ptr %19, align 2
  %21 = getelementptr inbounds i8, ptr %19, i32 2
  %22 = load i16, ptr %21, align 2
  %23 = add i32 %18, 1
  %24 = and i32 %23, 1023
  store i32 %24, ptr %4, align 4
  %25 = load i32, ptr %9, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %9, align 4
  %27 = zext i16 %20 to i32
  %28 = and i32 %27, 228
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %69, label %30, !prof !17

30:                                               ; preds = %16
  %31 = and i32 %27, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = and i32 %27, 65343
  %35 = load i32, ptr %10, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %10, align 4
  %37 = tail call fastcc i32 @uart_handle_break(ptr noundef %0)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %89

39:                                               ; preds = %33, %30
  %40 = phi i32 [ %34, %33 ], [ %27, %30 ]
  %41 = and i32 %40, 128
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %11, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %11, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = and i32 %40, 64
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %12, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %12, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = and i32 %40, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %13, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %13, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, ptr %14, align 4
  %60 = and i32 %59, %40
  %61 = and i32 %60, 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = and i32 %60, 128
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = lshr i32 %60, 5
  %68 = and i32 %67, 2
  br label %69

69:                                               ; preds = %66, %63, %58, %16
  %70 = phi i32 [ 0, %16 ], [ 1, %58 ], [ 3, %63 ], [ %68, %66 ]
  %71 = phi i32 [ %27, %16 ], [ %60, %58 ], [ %60, %63 ], [ %60, %66 ]
  %72 = zext i16 %22 to i32
  %73 = load i32, ptr %15, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %69
  %76 = icmp eq i16 %22, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %75
  %78 = load volatile i32, ptr @jiffies, align 64
  %79 = sub i32 %78, %73
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = tail call i32 @sysrq_mask() #11
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %0, i32 noundef %72) #11
  br i1 %85, label %89, label %86

86:                                               ; preds = %84, %77, %75
  store i32 0, ptr %15, align 4
  br label %88

87:                                               ; preds = %81
  tail call void @handle_sysrq(i32 noundef %72) #11
  store i32 0, ptr %15, align 4
  br label %89

88:                                               ; preds = %86, %69
  tail call void @uart_insert_char(ptr noundef %0, i32 noundef %71, i32 noundef 32, i32 noundef %72, i32 noundef %70) #11
  br label %89

89:                                               ; preds = %88, %87, %84, %33
  %90 = load i32, ptr %3, align 4
  %91 = load i32, ptr %4, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %16

93:                                               ; preds = %89, %1
  %94 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %95 = load ptr, ptr %94, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %95) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_prepare_tx_dma(ptr noundef %0) #3 {
  %2 = alloca %struct.dma_cap_mask_t, align 4
  %3 = alloca %struct.dma_slave_config, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false), !annotation !16
  store i32 0, ptr %2, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %2) #11
  %8 = call ptr @dma_request_chan(ptr noundef %7, ptr noundef nonnull @.str.19) #11
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %10 = select i1 %9, ptr null, ptr %8
  %11 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 14
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %75, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.dma_chan, ptr %10, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %13
  %24 = phi ptr [ %22, %20 ], [ %18, %13 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.20, ptr noundef %24) #13
  %25 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 12
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 20
  call void @sg_init_table(ptr noundef %26, i32 noundef 1) #11
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.uart_state, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = and i32 %31, 4095
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !17

34:                                               ; preds = %23
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/atmel_serial.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1040, 0\0A.popsection", ""() #11, !srcloc !23
  unreachable

35:                                               ; preds = %23
  %36 = load ptr, ptr @mem_map, align 4
  %37 = add i32 %31, 1073741824
  %38 = lshr i32 %37, 12
  %39 = getelementptr %struct.page, ptr %36, i32 %38
  %40 = ptrtoint ptr %39 to i32
  %41 = and i32 %40, 3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43, !prof !17

43:                                               ; preds = %35
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !19
  unreachable

44:                                               ; preds = %35
  %45 = load i32, ptr %26, align 4
  %46 = and i32 %45, 3
  %47 = or i32 %46, %40
  store i32 %47, ptr %26, align 4
  %48 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 20, i32 1
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 20, i32 2
  store i32 4096, ptr %49, align 4
  %50 = load ptr, ptr %4, align 4
  %51 = call i32 @dma_map_sg_attrs(ptr noundef %50, ptr noundef %26, i32 noundef 1, i32 noundef 1, i32 noundef 0) #11
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %75, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %54, i8 0, i32 44, i1 false)
  store i32 1, ptr %3, align 4
  %55 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 32
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 1, i32 4
  %59 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 28
  %63 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 2
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 6
  store i32 1, ptr %64, align 4
  %65 = load ptr, ptr %11, align 4
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dma_device, ptr %66, i32 0, i32 44
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %53
  %71 = call i32 %68(ptr noundef %65, ptr noundef nonnull %3) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %70, %53
  %74 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.21) #13
  br label %75

75:                                               ; preds = %73, %44, %1
  %76 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.22) #13
  %77 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 9
  store i8 0, ptr %77, align 4
  %78 = load ptr, ptr %11, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %92, label %80

80:                                               ; preds = %75
  %81 = load ptr, ptr %78, align 4
  %82 = getelementptr inbounds %struct.dma_device, ptr %81, i32 0, i32 47
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = call i32 %83(ptr noundef nonnull %78) #11
  br label %87

87:                                               ; preds = %85, %80
  call void @dma_release_channel(ptr noundef nonnull %78) #11
  %88 = load ptr, ptr %4, align 4
  %89 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 20
  call void @dma_unmap_sg_attrs(ptr noundef %88, ptr noundef %89, i32 noundef 1, i32 noundef 1, i32 noundef 0) #11
  %90 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 16
  store ptr null, ptr %90, align 4
  store ptr null, ptr %11, align 4
  %91 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 18
  store i32 -22, ptr %91, align 4
  br label %92

92:                                               ; preds = %87, %75, %70
  %93 = phi i32 [ 0, %70 ], [ -22, %87 ], [ -22, %75 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_tx_dma(ptr noundef %0) #3 {
  %2 = alloca [2 x %struct.scatterlist], align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !16
  %7 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 20
  %8 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %100

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %93, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 19, i32 1
  %23 = load i8, ptr %22, align 4, !range !13
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %93

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %93

29:                                               ; preds = %25
  %30 = sub i32 4096, %15
  %31 = add i32 %30, %13
  %32 = and i32 %31, 4095
  %33 = tail call i32 @llvm.smin.i32(i32 %32, i32 %30)
  %34 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 32
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = and i32 %33, -4
  %38 = and i32 %33, 3
  %39 = select i1 %36, i32 %33, i32 %38
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 2) #11
  %40 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 20, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %14, align 4
  %43 = add i32 %42, %41
  %44 = icmp eq i32 %37, 0
  %45 = select i1 %36, i1 true, i1 %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %29
  %47 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %43, ptr %47, align 4
  %48 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 %37, ptr %48, align 4
  %49 = add i32 %43, %37
  br label %50

50:                                               ; preds = %46, %29
  %51 = phi i32 [ 1, %46 ], [ 0, %29 ]
  %52 = phi i32 [ %49, %46 ], [ %43, %29 ]
  %53 = icmp eq i32 %39, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = add nuw nsw i32 %51, 1
  %56 = getelementptr [2 x %struct.scatterlist], ptr %2, i32 0, i32 %51, i32 3
  store i32 %52, ptr %56, align 4
  %57 = getelementptr [2 x %struct.scatterlist], ptr %2, i32 0, i32 %51, i32 4
  store i32 %39, ptr %57, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i32 [ %55, %54 ], [ %51, %50 ]
  %60 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 26
  store i32 %33, ptr %60, align 4
  %61 = icmp eq ptr %6, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %6, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.dma_device, ptr %63, i32 0, i32 39
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = call ptr %67(ptr noundef nonnull %6, ptr noundef nonnull %2, i32 noundef %59, i32 noundef 1, i32 noundef 3, ptr noundef null) #11
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69, %65, %62, %58
  %73 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %74 = load ptr, ptr %73, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.23) #13
  br label %100

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %77 = load ptr, ptr %76, align 4
  call void @dma_sync_sg_for_device(ptr noundef %77, ptr noundef %7, i32 noundef 1, i32 noundef 1) #11
  store ptr %70, ptr %8, align 4
  %78 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %70, i32 0, i32 6
  store ptr @atmel_complete_tx_dma, ptr %78, align 4
  %79 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %70, i32 0, i32 8
  store ptr %0, ptr %79, align 4
  %80 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %70, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 %81(ptr noundef nonnull %70) #11
  %83 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 18
  store i32 %82, ptr %83, align 4
  %84 = icmp sgt i32 %82, -1
  br i1 %84, label %87, label %85

85:                                               ; preds = %75
  %86 = load ptr, ptr %76, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.15, i32 noundef %82) #13
  br label %100

87:                                               ; preds = %75
  %88 = load ptr, ptr %6, align 4
  %89 = getelementptr inbounds %struct.dma_device, ptr %88, i32 0, i32 50
  %90 = load ptr, ptr %89, align 4
  call void %90(ptr noundef nonnull %6) #11
  %91 = load i32, ptr %12, align 4
  %92 = load i32, ptr %14, align 4
  br label %93

93:                                               ; preds = %87, %25, %21, %11
  %94 = phi i32 [ %15, %21 ], [ %92, %87 ], [ %15, %25 ], [ %13, %11 ]
  %95 = phi i32 [ %13, %21 ], [ %91, %87 ], [ %13, %25 ], [ %13, %11 ]
  %96 = sub i32 %95, %94
  %97 = and i32 %96, 3840
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  call void @uart_write_wakeup(ptr noundef %0) #11
  br label %100

100:                                              ; preds = %99, %93, %85, %72, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_release_tx_dma(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 %8(ptr noundef nonnull %3) #11
  br label %12

12:                                               ; preds = %10, %5
  tail call void @dma_release_channel(ptr noundef nonnull %3) #11
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 20
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %15, i32 noundef 1, i32 noundef 1, i32 noundef 0) #11
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 16
  store ptr null, ptr %17, align 4
  store ptr null, ptr %2, align 4
  %18 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 18
  store i32 -22, ptr %18, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_prepare_tx_pdc(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 11
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  store ptr %6, ptr %2, align 4
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %8 = load ptr, ptr %7, align 4
  %9 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %6) #11
  %10 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %22, !prof !20

13:                                               ; preds = %1
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %14 = tail call ptr @dev_driver_string(ptr noundef %8) #11
  %15 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load ptr, ptr %8, align 4
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ %19, %18 ], [ %16, %13 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %14, ptr noundef %21) #11
  br label %22

22:                                               ; preds = %20, %1
  br i1 %9, label %31, label %23

23:                                               ; preds = %22
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %6 to i32
  %26 = add i32 %25, 1073741824
  %27 = lshr i32 %26, 12
  %28 = getelementptr %struct.page, ptr %24, i32 %27
  %29 = and i32 %25, 4095
  %30 = tail call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %28, i32 noundef %29, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #11
  br label %31

31:                                               ; preds = %23, %22
  %32 = phi i32 [ %30, %23 ], [ -1, %22 ]
  %33 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 11, i32 1
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 11, i32 2
  store i32 4096, ptr %34, align 4
  %35 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 11, i32 3
  store i32 0, ptr %35, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_tx_pdc(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 268
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %99

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 11, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = and i32 %14, 4095
  store i32 %15, ptr %12, align 4
  %16 = load i32, ptr %10, align 4
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  store i32 %19, ptr %17, align 4
  store i32 0, ptr %10, align 4
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 512) #11, !srcloc !9
  %22 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %12, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %65, label %26

26:                                               ; preds = %9
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.tty_port, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tty_struct, ptr %29, i32 0, i32 19, i32 1
  %33 = load i8, ptr %32, align 4, !range !13
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %31, %26
  %36 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 11, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 11, i32 2
  %45 = load i32, ptr %44, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef 1) #11
  %46 = load i32, ptr %12, align 4
  %47 = sub i32 4096, %46
  %48 = load i32, ptr %22, align 4
  %49 = add i32 %48, %47
  %50 = and i32 %49, 4095
  %51 = tail call i32 @llvm.smin.i32(i32 %50, i32 %47)
  store i32 %51, ptr %10, align 4
  %52 = load i32, ptr %42, align 4
  %53 = load i32, ptr %12, align 4
  %54 = add i32 %53, %52
  %55 = load ptr, ptr %4, align 4
  %56 = getelementptr i8, ptr %55, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #11, !srcloc !9
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr i8, ptr %57, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %51) #11, !srcloc !9
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr i8, ptr %59, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 256) #11, !srcloc !9
  %61 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 31
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %4, align 4
  %64 = getelementptr i8, ptr %63, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #11, !srcloc !9
  br label %92

65:                                               ; preds = %35, %31, %9
  %66 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 17
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 58
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %70, %65
  %76 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 256) #11, !srcloc !9
  %77 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 16) #11, !srcloc !9
  %78 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 6
  %79 = load i8, ptr %78, align 1, !range !13
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %83 = load i32, ptr %82, align 4
  %84 = or i32 %83, 264
  %85 = load ptr, ptr %4, align 4
  %86 = getelementptr i8, ptr %85, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #11, !srcloc !9
  %87 = load ptr, ptr %4, align 4
  %88 = getelementptr i8, ptr %87, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 1) #11, !srcloc !9
  br label %92

89:                                               ; preds = %75
  %90 = load ptr, ptr %4, align 4
  %91 = getelementptr i8, ptr %90, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 1) #11, !srcloc !9
  br label %92

92:                                               ; preds = %89, %81, %70, %39
  %93 = load i32, ptr %22, align 4
  %94 = load i32, ptr %12, align 4
  %95 = sub i32 %93, %94
  %96 = and i32 %95, 3840
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  tail call void @uart_write_wakeup(ptr noundef %0) #11
  br label %99

99:                                               ; preds = %98, %92, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_release_tx_pdc(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 11, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 11, i32 2
  %7 = load i32, ptr %6, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef 1, i32 noundef 0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_tx_chars(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 24
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !8
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = load i8, ptr %5, align 4
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %16) #11, !srcloc !12
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  store i8 0, ptr %5, align 4
  br label %22

22:                                               ; preds = %15, %8, %1
  %23 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %101, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.tty_port, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.tty_struct, ptr %31, i32 0, i32 19, i32 1
  %35 = load i8, ptr %34, align 4, !range !13
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %101

37:                                               ; preds = %33, %28
  %38 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %101

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %43 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  br label %44

44:                                               ; preds = %53, %41
  %45 = load ptr, ptr %42, align 4
  %46 = getelementptr i8, ptr %45, i32 20
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !8
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, ptr %23, align 4
  %52 = load i32, ptr %25, align 4
  br label %68

53:                                               ; preds = %44
  %54 = load ptr, ptr %4, align 4
  %55 = load i32, ptr %25, align 4
  %56 = getelementptr i8, ptr %54, i32 %55
  %57 = load i8, ptr %56, align 1
  %58 = load ptr, ptr %42, align 4
  %59 = getelementptr i8, ptr %58, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %59, i8 %57) #11, !srcloc !12
  %60 = load i32, ptr %25, align 4
  %61 = add i32 %60, 1
  %62 = and i32 %61, 4095
  store i32 %62, ptr %25, align 4
  %63 = load i32, ptr %43, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %43, align 4
  %65 = load i32, ptr %23, align 4
  %66 = load i32, ptr %25, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %44

68:                                               ; preds = %53, %50
  %69 = phi i32 [ %52, %50 ], [ %65, %53 ]
  %70 = phi i32 [ %51, %50 ], [ %65, %53 ]
  %71 = sub i32 %70, %69
  %72 = and i32 %71, 3840
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  tail call void @uart_write_wakeup(ptr noundef %0) #11
  %75 = load i32, ptr %23, align 4
  %76 = load i32, ptr %25, align 4
  br label %77

77:                                               ; preds = %74, %68
  %78 = phi i32 [ %76, %74 ], [ %69, %68 ]
  %79 = phi i32 [ %75, %74 ], [ %70, %68 ]
  %80 = icmp eq i32 %79, %78
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 31
  %83 = load i32, ptr %82, align 4
  %84 = or i32 %83, 2
  store i32 %84, ptr %82, align 4
  %85 = load ptr, ptr %42, align 4
  %86 = getelementptr i8, ptr %85, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #11, !srcloc !9
  br label %101

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 17
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 58
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %92, %87
  %98 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 31
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, -3
  store i32 %100, ptr %98, align 4
  br label %101

101:                                              ; preds = %97, %92, %81, %37, %33, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_complete_rx_dma(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 22
  %3 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 24
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 22, i32 1
  %8 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %7) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @__tasklet_schedule(ptr noundef %2) #11
  br label %11

11:                                               ; preds = %10, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uart_handle_break(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #11
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 48
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.console, ptr %14, i32 0, i32 9
  %18 = load i16, ptr %17, align 2
  %19 = sext i16 %18 to i32
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %19
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = add i32 %28, 500
  store i32 %29, ptr %24, align 4
  br label %39

30:                                               ; preds = %23
  store i32 0, ptr %24, align 4
  br label %31

31:                                               ; preds = %30, %16, %12, %8
  %32 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  tail call void @do_SAK(ptr noundef %38) #11
  br label %39

39:                                               ; preds = %36, %31, %27
  %40 = phi i32 [ 1, %27 ], [ 0, %36 ], [ 0, %31 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_complete_tx_dma(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #11
  %7 = icmp eq ptr %5, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 47
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 %11(ptr noundef nonnull %5) #11
  br label %15

15:                                               ; preds = %13, %8, %1
  %16 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 26
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %17
  %21 = and i32 %20, 4095
  store i32 %21, ptr %18, align 4
  %22 = load i32, ptr %16, align 4
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %26) #11
  %27 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 16
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 2
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 18
  store i32 -22, ptr %32, align 4
  store ptr null, ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !24
  %33 = load i16, ptr %26, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !26
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  %35 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %18, align 4
  %38 = sub i32 %36, %37
  %39 = and i32 %38, 3840
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %15
  tail call void @uart_write_wakeup(ptr noundef %0) #11
  %42 = load i32, ptr %35, align 4
  %43 = load i32, ptr %18, align 4
  br label %44

44:                                               ; preds = %41, %15
  %45 = phi i32 [ %43, %41 ], [ %37, %15 ]
  %46 = phi i32 [ %42, %41 ], [ %36, %15 ]
  %47 = icmp eq i32 %46, %45
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 23
  %50 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 24
  %51 = load volatile i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 23, i32 1
  %55 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %54) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  tail call void @__tasklet_schedule(ptr noundef %49) #11
  br label %75

58:                                               ; preds = %44
  %59 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 17
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 58
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63, %58
  %69 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 45
  store i8 1, ptr %69, align 4
  %70 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 31
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %71) #11, !srcloc !9
  br label %75

75:                                               ; preds = %68, %63, %57, %53, %48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %6) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tx_empty(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 40
  %3 = load i8, ptr %2, align 4, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  %10 = lshr i32 %9, 9
  %11 = and i32 %10, 1
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ %11, %5 ], [ 1, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_set_mctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !8
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !9
  %16 = and i32 %6, -16
  %17 = or i32 %16, 1
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i32 [ %17, %11 ], [ %6, %2 ]
  %20 = and i32 %19, 15
  %21 = icmp eq i32 %20, 2
  %22 = select i1 %21, i32 262144, i32 524288
  %23 = select i1 %21, i32 524288, i32 262144
  %24 = and i32 %1, 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 %22, i32 %23
  %27 = and i32 %1, 2
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 131072, i32 65536
  %30 = or i32 %26, %29
  %31 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #11, !srcloc !9
  %32 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 28
  %33 = load ptr, ptr %32, align 4
  tail call void @mctrl_gpio_set(ptr noundef %33, i32 noundef %1) #11
  %34 = and i32 %19, -49153
  %35 = and i32 %1, 32768
  %36 = or i32 %34, %35
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #11, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_get_mctrl(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !8
  %7 = and i32 %6, 15728640
  %8 = icmp eq i32 %7, 15728640
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = lshr i32 %6, 16
  %11 = and i32 %10, 64
  %12 = lshr i32 %6, 18
  %13 = and i32 %12, 32
  %14 = or i32 %11, %13
  %15 = lshr i32 %6, 13
  %16 = and i32 %15, 256
  %17 = or i32 %14, %16
  %18 = lshr i32 %6, 13
  %19 = and i32 %18, 128
  %20 = or i32 %17, %19
  %21 = xor i32 %20, 480
  store i32 %21, ptr %2, align 4
  br label %22

22:                                               ; preds = %9, %1
  %23 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 28
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @mctrl_gpio_get(ptr noundef %24, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_stop_tx(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 10
  %3 = load i8, ptr %2, align 1, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 512) #11, !srcloc !9
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 128) #11, !srcloc !9
  %12 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 40
  store i8 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 31
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #11, !srcloc !9
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 17
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %26, label %21

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 58
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %21, %9
  %27 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 24
  %28 = load volatile i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 256) #11, !srcloc !9
  %32 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 16) #11, !srcloc !9
  %33 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 6
  %34 = load i8, ptr %33, align 1, !range !13
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %38, 264
  %40 = load ptr, ptr %10, align 4
  %41 = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #11, !srcloc !9
  %42 = load ptr, ptr %10, align 4
  %43 = getelementptr i8, ptr %42, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 1) #11, !srcloc !9
  br label %47

44:                                               ; preds = %30
  %45 = load ptr, ptr %10, align 4
  %46 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 1) #11, !srcloc !9
  br label %47

47:                                               ; preds = %44, %36, %26, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_start_tx(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 10
  %3 = load i8, ptr %2, align 1, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 292
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %5
  %13 = load i8, ptr %2, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12, %1
  %16 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 9
  %17 = load i8, ptr %16, align 4, !range !13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %15, %12
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 17
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 58
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %24, %19
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 32) #11, !srcloc !9
  %32 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 6
  %33 = load i8, ptr %32, align 1, !range !13
  %34 = icmp eq i8 %33, 0
  %35 = load ptr, ptr %30, align 4
  br i1 %34, label %43, label %36

36:                                               ; preds = %29
  %37 = getelementptr i8, ptr %35, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 2) #11, !srcloc !9
  %38 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, 264
  %41 = load ptr, ptr %30, align 4
  %42 = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #11, !srcloc !9
  br label %45

43:                                               ; preds = %29
  %44 = getelementptr i8, ptr %35, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 1) #11, !srcloc !9
  br label %45

45:                                               ; preds = %43, %36, %24, %15
  %46 = load i8, ptr %2, align 1, !range !13
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 256) #11, !srcloc !9
  br label %52

52:                                               ; preds = %48, %45
  %53 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 31
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %54) #11, !srcloc !9
  %58 = load ptr, ptr %55, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 64) #11, !srcloc !9
  %59 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 40
  store i8 0, ptr %59, align 4
  br label %60

60:                                               ; preds = %52, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_stop_rx(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 32) #11, !srcloc !9
  %4 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 1, !range !13
  %6 = icmp eq i8 %5, 0
  %7 = load ptr, ptr %2, align 4
  br i1 %6, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %7, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 2) #11, !srcloc !9
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 264
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #11, !srcloc !9
  br label %17

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1) #11, !srcloc !9
  br label %17

17:                                               ; preds = %15, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_enable_ms(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 35
  %3 = load i8, ptr %2, align 4, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  store i8 1, ptr %2, align 4
  %6 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 28
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %7, i32 noundef 0) #11
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, i32 524288, i32 0
  %11 = load ptr, ptr %6, align 4
  %12 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %11, i32 noundef 1) #11
  %13 = icmp eq ptr %12, null
  %14 = or i32 %10, 131072
  %15 = select i1 %13, i32 %14, i32 %10
  %16 = load ptr, ptr %6, align 4
  %17 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %16, i32 noundef 3) #11
  %18 = icmp eq ptr %17, null
  %19 = or i32 %15, 65536
  %20 = select i1 %18, i32 %19, i32 %15
  %21 = load ptr, ptr %6, align 4
  %22 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %21, i32 noundef 2) #11
  %23 = icmp eq ptr %22, null
  %24 = or i32 %20, 262144
  %25 = select i1 %23, i32 %24, i32 %20
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #11, !srcloc !9
  %29 = load ptr, ptr %6, align 4
  tail call void @mctrl_gpio_enable_ms(ptr noundef %29) #11
  br label %30

30:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_break_ctl(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  br i1 %3, label %7, label %6

6:                                                ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 512) #11, !srcloc !9
  br label %8

7:                                                ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1024) #11, !srcloc !9
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_startup(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -1) #11, !srcloc !9
  %7 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 35
  store i8 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load ptr, ptr %3, align 4
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi ptr [ %14, %13 ], [ %11, %1 ]
  %17 = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @atmel_interrupt, ptr noundef null, i32 noundef 262272, ptr noundef %16, ptr noundef %0) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.24) #13
  br label %226

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %3, i32 -16
  %23 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 24
  store volatile i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 22
  tail call void @tasklet_setup(ptr noundef %24, ptr noundef nonnull @atmel_tasklet_rx_func) #11
  %25 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 23
  tail call void @tasklet_setup(ptr noundef %25, ptr noundef nonnull @atmel_tasklet_tx_func) #11
  tail call fastcc void @atmel_init_property(ptr noundef %0, ptr noundef %22)
  %26 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 5
  %27 = load i8, ptr %26, align 4, !range !13
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 49
  store ptr @atmel_prepare_rx_dma, ptr %30, align 4
  br label %38

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 6
  %33 = load i8, ptr %32, align 1, !range !13
  %34 = icmp eq i8 %33, 0
  %35 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 49
  br i1 %34, label %37, label %36

36:                                               ; preds = %31
  store ptr @atmel_prepare_rx_pdc, ptr %35, align 4
  br label %38

37:                                               ; preds = %31
  store ptr null, ptr %35, align 4
  br label %38

38:                                               ; preds = %37, %36, %29
  %39 = phi i1 [ true, %37 ], [ false, %36 ], [ false, %29 ]
  %40 = phi ptr [ null, %37 ], [ @atmel_prepare_rx_pdc, %36 ], [ @atmel_prepare_rx_dma, %29 ]
  %41 = phi ptr [ @atmel_rx_from_ring, %37 ], [ @atmel_rx_from_pdc, %36 ], [ @atmel_rx_from_dma, %29 ]
  %42 = phi ptr [ null, %37 ], [ @atmel_release_rx_pdc, %36 ], [ @atmel_release_rx_dma, %29 ]
  %43 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 51
  store ptr %41, ptr %43, align 4
  %44 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 53
  store ptr %42, ptr %44, align 4
  %45 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 9
  %46 = load i8, ptr %45, align 4, !range !13
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 50
  store ptr @atmel_prepare_tx_dma, ptr %49, align 4
  br label %57

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 10
  %52 = load i8, ptr %51, align 1, !range !13
  %53 = icmp eq i8 %52, 0
  %54 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 50
  br i1 %53, label %56, label %55

55:                                               ; preds = %50
  store ptr @atmel_prepare_tx_pdc, ptr %54, align 4
  br label %57

56:                                               ; preds = %50
  store ptr null, ptr %54, align 4
  br label %57

57:                                               ; preds = %56, %55, %48
  %58 = phi ptr [ @atmel_prepare_tx_pdc, %55 ], [ null, %56 ], [ @atmel_prepare_tx_dma, %48 ]
  %59 = phi ptr [ @atmel_tx_pdc, %55 ], [ @atmel_tx_chars, %56 ], [ @atmel_tx_dma, %48 ]
  %60 = phi ptr [ @atmel_release_tx_pdc, %55 ], [ null, %56 ], [ @atmel_release_tx_dma, %48 ]
  %61 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 52
  store ptr %59, ptr %61, align 4
  %62 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 54
  store ptr %60, ptr %62, align 4
  %63 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 49
  br i1 %39, label %99, label %64

64:                                               ; preds = %57
  %65 = tail call i32 %40(ptr noundef %0) #11
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 50
  %69 = load ptr, ptr %68, align 4
  br label %99

70:                                               ; preds = %64
  %71 = load i8, ptr %26, align 4, !range !13
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 6
  %75 = load i8, ptr %74, align 1, !range !13
  %76 = icmp eq i8 %75, 0
  %77 = select i1 %76, ptr null, ptr @atmel_prepare_rx_pdc
  %78 = select i1 %76, ptr @atmel_rx_from_ring, ptr @atmel_rx_from_pdc
  %79 = select i1 %76, ptr null, ptr @atmel_release_rx_pdc
  br label %80

80:                                               ; preds = %73, %70
  %81 = phi ptr [ @atmel_prepare_rx_dma, %70 ], [ %77, %73 ]
  %82 = phi ptr [ @atmel_rx_from_dma, %70 ], [ %78, %73 ]
  %83 = phi ptr [ @atmel_release_rx_dma, %70 ], [ %79, %73 ]
  store ptr %81, ptr %63, align 4
  store ptr %82, ptr %43, align 4
  store ptr %83, ptr %44, align 4
  %84 = load i8, ptr %45, align 4, !range !13
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 50
  store ptr @atmel_prepare_tx_dma, ptr %87, align 4
  br label %95

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 10
  %90 = load i8, ptr %89, align 1, !range !13
  %91 = icmp eq i8 %90, 0
  %92 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 50
  br i1 %91, label %94, label %93

93:                                               ; preds = %88
  store ptr @atmel_prepare_tx_pdc, ptr %92, align 4
  br label %95

94:                                               ; preds = %88
  store ptr null, ptr %92, align 4
  br label %95

95:                                               ; preds = %94, %93, %86
  %96 = phi ptr [ @atmel_prepare_tx_pdc, %93 ], [ null, %94 ], [ @atmel_prepare_tx_dma, %86 ]
  %97 = phi ptr [ @atmel_tx_pdc, %93 ], [ @atmel_tx_chars, %94 ], [ @atmel_tx_dma, %86 ]
  %98 = phi ptr [ @atmel_release_tx_pdc, %93 ], [ null, %94 ], [ @atmel_release_tx_dma, %86 ]
  store ptr %97, ptr %61, align 4
  store ptr %98, ptr %62, align 4
  br label %99

99:                                               ; preds = %95, %67, %57
  %100 = phi ptr [ %69, %67 ], [ %96, %95 ], [ %58, %57 ]
  %101 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 50
  %102 = icmp eq ptr %100, null
  br i1 %102, label %133, label %103

103:                                              ; preds = %99
  %104 = tail call i32 %100(ptr noundef %0) #11
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %133

106:                                              ; preds = %103
  %107 = load i8, ptr %26, align 4, !range !13
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 6
  %111 = load i8, ptr %110, align 1, !range !13
  %112 = icmp eq i8 %111, 0
  %113 = select i1 %112, ptr null, ptr @atmel_prepare_rx_pdc
  %114 = select i1 %112, ptr @atmel_rx_from_ring, ptr @atmel_rx_from_pdc
  %115 = select i1 %112, ptr null, ptr @atmel_release_rx_pdc
  br label %116

116:                                              ; preds = %109, %106
  %117 = phi ptr [ @atmel_prepare_rx_dma, %106 ], [ %113, %109 ]
  %118 = phi ptr [ @atmel_rx_from_dma, %106 ], [ %114, %109 ]
  %119 = phi ptr [ @atmel_release_rx_dma, %106 ], [ %115, %109 ]
  store ptr %117, ptr %63, align 4
  store ptr %118, ptr %43, align 4
  store ptr %119, ptr %44, align 4
  %120 = load i8, ptr %45, align 4, !range !13
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 10
  %124 = load i8, ptr %123, align 1, !range !13
  %125 = icmp eq i8 %124, 0
  %126 = select i1 %125, ptr null, ptr @atmel_prepare_tx_pdc
  %127 = select i1 %125, ptr @atmel_tx_chars, ptr @atmel_tx_pdc
  %128 = select i1 %125, ptr null, ptr @atmel_release_tx_pdc
  br label %129

129:                                              ; preds = %122, %116
  %130 = phi ptr [ @atmel_prepare_tx_dma, %116 ], [ %126, %122 ]
  %131 = phi ptr [ @atmel_tx_dma, %116 ], [ %127, %122 ]
  %132 = phi ptr [ @atmel_release_tx_dma, %116 ], [ %128, %122 ]
  store ptr %130, ptr %101, align 4
  store ptr %131, ptr %61, align 4
  store ptr %132, ptr %62, align 4
  br label %133

133:                                              ; preds = %129, %103, %99
  %134 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 32
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %161, label %137

137:                                              ; preds = %133
  %138 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 1174405120) #11, !srcloc !9
  %139 = load i8, ptr %45, align 4, !range !13
  %140 = icmp eq i8 %139, 0
  %141 = select i1 %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 33
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 34
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %145
  %150 = shl i32 %143, 16
  %151 = and i32 %150, 4128768
  %152 = shl i32 %147, 24
  %153 = and i32 %152, 1056964608
  %154 = or i32 %141, %151
  %155 = or i32 %154, %153
  %156 = or i32 %155, 128
  br label %157

157:                                              ; preds = %149, %145, %137
  %158 = phi i32 [ %156, %149 ], [ %141, %145 ], [ %141, %137 ]
  %159 = load ptr, ptr %4, align 4
  %160 = getelementptr i8, ptr %159, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %158) #11, !srcloc !9
  br label %161

161:                                              ; preds = %157, %133
  %162 = load ptr, ptr %4, align 4
  %163 = getelementptr i8, ptr %162, i32 20
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #11, !srcloc !8
  %165 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 25
  store i32 %164, ptr %165, align 4
  %166 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 260) #11, !srcloc !9
  %167 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 80) #11, !srcloc !9
  %168 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 40
  store i8 0, ptr %168, align 4
  %169 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 39
  tail call void @init_timer_key(ptr noundef %169, ptr noundef nonnull @atmel_uart_timer_callback, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %170 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 6
  %171 = load i8, ptr %170, align 1, !range !13
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %198, label %173

173:                                              ; preds = %161
  %174 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 38
  %175 = load i8, ptr %174, align 1, !range !13
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %173
  %178 = load volatile i32, ptr @jiffies, align 64
  %179 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 37
  %180 = load i32, ptr %179, align 4
  %181 = icmp sgt i32 %180, 6
  %182 = sdiv i32 %180, 2
  %183 = add nsw i32 %182, -2
  %184 = select i1 %181, i32 %183, i32 1
  %185 = add i32 %184, %178
  %186 = tail call i32 @mod_timer(ptr noundef %169, i32 noundef %185) #11
  br label %195

187:                                              ; preds = %173
  %188 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 36
  %189 = load i32, ptr %188, align 4
  %190 = load ptr, ptr %4, align 4
  %191 = getelementptr i8, ptr %190, i32 %189
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 30) #11, !srcloc !9
  %192 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 2048) #11, !srcloc !9
  %193 = load ptr, ptr %4, align 4
  %194 = getelementptr i8, ptr %193, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 264) #11, !srcloc !9
  br label %195

195:                                              ; preds = %187, %177
  %196 = load ptr, ptr %4, align 4
  %197 = getelementptr i8, ptr %196, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 1) #11, !srcloc !9
  br label %226

198:                                              ; preds = %161
  %199 = load i8, ptr %26, align 4, !range !13
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %223, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 38
  %203 = load i8, ptr %202, align 1, !range !13
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %201
  %206 = load volatile i32, ptr @jiffies, align 64
  %207 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 37
  %208 = load i32, ptr %207, align 4
  %209 = icmp sgt i32 %208, 6
  %210 = sdiv i32 %208, 2
  %211 = add nsw i32 %210, -2
  %212 = select i1 %209, i32 %211, i32 1
  %213 = add i32 %212, %206
  %214 = tail call i32 @mod_timer(ptr noundef %169, i32 noundef %213) #11
  br label %226

215:                                              ; preds = %201
  %216 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 36
  %217 = load i32, ptr %216, align 4
  %218 = load ptr, ptr %4, align 4
  %219 = getelementptr i8, ptr %218, i32 %217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 30) #11, !srcloc !9
  %220 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 2048) #11, !srcloc !9
  %221 = load ptr, ptr %4, align 4
  %222 = getelementptr i8, ptr %221, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 256) #11, !srcloc !9
  br label %226

223:                                              ; preds = %198
  %224 = load ptr, ptr %4, align 4
  %225 = getelementptr i8, ptr %224, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 1) #11, !srcloc !9
  br label %226

226:                                              ; preds = %223, %215, %205, %195, %19
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_shutdown(ptr noundef %0) #3 {
  tail call fastcc void @atmel_disable_ms(ptr noundef %0)
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -1) #11, !srcloc !9
  %5 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #11, !srcloc !29
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #11, !srcloc !30
  %7 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 39
  %8 = tail call i32 @del_timer_sync(ptr noundef %7) #11
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %10 = load i32, ptr %9, align 4
  tail call void @synchronize_irq(i32 noundef %10) #11
  %11 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 22
  tail call void @tasklet_kill(ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 23
  tail call void @tasklet_kill(ptr noundef %12) #11
  %13 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 32) #11, !srcloc !9
  %14 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 6
  %15 = load i8, ptr %14, align 1, !range !13
  %16 = icmp eq i8 %15, 0
  %17 = load ptr, ptr %2, align 4
  br i1 %16, label %25, label %18

18:                                               ; preds = %1
  %19 = getelementptr i8, ptr %17, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 2) #11, !srcloc !9
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 264
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #11, !srcloc !9
  br label %27

25:                                               ; preds = %1
  %26 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 1) #11, !srcloc !9
  br label %27

27:                                               ; preds = %25, %18
  tail call void @atmel_stop_tx(ptr noundef %0)
  %28 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 256) #11, !srcloc !9
  %29 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 53
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void %30(ptr noundef %0) #11
  br label %33

33:                                               ; preds = %32, %27
  %34 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 54
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void %35(ptr noundef %0) #11
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 27, i32 1
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 27, i32 2
  store i32 0, ptr %40, align 4
  %41 = load i32, ptr %9, align 4
  %42 = tail call ptr @free_irq(i32 noundef %41, ptr noundef %0) #11
  %43 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 10
  %44 = load i8, ptr %43, align 1, !range !13
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr i8, ptr %47, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #11, !srcloc !9
  %49 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 11, i32 3
  store i32 0, ptr %49, align 4
  br label %50

50:                                               ; preds = %46, %38
  %51 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 26
  store i32 0, ptr %51, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_flush_buffer(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 10
  %3 = load i8, ptr %2, align 1, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #11, !srcloc !9
  %9 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 11, i32 3
  store i32 0, ptr %9, align 4
  br label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 26
  store i32 0, ptr %11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  %8 = and i32 %7, -16128
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 4
  %12 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %11) #11
  %13 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 48
  switch i32 %15, label %20 [
    i32 0, label %22
    i32 16, label %16
    i32 32, label %18
  ]

16:                                               ; preds = %3
  %17 = or i32 %8, 64
  br label %22

18:                                               ; preds = %3
  %19 = or i32 %8, 128
  br label %22

20:                                               ; preds = %3
  %21 = or i32 %8, 192
  br label %22

22:                                               ; preds = %20, %18, %16, %3
  %23 = phi i32 [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %8, %3 ]
  %24 = shl i32 %14, 7
  %25 = and i32 %24, 8192
  %26 = or i32 %23, %25
  %27 = and i32 %14, 256
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %14, 512
  %30 = lshr i32 %14, 20
  %31 = and i32 %30, 1024
  %32 = or i32 %31, %29
  %33 = select i1 %28, i32 2048, i32 %32
  %34 = or i32 %26, %33
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #11
  %36 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 32, ptr %36, align 4
  %37 = load i32, ptr %1, align 4
  %38 = and i32 %37, 16
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 32, i32 224
  store i32 %40, ptr %36, align 4
  %41 = load i32, ptr %1, align 4
  %42 = and i32 %41, 11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %22
  %45 = or i32 %40, 4
  store i32 %45, ptr %36, align 4
  br label %46

46:                                               ; preds = %44, %22
  %47 = phi i32 [ %45, %44 ], [ %40, %22 ]
  %48 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 6
  %49 = load i8, ptr %48, align 1, !range !13
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %4, align 4
  %53 = getelementptr i8, ptr %52, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %47) #11, !srcloc !9
  br label %54

54:                                               ; preds = %51, %46
  %55 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 0, ptr %55, align 4
  %56 = load i32, ptr %1, align 4
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 0, i32 192
  store i32 %59, ptr %55, align 4
  %60 = load i32, ptr %1, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %54
  %64 = or i32 %59, 4
  store i32 %64, ptr %55, align 4
  %65 = load i32, ptr %1, align 4
  %66 = and i32 %65, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = or i32 %59, 36
  store i32 %69, ptr %55, align 4
  br label %70

70:                                               ; preds = %68, %63, %54
  %71 = load i32, ptr %13, align 4
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %71, i32 noundef %12) #11
  %72 = load ptr, ptr %4, align 4
  %73 = getelementptr i8, ptr %72, i32 16
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #11, !srcloc !8
  %75 = load ptr, ptr %4, align 4
  %76 = getelementptr i8, ptr %75, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 -1) #11, !srcloc !9
  %77 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 160) #11, !srcloc !9
  %78 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 40
  store i8 1, ptr %78, align 4
  %79 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %4, align 4
  %87 = getelementptr i8, ptr %86, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #11, !srcloc !9
  %88 = or i32 %34, 1
  br label %120

89:                                               ; preds = %70
  %90 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 58
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 58, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = load ptr, ptr %4, align 4
  %98 = getelementptr i8, ptr %97, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #11, !srcloc !9
  %99 = load i32, ptr %90, align 4
  %100 = and i32 %99, 240
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = or i32 %34, 50593796
  br label %120

104:                                              ; preds = %94
  %105 = or i32 %34, 50593798
  br label %120

106:                                              ; preds = %89
  %107 = load i32, ptr %13, align 4
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %120, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 32
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 28
  %115 = load ptr, ptr %114, align 4
  %116 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %115, i32 noundef 0) #11
  %117 = icmp eq ptr %116, null
  %118 = or i32 %34, 2
  %119 = select i1 %117, i32 %118, i32 %34
  br label %120

120:                                              ; preds = %113, %109, %106, %104, %102, %83
  %121 = phi i32 [ %88, %83 ], [ %103, %102 ], [ %105, %104 ], [ %34, %109 ], [ %34, %106 ], [ %119, %113 ]
  %122 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 37
  %123 = load i8, ptr %122, align 4, !range !13
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %120
  %126 = load i32, ptr %9, align 4
  %127 = shl i32 %12, 1
  %128 = and i32 %12, 2147483647
  %129 = add i32 %126, %128
  %130 = udiv i32 %129, %127
  %131 = lshr i32 %130, 3
  %132 = shl i32 %130, 16
  %133 = and i32 %132, 458752
  br label %136

134:                                              ; preds = %120
  %135 = tail call i32 @uart_get_divisor(ptr noundef %0, i32 noundef %12) #11
  br label %136

136:                                              ; preds = %134, %125
  %137 = phi i32 [ %131, %125 ], [ %135, %134 ]
  %138 = phi i32 [ %133, %125 ], [ 0, %134 ]
  %139 = icmp ugt i32 %137, 65535
  %140 = or i32 %121, 16
  %141 = select i1 %139, i32 %140, i32 %121
  %142 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 58
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %136
  %147 = lshr i32 %137, 3
  %148 = select i1 %139, i32 %147, i32 %137
  %149 = or i32 %148, %138
  %150 = load ptr, ptr %4, align 4
  %151 = getelementptr i8, ptr %150, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %149) #11, !srcloc !9
  br label %152

152:                                              ; preds = %146, %136
  %153 = load ptr, ptr %4, align 4
  %154 = getelementptr i8, ptr %153, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %141) #11, !srcloc !9
  %155 = and i32 %7, 15
  %156 = and i32 %141, 15
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %152
  %159 = icmp eq i32 %156, 2
  %160 = select i1 %159, i32 524288, i32 262144
  %161 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %160) #11, !srcloc !9
  br label %162

162:                                              ; preds = %158, %152
  %163 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 260) #11, !srcloc !9
  %164 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 80) #11, !srcloc !9
  store i8 0, ptr %78, align 4
  %165 = load ptr, ptr %4, align 4
  %166 = getelementptr i8, ptr %165, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %74) #11, !srcloc !9
  %167 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %168 = load i32, ptr %167, align 4
  %169 = and i32 %168, 2048
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %162
  %172 = load i32, ptr %13, align 4
  %173 = and i32 %172, -2147481600
  %174 = icmp eq i32 %173, 2048
  br i1 %174, label %176, label %175

175:                                              ; preds = %171, %162
  tail call void @atmel_enable_ms(ptr noundef %0)
  br label %177

176:                                              ; preds = %171
  tail call fastcc void @atmel_disable_ms(ptr noundef %0)
  br label %177

177:                                              ; preds = %176, %175
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %35) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_set_ldisc(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 4
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 18
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %7 = load i32, ptr %6, align 4
  br i1 %5, label %8, label %12

8:                                                ; preds = %2
  %9 = or i32 %7, 2048
  store i32 %9, ptr %6, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #11
  tail call void @atmel_enable_ms(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !24
  %10 = load i16, ptr %0, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !26
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  br label %21

12:                                               ; preds = %2
  %13 = and i32 %7, -2049
  store i32 %13, ptr %6, align 4
  %14 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -2147481600
  %17 = icmp eq i32 %16, 2048
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #11
  tail call fastcc void @atmel_disable_ms(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !24
  %19 = load i16, ptr %0, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !26
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  br label %21

21:                                               ; preds = %18, %12, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_serial_pm(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  switch i32 %1, label %29 [
    i32 0, label %4
    i32 3, label %19
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = tail call i32 @clk_enable(ptr noundef %6) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #11
  br label %13

13:                                               ; preds = %12, %9, %4
  %14 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #11, !srcloc !9
  br label %32

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !8
  %24 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  %25 = load ptr, ptr %20, align 4
  %26 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 -1) #11, !srcloc !9
  %27 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void @clk_disable(ptr noundef %28) #11
  tail call void @clk_unprepare(ptr noundef %28) #11
  br label %32

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.26, i32 noundef %1) #13
  br label %32

32:                                               ; preds = %29, %19, %13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @atmel_type(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 49
  %5 = select i1 %4, ptr @.str.27, ptr null
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_release_port(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 496
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %7, align 4
  %11 = add i32 %9, 1
  %12 = sub i32 %11, %10
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %14 = load i32, ptr %13, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %14, i32 noundef %12) #11
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void @iounmap(ptr noundef %20) #11
  store ptr null, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_request_port(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 496
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %7, align 4
  %11 = add i32 %9, 1
  %12 = sub i32 %11, %10
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %14, i32 noundef %12, ptr noundef nonnull @.str, i32 noundef 0) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %13, align 4
  %23 = tail call ptr @ioremap(i32 noundef %22, i32 noundef %12) #11
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, ptr %13, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %27, i32 noundef %12) #11
  br label %28

28:                                               ; preds = %26, %21, %17, %1
  %29 = phi i32 [ -12, %26 ], [ -16, %1 ], [ 0, %21 ], [ 0, %17 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_config_port(ptr nocapture noundef %0, i32 noundef %1) #3 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 49, ptr %6, align 4
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 496
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %12, align 4
  %16 = add i32 %14, 1
  %17 = sub i32 %16, %15
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %19 = load i32, ptr %18, align 4
  %20 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %19, i32 noundef %17, ptr noundef nonnull @.str, i32 noundef 0) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %18, align 4
  %28 = tail call ptr @ioremap(i32 noundef %27, i32 noundef %17) #11
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, ptr %18, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %32, i32 noundef %17) #11
  br label %33

33:                                               ; preds = %31, %26, %22, %5, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @atmel_verify_port(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i32 %3, 49
  %6 = or i1 %4, %5
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  %12 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 9
  %13 = load i8, ptr %12, align 2
  %14 = icmp eq i8 %13, 2
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 4
  %18 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %17, %19
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %22 = load i32, ptr %21, align 4
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
declare dso_local void @mctrl_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctrl_gpio_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_to_gpiod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_enable_ms(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 44
  tail call void @_raw_spin_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 41
  br label %6

6:                                                ; preds = %26, %2
  %7 = phi i32 [ 0, %2 ], [ %27, %26 ]
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  %14 = and i32 %13, %10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %6
  %17 = load i8, ptr %5, align 1, !range !13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 42
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, %14
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.atmel_uart_port, ptr %1, i32 0, i32 43
  store i32 %10, ptr %23, align 4
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %13) #11, !srcloc !9
  tail call void @pm_system_wakeup() #11
  br label %29

26:                                               ; preds = %16
  tail call fastcc void @atmel_handle_receive(ptr noundef %1, i32 noundef %14)
  tail call fastcc void @atmel_handle_status(ptr noundef %1, i32 noundef %14, i32 noundef %10)
  tail call fastcc void @atmel_handle_transmit(ptr noundef %1, i32 noundef %14)
  %27 = add nuw nsw i32 %7, 1
  %28 = icmp eq i32 %27, 257
  br i1 %28, label %29, label %6

29:                                               ; preds = %26, %19, %6
  %30 = phi i32 [ %7, %19 ], [ %7, %6 ], [ 257, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !24
  %31 = load i16, ptr %3, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !31
  %33 = icmp ne i32 %30, 0
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_tasklet_rx_func(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -464
  tail call void @_raw_spin_lock(ptr noundef %2) #11
  %3 = getelementptr i8, ptr %0, i32 200
  %4 = load ptr, ptr %3, align 4
  tail call void %4(ptr noundef %2) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !24
  %5 = load i16, ptr %2, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_tasklet_tx_func(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -488
  tail call void @_raw_spin_lock(ptr noundef %2) #11
  %3 = getelementptr i8, ptr %0, i32 180
  %4 = load ptr, ptr %3, align 4
  tail call void %4(ptr noundef %2) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !24
  %5 = load i16, ptr %2, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_uart_timer_callback(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -108
  %7 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %6) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %0, i32 -112
  tail call void @__tasklet_schedule(ptr noundef %10) #11
  br label %11

11:                                               ; preds = %9, %5
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = getelementptr i8, ptr %0, i32 -400
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 6
  %16 = sdiv i32 %14, 2
  %17 = add nsw i32 %16, -2
  %18 = select i1 %15, i32 %17, i32 1
  %19 = add i32 %18, %12
  %20 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %19) #11
  br label %21

21:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_system_wakeup() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_handle_receive(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 6
  %4 = load i8, ptr %3, align 1, !range !13
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %57, label %6

6:                                                ; preds = %2
  %7 = and i32 %1, 264
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 264) #11, !srcloc !9
  %13 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 22
  %14 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 24
  %15 = load volatile i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 22, i32 1
  %19 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %18) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void @__tasklet_schedule(ptr noundef %13) #11
  br label %22

22:                                               ; preds = %21, %17, %9, %6
  %23 = and i32 %1, 228
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %57, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 256) #11, !srcloc !9
  %28 = and i32 %1, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = and i32 %1, -193
  %32 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i32 [ %31, %30 ], [ %1, %25 ]
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = and i32 %36, 64
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = and i32 %36, 32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %53, %50, %22, %2
  %58 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 5
  %59 = load i8, ptr %58, align 4, !range !13
  %60 = icmp eq i8 %59, 0
  %61 = and i32 %1, 256
  %62 = icmp eq i32 %61, 0
  %63 = or i1 %62, %60
  br i1 %63, label %77, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %66, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 256) #11, !srcloc !9
  %68 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 22
  %69 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 24
  %70 = load volatile i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 22, i32 1
  %74 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %73) #11
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  tail call void @__tasklet_schedule(ptr noundef %68) #11
  br label %77

77:                                               ; preds = %76, %72, %64, %57
  %78 = and i32 %1, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %149, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %82, i32 20
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #11, !srcloc !8
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %139, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 4
  %89 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 27, i32 2
  %90 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 27, i32 1
  %91 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 27
  br label %92

92:                                               ; preds = %133, %87
  %93 = phi i32 [ %84, %87 ], [ %136, %133 ]
  %94 = load ptr, ptr %81, align 4
  %95 = getelementptr i8, ptr %94, i32 24
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %95) #11, !srcloc !32
  %97 = and i32 %93, 228
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102, !prof !17

99:                                               ; preds = %92
  %100 = load i32, ptr %88, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %116, label %102, !prof !17

102:                                              ; preds = %99, %92
  %103 = load ptr, ptr %81, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 256) #11, !srcloc !9
  %104 = and i32 %93, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %102
  %107 = load i32, ptr %88, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  store i32 1, ptr %88, align 4
  %110 = load ptr, ptr %81, align 4
  %111 = getelementptr i8, ptr %110, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 4) #11, !srcloc !9
  br label %116

112:                                              ; preds = %106, %102
  %113 = load ptr, ptr %81, align 4
  %114 = getelementptr i8, ptr %113, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 4) #11, !srcloc !9
  %115 = and i32 %93, -5
  store i32 0, ptr %88, align 4
  br label %116

116:                                              ; preds = %112, %109, %99
  %117 = phi i32 [ %115, %112 ], [ %93, %109 ], [ %93, %99 ]
  %118 = load i32, ptr %89, align 4
  %119 = load i32, ptr %90, align 4
  %120 = xor i32 %119, -1
  %121 = add i32 %118, %120
  %122 = and i32 %121, 1023
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %116
  %125 = load ptr, ptr %91, align 4
  %126 = getelementptr %struct.atmel_uart_char, ptr %125, i32 %119
  %127 = trunc i32 %117 to i16
  store i16 %127, ptr %126, align 2
  %128 = zext i8 %96 to i16
  %129 = getelementptr %struct.atmel_uart_char, ptr %125, i32 %119, i32 1
  store i16 %128, ptr %129, align 2
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !33
  %130 = load i32, ptr %90, align 4
  %131 = add i32 %130, 1
  %132 = and i32 %131, 1023
  store i32 %132, ptr %90, align 4
  br label %133

133:                                              ; preds = %124, %116
  %134 = load ptr, ptr %81, align 4
  %135 = getelementptr i8, ptr %134, i32 20
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #11, !srcloc !8
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %92

139:                                              ; preds = %133, %80
  %140 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 22
  %141 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 24
  %142 = load volatile i32, ptr %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 22, i32 1
  %146 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %145) #11
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %144
  tail call void @__tasklet_schedule(ptr noundef %140) #11
  br label %158

149:                                              ; preds = %77
  %150 = and i32 %1, 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %154 = load ptr, ptr %153, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 256) #11, !srcloc !9
  %155 = load ptr, ptr %153, align 4
  %156 = getelementptr i8, ptr %155, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 4) #11, !srcloc !9
  %157 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 4
  store i32 0, ptr %157, align 4
  br label %158

158:                                              ; preds = %152, %149, %148, %144, %139
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_handle_status(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = and i32 %1, 983040
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %44, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 25
  %8 = load i32, ptr %7, align 4
  %9 = xor i32 %8, %2
  store i32 %2, ptr %7, align 4
  %10 = and i32 %9, 15728640
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %6
  %13 = and i32 %9, 1048576
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  br label %19

19:                                               ; preds = %15, %12
  %20 = and i32 %9, 2097152
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = and i32 %9, 4194304
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = lshr i32 %2, 22
  %31 = and i32 %30, 1
  %32 = xor i32 %31, 1
  tail call void @uart_handle_dcd_change(ptr noundef %0, i32 noundef %32) #11
  br label %33

33:                                               ; preds = %29, %26
  %34 = and i32 %9, 8388608
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = lshr i32 %2, 23
  %38 = and i32 %37, 1
  %39 = xor i32 %38, 1
  tail call void @uart_handle_cts_change(ptr noundef %0, i32 noundef %39) #11
  br label %40

40:                                               ; preds = %36, %33
  %41 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.tty_port, ptr %42, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %43, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %44

44:                                               ; preds = %40, %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_handle_transmit(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 31
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, %1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %4) #11, !srcloc !9
  %11 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 45
  %12 = load i8, ptr %11, align 4, !range !13
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr i8, ptr %15, i32 20
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !8
  %18 = and i32 %17, 512
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.25) #13
  br label %23

23:                                               ; preds = %20, %14
  store i8 0, ptr %11, align 4
  %24 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 256) #11, !srcloc !9
  %25 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 16) #11, !srcloc !9
  %26 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 6
  %27 = load i8, ptr %26, align 1, !range !13
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 264
  %33 = load ptr, ptr %8, align 4
  %34 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #11, !srcloc !9
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr i8, ptr %35, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 1) #11, !srcloc !9
  br label %40

37:                                               ; preds = %23
  %38 = load ptr, ptr %8, align 4
  %39 = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 1) #11, !srcloc !9
  br label %40

40:                                               ; preds = %37, %29, %7
  %41 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 23
  %42 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 24
  %43 = load volatile i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 23, i32 1
  %47 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %46) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @__tasklet_schedule(ptr noundef %41) #11
  br label %50

50:                                               ; preds = %49, %45, %40, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_disable_ms(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 35
  %3 = load i8, ptr %2, align 4, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  store i8 0, ptr %2, align 4
  %6 = getelementptr inbounds %struct.atmel_uart_port, ptr %0, i32 0, i32 28
  %7 = load ptr, ptr %6, align 4
  tail call void @mctrl_gpio_disable_ms(ptr noundef %7) #11
  %8 = load ptr, ptr %6, align 4
  %9 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %8, i32 noundef 0) #11
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, i32 524288, i32 0
  %12 = load ptr, ptr %6, align 4
  %13 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %12, i32 noundef 1) #11
  %14 = icmp eq ptr %13, null
  %15 = or i32 %11, 131072
  %16 = select i1 %14, i32 %15, i32 %11
  %17 = load ptr, ptr %6, align 4
  %18 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %17, i32 noundef 3) #11
  %19 = icmp eq ptr %18, null
  %20 = or i32 %16, 65536
  %21 = select i1 %19, i32 %20, i32 %16
  %22 = load ptr, ptr %6, align 4
  %23 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %22, i32 noundef 2) #11
  %24 = icmp eq ptr %23, null
  %25 = or i32 %21, 262144
  %26 = select i1 %24, i32 %25, i32 %21
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #11, !srcloc !9
  br label %30

30:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_disable_ms(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_divisor(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @at91_suspend_entering_slow_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{i64 5508637}
!9 = !{i64 5508219}
!10 = !{i64 2154117678}
!11 = !{i64 2154117520}
!12 = !{i64 5508022}
!13 = !{i8 0, i8 2}
!14 = !{i64 2154121294}
!15 = !{i64 2154121136}
!16 = !{!"auto-init"}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2154077195, i64 2154077694, i64 2154077232, i64 2154077288, i64 2154077322, i64 2154077346, i64 2154077387, i64 2154077408, i64 2154077436, i64 2154077470}
!19 = !{i64 2153057749, i64 2153058241, i64 2153057786, i64 2153057842, i64 2153057876, i64 2153057900, i64 2153057941, i64 2153057962, i64 2153057990, i64 2153058024}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2154074331, i64 2154074830, i64 2154074368, i64 2154074424, i64 2154074458, i64 2154074482, i64 2154074523, i64 2154074544, i64 2154074572, i64 2154074606}
!22 = !{i64 2154088916}
!23 = !{i64 2154068647, i64 2154069146, i64 2154068684, i64 2154068740, i64 2154068774, i64 2154068798, i64 2154068839, i64 2154068860, i64 2154068888, i64 2154068922}
!24 = !{i64 2149093435}
!25 = !{i64 2149089259}
!26 = !{i64 2149089334, i64 2149089361, i64 2149089408, i64 2149089430, i64 2149089458, i64 2149089478}
!27 = !{i64 830754}
!28 = !{i64 2149117579}
!29 = !{i64 924831, i64 2148414802, i64 2148414828, i64 2148414875, i64 2148414897, i64 2148414925, i64 2148414945}
!30 = !{i64 2148426217, i64 2148426243, i64 2148426272, i64 2148426306, i64 2148426337, i64 2148426360}
!31 = !{i64 2149116438}
!32 = !{i64 5508417}
!33 = !{i64 2154061654}
