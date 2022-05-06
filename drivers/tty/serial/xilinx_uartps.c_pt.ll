; ModuleID = '/llk/IR/drivers/tty/serial/xilinx_uartps.c_pt.bc'
source_filename = "../drivers/tty/serial/xilinx_uartps.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.cdns_platform_data = type { i32 }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
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
%struct.cdns_uart = type { ptr, ptr, ptr, ptr, i32, %struct.notifier_block, i32, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.32, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.32 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.33, %struct.anon.34, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.33 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.34 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }

@__param_str_rx_trigger_level = internal constant [31 x i8] c"xilinx_uartps.rx_trigger_level\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@rx_trigger_level = internal global i32 56, align 4
@__param_rx_trigger_level = internal constant %struct.kernel_param { ptr @__param_str_rx_trigger_level, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @rx_trigger_level } }, section "__param", align 4
@__UNIQUE_ID_rx_trigger_leveltype211 = internal constant [45 x i8] c"xilinx_uartps.parmtype=rx_trigger_level:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_trigger_level212 = internal constant [65 x i8] c"xilinx_uartps.parm=rx_trigger_level:Rx trigger level, 1-63 bytes\00", section ".modinfo", align 1
@__param_str_rx_timeout = internal constant [25 x i8] c"xilinx_uartps.rx_timeout\00", align 1
@rx_timeout = internal global i32 10, align 4
@__param_rx_timeout = internal constant %struct.kernel_param { ptr @__param_str_rx_timeout, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @rx_timeout } }, section "__param", align 4
@__UNIQUE_ID_rx_timeouttype213 = internal constant [39 x i8] c"xilinx_uartps.parmtype=rx_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_timeout214 = internal constant [48 x i8] c"xilinx_uartps.parm=rx_timeout:Rx timeout, 1-255\00", section ".modinfo", align 1
@__UNIQUE_ID___earlycon_cdns215 = internal constant %struct.earlycon_id { [15 x i8] c"cdns\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"xlnx,xuartps\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_cdns216 = internal constant %struct.earlycon_id { [15 x i8] c"cdns\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"cdns,uart-r1p8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_cdns217 = internal constant %struct.earlycon_id { [15 x i8] c"cdns\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"cdns,uart-r1p12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_cdns218 = internal constant %struct.earlycon_id { [15 x i8] c"cdns\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"xlnx,zynqmp-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_early_console_setup }, section "__earlycon_table", align 4
@cdns_uart_platform_driver = internal global %struct.platform_driver { ptr @cdns_uart_probe, ptr @cdns_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @cdns_uart_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_uart_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__initcall__kmod_xilinx_uartps__219_1690_cdns_uart_init3 = internal global ptr @cdns_uart_init, section ".initcall3.init", align 4
@__exitcall_cdns_uart_exit = internal global ptr @cdns_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description220 = internal constant [50 x i8] c"xilinx_uartps.description=Driver for Cadence UART\00", section ".modinfo", align 1
@__UNIQUE_ID_author221 = internal constant [33 x i8] c"xilinx_uartps.author=Xilinx Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file222 = internal constant [52 x i8] c"xilinx_uartps.file=drivers/tty/serial/xilinx_uartps\00", section ".modinfo", align 1
@__UNIQUE_ID_license223 = internal constant [26 x i8] c"xilinx_uartps.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"xuartps\00", align 1
@cdns_uart_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xuartps\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,uart-r1p8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,uart-r1p12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @zynqmp_uart_def }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynqmp-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @zynqmp_uart_def }, %struct.of_device_id zeroinitializer], align 4
@cdns_uart_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @cdns_uart_suspend, ptr @cdns_uart_resume, ptr @cdns_uart_suspend, ptr @cdns_uart_resume, ptr @cdns_uart_suspend, ptr @cdns_uart_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_runtime_suspend, ptr @cdns_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannot get uart_port structure\0A\00", align 1
@cdns_uart_uart_driver = internal global %struct.uart_driver zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"ttyPS\00", align 1
@cdns_uart_console = internal global %struct.console { [16 x i8] c"ttyPS\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_uart_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @cdns_uart_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @cdns_uart_uart_driver, ptr null }, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to register driver\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"aper_clk\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"clock name 'aper_clk' is deprecated.\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"uart_clk\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"ref_clk\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"clock name 'ref_clk' is deprecated.\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Unable to enable pclk clock.\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Unable to enable device clock.\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Unable to register clock notifier.\0A\00", align 1
@cdns_uart_ops = internal constant %struct.uart_ops { ptr @cdns_uart_tx_empty, ptr @cdns_uart_set_mctrl, ptr @cdns_uart_get_mctrl, ptr @cdns_uart_stop_tx, ptr @cdns_uart_start_tx, ptr null, ptr null, ptr null, ptr @cdns_uart_stop_rx, ptr null, ptr @cdns_uart_break_ctl, ptr @cdns_uart_startup, ptr @cdns_uart_shutdown, ptr null, ptr @cdns_uart_set_termios, ptr null, ptr @cdns_uart_pm, ptr @cdns_uart_type, ptr @cdns_uart_release_port, ptr @cdns_uart_request_port, ptr @cdns_uart_config_port, ptr @cdns_uart_verify_port, ptr null }, align 4
@console_port = internal unnamed_addr global ptr null, align 4
@.str.14 = private unnamed_addr constant [36 x i8] c"uart_add_one_port() failed; err=%i\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"cts-override\00", align 1
@instances = internal unnamed_addr global i32 0, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.16 = private unnamed_addr constant [28 x i8] c"clock rate change rejected\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"request_irq '%d' failed with %d\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.18 = private unnamed_addr constant [25 x i8] c"Unable to map registers\0A\00", align 1
@zynqmp_uart_def = internal constant %struct.cdns_platform_data { i32 2 }, align 4
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID___earlycon_cdns215, ptr @__UNIQUE_ID___earlycon_cdns216, ptr @__UNIQUE_ID___earlycon_cdns217, ptr @__UNIQUE_ID___earlycon_cdns218, ptr @__UNIQUE_ID_author221, ptr @__UNIQUE_ID_description220, ptr @__UNIQUE_ID_file222, ptr @__UNIQUE_ID_license223, ptr @__UNIQUE_ID_rx_timeout214, ptr @__UNIQUE_ID_rx_timeouttype213, ptr @__UNIQUE_ID_rx_trigger_level212, ptr @__UNIQUE_ID_rx_trigger_leveltype211, ptr @__exitcall_cdns_uart_exit, ptr @__initcall__kmod_xilinx_uartps__219_1690_cdns_uart_init3, ptr @__param_rx_timeout, ptr @__param_rx_trigger_level, ptr @cdns_uart_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cdns_early_console_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %58, label %6

6:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %7 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 19) #7, !srcloc !9
  %8 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %55, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %11
  %16 = udiv i32 %9, 16776960
  %17 = icmp ugt i32 %16, %13
  %18 = lshr i32 %9, 3
  %19 = select i1 %17, i32 %18, i32 %9
  br label %20

20:                                               ; preds = %42, %15
  %21 = phi i32 [ 0, %15 ], [ %43, %42 ]
  %22 = phi i32 [ 0, %15 ], [ %44, %42 ]
  %23 = phi i32 [ 4, %15 ], [ %25, %42 ]
  %24 = phi i32 [ -1, %15 ], [ %45, %42 ]
  %25 = add nuw nsw i32 %23, 1
  %26 = mul i32 %25, %13
  %27 = lshr i32 %26, 1
  %28 = add i32 %27, %19
  %29 = udiv i32 %28, %26
  %30 = icmp ugt i32 %26, %28
  %31 = icmp ugt i32 %29, 65535
  %32 = or i1 %31, %30
  br i1 %32, label %42, label %33

33:                                               ; preds = %20
  %34 = mul nuw nsw i32 %29, %25
  %35 = udiv i32 %19, %34
  %36 = icmp ult i32 %35, %13
  %37 = sub i32 %13, %35
  %38 = sub i32 %35, %13
  %39 = select i1 %36, i32 %37, i32 %38
  %40 = icmp ugt i32 %24, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %33, %20
  %43 = phi i32 [ %21, %20 ], [ %29, %41 ], [ %21, %33 ]
  %44 = phi i32 [ %22, %20 ], [ %23, %41 ], [ %22, %33 ]
  %45 = phi i32 [ %24, %20 ], [ %39, %41 ], [ %24, %33 ]
  %46 = icmp eq i32 %25, 256
  br i1 %46, label %47, label %20

47:                                               ; preds = %42
  %48 = select i1 %17, i32 33, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr i8, ptr %49, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr i8, ptr %51, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %43) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr i8, ptr %53, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %44) #7, !srcloc !9
  br label %55

55:                                               ; preds = %47, %11, %6
  %56 = load ptr, ptr %0, align 4
  %57 = getelementptr inbounds %struct.console, ptr %56, i32 0, i32 1
  store ptr @cdns_early_write, ptr %57, align 4
  br label %58

58:                                               ; preds = %55, %2
  %59 = phi i32 [ 0, %55 ], [ -19, %2 ]
  ret i32 %59
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cdns_uart_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_uart_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cdns_uart_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_uart_platform_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdns_early_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.earlycon_device, ptr %5, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @cdns_uart_console_putchar) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdns_uart_console_putchar(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !16
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 44
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %1) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_uart_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 40, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %152, label %5

5:                                                ; preds = %1
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 320, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %152, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @of_alias_get_id(ptr noundef %10, ptr noundef nonnull @.str.1) #7
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 0)
  %13 = icmp ugt i32 %12, 15
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #8
  br label %152

15:                                               ; preds = %8
  %16 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @cdns_uart_uart_driver, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  store ptr null, ptr @cdns_uart_uart_driver, align 4
  store ptr @.str, ptr getelementptr inbounds (%struct.uart_driver, ptr @cdns_uart_uart_driver, i32 0, i32 1), align 4
  store ptr @.str.3, ptr getelementptr inbounds (%struct.uart_driver, ptr @cdns_uart_uart_driver, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.uart_driver, ptr @cdns_uart_uart_driver, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.uart_driver, ptr @cdns_uart_uart_driver, i32 0, i32 4), align 4
  store i32 16, ptr getelementptr inbounds (%struct.uart_driver, ptr @cdns_uart_uart_driver, i32 0, i32 5), align 4
  store ptr @cdns_uart_console, ptr getelementptr inbounds (%struct.uart_driver, ptr @cdns_uart_uart_driver, i32 0, i32 6), align 4
  %19 = tail call i32 @uart_register_driver(ptr noundef nonnull @cdns_uart_uart_driver) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #8
  br label %152

22:                                               ; preds = %18, %15
  %23 = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 3
  store ptr @cdns_uart_uart_driver, ptr %23, align 4
  %24 = load ptr, ptr %9, align 8
  %25 = tail call ptr @of_match_node(ptr noundef nonnull @cdns_uart_of_match, ptr noundef %24) #7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.of_device_id, ptr %25, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %29, align 4
  %33 = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 6
  store i32 %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %31, %27, %22
  %35 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.5) #7
  %36 = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 2
  store ptr %35, ptr %36, align 4
  %37 = icmp eq ptr %35, inttoptr (i32 -517 to ptr)
  br i1 %37, label %146, label %38

38:                                               ; preds = %34
  %39 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %46

40:                                               ; preds = %38
  %41 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.6) #7
  store ptr %41, ptr %36, align 4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = ptrtoint ptr %41 to i32
  br label %146

45:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  br label %46

46:                                               ; preds = %45, %38
  %47 = phi ptr [ %41, %45 ], [ %35, %38 ]
  %48 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.8) #7
  %49 = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 1
  store ptr %48, ptr %49, align 4
  %50 = icmp eq ptr %48, inttoptr (i32 -517 to ptr)
  br i1 %50, label %146, label %51

51:                                               ; preds = %46
  %52 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %59

53:                                               ; preds = %51
  %54 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.9) #7
  store ptr %54, ptr %49, align 4
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = ptrtoint ptr %54 to i32
  br label %146

58:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #8
  br label %59

59:                                               ; preds = %58, %51
  %60 = phi ptr [ %54, %58 ], [ %48, %51 ]
  %61 = tail call i32 @clk_prepare(ptr noundef %47) #7
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = tail call i32 @clk_enable(ptr noundef %47) #7
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  tail call void @clk_unprepare(ptr noundef %47) #7
  br label %67

67:                                               ; preds = %66, %59
  %68 = phi i32 [ %64, %66 ], [ %61, %59 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #8
  br label %146

69:                                               ; preds = %63
  %70 = tail call i32 @clk_prepare(ptr noundef %60) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = tail call i32 @clk_enable(ptr noundef %60) #7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  tail call void @clk_unprepare(ptr noundef %60) #7
  br label %76

76:                                               ; preds = %75, %69
  %77 = phi i32 [ %73, %75 ], [ %70, %69 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.12) #8
  br label %143

78:                                               ; preds = %72
  %79 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %80 = icmp eq ptr %79, null
  br i1 %80, label %139, label %81

81:                                               ; preds = %78
  %82 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %139, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 5
  store ptr @cdns_uart_clk_notifier_cb, ptr %85, align 4
  %86 = tail call i32 @clk_notifier_register(ptr noundef %60, ptr noundef %85) #7
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.13) #8
  br label %89

89:                                               ; preds = %88, %84
  store i32 0, ptr %6, align 4
  %90 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 38
  store i32 0, ptr %90, align 4
  %91 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 26
  store i8 3, ptr %91, align 2
  %92 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 33
  store i32 268435456, ptr %92, align 4
  %93 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 39
  store ptr @cdns_uart_ops, ptr %93, align 4
  %94 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 23
  store i32 64, ptr %94, align 4
  %95 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 48
  store i8 1, ptr %95, align 4
  %96 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 41
  store i32 %12, ptr %96, align 4
  %97 = load i32, ptr %79, align 4
  %98 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 43
  store i32 %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 20
  store i32 %82, ptr %99, align 4
  %100 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 45
  store ptr %2, ptr %100, align 4
  %101 = load ptr, ptr %49, align 4
  %102 = tail call i32 @clk_get_rate(ptr noundef %101) #7
  %103 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 22
  store i32 %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 59
  store ptr %3, ptr %104, align 4
  store ptr %6, ptr %3, align 4
  %105 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %105, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #7
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 3000) #7
  %106 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %2) #7
  %107 = load ptr, ptr %100, align 4
  %108 = tail call i32 @device_init_wakeup(ptr noundef %107, i1 noundef zeroext true) #7
  %109 = load ptr, ptr @console_port, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %89
  %112 = trunc i32 %12 to i16
  store i16 %112, ptr getelementptr inbounds (%struct.console, ptr @cdns_uart_console, i32 0, i32 9), align 2
  store ptr %6, ptr @console_port, align 4
  br label %113

113:                                              ; preds = %111, %89
  %114 = tail call i32 @uart_add_one_port(ptr noundef nonnull @cdns_uart_uart_driver, ptr noundef nonnull %6) #7
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %113
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %114) #8
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #7
  %117 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 2) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext false) #7
  %118 = load ptr, ptr %49, align 4
  %119 = tail call i32 @clk_notifier_unregister(ptr noundef %118, ptr noundef %85) #7
  %120 = load ptr, ptr %49, align 4
  br label %139

121:                                              ; preds = %113
  %122 = load ptr, ptr @console_port, align 4
  %123 = icmp eq ptr %122, %6
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @cdns_uart_uart_driver, i32 0, i32 6), align 4
  %126 = getelementptr inbounds %struct.console, ptr %125, i32 0, i32 8
  %127 = load i16, ptr %126, align 4
  %128 = and i16 %127, 4
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store ptr null, ptr @console_port, align 4
  store i16 -1, ptr getelementptr inbounds (%struct.console, ptr @cdns_uart_console, i32 0, i32 9), align 2
  br label %131

131:                                              ; preds = %130, %124, %121
  %132 = load ptr, ptr %9, align 8
  %133 = tail call ptr @of_find_property(ptr noundef %132, ptr noundef nonnull @.str.15, ptr noundef null) #7
  %134 = icmp ne ptr %133, null
  %135 = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 7
  %136 = zext i1 %134 to i8
  store i8 %136, ptr %135, align 4
  %137 = load i32, ptr @instances, align 4
  %138 = add i32 %137, 1
  store i32 %138, ptr @instances, align 4
  br label %152

139:                                              ; preds = %116, %81, %78
  %140 = phi ptr [ %120, %116 ], [ %60, %78 ], [ %60, %81 ]
  %141 = phi i32 [ %114, %116 ], [ -19, %78 ], [ -6, %81 ]
  tail call void @clk_disable(ptr noundef %140) #7
  tail call void @clk_unprepare(ptr noundef %140) #7
  %142 = load ptr, ptr %36, align 4
  br label %143

143:                                              ; preds = %139, %76
  %144 = phi ptr [ %47, %76 ], [ %142, %139 ]
  %145 = phi i32 [ %77, %76 ], [ %141, %139 ]
  tail call void @clk_disable(ptr noundef %144) #7
  tail call void @clk_unprepare(ptr noundef %144) #7
  br label %146

146:                                              ; preds = %143, %67, %56, %46, %43, %34
  %147 = phi i32 [ %44, %43 ], [ %57, %56 ], [ %68, %67 ], [ %145, %143 ], [ -517, %34 ], [ -517, %46 ]
  %148 = load i32, ptr @instances, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load ptr, ptr %23, align 4
  tail call void @uart_unregister_driver(ptr noundef %151) #7
  br label %152

152:                                              ; preds = %150, %146, %131, %21, %14, %5, %1
  %153 = phi i32 [ -19, %14 ], [ 0, %131 ], [ %19, %21 ], [ -12, %1 ], [ -12, %5 ], [ %147, %150 ], [ %147, %146 ]
  ret i32 %153
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_uart_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 59
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cdns_uart, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cdns_uart, ptr %5, i32 0, i32 5
  %9 = tail call i32 @clk_notifier_unregister(ptr noundef %7, ptr noundef %8) #7
  %10 = getelementptr inbounds %struct.cdns_uart, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @uart_remove_one_port(ptr noundef %11, ptr noundef %3) #7
  %13 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 43
  store i32 0, ptr %13, align 4
  %14 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %14) #7
  tail call void @clk_unprepare(ptr noundef %14) #7
  %15 = getelementptr inbounds %struct.cdns_uart, ptr %5, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #7
  tail call void @clk_unprepare(ptr noundef %16) #7
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %17, i1 noundef zeroext true) #7
  %18 = tail call i32 @__pm_runtime_set_status(ptr noundef %17, i32 noundef 2) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %17, i1 noundef zeroext false) #7
  %19 = tail call i32 @device_init_wakeup(ptr noundef %17, i1 noundef zeroext false) #7
  %20 = load ptr, ptr @console_port, align 4
  %21 = icmp eq ptr %20, %3
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store ptr null, ptr @console_port, align 4
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, ptr @instances, align 4
  %25 = add i32 %24, -1
  store i32 %25, ptr @instances, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load ptr, ptr %10, align 4
  tail call void @uart_unregister_driver(ptr noundef %28) #7
  br label %29

29:                                               ; preds = %27, %23
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_uart_clk_notifier_cb(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 51
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %99

9:                                                ; preds = %3
  switch i32 %1, label %99 [
    i32 1, label %10
    i32 2, label %62
    i32 4, label %71
  ]

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 -4
  %14 = load i32, ptr %13, align 4
  %15 = udiv i32 %12, 16776960
  %16 = icmp ugt i32 %15, %14
  %17 = lshr i32 %12, 3
  %18 = select i1 %16, i32 %17, i32 %12
  br label %19

19:                                               ; preds = %41, %10
  %20 = phi i32 [ 4, %10 ], [ %23, %41 ]
  %21 = phi i32 [ -1, %10 ], [ %43, %41 ]
  %22 = phi i32 [ 0, %10 ], [ %42, %41 ]
  %23 = add nuw nsw i32 %20, 1
  %24 = mul i32 %23, %14
  %25 = lshr i32 %24, 1
  %26 = add i32 %25, %18
  %27 = udiv i32 %26, %24
  %28 = icmp ugt i32 %24, %26
  %29 = icmp ugt i32 %27, 65535
  %30 = or i1 %29, %28
  br i1 %30, label %41, label %31

31:                                               ; preds = %19
  %32 = mul nuw nsw i32 %27, %23
  %33 = udiv i32 %18, %32
  %34 = icmp ult i32 %33, %14
  %35 = sub i32 %14, %33
  %36 = sub i32 %33, %14
  %37 = select i1 %34, i32 %35, i32 %36
  %38 = icmp ugt i32 %21, %37
  %39 = select i1 %38, i32 %33, i32 %22
  %40 = tail call i32 @llvm.umin.i32(i32 %21, i32 %37)
  br label %41

41:                                               ; preds = %31, %19
  %42 = phi i32 [ %22, %19 ], [ %39, %31 ]
  %43 = phi i32 [ %21, %19 ], [ %40, %31 ]
  %44 = icmp eq i32 %23, 256
  br i1 %44, label %45, label %19

45:                                               ; preds = %41
  %46 = mul i32 %43, 100
  %47 = udiv i32 %46, %14
  %48 = icmp ult i32 %47, 3
  %49 = select i1 %48, i32 %14, i32 %42
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 45
  %53 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.16) #8
  br label %99

54:                                               ; preds = %45
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %56 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %59 = or i32 %58, 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %60 = load ptr, ptr %56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %59) #7, !srcloc !9
  %61 = load ptr, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %61, i32 noundef %55) #7
  br label %99

62:                                               ; preds = %9
  %63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %64 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 22
  store i32 %65, ptr %66, align 4
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr i8, ptr %0, i32 -4
  %69 = load i32, ptr %68, align 4
  %70 = tail call fastcc i32 @cdns_uart_set_baud_rate(ptr noundef %67, i32 noundef %69)
  store i32 %70, ptr %68, align 4
  br label %73

71:                                               ; preds = %9
  %72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  br label %73

73:                                               ; preds = %71, %62
  %74 = phi i32 [ %63, %62 ], [ %72, %71 ]
  %75 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %78 = or i32 %77, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %79 = load ptr, ptr %75, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %78) #7, !srcloc !9
  %80 = load ptr, ptr %75, align 4
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %82 = and i32 %81, 3
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %84, %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !23
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !24
  %85 = load ptr, ptr %75, align 4
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %87 = and i32 %86, 3
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %84

89:                                               ; preds = %84, %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %90 = load i32, ptr @rx_timeout, align 4
  %91 = load ptr, ptr %75, align 4
  %92 = getelementptr i8, ptr %91, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #7, !srcloc !9
  %93 = load ptr, ptr %75, align 4
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %95 = and i32 %94, -61
  %96 = or i32 %95, 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %97 = load ptr, ptr %75, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %96) #7, !srcloc !9
  %98 = load ptr, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %98, i32 noundef %74) #7
  br label %99

99:                                               ; preds = %89, %54, %51, %9, %3
  %100 = phi i32 [ 1, %89 ], [ 1, %3 ], [ 0, %9 ], [ 1, %54 ], [ 32770, %51 ]
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdns_uart_console_write(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = load ptr, ptr @console_port, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 46
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = load i32, ptr @oops_in_progress, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !28
  %13 = tail call i32 @_raw_spin_trylock(ptr noundef %4) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #7, !srcloc !29
  br label %18

16:                                               ; preds = %8
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  br label %18

18:                                               ; preds = %16, %15, %11, %3
  %19 = phi i1 [ true, %15 ], [ false, %11 ], [ true, %3 ], [ false, %16 ]
  %20 = phi i32 [ %12, %15 ], [ %12, %11 ], [ 0, %3 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !30
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !31
  tail call void @arm_heavy_mb() #7
  %25 = load ptr, ptr %21, align 4
  %26 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !9
  %27 = load ptr, ptr %21, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !32
  %29 = and i32 %28, -49
  %30 = or i32 %29, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %31 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #7, !srcloc !9
  tail call void @uart_console_write(ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @cdns_uart_console_putchar) #7
  %32 = load ptr, ptr %21, align 4
  %33 = getelementptr i8, ptr %32, i32 44
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !34
  %35 = and i32 %34, 2056
  %36 = icmp eq i32 %35, 8
  br i1 %36, label %43, label %37

37:                                               ; preds = %37, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !35
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !36
  %38 = load ptr, ptr %21, align 4
  %39 = getelementptr i8, ptr %38, i32 44
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !34
  %41 = and i32 %40, 2056
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %37

43:                                               ; preds = %37, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %44 = load ptr, ptr %21, align 4
  %45 = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %24) #7, !srcloc !9
  br i1 %19, label %47, label %46

46:                                               ; preds = %43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %20) #7
  br label %47

47:                                               ; preds = %46, %43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_uart_console_setup(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load ptr, ptr @console_port, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 9600, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 110, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 110, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %2
  %12 = icmp eq ptr %1, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #7
  br label %14

14:                                               ; preds = %13, %11
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  %17 = icmp ult i32 %16, 500000
  %18 = select i1 %17, i32 -1073741822, i32 -50
  %19 = sub i32 %18, %15
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = add i32 %19, %20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %29, %14
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr i8, ptr %24, i32 44
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !34
  %27 = and i32 %26, 2056
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !38
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !39
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = add i32 %19, %30
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %23, label %33

33:                                               ; preds = %29, %23, %14
  %34 = load i32, ptr %3, align 4
  %35 = load i32, ptr %5, align 4
  %36 = load i32, ptr %4, align 4
  %37 = load i32, ptr %6, align 4
  %38 = call i32 @uart_set_options(ptr noundef %7, ptr noundef %0, i32 noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %37) #7
  br label %39

39:                                               ; preds = %33, %2
  %40 = phi i32 [ %38, %33 ], [ -19, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_uart_tx_empty(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 44
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !34
  %6 = and i32 %5, 2056
  %7 = icmp eq i32 %6, 8
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cdns_uart_set_baud_rate(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %6 = load i32, ptr %5, align 4
  %7 = udiv i32 %6, 16776960
  %8 = icmp ugt i32 %7, %1
  %9 = lshr i32 %6, 3
  %10 = select i1 %8, i32 %9, i32 %6
  br label %11

11:                                               ; preds = %34, %2
  %12 = phi i32 [ 0, %2 ], [ %35, %34 ]
  %13 = phi i32 [ 0, %2 ], [ %36, %34 ]
  %14 = phi i32 [ 4, %2 ], [ %17, %34 ]
  %15 = phi i32 [ -1, %2 ], [ %38, %34 ]
  %16 = phi i32 [ 0, %2 ], [ %37, %34 ]
  %17 = add nuw nsw i32 %14, 1
  %18 = mul i32 %17, %1
  %19 = lshr i32 %18, 1
  %20 = add i32 %19, %10
  %21 = udiv i32 %20, %18
  %22 = icmp ugt i32 %18, %20
  %23 = icmp ugt i32 %21, 65535
  %24 = or i1 %23, %22
  br i1 %24, label %34, label %25

25:                                               ; preds = %11
  %26 = mul nuw nsw i32 %21, %17
  %27 = udiv i32 %10, %26
  %28 = icmp ult i32 %27, %1
  %29 = sub i32 %1, %27
  %30 = sub i32 %27, %1
  %31 = select i1 %28, i32 %29, i32 %30
  %32 = icmp ugt i32 %15, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %25, %11
  %35 = phi i32 [ %12, %11 ], [ %21, %33 ], [ %12, %25 ]
  %36 = phi i32 [ %13, %11 ], [ %14, %33 ], [ %13, %25 ]
  %37 = phi i32 [ %16, %11 ], [ %27, %33 ], [ %16, %25 ]
  %38 = phi i32 [ %15, %11 ], [ %31, %33 ], [ %15, %25 ]
  %39 = icmp eq i32 %17, 256
  br i1 %39, label %40, label %11

40:                                               ; preds = %34
  %41 = mul i32 %38, 100
  %42 = udiv i32 %41, %1
  %43 = icmp ult i32 %42, 3
  %44 = select i1 %43, i32 %1, i32 %37
  %45 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !40
  %49 = and i32 %48, -2
  %50 = zext i1 %8 to i32
  %51 = or i32 %49, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %52 = load ptr, ptr %45, align 4
  %53 = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %54 = load ptr, ptr %45, align 4
  %55 = getelementptr i8, ptr %54, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %35) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %56 = load ptr, ptr %45, align 4
  %57 = getelementptr i8, ptr %56, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %36) #7, !srcloc !9
  %58 = getelementptr inbounds %struct.cdns_uart, ptr %4, i32 0, i32 4
  store i32 %1, ptr %58, align 4
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdns_uart_set_mctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cdns_uart, ptr %4, i32 0, i32 7
  %6 = load i8, ptr %5, align 4, !range !44
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !45
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !46
  %16 = and i32 %12, -4
  %17 = and i32 %15, -769
  %18 = lshr i32 %1, 1
  %19 = and i32 %18, 3
  %20 = or i32 %19, %16
  %21 = lshr i32 %1, 6
  %22 = and i32 %21, 512
  %23 = or i32 %17, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr i8, ptr %24, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %20) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %23) #7, !srcloc !9
  br label %28

28:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_uart_get_mctrl(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 7
  %5 = load i8, ptr %4, align 4, !range !44
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 40
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !49
  %12 = shl i32 %11, 1
  %13 = and i32 %12, 32
  %14 = shl i32 %11, 3
  %15 = and i32 %14, 256
  %16 = or i32 %15, %13
  %17 = and i32 %12, 128
  %18 = or i32 %16, %17
  %19 = lshr i32 %11, 1
  %20 = and i32 %19, 64
  %21 = or i32 %18, %20
  br label %22

22:                                               ; preds = %7, %1
  %23 = phi i32 [ %21, %7 ], [ 352, %1 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdns_uart_stop_tx(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !50
  %5 = or i32 %4, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdns_uart_start_tx(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 19, i32 1
  %9 = load i8, ptr %8, align 4, !range !44
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !52
  %19 = and i32 %18, -49
  %20 = or i32 %19, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  %21 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #7, !srcloc !9
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.uart_state, ptr %22, i32 0, i32 2, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.uart_state, ptr %22, i32 0, i32 2, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 8) #7, !srcloc !9
  tail call fastcc void @cdns_uart_handle_tx(ptr noundef %0)
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %31 = load ptr, ptr %16, align 4
  %32 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 8) #7, !srcloc !9
  br label %33

33:                                               ; preds = %28, %15, %11, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdns_uart_stop_rx(ptr nocapture noundef readonly %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !56
  tail call void @arm_heavy_mb() #7
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 353) #7, !srcloc !9
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !57
  %7 = or i32 %6, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %8 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdns_uart_break_ctl(ptr noundef %0, i32 noundef %1) #3 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !59
  %7 = icmp eq i32 %1, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %9 = or i32 %6, 128
  %10 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #7, !srcloc !9
  br label %17

11:                                               ; preds = %2
  %12 = and i32 %6, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %15 = or i32 %6, 256
  %16 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #7, !srcloc !9
  br label %17

17:                                               ; preds = %14, %11, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_uart_startup(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cdns_uart, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 40) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %11 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 3) #7, !srcloc !9
  %12 = load ptr, ptr %9, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !64
  %14 = and i32 %13, 3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %16, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !65
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !66
  %17 = load ptr, ptr %9, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !64
  %19 = and i32 %18, 3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %16

21:                                               ; preds = %16, %1
  %22 = load ptr, ptr %9, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !67
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %26 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 32) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %29 = load i32, ptr @rx_trigger_level, align 4
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr i8, ptr %30, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %32 = load i32, ptr @rx_timeout, align 4
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr i8, ptr %33, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %35 = load ptr, ptr %9, align 4
  %36 = getelementptr i8, ptr %35, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !73
  %38 = load ptr, ptr %9, align 4
  %39 = getelementptr i8, ptr %38, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %8) #7
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @request_threaded_irq(i32 noundef %41, ptr noundef nonnull @cdns_uart_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %0) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %21
  %45 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.17, i32 noundef %47, i32 noundef %42) #8
  br label %53

48:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  %49 = load ptr, ptr %9, align 4
  %50 = getelementptr i8, ptr %49, i32 8
  br i1 %7, label %52, label %51

51:                                               ; preds = %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 8545) #7, !srcloc !9
  br label %53

52:                                               ; preds = %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 353) #7, !srcloc !9
  br label %53

53:                                               ; preds = %52, %51, %44
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdns_uart_shutdown(ptr noundef %0) #3 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !74
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -1) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %11 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 40) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #7
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %13 = load i32, ptr %12, align 4
  %14 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdns_uart_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !78
  %8 = or i32 %7, 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #7, !srcloc !9
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %11 = load i32, ptr %10, align 4
  %12 = udiv i32 %11, 134215680
  %13 = udiv i32 %11, 5
  %14 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %12, i32 noundef %13) #7
  %15 = tail call fastcc i32 @cdns_uart_set_baud_rate(ptr noundef %0, i32 noundef %14)
  %16 = tail call i32 @tty_termios_baud_rate(ptr noundef %1) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  tail call void @tty_termios_encode_baud_rate(ptr noundef %1, i32 noundef %15, i32 noundef %15) #7
  br label %19

19:                                               ; preds = %18, %3
  %20 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %21, i32 noundef %15) #7
  %22 = load ptr, ptr %5, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !80
  %24 = or i32 %23, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %25 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #7, !srcloc !9
  %26 = load ptr, ptr %5, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !82
  %28 = and i32 %27, 3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %30, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !83
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !84
  %31 = load ptr, ptr %5, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !82
  %33 = and i32 %32, 3
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %30

35:                                               ; preds = %30, %19
  %36 = load ptr, ptr %5, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !85
  %38 = and i32 %37, -61
  %39 = or i32 %38, 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %40 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %39) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %41 = load i32, ptr @rx_timeout, align 4
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr i8, ptr %42, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #7, !srcloc !9
  %44 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 297, ptr %44, align 4
  %45 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 0, ptr %45, align 4
  %46 = load i32, ptr %1, align 4
  %47 = and i32 %46, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %35
  store i32 489, ptr %44, align 4
  %50 = load i32, ptr %1, align 4
  br label %51

51:                                               ; preds = %49, %35
  %52 = phi i32 [ %50, %49 ], [ %46, %35 ]
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 224, ptr %45, align 4
  br label %56

56:                                               ; preds = %55, %51
  %57 = load i32, ptr %20, align 4
  %58 = and i32 %57, 128
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 481, ptr %45, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr i8, ptr %62, i32 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !88
  %65 = load i32, ptr %20, align 4
  %66 = and i32 %65, 48
  switch i32 %66, label %68 [
    i32 16, label %70
    i32 32, label %67
  ]

67:                                               ; preds = %61
  br label %70

68:                                               ; preds = %61
  %69 = or i32 %65, 48
  store i32 %69, ptr %20, align 4
  br label %70

70:                                               ; preds = %68, %67, %61
  %71 = phi i32 [ %69, %68 ], [ %65, %67 ], [ %65, %61 ]
  %72 = phi i32 [ 0, %68 ], [ 4, %67 ], [ 6, %61 ]
  %73 = and i32 %71, 256
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %70
  %76 = and i32 %71, 1073741824
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = and i32 %71, 512
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 16, i32 24
  br label %85

82:                                               ; preds = %75
  %83 = lshr i32 %71, 6
  %84 = and i32 %83, 8
  br label %85

85:                                               ; preds = %82, %78, %70
  %86 = phi i32 [ %84, %82 ], [ %81, %78 ], [ 32, %70 ]
  %87 = shl i32 %71, 1
  %88 = and i32 %87, 128
  %89 = or i32 %88, %72
  %90 = or i32 %89, %86
  %91 = and i32 %64, 1
  %92 = or i32 %90, %91
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %93 = load ptr, ptr %5, align 4
  %94 = getelementptr i8, ptr %93, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #7, !srcloc !9
  %95 = load ptr, ptr %5, align 4
  %96 = getelementptr i8, ptr %95, i32 36
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !90
  %98 = load i32, ptr %20, align 4
  %99 = and i32 %97, -33
  %100 = lshr i32 %98, 26
  %101 = and i32 %100, 32
  %102 = or i32 %101, %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %103 = load ptr, ptr %5, align 4
  %104 = getelementptr i8, ptr %103, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdns_uart_pm(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = icmp eq i32 %1, 3
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %6 = load ptr, ptr %5, align 4
  br i1 %4, label %7, label %12

7:                                                ; preds = %3
  %8 = tail call i64 @ktime_get_mono_fast_ns() #7
  %9 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 22
  store volatile i64 %8, ptr %9, align 8
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 @__pm_runtime_suspend(ptr noundef %10, i32 noundef 13) #7
  br label %14

12:                                               ; preds = %3
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #7
  br label %14

14:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @cdns_uart_type(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 98
  %5 = select i1 %4, ptr @.str, ptr null
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdns_uart_release_port(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %3 = load i32, ptr %2, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef 4096) #7
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @iounmap(ptr noundef %5) #7
  store ptr null, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_uart_request_port(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %3 = load i32, ptr %2, align 4
  %4 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef 4096, ptr noundef nonnull @.str, i32 noundef 0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 4
  %8 = tail call ptr @ioremap(i32 noundef %7, i32 noundef 4096) #7
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18) #8
  %14 = load i32, ptr %2, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %14, i32 noundef 4096) #7
  br label %15

15:                                               ; preds = %11, %6, %1
  %16 = phi i32 [ -12, %11 ], [ -12, %1 ], [ 0, %6 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdns_uart_config_port(ptr nocapture noundef %0, i32 noundef %1) #3 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef 4096, ptr noundef nonnull @.str, i32 noundef 0) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %6, align 4
  %12 = tail call ptr @ioremap(i32 noundef %11, i32 noundef 4096) #7
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.18) #8
  %18 = load i32, ptr %6, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %18, i32 noundef 4096) #7
  br label %21

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 98, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %15, %5, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @cdns_uart_verify_port(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load i32, ptr %1, align 4
  switch i32 %3, label %25 [
    i32 0, label %4
    i32 98, label %4
  ]

4:                                                ; preds = %2, %2
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 9
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 2
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 0, i32 -22
  br label %25

25:                                               ; preds = %20, %14, %10, %4, %2
  %26 = phi i32 [ -22, %2 ], [ -22, %4 ], [ -22, %10 ], [ -22, %14 ], [ %24, %20 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cdns_uart_handle_tx(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 8) #7, !srcloc !9
  br label %68

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %61, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %20 = icmp eq i32 %5, %7
  br i1 %20, label %55, label %21

21:                                               ; preds = %48, %18
  %22 = phi i32 [ %46, %48 ], [ %15, %18 ]
  %23 = load ptr, ptr %16, align 4
  %24 = getelementptr i8, ptr %23, i32 44
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !93
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.uart_state, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.uart_state, ptr %29, i32 0, i32 2, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %31, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load ptr, ptr %16, align 4
  %38 = getelementptr i8, ptr %37, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #7, !srcloc !9
  %39 = load i32, ptr %19, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %19, align 4
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr inbounds %struct.uart_state, ptr %41, i32 0, i32 2, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  %45 = and i32 %44, 4095
  store i32 %45, ptr %42, align 4
  %46 = add i32 %22, -1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %28
  %49 = load ptr, ptr %2, align 4
  %50 = getelementptr inbounds %struct.uart_state, ptr %49, i32 0, i32 2, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.uart_state, ptr %49, i32 0, i32 2, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %21

55:                                               ; preds = %48, %28, %21, %18
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr inbounds %struct.uart_state, ptr %56, i32 0, i32 2, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.uart_state, ptr %56, i32 0, i32 2, i32 2
  %60 = load i32, ptr %59, align 4
  br label %61

61:                                               ; preds = %55, %13
  %62 = phi i32 [ %60, %55 ], [ %7, %13 ]
  %63 = phi i32 [ %58, %55 ], [ %5, %13 ]
  %64 = sub i32 %63, %62
  %65 = and i32 %64, 3840
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  tail call void @uart_write_wakeup(ptr noundef %0) #7
  br label %68

68:                                               ; preds = %67, %61, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_uart_isr(i32 noundef %0, ptr noundef %1) #3 {
  tail call void @_raw_spin_lock(ptr noundef %1) #7
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !95
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !9
  %9 = and i32 %6, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  tail call fastcc void @cdns_uart_handle_tx(ptr noundef %1)
  %12 = and i32 %6, -9
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi i32 [ %12, %11 ], [ %6, %2 ]
  %15 = and i32 %14, 8679
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %290, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !97
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %290

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 59
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.cdns_uart, ptr %24, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr i8, ptr %29, i32 44
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !98
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %287

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 4
  %36 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 28
  %37 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 9
  %38 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %39 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 17
  %40 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 48
  %41 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %42 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %43 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 46
  %44 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 33
  %45 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 29
  %46 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 8
  %47 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 6
  %48 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 7
  br label %49

49:                                               ; preds = %278, %34
  %50 = phi i32 [ %14, %34 ], [ %281, %278 ]
  %51 = phi i32 [ 0, %34 ], [ %67, %278 ]
  %52 = phi i32 [ 0, %34 ], [ %279, %278 ]
  %53 = phi i8 [ 0, %34 ], [ %280, %278 ]
  %54 = and i32 %50, 64
  %55 = icmp eq i32 %54, 0
  br label %56

56:                                               ; preds = %117, %49
  %57 = phi i32 [ %51, %49 ], [ %67, %117 ]
  %58 = phi i8 [ %53, %49 ], [ 1, %117 ]
  br label %59

59:                                               ; preds = %76, %56
  %60 = phi i32 [ %57, %56 ], [ %67, %76 ]
  %61 = phi i32 [ %52, %56 ], [ 1, %76 ]
  br i1 %28, label %66, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %3, align 4
  %64 = getelementptr i8, ptr %63, i32 72
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !99
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i32 [ %65, %62 ], [ %60, %59 ]
  %68 = load ptr, ptr %3, align 4
  %69 = getelementptr i8, ptr %68, i32 48
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !100
  %71 = load i32, ptr %35, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %35, align 4
  br i1 %28, label %73, label %84

73:                                               ; preds = %66
  %74 = icmp ne i32 %70, 0
  %75 = select i1 %55, i1 true, i1 %74
  br i1 %75, label %125, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %36, align 4
  %78 = or i32 %77, 8192
  store i32 %78, ptr %36, align 4
  %79 = load ptr, ptr %3, align 4
  %80 = getelementptr i8, ptr %79, i32 44
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !98
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %59, label %287

84:                                               ; preds = %66
  %85 = and i32 %67, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %125, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %37, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %37, align 4
  %90 = load ptr, ptr %38, align 4
  %91 = load ptr, ptr %39, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  tail call void %91(ptr noundef %1) #7
  br label %94

94:                                               ; preds = %93, %87
  %95 = load i8, ptr %40, align 4
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %41, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %110, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.console, ptr %98, i32 0, i32 9
  %102 = load i16, ptr %101, align 2
  %103 = sext i16 %102 to i32
  %104 = load i32, ptr %42, align 4
  %105 = icmp eq i32 %104, %103
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32, ptr %43, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %106
  store i32 0, ptr %43, align 4
  br label %110

110:                                              ; preds = %109, %100, %97, %94
  %111 = load i32, ptr %44, align 4
  %112 = and i32 %111, 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.tty_port, ptr %90, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  tail call void @do_SAK(ptr noundef %116) #7
  br label %125

117:                                              ; preds = %106
  %118 = load volatile i32, ptr @jiffies, align 64
  %119 = add i32 %118, 500
  store i32 %119, ptr %43, align 4
  %120 = load ptr, ptr %3, align 4
  %121 = getelementptr i8, ptr %120, i32 44
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !98
  %123 = and i32 %122, 2
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %56, label %287

125:                                              ; preds = %114, %110, %84, %73
  %126 = phi i32 [ %52, %114 ], [ %52, %110 ], [ %61, %73 ], [ %52, %84 ]
  %127 = phi i8 [ 1, %114 ], [ 1, %110 ], [ %58, %73 ], [ %58, %84 ]
  %128 = load i32, ptr %36, align 4
  %129 = load i32, ptr %45, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %128, %130
  %132 = and i32 %131, %50
  %133 = icmp eq i32 %70, 0
  %134 = and i32 %128, 8192
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %133, i1 true, i1 %135
  br i1 %136, label %171, label %137

137:                                              ; preds = %125
  %138 = and i32 %128, -8193
  store i32 %138, ptr %36, align 4
  %139 = load i32, ptr %37, align 4
  %140 = add i32 %139, 1
  store i32 %140, ptr %37, align 4
  %141 = load ptr, ptr %38, align 4
  %142 = load ptr, ptr %39, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %137
  tail call void %142(ptr noundef %1) #7
  br label %145

145:                                              ; preds = %144, %137
  %146 = load i8, ptr %40, align 4
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %161, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr %41, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %161, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.console, ptr %149, i32 0, i32 9
  %153 = load i16, ptr %152, align 2
  %154 = sext i16 %153 to i32
  %155 = load i32, ptr %42, align 4
  %156 = icmp eq i32 %155, %154
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load i32, ptr %43, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %157
  store i32 0, ptr %43, align 4
  br label %161

161:                                              ; preds = %160, %151, %148, %145
  %162 = load i32, ptr %44, align 4
  %163 = and i32 %162, 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.tty_port, ptr %141, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  tail call void @do_SAK(ptr noundef %167) #7
  br label %171

168:                                              ; preds = %157
  %169 = load volatile i32, ptr @jiffies, align 64
  %170 = add i32 %169, 500
  store i32 %170, ptr %43, align 4
  br label %278

171:                                              ; preds = %165, %161, %125
  %172 = load i32, ptr %43, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %186, label %174

174:                                              ; preds = %171
  br i1 %133, label %184, label %175

175:                                              ; preds = %174
  %176 = load volatile i32, ptr @jiffies, align 64
  %177 = sub i32 %176, %172
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = tail call i32 @sysrq_mask() #7
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %1, i32 noundef %70) #7
  br i1 %183, label %278, label %184

184:                                              ; preds = %182, %175, %174
  store i32 0, ptr %43, align 4
  br label %186

185:                                              ; preds = %179
  tail call void @handle_sysrq(i32 noundef %70) #7
  store i32 0, ptr %43, align 4
  br label %278

186:                                              ; preds = %184, %171
  br i1 %28, label %201, label %187

187:                                              ; preds = %186
  %188 = and i32 %67, 1
  %189 = icmp eq i32 %188, 0
  %190 = and i32 %131, 128
  %191 = icmp eq i32 %190, 0
  %192 = select i1 %189, i1 true, i1 %191
  br i1 %192, label %196, label %193

193:                                              ; preds = %187
  %194 = load i32, ptr %46, align 4
  %195 = add i32 %194, 1
  store i32 %195, ptr %46, align 4
  br label %196

196:                                              ; preds = %193, %187
  %197 = phi i8 [ 3, %193 ], [ %127, %187 ]
  %198 = and i32 %67, 2
  %199 = icmp eq i32 %198, 0
  %200 = select i1 %199, i1 true, i1 %191
  br i1 %200, label %217, label %213

201:                                              ; preds = %186
  %202 = and i32 %132, 128
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %201
  %205 = load i32, ptr %46, align 4
  %206 = add i32 %205, 1
  store i32 %206, ptr %46, align 4
  br label %207

207:                                              ; preds = %204, %201
  %208 = phi i8 [ 3, %204 ], [ %127, %201 ]
  %209 = and i32 %132, 64
  %210 = icmp eq i32 %209, 0
  %211 = icmp ne i32 %126, 0
  %212 = select i1 %210, i1 true, i1 %211
  br i1 %212, label %217, label %213

213:                                              ; preds = %207, %196
  %214 = phi i32 [ %126, %196 ], [ 0, %207 ]
  %215 = load i32, ptr %47, align 4
  %216 = add i32 %215, 1
  store i32 %216, ptr %47, align 4
  br label %217

217:                                              ; preds = %213, %207, %196
  %218 = phi i32 [ %126, %196 ], [ %126, %207 ], [ %214, %213 ]
  %219 = phi i8 [ %197, %196 ], [ %208, %207 ], [ 2, %213 ]
  %220 = and i32 %132, 32
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %247, label %222

222:                                              ; preds = %217
  %223 = load i32, ptr %48, align 4
  %224 = add i32 %223, 1
  store i32 %224, ptr %48, align 4
  %225 = load ptr, ptr %38, align 4
  %226 = getelementptr inbounds %struct.tty_bufhead, ptr %225, i32 0, i32 8
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.tty_buffer, ptr %227, i32 0, i32 5
  %229 = load i32, ptr %228, align 4
  %230 = and i32 %229, 1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %245

232:                                              ; preds = %222
  %233 = getelementptr inbounds %struct.tty_buffer, ptr %227, i32 0, i32 1
  %234 = load i32, ptr %233, align 4
  %235 = getelementptr inbounds %struct.tty_buffer, ptr %227, i32 0, i32 2
  %236 = load i32, ptr %235, align 4
  %237 = icmp slt i32 %234, %236
  br i1 %237, label %238, label %245

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.tty_buffer, ptr %227, i32 0, i32 6
  %240 = getelementptr i8, ptr %239, i32 %234
  %241 = getelementptr i8, ptr %240, i32 %236
  store i8 4, ptr %241, align 1
  %242 = load i32, ptr %233, align 4
  %243 = add i32 %242, 1
  store i32 %243, ptr %233, align 4
  %244 = getelementptr i8, ptr %239, i32 %242
  store i8 0, ptr %244, align 1
  br label %247

245:                                              ; preds = %232, %222
  %246 = tail call i32 @__tty_insert_flip_char(ptr noundef %225, i8 noundef zeroext 0, i8 noundef zeroext 4) #7
  br label %247

247:                                              ; preds = %245, %238, %217
  %248 = load ptr, ptr %38, align 4
  %249 = trunc i32 %70 to i8
  %250 = getelementptr inbounds %struct.tty_bufhead, ptr %248, i32 0, i32 8
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr inbounds %struct.tty_buffer, ptr %251, i32 0, i32 5
  %253 = load i32, ptr %252, align 4
  %254 = and i32 %253, 1
  %255 = icmp ne i32 %254, 0
  %256 = icmp ne i8 %219, 0
  %257 = and i1 %256, %255
  br i1 %257, label %276, label %258

258:                                              ; preds = %247
  %259 = getelementptr inbounds %struct.tty_buffer, ptr %251, i32 0, i32 1
  %260 = load i32, ptr %259, align 4
  %261 = getelementptr inbounds %struct.tty_buffer, ptr %251, i32 0, i32 2
  %262 = load i32, ptr %261, align 4
  %263 = icmp slt i32 %260, %262
  br i1 %263, label %264, label %276

264:                                              ; preds = %258
  %265 = icmp eq i32 %254, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %264
  %267 = getelementptr inbounds %struct.tty_buffer, ptr %251, i32 0, i32 6
  %268 = getelementptr i8, ptr %267, i32 %260
  %269 = getelementptr i8, ptr %268, i32 %262
  store i8 %219, ptr %269, align 1
  %270 = load i32, ptr %259, align 4
  br label %271

271:                                              ; preds = %266, %264
  %272 = phi i32 [ %270, %266 ], [ %260, %264 ]
  %273 = add i32 %272, 1
  store i32 %273, ptr %259, align 4
  %274 = getelementptr inbounds %struct.tty_buffer, ptr %251, i32 0, i32 6
  %275 = getelementptr i8, ptr %274, i32 %272
  store i8 %249, ptr %275, align 1
  br label %278

276:                                              ; preds = %258, %247
  %277 = tail call i32 @__tty_insert_flip_char(ptr noundef %248, i8 noundef zeroext %249, i8 noundef zeroext %219) #7
  br label %278

278:                                              ; preds = %276, %271, %185, %182, %168
  %279 = phi i32 [ %126, %168 ], [ %126, %185 ], [ %218, %271 ], [ %218, %276 ], [ %126, %182 ]
  %280 = phi i8 [ %127, %168 ], [ %127, %185 ], [ %219, %271 ], [ %219, %276 ], [ %127, %182 ]
  %281 = phi i32 [ %132, %168 ], [ %132, %185 ], [ 0, %271 ], [ 0, %276 ], [ %132, %182 ]
  %282 = load ptr, ptr %3, align 4
  %283 = getelementptr i8, ptr %282, i32 44
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %283) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !98
  %285 = and i32 %284, 2
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %49, label %287

287:                                              ; preds = %278, %117, %76, %22
  %288 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %289 = load ptr, ptr %288, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %289) #7
  br label %290

290:                                              ; preds = %287, %17, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !101
  %291 = load i16, ptr %1, align 4
  %292 = add i16 %291, 1
  store i16 %292, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !102
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !103
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !104
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_uart_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 59
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i1 [ false, %1 ], [ %13, %10 ]
  %16 = load i8, ptr @console_suspend_enabled, align 1, !range !44
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 32
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %52, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.console, ptr %20, i32 0, i32 9
  %24 = load i16, ptr %23, align 2
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 41
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %25
  %29 = select i1 %28, i1 %15, i1 false
  br i1 %29, label %30, label %52

30:                                               ; preds = %22
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %32 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 44
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !105
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %38, %30
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr i8, ptr %39, i32 48
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !106
  %42 = load ptr, ptr %32, align 4
  %43 = getelementptr i8, ptr %42, i32 44
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !105
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %38, label %47

47:                                               ; preds = %38, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %48 = load ptr, ptr %32, align 4
  %49 = getelementptr i8, ptr %48, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 1) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %50 = load ptr, ptr %32, align 4
  %51 = getelementptr i8, ptr %50, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 256) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %31) #7
  br label %52

52:                                               ; preds = %47, %22, %18, %14
  %53 = getelementptr inbounds %struct.cdns_uart, ptr %5, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @uart_suspend_port(ptr noundef %54, ptr noundef %3) #7
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_uart_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 59
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i1 [ false, %1 ], [ %13, %10 ]
  %16 = load i8, ptr @console_suspend_enabled, align 1, !range !44
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %63, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 32
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %63, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.console, ptr %20, i32 0, i32 9
  %24 = load i16, ptr %23, align 2
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 41
  %27 = load i32, ptr %26, align 4
  %28 = icmp ne i32 %27, %25
  %29 = select i1 %28, i1 true, i1 %15
  br i1 %29, label %63, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.cdns_uart, ptr %5, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @clk_enable(ptr noundef %32) #7
  %34 = getelementptr inbounds %struct.cdns_uart, ptr %5, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @clk_enable(ptr noundef %35) #7
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %38 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !109
  %41 = or i32 %40, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %42 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #7, !srcloc !9
  %43 = load ptr, ptr %38, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !111
  %45 = and i32 %44, 3
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %47, %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !112
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !113
  %48 = load ptr, ptr %38, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !111
  %50 = and i32 %49, 3
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %47

52:                                               ; preds = %47, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %53 = load i32, ptr @rx_timeout, align 4
  %54 = load ptr, ptr %38, align 4
  %55 = getelementptr i8, ptr %54, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #7, !srcloc !9
  %56 = load ptr, ptr %38, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !115
  %58 = and i32 %57, -61
  %59 = or i32 %58, 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %60 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %59) #7, !srcloc !9
  %61 = load ptr, ptr %34, align 4
  tail call void @clk_disable(ptr noundef %61) #7
  %62 = load ptr, ptr %31, align 4
  tail call void @clk_disable(ptr noundef %62) #7
  br label %71

63:                                               ; preds = %22, %18, %14
  %64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %65 = load i32, ptr @rx_trigger_level, align 4
  %66 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %65) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %69 = load ptr, ptr %66, align 4
  %70 = getelementptr i8, ptr %69, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 256) #7, !srcloc !9
  br label %71

71:                                               ; preds = %63, %52
  %72 = phi i32 [ %64, %63 ], [ %37, %52 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %72) #7
  %73 = getelementptr inbounds %struct.cdns_uart, ptr %5, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 @uart_resume_port(ptr noundef %74, ptr noundef %3) #7
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_runtime_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 59
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cdns_uart, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.cdns_uart, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_runtime_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 59
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cdns_uart, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_enable(ptr noundef %7) #7
  %9 = getelementptr inbounds %struct.cdns_uart, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_enable(ptr noundef %10) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 2152746399}
!9 = !{i64 3789523}
!10 = !{i64 2152746811}
!11 = !{i64 2152747133}
!12 = !{i64 2152747457}
!13 = !{i64 3789941}
!14 = !{i64 2152745363}
!15 = !{i64 2152745620}
!16 = !{i64 2152745462}
!17 = !{i64 2152745815}
!18 = !{i64 2152714756}
!19 = !{i64 2152714976}
!20 = !{i64 2152716422}
!21 = !{i64 2152716642}
!22 = !{i64 2152717132}
!23 = !{i64 2152717400}
!24 = !{i64 2152717242}
!25 = !{i64 2152717603}
!26 = !{i64 2152718097}
!27 = !{i64 2152718339}
!28 = !{i64 661550, i64 661611}
!29 = !{i64 664567}
!30 = !{i64 2152752571}
!31 = !{i64 2152752764}
!32 = !{i64 2152753244}
!33 = !{i64 2152753460}
!34 = !{i64 2152726410}
!35 = !{i64 2152753845}
!36 = !{i64 2152753687}
!37 = !{i64 2152754041}
!38 = !{i64 2152755471}
!39 = !{i64 2152755313}
!40 = !{i64 2152711033}
!41 = !{i64 2152711249}
!42 = !{i64 2152711575}
!43 = !{i64 2152711899}
!44 = !{i8 0, i8 2}
!45 = !{i64 2152743906}
!46 = !{i64 2152744254}
!47 = !{i64 2152744543}
!48 = !{i64 2152744873}
!49 = !{i64 2152743206}
!50 = !{i64 2152724391}
!51 = !{i64 2152724598}
!52 = !{i64 2152722904}
!53 = !{i64 2152723122}
!54 = !{i64 2152723540}
!55 = !{i64 2152723897}
!56 = !{i64 2152725137}
!57 = !{i64 2152725717}
!58 = !{i64 2152725924}
!59 = !{i64 2152727150}
!60 = !{i64 2152727370}
!61 = !{i64 2152727765}
!62 = !{i64 2152733851}
!63 = !{i64 2152734258}
!64 = !{i64 2152734778}
!65 = !{i64 2152735046}
!66 = !{i64 2152734888}
!67 = !{i64 2152735397}
!68 = !{i64 2152735615}
!69 = !{i64 2152736036}
!70 = !{i64 2152736466}
!71 = !{i64 2152736824}
!72 = !{i64 2152737686}
!73 = !{i64 2152738166}
!74 = !{i64 2152740826}
!75 = !{i64 2152741022}
!76 = !{i64 2152741360}
!77 = !{i64 2152741741}
!78 = !{i64 2152728631}
!79 = !{i64 2152728851}
!80 = !{i64 2152729353}
!81 = !{i64 2152729573}
!82 = !{i64 2152730063}
!83 = !{i64 2152730331}
!84 = !{i64 2152730173}
!85 = !{i64 2152730682}
!86 = !{i64 2152730924}
!87 = !{i64 2152731266}
!88 = !{i64 2152731938}
!89 = !{i64 2152732335}
!90 = !{i64 2152732817}
!91 = !{i64 2152733046}
!92 = !{i64 2152707877}
!93 = !{i64 2152708440}
!94 = !{i64 2152708686}
!95 = !{i64 2152709596}
!96 = !{i64 2152709795}
!97 = !{i64 2152710320}
!98 = !{i64 2152706735}
!99 = !{i64 2152707105}
!100 = !{i64 2152707453}
!101 = !{i64 2149269744}
!102 = !{i64 2149265568}
!103 = !{i64 2149265643, i64 2149265670, i64 2149265717, i64 2149265739, i64 2149265767, i64 2149265787}
!104 = !{i64 2149292747}
!105 = !{i64 2152756257}
!106 = !{i64 2152756616}
!107 = !{i64 2152756807}
!108 = !{i64 2152757146}
!109 = !{i64 2152758063}
!110 = !{i64 2152758283}
!111 = !{i64 2152758773}
!112 = !{i64 2152759041}
!113 = !{i64 2152758883}
!114 = !{i64 2152759244}
!115 = !{i64 2152759738}
!116 = !{i64 2152759980}
!117 = !{i64 2152760682}
!118 = !{i64 2152761051}
