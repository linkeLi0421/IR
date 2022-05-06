; ModuleID = '/llk/IR/drivers/tty/serial/fsl_lpuart.c_pt.bc'
source_filename = "../drivers/tty/serial/fsl_lpuart.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.lpuart_soc_data = type { i32, i8, i8 }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
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
%struct.lpuart_port = type { %struct.uart_port, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i32, %struct.timer_list, %struct.scatterlist, [2 x %struct.scatterlist], %struct.circ_buf, i32, i32, %struct.wait_queue_head, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.36, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.36 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.34, %struct.anon.35, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.34 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.35 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.64, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID___earlycon_lpuart228 = internal constant %struct.earlycon_id { [15 x i8] c"lpuart\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"fsl,vf610-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lpuart_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_lpuart32229 = internal constant %struct.earlycon_id { [15 x i8] c"lpuart32\00\00\00\00\00\00\00", i8 0, [128 x i8] c"fsl,ls1021a-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lpuart32_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_lpuart32230 = internal constant %struct.earlycon_id { [15 x i8] c"lpuart32\00\00\00\00\00\00\00", i8 0, [128 x i8] c"fsl,ls1028a-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1028a_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_lpuart32231 = internal constant %struct.earlycon_id { [15 x i8] c"lpuart32\00\00\00\00\00\00\00", i8 0, [128 x i8] c"fsl,imx7ulp-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lpuart32_imx_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_lpuart32232 = internal constant %struct.earlycon_id { [15 x i8] c"lpuart32\00\00\00\00\00\00\00", i8 0, [128 x i8] c"fsl,imx8qxp-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lpuart32_imx_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_lpuart32233 = internal constant %struct.earlycon_id { [15 x i8] c"lpuart32\00\00\00\00\00\00\00", i8 0, [128 x i8] c"fsl,imxrt1050-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lpuart32_imx_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_lpuart234 = internal constant %struct.earlycon_id { [15 x i8] c"lpuart\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] zeroinitializer, ptr @lpuart_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_lpuart32235 = internal constant %struct.earlycon_id { [15 x i8] c"lpuart32\00\00\00\00\00\00\00", i8 0, [128 x i8] zeroinitializer, ptr @lpuart32_early_console_setup }, section "__earlycon_table", align 4
@fsl_lpuart_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@lpuart_driver = internal global %struct.platform_driver { ptr @lpuart_probe, ptr @lpuart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lpuart_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lpuart_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@lpuart_reg = internal global %struct.uart_driver { ptr null, ptr @.str.1, ptr @.str.25, i32 0, i32 0, i32 6, ptr @lpuart_console, ptr null, ptr null }, align 4
@__initcall__kmod_fsl_lpuart__236_2928_lpuart_serial_init6 = internal global ptr @lpuart_serial_init, section ".initcall6.init", align 4
@__exitcall_lpuart_serial_exit = internal global ptr @lpuart_serial_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [59 x i8] c"fsl_lpuart.description=Freescale lpuart serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [46 x i8] c"fsl_lpuart.file=drivers/tty/serial/fsl_lpuart\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [26 x i8] c"fsl_lpuart.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [52 x i8] c"unacceptable baud rate difference of more than 3%%\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"fsl-lpuart\00", align 1
@lpuart_dt_ids = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vf_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1021a_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1028a-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1028a_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qxp-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8qxp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imxrt1050-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imxrt1050_data }, %struct.of_device_id zeroinitializer], align 4
@lpuart_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @lpuart_suspend, ptr @lpuart_resume, ptr @lpuart_suspend, ptr @lpuart_resume, ptr @lpuart_suspend, ptr @lpuart_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@lpuart32_pops = internal constant %struct.uart_ops { ptr @lpuart32_tx_empty, ptr @lpuart32_set_mctrl, ptr @lpuart32_get_mctrl, ptr @lpuart32_stop_tx, ptr @lpuart32_start_tx, ptr null, ptr null, ptr null, ptr @lpuart32_stop_rx, ptr null, ptr @lpuart32_break_ctl, ptr @lpuart32_startup, ptr @lpuart32_shutdown, ptr @lpuart_flush_buffer, ptr @lpuart32_set_termios, ptr null, ptr null, ptr @lpuart_type, ptr @lpuart_release_port, ptr @lpuart_request_port, ptr @lpuart_config_port, ptr @lpuart_verify_port, ptr null }, align 4
@lpuart_pops = internal constant %struct.uart_ops { ptr @lpuart_tx_empty, ptr @lpuart_set_mctrl, ptr @lpuart_get_mctrl, ptr @lpuart_stop_tx, ptr @lpuart_start_tx, ptr null, ptr null, ptr null, ptr @lpuart_stop_rx, ptr null, ptr @lpuart_break_ctl, ptr @lpuart_startup, ptr @lpuart_shutdown, ptr @lpuart_flush_buffer, ptr @lpuart_set_termios, ptr null, ptr null, ptr @lpuart_type, ptr @lpuart_release_port, ptr @lpuart_request_port, ptr @lpuart_config_port, ptr @lpuart_verify_port, ptr null }, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to get uart ipg clk: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"baud\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to get uart baud clk: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"port line is full, add device failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"serial%d out of range\0A\00", align 1
@lpuart_ports = internal unnamed_addr global [6 x ptr] zeroinitializer, align 4
@lpuart32_console = internal global %struct.console { [16 x i8] c"ttyLP\00\00\00\00\00\00\00\00\00\00\00", ptr @lpuart32_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @lpuart_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @lpuart_reg, ptr null }, align 4
@lpuart_console = internal global %struct.console { [16 x i8] c"ttyLP\00\00\00\00\00\00\00\00\00\00\00", ptr @lpuart_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @lpuart_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @lpuart_reg, ptr null }, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"driver doesn't support RX during TX\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"driver doesn't support RTS delays\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"DMA mapping error for TX.\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Cannot prepare TX slave DMA!\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@lpuart_request_dma.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@lpuart_request_dma.__print_once.15 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"DMA Rx mapping error\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"DMA Rx slave config failed, err = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Cannot prepare cyclic DMA\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Rx DMA transfer failed!\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@lpuart_tx_dma_startup.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"&sport->dma_wait\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"DMA slave config failed, err = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"FSL_LPUART\00", align 1
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [55 x i8] c"Serial: Console lpuart rounded baud ratefrom %d to %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"failed to enable uart ipg clk: %d\0A\00", align 1
@vf_data = internal constant %struct.lpuart_soc_data { i32 0, i8 2, i8 0 }, align 4
@ls1021a_data = internal constant %struct.lpuart_soc_data { i32 1, i8 6, i8 0 }, align 4
@ls1028a_data = internal constant %struct.lpuart_soc_data { i32 2, i8 3, i8 0 }, align 4
@imx7ulp_data = internal global %struct.lpuart_soc_data { i32 3, i8 3, i8 16 }, align 4
@imx8qxp_data = internal global %struct.lpuart_soc_data { i32 4, i8 3, i8 16 }, align 4
@imxrt1050_data = internal global %struct.lpuart_soc_data { i32 5, i8 3, i8 16 }, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"ttyLP\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID___earlycon_lpuart228, ptr @__UNIQUE_ID___earlycon_lpuart234, ptr @__UNIQUE_ID___earlycon_lpuart32229, ptr @__UNIQUE_ID___earlycon_lpuart32230, ptr @__UNIQUE_ID___earlycon_lpuart32231, ptr @__UNIQUE_ID___earlycon_lpuart32232, ptr @__UNIQUE_ID___earlycon_lpuart32233, ptr @__UNIQUE_ID___earlycon_lpuart32235, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_lpuart_serial_exit, ptr @__initcall__kmod_fsl_lpuart__236_2928_lpuart_serial_init6, ptr @lpuart_serial_exit], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @lpuart_early_console_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 1
  store ptr @lpuart_early_write, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -19, %2 ]
  ret i32 %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @lpuart32_early_console_setup(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 26
  %8 = load i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 3
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store i8 6, ptr %7, align 2
  br label %11

11:                                               ; preds = %10, %6
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.console, ptr %12, i32 0, i32 1
  store ptr @lpuart32_early_write, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i32 [ 0, %11 ], [ -19, %2 ]
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ls1028a_early_console_setup(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #1 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 26
  store i8 3, ptr %8, align 2
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.console, ptr %9, i32 0, i32 1
  store ptr @lpuart32_early_write, ptr %10, align 4
  %11 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call fastcc void @__lpuart32_serial_setbrg(ptr noundef %3, i32 noundef %16, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %19

19:                                               ; preds = %18, %14, %7
  %20 = load i8, ptr %8, align 2
  switch i8 %20, label %33 [
    i8 3, label %21
    i8 6, label %25
  ]

21:                                               ; preds = %19
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %30

25:                                               ; preds = %19
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #14, !srcloc !8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i32 [ %24, %21 ], [ %29, %25 ]
  %32 = load i8, ptr %8, align 2
  br label %33

33:                                               ; preds = %30, %19
  %34 = phi i8 [ %32, %30 ], [ %20, %19 ]
  %35 = phi i32 [ %31, %30 ], [ 0, %19 ]
  %36 = or i32 %35, 524288
  switch i8 %34, label %44 [
    i8 3, label %37
    i8 6, label %40
  ]

37:                                               ; preds = %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %36) #14, !srcloc !12
  br label %44

40:                                               ; preds = %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %41 = tail call i32 @llvm.bswap.i32(i32 %36) #14
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #14, !srcloc !12
  br label %44

44:                                               ; preds = %40, %37, %33, %2
  %45 = phi i32 [ -19, %2 ], [ 0, %33 ], [ 0, %37 ], [ 0, %40 ]
  ret i32 %45
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @lpuart32_imx_early_console_setup(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 26
  store i8 3, ptr %7, align 2
  %8 = getelementptr i8, ptr %4, i32 16
  store ptr %8, ptr %3, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.console, ptr %9, i32 0, i32 1
  store ptr @lpuart32_early_write, ptr %10, align 4
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %6 ], [ -19, %2 ]
  ret i32 %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @lpuart_serial_exit() #1 section ".exit.text" {
  tail call void @ida_destroy(ptr noundef nonnull @fsl_lpuart_ida) #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @lpuart_driver) #14
  tail call void @uart_unregister_driver(ptr noundef nonnull @lpuart_reg) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @lpuart_serial_init() #1 section ".init.text" {
  %1 = tail call i32 @uart_register_driver(ptr noundef nonnull @lpuart_reg) #14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpuart_driver, ptr noundef null) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @uart_unregister_driver(ptr noundef nonnull @lpuart_reg) #14
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart_early_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.earlycon_device, ptr %5, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @lpuart_console_putchar) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart_console_putchar(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !15
  %7 = icmp sgt i8 %6, -1
  br i1 %7, label %8, label %13

8:                                                ; preds = %8, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !17
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !15
  %12 = icmp sgt i8 %11, -1
  br i1 %12, label %8, label %13

13:                                               ; preds = %8, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !18
  tail call void @arm_heavy_mb() #14
  %14 = trunc i32 %1 to i8
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 %14) #14, !srcloc !19
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart32_early_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.earlycon_device, ptr %5, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @lpuart32_console_putchar) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart32_console_putchar(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  br label %5

5:                                                ; preds = %20, %2
  %6 = load i8, ptr %3, align 2
  switch i8 %6, label %20 [
    i8 3, label %7
    i8 6, label %11
  ]

7:                                                ; preds = %5
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %16

11:                                               ; preds = %5
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #14, !srcloc !8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %16

16:                                               ; preds = %11, %7
  %17 = phi i32 [ %15, %11 ], [ %10, %7 ]
  %18 = and i32 %17, 8388608
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !21
  br label %5

21:                                               ; preds = %16
  %22 = load i8, ptr %3, align 2
  switch i8 %22, label %30 [
    i8 3, label %23
    i8 6, label %26
  ]

23:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %1) #14, !srcloc !12
  br label %30

26:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %27 = tail call i32 @llvm.bswap.i32(i32 %1) #14
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #14, !srcloc !12
  br label %30

30:                                               ; preds = %26, %23, %21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__lpuart32_serial_setbrg(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %31, %4
  %8 = phi i32 [ 4, %4 ], [ %35, %31 ]
  %9 = phi i32 [ %1, %4 ], [ %34, %31 ]
  %10 = phi i32 [ 0, %4 ], [ %33, %31 ]
  %11 = phi i32 [ 0, %4 ], [ %32, %31 ]
  %12 = mul i32 %8, %1
  %13 = udiv i32 %6, %12
  %14 = icmp ugt i32 %12, %6
  %15 = select i1 %14, i32 1, i32 %13
  %16 = mul i32 %15, %8
  %17 = udiv i32 %6, %16
  %18 = sub i32 %17, %1
  %19 = add i32 %15, 1
  %20 = mul i32 %19, %8
  %21 = udiv i32 %6, %20
  %22 = sub i32 %1, %21
  %23 = icmp ugt i32 %18, %22
  %24 = select i1 %23, i32 %19, i32 %15
  %25 = tail call i32 @llvm.umin.i32(i32 %18, i32 %22)
  %26 = icmp ugt i32 %24, 8191
  %27 = icmp ugt i32 %25, %9
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %31, label %29

29:                                               ; preds = %7
  %30 = icmp eq i32 %25, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %29, %7
  %32 = phi i32 [ %11, %7 ], [ %24, %29 ]
  %33 = phi i32 [ %10, %7 ], [ %8, %29 ]
  %34 = phi i32 [ %9, %7 ], [ %25, %29 ]
  %35 = add nuw nsw i32 %8, 1
  %36 = icmp eq i32 %35, 33
  br i1 %36, label %37, label %7

37:                                               ; preds = %31
  %38 = udiv i32 %1, 100
  %39 = mul nuw nsw i32 %38, 3
  %40 = icmp ugt i32 %34, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str) #15
  br label %44

44:                                               ; preds = %41, %37, %29
  %45 = phi i32 [ %33, %41 ], [ %33, %37 ], [ %8, %29 ]
  %46 = phi i32 [ %32, %41 ], [ %32, %37 ], [ %24, %29 ]
  %47 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %48 = load i8, ptr %47, align 2
  switch i8 %48, label %58 [
    i8 3, label %49
    i8 6, label %53
  ]

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %58

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #14, !srcloc !8
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %58

58:                                               ; preds = %53, %49, %44
  %59 = phi i32 [ %57, %53 ], [ %52, %49 ], [ 0, %44 ]
  %60 = and i32 %45, -4
  %61 = icmp eq i32 %60, 4
  %62 = or i32 %59, 131072
  %63 = select i1 %61, i32 %62, i32 %59
  %64 = and i32 %63, -520101888
  %65 = shl i32 %45, 24
  %66 = add i32 %65, 520093696
  %67 = and i32 %66, 520093696
  %68 = and i32 %46, 8191
  %69 = or i32 %67, %68
  %70 = or i32 %69, %64
  %71 = and i32 %70, -2097153
  %72 = select i1 %2, i32 %70, i32 %71
  %73 = and i32 %72, -8388609
  %74 = select i1 %3, i32 %72, i32 %73
  %75 = load i8, ptr %47, align 2
  switch i8 %75, label %83 [
    i8 3, label %76
    i8 6, label %79
  ]

76:                                               ; preds = %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %77 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %74) #14, !srcloc !12
  br label %83

79:                                               ; preds = %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %80 = tail call i32 @llvm.bswap.i32(i32 %74) #14
  %81 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #14, !srcloc !12
  br label %83

83:                                               ; preds = %79, %76, %58
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lpuart_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #14
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 500, i32 noundef 3520) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %140, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #14
  %10 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %9) #14
  %11 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i32
  br label %140

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.lpuart_soc_data, ptr %3, i32 0, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr i8, ptr %10, i32 %18
  store ptr %19, ptr %11, align 4
  %20 = load i32, ptr %9, align 4
  %21 = load i8, ptr %16, align 1
  %22 = zext i8 %21 to i32
  %23 = add i32 %20, %22
  %24 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 43
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 45
  store ptr %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 38
  store i32 103, ptr %26, align 4
  %27 = load i32, ptr %3, align 4
  %28 = getelementptr inbounds %struct.lpuart_port, ptr %6, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #14
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %140, label %31

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 20
  store i32 %29, ptr %32, align 4
  %33 = getelementptr inbounds %struct.lpuart_soc_data, ptr %3, i32 0, i32 1
  %34 = load i8, ptr %33, align 4
  %35 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 26
  store i8 %34, ptr %35, align 2
  %36 = icmp eq i8 %34, 6
  %37 = icmp eq i8 %34, 3
  %38 = or i1 %36, %37
  %39 = select i1 %38, ptr @lpuart32_pops, ptr @lpuart_pops
  %40 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 39
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 48
  store i8 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 33
  store i32 268435456, ptr %42, align 4
  %43 = icmp eq i8 %34, 6
  %44 = icmp eq i8 %34, 3
  %45 = or i1 %43, %44
  %46 = select i1 %45, ptr @lpuart32_config_rs485, ptr @lpuart_config_rs485
  %47 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 18
  store ptr %46, ptr %47, align 4
  %48 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #14
  %49 = getelementptr inbounds %struct.lpuart_port, ptr %6, i32 0, i32 2
  store ptr %48, ptr %49, align 4
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %31
  %52 = ptrtoint ptr %48 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %52) #15
  br label %140

53:                                               ; preds = %31
  %54 = getelementptr inbounds %struct.lpuart_port, ptr %6, i32 0, i32 3
  store ptr null, ptr %54, align 4
  %55 = load i32, ptr %28, align 4
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #14
  store ptr %58, ptr %54, align 4
  %59 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = ptrtoint ptr %58 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %61) #15
  br label %140

62:                                               ; preds = %57, %53
  %63 = tail call i32 @of_alias_get_id(ptr noundef %5, ptr noundef nonnull @.str.6) #14
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = tail call i32 @ida_alloc_range(ptr noundef nonnull @fsl_lpuart_ida, i32 noundef 0, i32 noundef 5, i32 noundef 3264) #14
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #15
  br label %140

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.lpuart_port, ptr %6, i32 0, i32 25
  store i8 1, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %62
  %72 = phi i32 [ %66, %69 ], [ %63, %62 ]
  %73 = icmp ugt i32 %72, 5
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %72) #15
  br label %132

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 41
  store i32 %72, ptr %76, align 4
  %77 = tail call fastcc i32 @__lpuart_enable_clks(ptr noundef nonnull %6, i1 noundef zeroext true)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %132

79:                                               ; preds = %75
  %80 = load i32, ptr %28, align 4
  %81 = icmp eq i32 %80, 4
  %82 = select i1 %81, ptr %54, ptr %49
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 @clk_get_rate(ptr noundef %83) #14
  %85 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 22
  store i32 %84, ptr %85, align 4
  %86 = load i32, ptr %76, align 4
  %87 = getelementptr [6 x ptr], ptr @lpuart_ports, i32 0, i32 %86
  store ptr %6, ptr %87, align 4
  %88 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %88, align 8
  %89 = load i8, ptr %35, align 2
  switch i8 %89, label %90 [
    i8 6, label %91
    i8 3, label %91
  ]

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %79, %79
  %92 = phi ptr [ @lpuart_console, %90 ], [ @lpuart32_console, %79 ], [ @lpuart32_console, %79 ]
  %93 = phi ptr [ @lpuart_int, %90 ], [ @lpuart32_int, %79 ], [ @lpuart32_int, %79 ]
  store ptr %92, ptr getelementptr inbounds (%struct.uart_driver, ptr @lpuart_reg, i32 0, i32 6), align 4
  %94 = load i32, ptr %32, align 4
  %95 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %94, ptr noundef nonnull %93, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %6) #14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %91
  %98 = tail call i32 @uart_add_one_port(ptr noundef nonnull @lpuart_reg, ptr noundef nonnull %6) #14
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %128

100:                                              ; preds = %97
  %101 = tail call fastcc i32 @lpuart_global_reset(ptr noundef nonnull %6)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %100
  %104 = tail call i32 @uart_get_rs485_mode(ptr noundef nonnull %6) #14
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 56
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #15
  br label %112

112:                                              ; preds = %111, %106
  %113 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 56, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 56, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116, %112
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #15
  br label %121

121:                                              ; preds = %120, %116
  %122 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 18
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 %123(ptr noundef nonnull %6, ptr noundef %107) #14
  br label %140

125:                                              ; preds = %103, %100
  %126 = phi i32 [ %101, %100 ], [ %104, %103 ]
  %127 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @lpuart_reg, ptr noundef nonnull %6) #14
  br label %128

128:                                              ; preds = %125, %97, %91
  %129 = phi i32 [ %95, %91 ], [ %98, %97 ], [ %126, %125 ]
  %130 = load ptr, ptr %54, align 4
  tail call void @clk_disable(ptr noundef %130) #14
  tail call void @clk_unprepare(ptr noundef %130) #14
  %131 = load ptr, ptr %49, align 4
  tail call void @clk_disable(ptr noundef %131) #14
  tail call void @clk_unprepare(ptr noundef %131) #14
  br label %132

132:                                              ; preds = %128, %75, %74
  %133 = phi i32 [ -22, %74 ], [ %77, %75 ], [ %129, %128 ]
  %134 = getelementptr inbounds %struct.lpuart_port, ptr %6, i32 0, i32 25
  %135 = load i8, ptr %134, align 4, !range !22
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 41
  %139 = load i32, ptr %138, align 4
  tail call void @ida_free(ptr noundef nonnull @fsl_lpuart_ida, i32 noundef %139) #14
  br label %140

140:                                              ; preds = %137, %132, %121, %68, %60, %51, %15, %13, %1
  %141 = phi i32 [ %14, %13 ], [ %52, %51 ], [ %61, %60 ], [ %66, %68 ], [ 0, %121 ], [ -12, %1 ], [ %29, %15 ], [ %133, %137 ], [ %133, %132 ]
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lpuart_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @lpuart_reg, ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 25
  %6 = load i8, ptr %5, align 4, !range !22
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 41
  %10 = load i32, ptr %9, align 4
  tail call void @ida_free(ptr noundef nonnull @fsl_lpuart_ida, i32 noundef %10) #14
  br label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #14
  tail call void @clk_unprepare(ptr noundef %13) #14
  %14 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #14
  tail call void @clk_unprepare(ptr noundef %15) #14
  %16 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  tail call void @dma_release_channel(ptr noundef nonnull %17) #14
  br label %20

20:                                               ; preds = %19, %11
  %21 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @dma_release_channel(ptr noundef nonnull %22) #14
  br label %25

25:                                               ; preds = %24, %20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lpuart32_config_rs485(ptr nocapture noundef %0, ptr nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %4 = load i8, ptr %3, align 2
  switch i8 %4, label %19 [
    i8 3, label %5
    i8 6, label %10
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #14, !srcloc !8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %16

16:                                               ; preds = %10, %5
  %17 = phi i32 [ %9, %5 ], [ %15, %10 ]
  %18 = load i8, ptr %3, align 2
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i8 [ %18, %16 ], [ %4, %2 ]
  %21 = phi i32 [ %17, %16 ], [ 0, %2 ]
  %22 = and i32 %21, -7
  switch i8 %20, label %32 [
    i8 3, label %23
    i8 6, label %27
  ]

23:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %22) #14, !srcloc !12
  br label %32

27:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %28 = tail call i32 @llvm.bswap.i32(i32 %22) #14
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #14, !srcloc !12
  br label %32

32:                                               ; preds = %27, %23, %19
  %33 = getelementptr inbounds %struct.serial_rs485, ptr %1, i32 0, i32 1
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.serial_rs485, ptr %1, i32 0, i32 2
  store i32 0, ptr %34, align 4
  %35 = load i32, ptr %1, align 4
  %36 = and i32 %35, -17
  store i32 %36, ptr %1, align 4
  %37 = and i32 %35, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %32
  %40 = or i32 %22, 2
  %41 = and i32 %35, 6
  %42 = icmp eq i32 %41, 0
  %43 = or i32 %36, 2
  %44 = select i1 %42, i32 %43, i32 %36
  %45 = and i32 %44, 6
  %46 = icmp eq i32 %45, 6
  %47 = and i32 %44, 2
  %48 = select i1 %46, i32 %47, i32 %45
  %49 = or i1 %42, %46
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = and i32 %44, -21
  %52 = select i1 %46, i32 %51, i32 %44
  store i32 %52, ptr %1, align 4
  br label %53

53:                                               ; preds = %50, %39
  %54 = icmp eq i32 %48, 4
  %55 = or i32 %21, 6
  %56 = select i1 %54, i32 %55, i32 %40
  br label %57

57:                                               ; preds = %53, %32
  %58 = phi i32 [ %22, %32 ], [ %56, %53 ]
  %59 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %59, ptr noundef align 4 dereferenceable(32) %1, i32 32, i1 false)
  %60 = load i8, ptr %3, align 2
  switch i8 %60, label %70 [
    i8 3, label %61
    i8 6, label %65
  ]

61:                                               ; preds = %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %62 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %58) #14, !srcloc !12
  br label %70

65:                                               ; preds = %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %66 = tail call i32 @llvm.bswap.i32(i32 %58) #14
  %67 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %66) #14, !srcloc !12
  br label %70

70:                                               ; preds = %65, %61, %57
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lpuart_config_rs485(ptr nocapture noundef %0, ptr nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 13
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !23
  %7 = and i8 %6, -7
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !24
  tail call void @arm_heavy_mb() #14
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %7) #14, !srcloc !19
  %10 = getelementptr inbounds %struct.serial_rs485, ptr %1, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.serial_rs485, ptr %1, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = load i32, ptr %1, align 4
  %13 = and i32 %12, -17
  store i32 %13, ptr %1, align 4
  %14 = and i32 %12, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %2
  %17 = or i8 %7, 2
  %18 = and i32 %12, 6
  %19 = icmp eq i32 %18, 0
  %20 = or i32 %13, 2
  %21 = select i1 %19, i32 %20, i32 %13
  %22 = and i32 %21, 6
  %23 = icmp eq i32 %22, 6
  %24 = and i32 %21, 2
  %25 = select i1 %23, i32 %24, i32 %22
  %26 = or i1 %19, %23
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = and i32 %21, -21
  %29 = select i1 %23, i32 %28, i32 %21
  store i32 %29, ptr %1, align 4
  br label %30

30:                                               ; preds = %27, %16
  %31 = icmp eq i32 %25, 4
  %32 = or i8 %6, 6
  %33 = select i1 %31, i8 %32, i8 %17
  br label %34

34:                                               ; preds = %30, %2
  %35 = phi i8 [ %7, %2 ], [ %33, %30 ]
  %36 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %36, ptr noundef align 4 dereferenceable(32) %1, i32 32, i1 false)
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !25
  tail call void @arm_heavy_mb() #14
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr i8, ptr %37, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 %35) #14, !srcloc !19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__lpuart_enable_clks(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #3 {
  br i1 %1, label %3, label %20

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = tail call i32 @clk_enable(ptr noundef %5) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_prepare(ptr noundef %13) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = tail call i32 @clk_enable(ptr noundef %13) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  tail call void @clk_unprepare(ptr noundef %13) #14
  br label %24

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %22) #14
  tail call void @clk_unprepare(ptr noundef %22) #14
  %23 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 2
  br label %24

24:                                               ; preds = %20, %19, %11
  %25 = phi ptr [ %23, %20 ], [ %4, %11 ], [ %4, %19 ]
  %26 = phi i32 [ 0, %20 ], [ %14, %11 ], [ %17, %19 ]
  %27 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %27) #14
  br label %28

28:                                               ; preds = %24, %8
  %29 = phi ptr [ %5, %8 ], [ %27, %24 ]
  %30 = phi i32 [ %9, %8 ], [ %26, %24 ]
  tail call void @clk_unprepare(ptr noundef %29) #14
  br label %31

31:                                               ; preds = %28, %16, %3
  %32 = phi i32 [ 0, %16 ], [ %6, %3 ], [ %30, %28 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lpuart32_int(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 26
  %4 = load i8, ptr %3, align 2
  switch i8 %4, label %19 [
    i8 3, label %5
    i8 6, label %10
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #14, !srcloc !8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %16

16:                                               ; preds = %10, %5
  %17 = phi i32 [ %9, %5 ], [ %15, %10 ]
  %18 = load i8, ptr %3, align 2
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i8 [ %18, %16 ], [ %4, %2 ]
  %21 = phi i32 [ %17, %16 ], [ 0, %2 ]
  switch i8 %20, label %33 [
    i8 3, label %22
    i8 6, label %27
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 28
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %33

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #14, !srcloc !8
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %33

33:                                               ; preds = %27, %22, %19
  %34 = phi i32 [ %32, %27 ], [ %26, %22 ], [ 0, %19 ]
  %35 = and i32 %21, 2097152
  %36 = icmp ne i32 %35, 0
  %37 = icmp ugt i32 %34, 16777215
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %252

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 7
  %41 = load i8, ptr %40, align 1, !range !22
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %252

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %45 = load ptr, ptr %44, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #14
  %46 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %47 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 4
  %48 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 17
  %49 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 48
  %50 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %51 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %52 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 46
  %53 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 33
  %54 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 47
  %55 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 8
  %56 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 9
  %57 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 6
  %58 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 7
  %59 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 29
  %60 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 28
  %61 = getelementptr inbounds %struct.tty_bufhead, ptr %45, i32 0, i32 8
  br label %62

62:                                               ; preds = %188, %43
  %63 = phi i32 [ %189, %188 ], [ 0, %43 ]
  br label %64

64:                                               ; preds = %238, %62
  %65 = load i8, ptr %3, align 2
  switch i8 %65, label %81 [
    i8 3, label %66
    i8 6, label %70
  ]

66:                                               ; preds = %64
  %67 = load ptr, ptr %46, align 4
  %68 = getelementptr i8, ptr %67, i32 24
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %75

70:                                               ; preds = %64
  %71 = load ptr, ptr %46, align 4
  %72 = getelementptr i8, ptr %71, i32 24
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #14, !srcloc !8
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %75

75:                                               ; preds = %70, %66
  %76 = phi i32 [ %74, %70 ], [ %69, %66 ]
  %77 = and i32 %76, 4194304
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %239

79:                                               ; preds = %75
  %80 = load i8, ptr %3, align 2
  br label %81

81:                                               ; preds = %79, %64
  %82 = phi i8 [ %80, %79 ], [ %65, %64 ]
  %83 = load i32, ptr %47, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %47, align 4
  switch i8 %82, label %94 [
    i8 3, label %85
    i8 6, label %89
  ]

85:                                               ; preds = %81
  %86 = load ptr, ptr %46, align 4
  %87 = getelementptr i8, ptr %86, i32 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %94

89:                                               ; preds = %81
  %90 = load ptr, ptr %46, align 4
  %91 = getelementptr i8, ptr %90, i32 4
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #14, !srcloc !8
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %94

94:                                               ; preds = %89, %85, %81
  %95 = phi i32 [ %93, %89 ], [ %88, %85 ], [ 0, %81 ]
  %96 = load i8, ptr %3, align 2
  switch i8 %96, label %106 [
    i8 3, label %97
    i8 6, label %101
  ]

97:                                               ; preds = %94
  %98 = load ptr, ptr %46, align 4
  %99 = getelementptr i8, ptr %98, i32 12
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %106

101:                                              ; preds = %94
  %102 = load ptr, ptr %46, align 4
  %103 = getelementptr i8, ptr %102, i32 12
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #14, !srcloc !8
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %106

106:                                              ; preds = %101, %97, %94
  %107 = phi i32 [ %105, %101 ], [ %100, %97 ], [ 0, %94 ]
  %108 = and i32 %107, 1023
  %109 = and i32 %95, 131072
  %110 = icmp ne i32 %109, 0
  %111 = icmp eq i32 %108, 0
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %113, label %144

113:                                              ; preds = %106
  %114 = load ptr, ptr %44, align 4
  %115 = load ptr, ptr %48, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  tail call void %115(ptr noundef %1) #14
  br label %118

118:                                              ; preds = %117, %113
  %119 = load i8, ptr %49, align 4
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %134, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr %50, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %134, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.console, ptr %122, i32 0, i32 9
  %126 = load i16, ptr %125, align 2
  %127 = sext i16 %126 to i32
  %128 = load i32, ptr %51, align 4
  %129 = icmp eq i32 %128, %127
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i32, ptr %52, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %130
  store i32 0, ptr %52, align 4
  br label %134

134:                                              ; preds = %133, %124, %121, %118
  %135 = load i32, ptr %53, align 4
  %136 = and i32 %135, 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.tty_port, ptr %114, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  tail call void @do_SAK(ptr noundef %140) #14
  br label %144

141:                                              ; preds = %130
  %142 = load volatile i32, ptr @jiffies, align 64
  %143 = add i32 %142, 500
  store i32 %143, ptr %52, align 4
  br label %238

144:                                              ; preds = %138, %134, %106
  %145 = load i32, ptr %52, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %144
  br i1 %111, label %157, label %148

148:                                              ; preds = %147
  %149 = load volatile i32, ptr @jiffies, align 64
  %150 = sub i32 %149, %145
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = tail call i32 @sysrq_mask() #14
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %1, i32 noundef %108) #14
  br i1 %156, label %238, label %157

157:                                              ; preds = %155, %148, %147
  store i32 0, ptr %52, align 4
  br label %159

158:                                              ; preds = %152
  store i32 %108, ptr %54, align 4
  store i32 0, ptr %52, align 4
  br label %238

159:                                              ; preds = %157, %144
  %160 = and i32 %95, 720896
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = trunc i32 %107 to i8
  %164 = load ptr, ptr %61, align 4
  %165 = getelementptr inbounds %struct.tty_buffer, ptr %164, i32 0, i32 5
  %166 = load i32, ptr %165, align 4
  %167 = and i32 %166, 1
  br label %212

168:                                              ; preds = %159
  %169 = and i32 %95, 65536
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %168
  %172 = select i1 %112, ptr %56, ptr %55
  br label %174

173:                                              ; preds = %168
  br i1 %110, label %174, label %178

174:                                              ; preds = %173, %171
  %175 = phi ptr [ %172, %171 ], [ %57, %173 ]
  %176 = load i32, ptr %175, align 4
  %177 = add i32 %176, 1
  store i32 %177, ptr %175, align 4
  br label %178

178:                                              ; preds = %174, %173
  %179 = and i32 %95, 524288
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load i32, ptr %58, align 4
  %183 = add i32 %182, 1
  store i32 %183, ptr %58, align 4
  br label %184

184:                                              ; preds = %181, %178
  %185 = load i32, ptr %59, align 4
  %186 = and i32 %185, %95
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %184
  %189 = add nuw nsw i32 %63, 1
  %190 = icmp eq i32 %189, 101
  br i1 %190, label %239, label %62

191:                                              ; preds = %184
  %192 = load i32, ptr %60, align 4
  %193 = and i32 %192, %95
  %194 = and i32 %193, 65536
  %195 = icmp eq i32 %194, 0
  %196 = select i1 %112, i8 1, i8 3
  %197 = lshr i32 %193, 16
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 2
  %200 = select i1 %195, i8 %199, i8 %196
  %201 = and i32 %193, 524288
  %202 = icmp eq i32 %201, 0
  %203 = select i1 %202, i8 %200, i8 4
  %204 = trunc i32 %107 to i8
  %205 = load ptr, ptr %61, align 4
  %206 = getelementptr inbounds %struct.tty_buffer, ptr %205, i32 0, i32 5
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 1
  %209 = icmp ne i32 %208, 0
  %210 = icmp ne i8 %203, 0
  %211 = and i1 %209, %210
  br i1 %211, label %234, label %212

212:                                              ; preds = %191, %162
  %213 = phi i32 [ %167, %162 ], [ %208, %191 ]
  %214 = phi ptr [ %164, %162 ], [ %205, %191 ]
  %215 = phi i8 [ %163, %162 ], [ %204, %191 ]
  %216 = phi i8 [ 0, %162 ], [ %203, %191 ]
  %217 = getelementptr inbounds %struct.tty_buffer, ptr %214, i32 0, i32 1
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr inbounds %struct.tty_buffer, ptr %214, i32 0, i32 2
  %220 = load i32, ptr %219, align 4
  %221 = icmp slt i32 %218, %220
  br i1 %221, label %222, label %234

222:                                              ; preds = %212
  %223 = icmp eq i32 %213, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.tty_buffer, ptr %214, i32 0, i32 6
  %226 = getelementptr i8, ptr %225, i32 %218
  %227 = getelementptr i8, ptr %226, i32 %220
  store i8 %216, ptr %227, align 1
  %228 = load i32, ptr %217, align 4
  br label %229

229:                                              ; preds = %224, %222
  %230 = phi i32 [ %228, %224 ], [ %218, %222 ]
  %231 = add i32 %230, 1
  store i32 %231, ptr %217, align 4
  %232 = getelementptr inbounds %struct.tty_buffer, ptr %214, i32 0, i32 6
  %233 = getelementptr i8, ptr %232, i32 %230
  store i8 %215, ptr %233, align 1
  br label %238

234:                                              ; preds = %212, %191
  %235 = phi i8 [ %215, %212 ], [ %204, %191 ]
  %236 = phi i8 [ %216, %212 ], [ %203, %191 ]
  %237 = tail call i32 @__tty_insert_flip_char(ptr noundef %45, i8 noundef zeroext %235, i8 noundef zeroext %236) #14
  br label %238

238:                                              ; preds = %234, %229, %158, %155, %141
  br label %64

239:                                              ; preds = %188, %75
  %240 = load i8, ptr %49, align 4
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  %243 = load i16, ptr %1, align 4
  %244 = add i16 %243, 1
  store i16 %244, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !29
  br label %251

245:                                              ; preds = %239
  %246 = load i32, ptr %54, align 4
  store i32 0, ptr %54, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  %247 = load i16, ptr %1, align 4
  %248 = add i16 %247, 1
  store i16 %248, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !29
  %249 = icmp eq i32 %246, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %245
  tail call void @handle_sysrq(i32 noundef %246) #14
  br label %251

251:                                              ; preds = %250, %245, %242
  tail call void @tty_flip_buffer_push(ptr noundef %45) #14
  br label %252

252:                                              ; preds = %251, %39, %33
  %253 = and i32 %21, 8388608
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %262, label %255

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 6
  %257 = load i8, ptr %256, align 4, !range !22
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  tail call void @_raw_spin_lock(ptr noundef %1) #14
  tail call fastcc void @lpuart32_transmit_buffer(ptr noundef %1) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  %260 = load i16, ptr %1, align 4
  %261 = add i16 %260, 1
  store i16 %261, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !29
  br label %262

262:                                              ; preds = %259, %255, %252
  %263 = load i8, ptr %3, align 2
  switch i8 %263, label %273 [
    i8 3, label %264
    i8 6, label %268
  ]

264:                                              ; preds = %262
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %265 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr i8, ptr %266, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %267, i32 %21) #14, !srcloc !12
  br label %273

268:                                              ; preds = %262
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %269 = tail call i32 @llvm.bswap.i32(i32 %21) #14
  %270 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %271 = load ptr, ptr %270, align 4
  %272 = getelementptr i8, ptr %271, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 %269) #14, !srcloc !12
  br label %273

273:                                              ; preds = %268, %264, %262
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lpuart_int(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !30
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %58, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 7
  %12 = load i8, ptr %11, align 1, !range !22
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %58, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 7
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !31
  %18 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  tail call void %21(ptr noundef %1) #14
  br label %24

24:                                               ; preds = %23, %14
  %25 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 48
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.console, ptr %30, i32 0, i32 9
  %34 = load i16, ptr %33, align 2
  %35 = sext i16 %34 to i32
  %36 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %35
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 46
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = add i32 %44, 500
  store i32 %45, ptr %40, align 4
  br label %55

46:                                               ; preds = %39
  store i32 0, ptr %40, align 4
  br label %47

47:                                               ; preds = %46, %32, %28, %24
  %48 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 33
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.tty_port, ptr %19, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  tail call void @do_SAK(ptr noundef %54) #14
  br label %55

55:                                               ; preds = %52, %47, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !32
  tail call void @arm_heavy_mb() #14
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr i8, ptr %56, i32 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %57, i8 64) #14, !srcloc !19
  br label %227

58:                                               ; preds = %10, %2
  %59 = and i32 %7, 32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %217, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 7
  %63 = load i8, ptr %62, align 1, !range !22
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %217

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %67 = load ptr, ptr %66, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #14
  %68 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 4
  %69 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 46
  %70 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 47
  %71 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 8
  %72 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 6
  %73 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 29
  %74 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 28
  %75 = getelementptr inbounds %struct.tty_bufhead, ptr %67, i32 0, i32 8
  br label %76

76:                                               ; preds = %142, %65
  %77 = phi i32 [ 0, %65 ], [ %138, %142 ]
  %78 = phi i32 [ 0, %65 ], [ %143, %142 ]
  br label %79

79:                                               ; preds = %190, %76
  %80 = phi i32 [ %77, %76 ], [ %191, %190 ]
  br label %81

81:                                               ; preds = %113, %79
  %82 = load ptr, ptr %3, align 4
  %83 = getelementptr i8, ptr %82, i32 18
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %83) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !33
  %85 = and i8 %84, 64
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %192

87:                                               ; preds = %81
  %88 = load i32, ptr %68, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %68, align 4
  %90 = load ptr, ptr %3, align 4
  %91 = getelementptr i8, ptr %90, i32 4
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %91) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !34
  %93 = load ptr, ptr %3, align 4
  %94 = getelementptr i8, ptr %93, i32 7
  %95 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %94) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !35
  %96 = zext i8 %95 to i32
  %97 = load i32, ptr %69, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %116, label %99

99:                                               ; preds = %87
  %100 = icmp eq i8 %95, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %99
  %102 = load volatile i32, ptr @jiffies, align 64
  %103 = sub i32 %102, %97
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = tail call i32 @sysrq_mask() #14
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  store i32 %96, ptr %70, align 4
  br label %111

109:                                              ; preds = %105
  %110 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %1, i32 noundef %96) #14
  br i1 %110, label %113, label %111

111:                                              ; preds = %109, %108, %101, %99
  %112 = phi i32 [ 1, %108 ], [ 0, %109 ], [ 0, %101 ], [ 0, %99 ]
  store i32 0, ptr %69, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ 1, %109 ], [ %112, %111 ]
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %81

116:                                              ; preds = %113, %87
  %117 = zext i8 %92 to i32
  %118 = and i32 %117, 11
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load ptr, ptr %75, align 4
  %122 = getelementptr inbounds %struct.tty_buffer, ptr %121, i32 0, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, 1
  br label %164

125:                                              ; preds = %116
  %126 = and i32 %117, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = and i32 %117, 2
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %128, %125
  %132 = phi ptr [ %71, %125 ], [ %72, %128 ]
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %132, align 4
  br label %135

135:                                              ; preds = %131, %128
  %136 = lshr i32 %117, 3
  %137 = and i32 %136, 1
  %138 = add i32 %137, %80
  %139 = load i32, ptr %73, align 4
  %140 = and i32 %139, %117
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %135
  %143 = add nuw nsw i32 %78, 1
  %144 = icmp eq i32 %143, 101
  br i1 %144, label %192, label %76

145:                                              ; preds = %135
  %146 = load i32, ptr %74, align 4
  %147 = trunc i32 %146 to i8
  %148 = and i8 %92, %147
  %149 = zext i8 %148 to i32
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  %152 = and i8 %148, 2
  %153 = select i1 %151, i8 %152, i8 3
  %154 = and i32 %149, 8
  %155 = icmp eq i32 %154, 0
  %156 = select i1 %155, i8 %153, i8 4
  store i32 0, ptr %69, align 4
  %157 = load ptr, ptr %75, align 4
  %158 = getelementptr inbounds %struct.tty_buffer, ptr %157, i32 0, i32 5
  %159 = load i32, ptr %158, align 4
  %160 = and i32 %159, 1
  %161 = icmp ne i32 %160, 0
  %162 = icmp ne i8 %156, 0
  %163 = and i1 %161, %162
  br i1 %163, label %186, label %164

164:                                              ; preds = %145, %120
  %165 = phi i32 [ %124, %120 ], [ %160, %145 ]
  %166 = phi ptr [ %121, %120 ], [ %157, %145 ]
  %167 = phi i8 [ 0, %120 ], [ %156, %145 ]
  %168 = phi i32 [ %80, %120 ], [ %138, %145 ]
  %169 = getelementptr inbounds %struct.tty_buffer, ptr %166, i32 0, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr inbounds %struct.tty_buffer, ptr %166, i32 0, i32 2
  %172 = load i32, ptr %171, align 4
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %164
  %175 = icmp eq i32 %165, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %174
  %177 = getelementptr inbounds %struct.tty_buffer, ptr %166, i32 0, i32 6
  %178 = getelementptr i8, ptr %177, i32 %170
  %179 = getelementptr i8, ptr %178, i32 %172
  store i8 %167, ptr %179, align 1
  %180 = load i32, ptr %169, align 4
  br label %181

181:                                              ; preds = %176, %174
  %182 = phi i32 [ %180, %176 ], [ %170, %174 ]
  %183 = add i32 %182, 1
  store i32 %183, ptr %169, align 4
  %184 = getelementptr inbounds %struct.tty_buffer, ptr %166, i32 0, i32 6
  %185 = getelementptr i8, ptr %184, i32 %182
  store i8 %95, ptr %185, align 1
  br label %190

186:                                              ; preds = %164, %145
  %187 = phi i8 [ %167, %164 ], [ %156, %145 ]
  %188 = phi i32 [ %168, %164 ], [ %138, %145 ]
  %189 = tail call i32 @__tty_insert_flip_char(ptr noundef %67, i8 noundef zeroext %95, i8 noundef zeroext %187) #14
  br label %190

190:                                              ; preds = %186, %181
  %191 = phi i32 [ %168, %181 ], [ %188, %186 ]
  br label %79

192:                                              ; preds = %142, %81
  %193 = phi i32 [ %80, %81 ], [ %138, %142 ]
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 7
  %197 = load i32, ptr %196, align 4
  %198 = add i32 %197, %193
  store i32 %198, ptr %196, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !36
  tail call void @arm_heavy_mb() #14
  %199 = load ptr, ptr %3, align 4
  %200 = getelementptr i8, ptr %199, i32 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %200, i8 64) #14, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !37
  tail call void @arm_heavy_mb() #14
  %201 = load ptr, ptr %3, align 4
  %202 = getelementptr i8, ptr %201, i32 18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %202, i8 4) #14, !srcloc !19
  br label %203

203:                                              ; preds = %195, %192
  %204 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 48
  %205 = load i8, ptr %204, align 4
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  %208 = load i16, ptr %1, align 4
  %209 = add i16 %208, 1
  store i16 %209, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !29
  br label %216

210:                                              ; preds = %203
  %211 = load i32, ptr %70, align 4
  store i32 0, ptr %70, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  %212 = load i16, ptr %1, align 4
  %213 = add i16 %212, 1
  store i16 %213, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !29
  %214 = icmp eq i32 %211, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %210
  tail call void @handle_sysrq(i32 noundef %211) #14
  br label %216

216:                                              ; preds = %215, %210, %207
  tail call void @tty_flip_buffer_push(ptr noundef %67) #14
  br label %217

217:                                              ; preds = %216, %61, %58
  %218 = and i32 %7, 128
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %227, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 6
  %222 = load i8, ptr %221, align 4, !range !22
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %220
  tail call void @_raw_spin_lock(ptr noundef %1) #14
  tail call fastcc void @lpuart_transmit_buffer(ptr noundef %1) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  %225 = load i16, ptr %1, align 4
  %226 = add i16 %225, 1
  store i16 %226, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !29
  br label %227

227:                                              ; preds = %224, %220, %217, %55
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lpuart_global_reset(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 9
  %7 = load i16, ptr %6, align 2
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %8
  br i1 %11, label %36, label %12

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_prepare(ptr noundef %14) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = tail call i32 @clk_enable(ptr noundef %14) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef %14) #14
  br label %21

21:                                               ; preds = %20, %12
  %22 = phi i32 [ %18, %20 ], [ %15, %12 ]
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.24, i32 noundef %22) #15
  br label %36

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -3
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 -8
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !38
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 2) #14, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !39
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #14, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #14
  br label %34

34:                                               ; preds = %30, %25
  %35 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %35) #14
  tail call void @clk_unprepare(ptr noundef %35) #14
  br label %36

36:                                               ; preds = %34, %21, %5
  %37 = phi i32 [ %22, %21 ], [ 0, %34 ], [ 0, %5 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_rs485_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lpuart32_tx_empty(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %3 = load i8, ptr %2, align 2
  switch i8 %3, label %18 [
    i8 3, label %4
    i8 6, label %9
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #14, !srcloc !8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %15

15:                                               ; preds = %9, %4
  %16 = phi i32 [ %8, %4 ], [ %14, %9 ]
  %17 = load i8, ptr %2, align 2
  br label %18

18:                                               ; preds = %15, %1
  %19 = phi i8 [ %17, %15 ], [ %3, %1 ]
  %20 = phi i32 [ %16, %15 ], [ 0, %1 ]
  switch i8 %19, label %32 [
    i8 3, label %21
    i8 6, label %26
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %32

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 24
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #14, !srcloc !8
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %32

32:                                               ; preds = %26, %21, %18
  %33 = phi i32 [ %31, %26 ], [ %25, %21 ], [ 0, %18 ]
  %34 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 16
  %35 = load i8, ptr %34, align 4, !range !22
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = and i32 %20, 4194304
  %39 = icmp ne i32 %38, 0
  %40 = and i32 %33, 8388608
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %37, %32
  %45 = phi i32 [ 0, %32 ], [ %43, %37 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart32_set_mctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %4 = load i8, ptr %3, align 2
  switch i8 %4, label %19 [
    i8 3, label %5
    i8 6, label %10
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #14, !srcloc !8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %16

16:                                               ; preds = %10, %5
  %17 = phi i32 [ %9, %5 ], [ %15, %10 ]
  %18 = load i8, ptr %3, align 2
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i8 [ %18, %16 ], [ %4, %2 ]
  %21 = phi i32 [ %17, %16 ], [ 0, %2 ]
  %22 = and i32 %21, -161
  %23 = lshr i32 %1, 8
  %24 = and i32 %23, 128
  %25 = or i32 %22, %24
  switch i8 %20, label %35 [
    i8 3, label %26
    i8 6, label %30
  ]

26:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %25) #14, !srcloc !12
  br label %35

30:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %31 = tail call i32 @llvm.bswap.i32(i32 %25) #14
  %32 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #14, !srcloc !12
  br label %35

35:                                               ; preds = %30, %26, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lpuart32_get_mctrl(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %3 = load i8, ptr %2, align 2
  switch i8 %3, label %15 [
    i8 3, label %4
    i8 6, label %9
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #14, !srcloc !8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %15

15:                                               ; preds = %9, %4, %1
  %16 = phi i32 [ %14, %9 ], [ %8, %4 ], [ 0, %1 ]
  %17 = and i32 %16, 128
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 352, i32 33120
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart32_stop_tx(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %3 = load i8, ptr %2, align 2
  switch i8 %3, label %18 [
    i8 3, label %4
    i8 6, label %9
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #14, !srcloc !8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %15

15:                                               ; preds = %9, %4
  %16 = phi i32 [ %8, %4 ], [ %14, %9 ]
  %17 = load i8, ptr %2, align 2
  br label %18

18:                                               ; preds = %15, %1
  %19 = phi i8 [ %17, %15 ], [ %3, %1 ]
  %20 = phi i32 [ %16, %15 ], [ 0, %1 ]
  %21 = and i32 %20, -12582913
  switch i8 %19, label %31 [
    i8 3, label %22
    i8 6, label %26
  ]

22:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %21) #14, !srcloc !12
  br label %31

26:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %27 = tail call i32 @llvm.bswap.i32(i32 %21) #14
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %27) #14, !srcloc !12
  br label %31

31:                                               ; preds = %26, %22, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart32_start_tx(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 4, !range !22
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uart_state, ptr %7, i32 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uart_state, ptr %7, i32 0, i32 2, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %74, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.tty_port, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tty_struct, ptr %15, i32 0, i32 19, i32 1
  %19 = load i8, ptr %18, align 4, !range !22
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %21
  tail call fastcc void @lpuart_dma_tx(ptr noundef %0)
  br label %74

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %28 = load i8, ptr %27, align 2
  switch i8 %28, label %43 [
    i8 3, label %29
    i8 6, label %34
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %40

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #14, !srcloc !8
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %40

40:                                               ; preds = %34, %29
  %41 = phi i32 [ %33, %29 ], [ %39, %34 ]
  %42 = load i8, ptr %27, align 2
  br label %43

43:                                               ; preds = %40, %26
  %44 = phi i8 [ %42, %40 ], [ %28, %26 ]
  %45 = phi i32 [ %41, %40 ], [ 0, %26 ]
  %46 = or i32 %45, 8388608
  switch i8 %44, label %56 [
    i8 3, label %47
    i8 6, label %51
  ]

47:                                               ; preds = %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %48 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %46) #14, !srcloc !12
  br label %56

51:                                               ; preds = %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %52 = tail call i32 @llvm.bswap.i32(i32 %46) #14
  %53 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %52) #14, !srcloc !12
  br label %56

56:                                               ; preds = %51, %47, %43
  %57 = load i8, ptr %27, align 2
  switch i8 %57, label %74 [
    i8 3, label %58
    i8 6, label %63
  ]

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %69

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #14, !srcloc !8
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %69

69:                                               ; preds = %63, %58
  %70 = phi i32 [ %68, %63 ], [ %62, %58 ]
  %71 = and i32 %70, 8388608
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  tail call fastcc void @lpuart32_transmit_buffer(ptr noundef %0)
  br label %74

74:                                               ; preds = %73, %69, %56, %25, %21, %17, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart32_stop_rx(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %3 = load i8, ptr %2, align 2
  switch i8 %3, label %18 [
    i8 3, label %4
    i8 6, label %9
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #14, !srcloc !8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %15

15:                                               ; preds = %9, %4
  %16 = phi i32 [ %8, %4 ], [ %14, %9 ]
  %17 = load i8, ptr %2, align 2
  br label %18

18:                                               ; preds = %15, %1
  %19 = phi i8 [ %17, %15 ], [ %3, %1 ]
  %20 = phi i32 [ %16, %15 ], [ 0, %1 ]
  %21 = and i32 %20, -262145
  switch i8 %19, label %31 [
    i8 3, label %22
    i8 6, label %26
  ]

22:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %21) #14, !srcloc !12
  br label %31

26:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %27 = tail call i32 @llvm.bswap.i32(i32 %21) #14
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %27) #14, !srcloc !12
  br label %31

31:                                               ; preds = %26, %22, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart32_break_ctl(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %4 = load i8, ptr %3, align 2
  switch i8 %4, label %19 [
    i8 3, label %5
    i8 6, label %10
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #14, !srcloc !8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %16

16:                                               ; preds = %10, %5
  %17 = phi i32 [ %9, %5 ], [ %15, %10 ]
  %18 = load i8, ptr %3, align 2
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i8 [ %18, %16 ], [ %4, %2 ]
  %21 = phi i32 [ %17, %16 ], [ 0, %2 ]
  %22 = and i32 %21, -65537
  %23 = icmp eq i32 %1, 0
  %24 = select i1 %23, i32 0, i32 65536
  %25 = or i32 %22, %24
  switch i8 %20, label %35 [
    i8 3, label %26
    i8 6, label %30
  ]

26:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %25) #14, !srcloc !12
  br label %35

30:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %31 = tail call i32 @llvm.bswap.i32(i32 %25) #14
  %32 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #14, !srcloc !12
  br label %35

35:                                               ; preds = %30, %26, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lpuart32_startup(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %3 = load i8, ptr %2, align 2
  switch i8 %3, label %15 [
    i8 3, label %4
    i8 6, label %9
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #14, !srcloc !8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %15

15:                                               ; preds = %9, %4, %1
  %16 = phi i32 [ %14, %9 ], [ %8, %4 ], [ 0, %1 ]
  %17 = lshr i32 %16, 4
  %18 = and i32 %17, 7
  %19 = icmp eq i32 %18, 0
  %20 = shl nuw nsw i32 2, %18
  %21 = select i1 %19, i32 1, i32 %20
  %22 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 4
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  store i32 %21, ptr %23, align 4
  %24 = and i32 %16, 7
  %25 = icmp eq i32 %24, 0
  %26 = shl nuw nsw i32 2, %24
  %27 = select i1 %25, i32 1, i32 %26
  %28 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 5
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -1
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  store i32 16, ptr %28, align 4
  store i32 16, ptr %22, align 4
  store i32 16, ptr %23, align 4
  br label %34

34:                                               ; preds = %33, %15
  %35 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %36 = load ptr, ptr %35, align 4
  %37 = tail call ptr @dma_request_chan(ptr noundef %36, ptr noundef nonnull @.str.13) #14
  %38 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 8
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i1, ptr @lpuart_request_dma.__print_once, align 1
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  store i1 true, ptr @lpuart_request_dma.__print_once, align 1
  br label %43

43:                                               ; preds = %42, %40
  store ptr null, ptr %38, align 4
  br label %44

44:                                               ; preds = %43, %34
  %45 = load ptr, ptr %35, align 4
  %46 = tail call ptr @dma_request_chan(ptr noundef %45, ptr noundef nonnull @.str.14) #14
  %47 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 9
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i1, ptr @lpuart_request_dma.__print_once.15, align 1
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  store i1 true, ptr @lpuart_request_dma.__print_once.15, align 1
  br label %52

52:                                               ; preds = %51, %49
  store ptr null, ptr %47, align 4
  br label %53

53:                                               ; preds = %52, %44
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #14
  tail call fastcc void @lpuart32_setup_watermark_enable(ptr noundef %0)
  tail call fastcc void @lpuart_rx_dma_startup(ptr noundef %0)
  tail call fastcc void @lpuart_tx_dma_startup(ptr noundef %0)
  tail call fastcc void @lpuart32_configure(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %54) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart32_shutdown(ptr noundef %0) #3 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %4 = load i8, ptr %3, align 2
  switch i8 %4, label %19 [
    i8 3, label %5
    i8 6, label %10
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #14, !srcloc !8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %16

16:                                               ; preds = %10, %5
  %17 = phi i32 [ %9, %5 ], [ %15, %10 ]
  %18 = load i8, ptr %3, align 2
  br label %19

19:                                               ; preds = %16, %1
  %20 = phi i8 [ %18, %16 ], [ %4, %1 ]
  %21 = phi i32 [ %17, %16 ], [ 0, %1 ]
  %22 = and i32 %21, -15466497
  switch i8 %20, label %32 [
    i8 3, label %23
    i8 6, label %27
  ]

23:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %22) #14, !srcloc !12
  br label %32

27:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %28 = tail call i32 @llvm.bswap.i32(i32 %22) #14
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #14, !srcloc !12
  br label %32

32:                                               ; preds = %27, %23, %19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #14
  tail call fastcc void @lpuart_dma_shutdown(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart_flush_buffer(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 4, !range !22
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 16
  %9 = load i8, ptr %8, align 4, !range !22
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 20
  %16 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 23
  %17 = load i32, ptr %16, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %15, i32 noundef %17, i32 noundef 1, i32 noundef 0) #14
  store i8 0, ptr %8, align 4
  br label %18

18:                                               ; preds = %11, %7
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 47
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call i32 %21(ptr noundef %3) #14
  br label %25

25:                                               ; preds = %23, %18, %1
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %27 = load i8, ptr %26, align 2
  switch i8 %27, label %52 [
    i8 3, label %28
    i8 6, label %33
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 24
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %39

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 24
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #14, !srcloc !8
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %39

39:                                               ; preds = %33, %28
  %40 = phi i32 [ %32, %28 ], [ %38, %33 ]
  %41 = load i8, ptr %26, align 2
  %42 = or i32 %40, 49152
  switch i8 %41, label %60 [
    i8 3, label %43
    i8 6, label %47
  ]

43:                                               ; preds = %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %44 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %42) #14, !srcloc !12
  br label %60

47:                                               ; preds = %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %48 = tail call i32 @llvm.bswap.i32(i32 %42) #14
  %49 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %48) #14, !srcloc !12
  br label %60

52:                                               ; preds = %25
  %53 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 17
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %55) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !40
  %57 = or i8 %56, -64
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !41
  tail call void @arm_heavy_mb() #14
  %58 = load ptr, ptr %53, align 4
  %59 = getelementptr i8, ptr %58, i32 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %59, i8 %57) #14, !srcloc !19
  br label %60

60:                                               ; preds = %52, %47, %43, %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart32_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ktermios, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 48
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ %8, %5 ], [ 48, %3 ]
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %12 = load i8, ptr %11, align 2
  switch i8 %12, label %27 [
    i8 3, label %13
    i8 6, label %18
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %24

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #14, !srcloc !8
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi i32 [ %17, %13 ], [ %23, %18 ]
  %26 = load i8, ptr %11, align 2
  br label %27

27:                                               ; preds = %24, %9
  %28 = phi i8 [ %26, %24 ], [ %12, %9 ]
  %29 = phi i32 [ %25, %24 ], [ 0, %9 ]
  switch i8 %28, label %39 [
    i8 3, label %30
    i8 6, label %34
  ]

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %39

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #14, !srcloc !8
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %39

39:                                               ; preds = %34, %30, %27
  %40 = phi i32 [ %38, %34 ], [ %33, %30 ], [ 0, %27 ]
  %41 = load i8, ptr %11, align 2
  switch i8 %41, label %53 [
    i8 3, label %42
    i8 6, label %47
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 20
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %53

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 20
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #14, !srcloc !8
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %53

53:                                               ; preds = %47, %42, %39
  %54 = phi i32 [ %52, %47 ], [ %46, %42 ], [ 0, %39 ]
  %55 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  br label %57

57:                                               ; preds = %61, %53
  %58 = phi i32 [ %56, %53 ], [ %63, %61 ]
  %59 = phi i32 [ %10, %53 ], [ 48, %61 ]
  %60 = and i32 %58, 48
  switch i32 %60, label %61 [
    i32 48, label %64
    i32 32, label %64
  ]

61:                                               ; preds = %57
  %62 = and i32 %58, -49
  %63 = or i32 %62, %59
  store i32 %63, ptr %55, align 4
  br label %57

64:                                               ; preds = %57, %57
  %65 = and i32 %29, -17
  %66 = and i32 %58, 1073741824
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = icmp eq i32 %60, 48
  br i1 %69, label %72, label %70

70:                                               ; preds = %68
  %71 = or i32 %58, 48
  store i32 %71, ptr %55, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %71, %70 ], [ %58, %68 ]
  %74 = or i32 %29, 16
  br label %75

75:                                               ; preds = %72, %64
  %76 = phi i32 [ %73, %72 ], [ %58, %64 ]
  %77 = phi i32 [ %74, %72 ], [ %65, %64 ]
  %78 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %75
  %83 = and i32 %76, 2147483647
  br label %88

84:                                               ; preds = %75
  %85 = icmp sgt i32 %76, -1
  br i1 %85, label %88, label %86

86:                                               ; preds = %84
  %87 = or i32 %54, 9
  br label %91

88:                                               ; preds = %84, %82
  %89 = phi i32 [ %83, %82 ], [ %76, %84 ]
  store i32 %89, ptr %55, align 4
  %90 = and i32 %54, -10
  br label %91

91:                                               ; preds = %88, %86
  %92 = phi i32 [ %76, %86 ], [ %89, %88 ]
  %93 = phi i32 [ %87, %86 ], [ %90, %88 ]
  %94 = and i32 %40, -8193
  %95 = shl i32 %92, 7
  %96 = and i32 %95, 8192
  %97 = or i32 %96, %94
  %98 = and i32 %92, 48
  %99 = icmp eq i32 %98, 32
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = or i32 %92, 256
  store i32 %101, ptr %55, align 4
  br label %102

102:                                              ; preds = %100, %91
  %103 = phi i32 [ %101, %100 ], [ %92, %91 ]
  %104 = and i32 %103, 256
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %123, label %106

106:                                              ; preds = %102
  %107 = and i32 %103, 1073741824
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = and i32 %77, -19
  %111 = or i32 %110, 16
  br label %125

112:                                              ; preds = %106
  %113 = and i32 %103, 48
  %114 = icmp eq i32 %113, 48
  %115 = select i1 %114, i32 18, i32 2
  %116 = or i32 %115, %77
  %117 = and i32 %103, 512
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %112
  %120 = or i32 %116, 1
  br label %125

121:                                              ; preds = %112
  %122 = and i32 %116, -2
  br label %125

123:                                              ; preds = %102
  %124 = and i32 %77, -3
  br label %125

125:                                              ; preds = %123, %121, %119, %109
  %126 = phi i32 [ %111, %109 ], [ %120, %119 ], [ %122, %121 ], [ %124, %123 ]
  %127 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %128 = load i32, ptr %127, align 4
  %129 = lshr i32 %128, 2
  %130 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 50, i32 noundef %129) #14
  br i1 %4, label %158, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 7
  %133 = load i8, ptr %132, align 1, !range !22
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %158, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 18
  %137 = tail call i32 @del_timer_sync(ptr noundef %136) #14
  %138 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 9
  %139 = load ptr, ptr %138, align 4
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.dma_device, ptr %140, i32 0, i32 47
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %135
  %145 = tail call i32 %142(ptr noundef %139) #14
  %146 = load ptr, ptr %139, align 4
  br label %147

147:                                              ; preds = %144, %135
  %148 = phi ptr [ %140, %135 ], [ %146, %144 ]
  %149 = getelementptr inbounds %struct.dma_device, ptr %148, i32 0, i32 15
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 19
  tail call void @dma_unmap_sg_attrs(ptr noundef %150, ptr noundef %151, i32 noundef 1, i32 noundef 2, i32 noundef 0) #14
  %152 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 21
  %153 = load ptr, ptr %152, align 4
  tail call void @kfree(ptr noundef %153) #14
  %154 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 21, i32 2
  store i32 0, ptr %154, align 4
  %155 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 21, i32 1
  store i32 0, ptr %155, align 4
  %156 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 11
  store ptr null, ptr %156, align 4
  %157 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 13
  store i32 -22, ptr %157, align 4
  br label %158

158:                                              ; preds = %147, %131, %125
  %159 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #14
  %160 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 0, ptr %160, align 4
  %161 = load i32, ptr %1, align 4
  %162 = and i32 %161, 16
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, i32 0, i32 196608
  store i32 %164, ptr %160, align 4
  %165 = load i32, ptr %1, align 4
  %166 = and i32 %165, 11
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %158
  %169 = or i32 %164, 131072
  store i32 %169, ptr %160, align 4
  br label %170

170:                                              ; preds = %168, %158
  %171 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 0, ptr %171, align 4
  %172 = load i32, ptr %1, align 4
  %173 = shl i32 %172, 14
  %174 = and i32 %173, 65536
  store i32 %174, ptr %171, align 4
  %175 = load i32, ptr %1, align 4
  %176 = and i32 %175, 1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %170
  %179 = or i32 %174, 131072
  store i32 %179, ptr %171, align 4
  %180 = load i32, ptr %1, align 4
  %181 = and i32 %180, 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %178
  %184 = or i32 %174, 655360
  store i32 %184, ptr %171, align 4
  br label %185

185:                                              ; preds = %183, %178, %170
  %186 = load i32, ptr %55, align 4
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %186, i32 noundef %130) #14
  %187 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  br label %188

188:                                              ; preds = %203, %185
  %189 = load i8, ptr %11, align 2
  switch i8 %189, label %203 [
    i8 3, label %190
    i8 6, label %194
  ]

190:                                              ; preds = %188
  %191 = load ptr, ptr %187, align 4
  %192 = getelementptr i8, ptr %191, i32 4
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %199

194:                                              ; preds = %188
  %195 = load ptr, ptr %187, align 4
  %196 = getelementptr i8, ptr %195, i32 4
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #14, !srcloc !8
  %198 = tail call i32 @llvm.bswap.i32(i32 %197) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %199

199:                                              ; preds = %194, %190
  %200 = phi i32 [ %198, %194 ], [ %193, %190 ]
  %201 = and i32 %200, 4194304
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %199, %188
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !21
  br label %188

204:                                              ; preds = %199
  %205 = and i32 %29, -786433
  %206 = load i8, ptr %11, align 2
  switch i8 %206, label %216 [
    i8 3, label %207
    i8 6, label %210
  ]

207:                                              ; preds = %204
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %208 = load ptr, ptr %187, align 4
  %209 = getelementptr i8, ptr %208, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %205) #14, !srcloc !12
  br label %214

210:                                              ; preds = %204
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %211 = tail call i32 @llvm.bswap.i32(i32 %205) #14
  %212 = load ptr, ptr %187, align 4
  %213 = getelementptr i8, ptr %212, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %211) #14, !srcloc !12
  br label %214

214:                                              ; preds = %210, %207
  %215 = load i8, ptr %11, align 2
  br label %216

216:                                              ; preds = %214, %204
  %217 = phi i8 [ %215, %214 ], [ %206, %204 ]
  switch i8 %217, label %223 [
    i8 3, label %218
    i8 6, label %220
  ]

218:                                              ; preds = %216
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %219 = load ptr, ptr %187, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 %97) #14, !srcloc !12
  br label %223

220:                                              ; preds = %216
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %221 = tail call i32 @llvm.bswap.i32(i32 %97) #14
  %222 = load ptr, ptr %187, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 %221) #14, !srcloc !12
  br label %223

223:                                              ; preds = %220, %218, %216
  %224 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 7
  %225 = load i8, ptr %224, align 1, !range !22
  %226 = icmp ne i8 %225, 0
  %227 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 6
  %228 = load i8, ptr %227, align 4, !range !22
  %229 = icmp ne i8 %228, 0
  tail call fastcc void @__lpuart32_serial_setbrg(ptr noundef %0, i32 noundef %130, i1 noundef zeroext %226, i1 noundef zeroext %229) #14
  %230 = load i8, ptr %11, align 2
  switch i8 %230, label %240 [
    i8 3, label %231
    i8 6, label %234
  ]

231:                                              ; preds = %223
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %232 = load ptr, ptr %187, align 4
  %233 = getelementptr i8, ptr %232, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 %93) #14, !srcloc !12
  br label %238

234:                                              ; preds = %223
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %235 = tail call i32 @llvm.bswap.i32(i32 %93) #14
  %236 = load ptr, ptr %187, align 4
  %237 = getelementptr i8, ptr %236, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %235) #14, !srcloc !12
  br label %238

238:                                              ; preds = %234, %231
  %239 = load i8, ptr %11, align 2
  br label %240

240:                                              ; preds = %238, %223
  %241 = phi i8 [ %239, %238 ], [ %230, %223 ]
  switch i8 %241, label %249 [
    i8 3, label %242
    i8 6, label %245
  ]

242:                                              ; preds = %240
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %243 = load ptr, ptr %187, align 4
  %244 = getelementptr i8, ptr %243, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %126) #14, !srcloc !12
  br label %249

245:                                              ; preds = %240
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %246 = tail call i32 @llvm.bswap.i32(i32 %126) #14
  %247 = load ptr, ptr %187, align 4
  %248 = getelementptr i8, ptr %247, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 %246) #14, !srcloc !12
  br label %249

249:                                              ; preds = %245, %242, %240
  br i1 %4, label %264, label %250

250:                                              ; preds = %249
  %251 = load i8, ptr %224, align 1, !range !22
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %264, label %253

253:                                              ; preds = %250
  %254 = tail call fastcc i32 @lpuart_start_rx_dma(ptr noundef %0)
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 18
  tail call void @init_timer_key(ptr noundef %257, ptr noundef nonnull @lpuart_timer_func, i32 noundef 0, ptr noundef null, ptr noundef null) #14
  %258 = load volatile i32, ptr @jiffies, align 64
  %259 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 17
  %260 = load i32, ptr %259, align 4
  %261 = add i32 %260, %258
  %262 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 18, i32 1
  store i32 %261, ptr %262, align 4
  tail call void @add_timer(ptr noundef %257) #14
  br label %264

263:                                              ; preds = %253
  store i8 0, ptr %224, align 1
  br label %264

264:                                              ; preds = %263, %256, %250, %249
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %159) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @lpuart_type(ptr nocapture noundef readnone %0) #7 {
  ret ptr @.str.22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @lpuart_release_port(ptr nocapture noundef %0) #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @lpuart_request_port(ptr nocapture noundef readnone %0) #7 {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @lpuart_config_port(ptr nocapture noundef writeonly %0, i32 noundef %1) #8 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 103, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @lpuart_verify_port(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i32 %3, 103
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
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %22, %24
  %26 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i1 %25, i1 false
  %30 = select i1 %29, i1 %20, i1 false
  %31 = select i1 %30, i1 %14, i1 false
  %32 = select i1 %31, i1 %11, i1 false
  %33 = select i1 %32, i1 %6, i1 false
  %34 = select i1 %33, i32 0, i32 -22
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lpuart_dma_tx(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 20
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 16
  %11 = load i8, ptr %10, align 4, !range !22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %111

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %15, %17
  %19 = and i32 %18, 4095
  %20 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 14
  store i32 %19, ptr %20, align 4
  %21 = load i32, ptr %16, align 4
  %22 = load i32, ptr %14, align 4
  %23 = icmp slt i32 %21, %22
  %24 = icmp eq i32 %22, 0
  %25 = or i1 %23, %24
  %26 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 23
  br i1 %25, label %27, label %31

27:                                               ; preds = %13
  store i32 1, ptr %26, align 4
  %28 = load ptr, ptr %4, align 4
  %29 = load i32, ptr %16, align 4
  %30 = getelementptr i8, ptr %28, i32 %29
  tail call void @sg_init_one(ptr noundef %5, ptr noundef %30, i32 noundef %19) #14
  br label %70

31:                                               ; preds = %13
  store i32 2, ptr %26, align 4
  tail call void @sg_init_table(ptr noundef %5, i32 noundef 2) #14
  %32 = load ptr, ptr %4, align 4
  %33 = load i32, ptr %16, align 4
  %34 = getelementptr i8, ptr %32, i32 %33
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %34 to i32
  %37 = add i32 %36, 1073741824
  %38 = lshr i32 %37, 12
  %39 = getelementptr %struct.page, ptr %35, i32 %38
  %40 = ptrtoint ptr %39 to i32
  %41 = and i32 %40, 3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43, !prof !42

43:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !43
  unreachable

44:                                               ; preds = %31
  %45 = sub i32 4096, %33
  %46 = and i32 %36, 4095
  %47 = load i32, ptr %5, align 4
  %48 = and i32 %47, 3
  %49 = or i32 %48, %40
  store i32 %49, ptr %5, align 4
  %50 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 20, i32 0, i32 1
  store i32 %46, ptr %50, align 4
  %51 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 20, i32 0, i32 2
  store i32 %45, ptr %51, align 4
  %52 = load ptr, ptr %4, align 4
  %53 = ptrtoint ptr %52 to i32
  %54 = add i32 %53, 1073741824
  %55 = lshr i32 %54, 12
  %56 = getelementptr %struct.page, ptr %35, i32 %55
  %57 = ptrtoint ptr %56 to i32
  %58 = and i32 %57, 3
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60, !prof !42

60:                                               ; preds = %44
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !43
  unreachable

61:                                               ; preds = %44
  %62 = load i32, ptr %14, align 4
  %63 = getelementptr %struct.lpuart_port, ptr %0, i32 0, i32 20, i32 1
  %64 = and i32 %53, 4095
  %65 = load i32, ptr %63, align 4
  %66 = and i32 %65, 3
  %67 = or i32 %66, %57
  store i32 %67, ptr %63, align 4
  %68 = getelementptr %struct.lpuart_port, ptr %0, i32 0, i32 20, i32 1, i32 1
  store i32 %64, ptr %68, align 4
  %69 = getelementptr %struct.lpuart_port, ptr %0, i32 0, i32 20, i32 1, i32 2
  store i32 %62, ptr %69, align 4
  br label %70

70:                                               ; preds = %61, %27
  %71 = load ptr, ptr %9, align 4
  %72 = getelementptr inbounds %struct.dma_device, ptr %71, i32 0, i32 15
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 23
  %75 = load i32, ptr %74, align 4
  %76 = tail call i32 @dma_map_sg_attrs(ptr noundef %73, ptr noundef %5, i32 noundef %75, i32 noundef 1, i32 noundef 0) #14
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.11) #15
  br label %111

79:                                               ; preds = %70
  %80 = icmp eq ptr %9, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %79
  %82 = load ptr, ptr %9, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.dma_device, ptr %82, i32 0, i32 39
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %84, %81, %79
  %89 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 10
  store ptr null, ptr %89, align 4
  br label %94

90:                                               ; preds = %84
  %91 = tail call ptr %86(ptr noundef nonnull %9, ptr noundef %5, i32 noundef %76, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  %92 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 10
  store ptr %91, ptr %92, align 4
  %93 = icmp eq ptr %91, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %90, %88
  %95 = load ptr, ptr %9, align 4
  %96 = getelementptr inbounds %struct.dma_device, ptr %95, i32 0, i32 15
  %97 = load ptr, ptr %96, align 4
  %98 = load i32, ptr %74, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %97, ptr noundef %5, i32 noundef %98, i32 noundef 1, i32 noundef 0) #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.12) #15
  br label %111

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %91, i32 0, i32 6
  store ptr @lpuart_dma_tx_complete, ptr %100, align 4
  %101 = load ptr, ptr %92, align 4
  %102 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %101, i32 0, i32 8
  store ptr %0, ptr %102, align 4
  store i8 1, ptr %10, align 4
  %103 = load ptr, ptr %92, align 4
  %104 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %103, i32 0, i32 4
  %105 = load ptr, ptr %104, align 4
  %106 = tail call i32 %105(ptr noundef %103) #14
  %107 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 12
  store i32 %106, ptr %107, align 4
  %108 = load ptr, ptr %9, align 4
  %109 = getelementptr inbounds %struct.dma_device, ptr %108, i32 0, i32 50
  %110 = load ptr, ptr %109, align 4
  tail call void %110(ptr noundef nonnull %9) #14
  br label %111

111:                                              ; preds = %99, %94, %78, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lpuart32_transmit_buffer(ptr noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 24
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = zext i8 %6 to i32
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %11 = load i8, ptr %10, align 2
  switch i8 %11, label %21 [
    i8 3, label %12
    i8 6, label %16
  ]

12:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %9) #14, !srcloc !12
  br label %21

16:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %17 = shl nuw i32 %9, 24
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %17) #14, !srcloc !12
  br label %21

21:                                               ; preds = %16, %12, %8
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  store i8 0, ptr %5, align 4
  br label %182

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tty_struct, ptr %33, i32 0, i32 19, i32 1
  %37 = load i8, ptr %36, align 4, !range !22
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %73, label %43

43:                                               ; preds = %39, %35, %25
  %44 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %45 = load i8, ptr %44, align 2
  switch i8 %45, label %60 [
    i8 3, label %46
    i8 6, label %51
  ]

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %57

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 8
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #14, !srcloc !8
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %57

57:                                               ; preds = %51, %46
  %58 = phi i32 [ %50, %46 ], [ %56, %51 ]
  %59 = load i8, ptr %44, align 2
  br label %60

60:                                               ; preds = %57, %43
  %61 = phi i8 [ %59, %57 ], [ %45, %43 ]
  %62 = phi i32 [ %58, %57 ], [ 0, %43 ]
  %63 = and i32 %62, -12582913
  switch i8 %61, label %182 [
    i8 3, label %64
    i8 6, label %68
  ]

64:                                               ; preds = %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %65 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %66, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %63) #14, !srcloc !12
  br label %182

68:                                               ; preds = %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %69 = tail call i32 @llvm.bswap.i32(i32 %63) #14
  %70 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %69) #14, !srcloc !12
  br label %182

73:                                               ; preds = %39
  %74 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %75 = load i8, ptr %74, align 2
  switch i8 %75, label %87 [
    i8 3, label %76
    i8 6, label %81
  ]

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 28
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %87

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr i8, ptr %83, i32 28
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #14, !srcloc !8
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %87

87:                                               ; preds = %81, %76, %73
  %88 = phi i32 [ %86, %81 ], [ %80, %76 ], [ 0, %73 ]
  %89 = load i32, ptr %26, align 4
  %90 = load i32, ptr %28, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %140, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 4
  %94 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %95 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %96 = lshr i32 %88, 8
  %97 = and i32 %96, 255
  %98 = load i32, ptr %93, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %105, label %140

100:                                              ; preds = %135
  %101 = lshr i32 %136, 8
  %102 = and i32 %101, 255
  %103 = load i32, ptr %93, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %140

105:                                              ; preds = %100, %92
  %106 = phi i32 [ %138, %100 ], [ %90, %92 ]
  %107 = load ptr, ptr %4, align 4
  %108 = getelementptr i8, ptr %107, i32 %106
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8, ptr %74, align 2
  switch i8 %111, label %119 [
    i8 3, label %112
    i8 6, label %115
  ]

112:                                              ; preds = %105
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %113 = load ptr, ptr %94, align 4
  %114 = getelementptr i8, ptr %113, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %110) #14, !srcloc !12
  br label %119

115:                                              ; preds = %105
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %116 = shl nuw i32 %110, 24
  %117 = load ptr, ptr %94, align 4
  %118 = getelementptr i8, ptr %117, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #14, !srcloc !12
  br label %119

119:                                              ; preds = %115, %112, %105
  %120 = load i32, ptr %28, align 4
  %121 = add i32 %120, 1
  %122 = and i32 %121, 4095
  store i32 %122, ptr %28, align 4
  %123 = load i32, ptr %95, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %95, align 4
  %125 = load i8, ptr %74, align 2
  switch i8 %125, label %135 [
    i8 3, label %126
    i8 6, label %130
  ]

126:                                              ; preds = %119
  %127 = load ptr, ptr %94, align 4
  %128 = getelementptr i8, ptr %127, i32 28
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %135

130:                                              ; preds = %119
  %131 = load ptr, ptr %94, align 4
  %132 = getelementptr i8, ptr %131, i32 28
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #14, !srcloc !8
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %135

135:                                              ; preds = %130, %126, %119
  %136 = phi i32 [ %134, %130 ], [ %129, %126 ], [ 0, %119 ]
  %137 = load i32, ptr %26, align 4
  %138 = load i32, ptr %28, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %100

140:                                              ; preds = %135, %100, %92, %87
  %141 = phi i32 [ %89, %87 ], [ %90, %92 ], [ %138, %100 ], [ %137, %135 ]
  %142 = phi i32 [ %89, %87 ], [ %89, %92 ], [ %137, %100 ], [ %137, %135 ]
  %143 = sub i32 %142, %141
  %144 = and i32 %143, 3840
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  tail call void @uart_write_wakeup(ptr noundef %0) #14
  %147 = load i32, ptr %26, align 4
  %148 = load i32, ptr %28, align 4
  br label %149

149:                                              ; preds = %146, %140
  %150 = phi i32 [ %148, %146 ], [ %141, %140 ]
  %151 = phi i32 [ %147, %146 ], [ %142, %140 ]
  %152 = icmp eq i32 %151, %150
  br i1 %152, label %153, label %182

153:                                              ; preds = %149
  %154 = load i8, ptr %74, align 2
  switch i8 %154, label %169 [
    i8 3, label %155
    i8 6, label %160
  ]

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr i8, ptr %157, i32 8
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %166

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr i8, ptr %162, i32 8
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #14, !srcloc !8
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %166

166:                                              ; preds = %160, %155
  %167 = phi i32 [ %159, %155 ], [ %165, %160 ]
  %168 = load i8, ptr %74, align 2
  br label %169

169:                                              ; preds = %166, %153
  %170 = phi i8 [ %168, %166 ], [ %154, %153 ]
  %171 = phi i32 [ %167, %166 ], [ 0, %153 ]
  %172 = and i32 %171, -12582913
  switch i8 %170, label %182 [
    i8 3, label %173
    i8 6, label %177
  ]

173:                                              ; preds = %169
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %174 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr i8, ptr %175, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %172) #14, !srcloc !12
  br label %182

177:                                              ; preds = %169
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %178 = tail call i32 @llvm.bswap.i32(i32 %172) #14
  %179 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr i8, ptr %180, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %178) #14, !srcloc !12
  br label %182

182:                                              ; preds = %177, %173, %169, %149, %68, %64, %60, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart_dma_tx_complete(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 16
  %8 = load i8, ptr %7, align 4, !range !22
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %6) #14
  br label %63

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 20
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 23
  %17 = load i32, ptr %16, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %15, ptr noundef %12, i32 noundef %17, i32 noundef 1, i32 noundef 0) #14
  %18 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 14
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %19
  %23 = and i32 %22, 4095
  store i32 %23, ptr %18, align 4
  %24 = load i32, ptr %20, align 4
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  store i32 %27, ptr %25, align 4
  store i8 0, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %6) #14
  %28 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %18, align 4
  %31 = sub i32 %29, %30
  %32 = and i32 %31, 3840
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %11
  tail call void @uart_write_wakeup(ptr noundef %0) #14
  br label %35

35:                                               ; preds = %34, %11
  %36 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 24, i32 1
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 24
  tail call void @__wake_up(ptr noundef %40, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %63

41:                                               ; preds = %35
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #14
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr inbounds %struct.uart_state, ptr %43, i32 0, i32 2, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.uart_state, ptr %43, i32 0, i32 2, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %62, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.tty_port, ptr %43, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.tty_struct, ptr %51, i32 0, i32 19, i32 1
  %55 = load i8, ptr %54, align 4, !range !22
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53, %49
  %58 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call fastcc void @lpuart_dma_tx(ptr noundef %0)
  br label %62

62:                                               ; preds = %61, %57, %53, %41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %42) #14
  br label %63

63:                                               ; preds = %62, %39, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lpuart32_setup_watermark_enable(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  tail call fastcc void @lpuart32_setup_watermark(ptr noundef %0)
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %3 = load i8, ptr %2, align 2
  switch i8 %3, label %18 [
    i8 3, label %4
    i8 6, label %9
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #14, !srcloc !8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %15

15:                                               ; preds = %9, %4
  %16 = phi i32 [ %8, %4 ], [ %14, %9 ]
  %17 = load i8, ptr %2, align 2
  br label %18

18:                                               ; preds = %15, %1
  %19 = phi i8 [ %17, %15 ], [ %3, %1 ]
  %20 = phi i32 [ %16, %15 ], [ 0, %1 ]
  %21 = or i32 %20, 1835008
  switch i8 %19, label %31 [
    i8 3, label %22
    i8 6, label %26
  ]

22:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %21) #14, !srcloc !12
  br label %31

26:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %27 = tail call i32 @llvm.bswap.i32(i32 %21) #14
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %27) #14, !srcloc !12
  br label %31

31:                                               ; preds = %26, %22, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lpuart_rx_dma_startup(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 9
  %7 = load i16, ptr %6, align 2
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %8
  br i1 %11, label %41, label %12

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @lpuart_start_rx_dma(ptr noundef %0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 17
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 7
  store i8 1, ptr %21, align 1
  %22 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 18
  tail call void @init_timer_key(ptr noundef %22, ptr noundef nonnull @lpuart_timer_func, i32 noundef 0, ptr noundef null, ptr noundef null) #14
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = load i32, ptr %20, align 4
  %25 = add i32 %24, %23
  %26 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 18, i32 1
  store i32 %25, ptr %26, align 4
  tail call void @add_timer(ptr noundef %22) #14
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 48
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %32 = load i8, ptr %31, align 2
  switch i8 %32, label %33 [
    i8 6, label %43
    i8 3, label %43
  ]

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 6
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %36) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !44
  %38 = or i8 %37, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !45
  tail call void @arm_heavy_mb() #14
  %39 = load ptr, ptr %34, align 4
  %40 = getelementptr i8, ptr %39, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %40, i8 %38) #14, !srcloc !19
  br label %43

41:                                               ; preds = %16, %12, %5
  %42 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 7
  store i8 0, ptr %42, align 1
  br label %43

43:                                               ; preds = %41, %33, %30, %30, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lpuart_tx_dma_startup(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.dma_slave_config, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.console, ptr %4, i32 0, i32 9
  %8 = load i16, ptr %7, align 2
  %9 = sext i16 %8 to i32
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %9
  br i1 %12, label %74, label %13

13:                                               ; preds = %6, %1
  %14 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %74, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #14
  %18 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %18, i8 0, i32 44, i1 false) #14
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, 6
  %22 = select i1 %21, i32 15, i32 7
  %23 = icmp eq i8 %20, 3
  %24 = select i1 %23, i32 12, i32 %22
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %24, %26
  %28 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 4
  store i32 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 6
  store i32 1, ptr %30, align 4
  store i32 1, ptr %2, align 4
  %31 = load ptr, ptr %15, align 4
  %32 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 44
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %17
  %36 = call i32 %33(ptr noundef nonnull %15, ptr noundef nonnull %2) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35, %17
  %39 = phi i32 [ %36, %35 ], [ -38, %17 ]
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %41 = load ptr, ptr %40, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.21, i32 noundef %39) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #14
  br label %74

42:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #14
  %43 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 24
  call void @__init_waitqueue_head(ptr noundef %43, ptr noundef nonnull @.str.20, ptr noundef nonnull @lpuart_tx_dma_startup.__key) #14
  %44 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 6
  store i8 1, ptr %44, align 4
  %45 = load i8, ptr %19, align 2
  switch i8 %45, label %66 [
    i8 3, label %46
    i8 6, label %50
  ]

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #14, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %55

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #14, !srcloc !8
  %54 = call i32 @llvm.bswap.i32(i32 %53) #14
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %55

55:                                               ; preds = %50, %46
  %56 = phi i32 [ %49, %46 ], [ %54, %50 ]
  %57 = load i8, ptr %19, align 2
  %58 = or i32 %56, 8388608
  switch i8 %57, label %76 [
    i8 3, label %59
    i8 6, label %62
  ]

59:                                               ; preds = %55
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  call void @arm_heavy_mb() #14
  %60 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %58) #14, !srcloc !12
  br label %76

62:                                               ; preds = %55
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  call void @arm_heavy_mb() #14
  %63 = call i32 @llvm.bswap.i32(i32 %58) #14
  %64 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #14, !srcloc !12
  br label %76

66:                                               ; preds = %42
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !46
  call void @arm_heavy_mb() #14
  %67 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 11
  %70 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %69) #14, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !47
  %71 = or i8 %70, -128
  %72 = load ptr, ptr %67, align 4
  %73 = getelementptr i8, ptr %72, i32 11
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %73, i8 %71) #14, !srcloc !19
  br label %76

74:                                               ; preds = %38, %13, %6
  %75 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 6
  store i8 0, ptr %75, align 4
  br label %76

76:                                               ; preds = %74, %66, %62, %59, %55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lpuart32_configure(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 7
  %3 = load i8, ptr %2, align 1, !range !22
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %7 = load i8, ptr %6, align 2
  switch i8 %7, label %22 [
    i8 3, label %8
    i8 6, label %13
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 28
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %19

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 28
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #14, !srcloc !8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %19

19:                                               ; preds = %13, %8
  %20 = phi i32 [ %12, %8 ], [ %18, %13 ]
  %21 = load i8, ptr %6, align 2
  br label %22

22:                                               ; preds = %19, %5
  %23 = phi i8 [ %21, %19 ], [ %7, %5 ]
  %24 = phi i32 [ %20, %19 ], [ 0, %5 ]
  %25 = and i32 %24, -16711681
  switch i8 %23, label %35 [
    i8 3, label %26
    i8 6, label %30
  ]

26:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %25) #14, !srcloc !12
  br label %35

30:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %31 = tail call i32 @llvm.bswap.i32(i32 %25) #14
  %32 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #14, !srcloc !12
  br label %35

35:                                               ; preds = %30, %26, %22, %1
  %36 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %37 = load i8, ptr %36, align 2
  switch i8 %37, label %49 [
    i8 3, label %38
    i8 6, label %43
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %49

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 8
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #14, !srcloc !8
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %49

49:                                               ; preds = %43, %38, %35
  %50 = phi i32 [ %48, %43 ], [ %42, %38 ], [ 0, %35 ]
  %51 = load i8, ptr %2, align 1, !range !22
  %52 = icmp eq i8 %51, 0
  %53 = or i32 %50, 2097152
  %54 = select i1 %52, i32 %53, i32 %50
  %55 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 6
  %56 = load i8, ptr %55, align 4, !range !22
  %57 = icmp eq i8 %56, 0
  %58 = or i32 %54, 8388608
  %59 = select i1 %57, i32 %58, i32 %54
  %60 = load i8, ptr %36, align 2
  switch i8 %60, label %70 [
    i8 3, label %61
    i8 6, label %65
  ]

61:                                               ; preds = %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %62 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %59) #14, !srcloc !12
  br label %70

65:                                               ; preds = %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %66 = tail call i32 @llvm.bswap.i32(i32 %59) #14
  %67 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %66) #14, !srcloc !12
  br label %70

70:                                               ; preds = %65, %61, %49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lpuart32_setup_watermark(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %3 = load i8, ptr %2, align 2
  switch i8 %3, label %18 [
    i8 3, label %4
    i8 6, label %9
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #14, !srcloc !8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %15

15:                                               ; preds = %9, %4
  %16 = phi i32 [ %8, %4 ], [ %14, %9 ]
  %17 = load i8, ptr %2, align 2
  br label %18

18:                                               ; preds = %15, %1
  %19 = phi i8 [ %17, %15 ], [ %3, %1 ]
  %20 = phi i32 [ %16, %15 ], [ 0, %1 ]
  %21 = and i32 %20, -15466497
  switch i8 %19, label %31 [
    i8 3, label %22
    i8 6, label %26
  ]

22:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %21) #14, !srcloc !12
  br label %31

26:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %27 = tail call i32 @llvm.bswap.i32(i32 %21) #14
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %27) #14, !srcloc !12
  br label %31

31:                                               ; preds = %26, %22, %18
  %32 = load i8, ptr %2, align 2
  switch i8 %32, label %47 [
    i8 3, label %33
    i8 6, label %38
  ]

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 24
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %44

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 24
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #14, !srcloc !8
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %44

44:                                               ; preds = %38, %33
  %45 = phi i32 [ %37, %33 ], [ %43, %38 ]
  %46 = load i8, ptr %2, align 2
  br label %47

47:                                               ; preds = %44, %31
  %48 = phi i8 [ %46, %44 ], [ %32, %31 ]
  %49 = phi i32 [ %45, %44 ], [ 0, %31 ]
  %50 = or i32 %49, 49288
  switch i8 %48, label %60 [
    i8 3, label %51
    i8 6, label %55
  ]

51:                                               ; preds = %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %52 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %50) #14, !srcloc !12
  br label %60

55:                                               ; preds = %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %56 = tail call i32 @llvm.bswap.i32(i32 %50) #14
  %57 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %56) #14, !srcloc !12
  br label %60

60:                                               ; preds = %55, %51, %47
  %61 = load i8, ptr %2, align 2
  switch i8 %61, label %72 [
    i8 3, label %62
    i8 6, label %66
  ]

62:                                               ; preds = %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %63 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 65536) #14, !srcloc !12
  br label %70

66:                                               ; preds = %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %67 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 256) #14, !srcloc !12
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i8, ptr %2, align 2
  br label %72

72:                                               ; preds = %70, %60
  %73 = phi i8 [ %71, %70 ], [ %61, %60 ]
  switch i8 %73, label %83 [
    i8 3, label %74
    i8 6, label %78
  ]

74:                                               ; preds = %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %75 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %20) #14, !srcloc !12
  br label %83

78:                                               ; preds = %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %79 = tail call i32 @llvm.bswap.i32(i32 %20) #14
  %80 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %79) #14, !srcloc !12
  br label %83

83:                                               ; preds = %78, %74, %72
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lpuart_start_rx_dma(ptr noundef %0) unnamed_addr #10 {
  %2 = alloca %struct.dma_slave_config, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #14
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 40, i1 false)
  %4 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 21
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tty_port, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 13
  %12 = tail call i32 @tty_termios_baud_rate(ptr noundef %11) #14
  %13 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 13, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 48
  %16 = icmp eq i32 %15, 32
  %17 = select i1 %16, i32 9, i32 10
  %18 = lshr i32 %14, 8
  %19 = and i32 %18, 1
  %20 = add nuw nsw i32 %17, %19
  %21 = mul i32 %12, 10
  %22 = sdiv i32 %21, %20
  %23 = sdiv i32 %22, 1000
  %24 = shl nsw i32 %23, 1
  %25 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 22
  %26 = tail call i32 @llvm.ctlz.i32(i32 %24, i1 false) #14, !range !48
  %27 = lshr i32 -2147483648, %26
  %28 = tail call i32 @llvm.smax.i32(i32 %27, i32 16)
  store i32 %28, ptr %25, align 4
  %29 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 2848) #16
  store ptr %29, ptr %4, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %130, label %31

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 19
  %33 = load i32, ptr %25, align 4
  tail call void @sg_init_one(ptr noundef %32, ptr noundef nonnull %29, i32 noundef %33) #14
  %34 = load ptr, ptr %10, align 4
  %35 = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @dma_map_sg_attrs(ptr noundef %36, ptr noundef %32, i32 noundef 1, i32 noundef 2, i32 noundef 0) #14
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.16) #15
  br label %130

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %44 = load i8, ptr %43, align 2
  %45 = icmp eq i8 %44, 6
  %46 = select i1 %45, i32 15, i32 7
  %47 = icmp eq i8 %44, 3
  %48 = select i1 %47, i32 12, i32 %46
  %49 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %48, %50
  %52 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 1
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 3
  store i32 1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 5
  store i32 1, ptr %54, align 4
  store i32 2, ptr %2, align 4
  %55 = load ptr, ptr %10, align 4
  %56 = getelementptr inbounds %struct.dma_device, ptr %55, i32 0, i32 44
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %42
  %60 = call i32 %57(ptr noundef %10, ptr noundef nonnull %2) #14
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59, %42
  %63 = phi i32 [ %60, %59 ], [ -38, %42 ]
  %64 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %65 = load ptr, ptr %64, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.17, i32 noundef %63) #15
  br label %130

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 19, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 19, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = lshr i32 %70, 1
  %72 = icmp eq ptr %10, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load ptr, ptr %10, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.dma_device, ptr %74, i32 0, i32 40
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %76, %73, %66
  %81 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 11
  store ptr null, ptr %81, align 4
  br label %86

82:                                               ; preds = %76
  %83 = call ptr %78(ptr noundef nonnull %10, i32 noundef %68, i32 noundef %70, i32 noundef %71, i32 noundef 2, i32 noundef 1) #14
  %84 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 11
  store ptr %83, ptr %84, align 4
  %85 = icmp eq ptr %83, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %82, %80
  %87 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %88 = load ptr, ptr %87, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.18) #15
  br label %130

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %83, i32 0, i32 6
  store ptr @lpuart_dma_rx_complete, ptr %90, align 4
  %91 = load ptr, ptr %84, align 4
  %92 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %91, i32 0, i32 8
  store ptr %0, ptr %92, align 4
  %93 = load ptr, ptr %84, align 4
  %94 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %93, i32 0, i32 4
  %95 = load ptr, ptr %94, align 4
  %96 = call i32 %95(ptr noundef %93) #14
  %97 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 13
  store i32 %96, ptr %97, align 4
  %98 = load ptr, ptr %10, align 4
  %99 = getelementptr inbounds %struct.dma_device, ptr %98, i32 0, i32 50
  %100 = load ptr, ptr %99, align 4
  call void %100(ptr noundef nonnull %10) #14
  %101 = load i8, ptr %43, align 2
  switch i8 %101, label %122 [
    i8 3, label %102
    i8 6, label %106
  ]

102:                                              ; preds = %89
  %103 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %104 = load ptr, ptr %103, align 4
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #14, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %111

106:                                              ; preds = %89
  %107 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #14, !srcloc !8
  %110 = call i32 @llvm.bswap.i32(i32 %109) #14
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %111

111:                                              ; preds = %106, %102
  %112 = phi i32 [ %105, %102 ], [ %110, %106 ]
  %113 = load i8, ptr %43, align 2
  %114 = or i32 %112, 2097152
  switch i8 %113, label %130 [
    i8 3, label %115
    i8 6, label %118
  ]

115:                                              ; preds = %111
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  call void @arm_heavy_mb() #14
  %116 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %114) #14, !srcloc !12
  br label %130

118:                                              ; preds = %111
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  call void @arm_heavy_mb() #14
  %119 = call i32 @llvm.bswap.i32(i32 %114) #14
  %120 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #14, !srcloc !12
  br label %130

122:                                              ; preds = %89
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !49
  call void @arm_heavy_mb() #14
  %123 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr i8, ptr %124, i32 11
  %126 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %125) #14, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !50
  %127 = or i8 %126, 32
  %128 = load ptr, ptr %123, align 4
  %129 = getelementptr i8, ptr %128, i32 11
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %129, i8 %127) #14, !srcloc !19
  br label %130

130:                                              ; preds = %122, %118, %115, %111, %86, %62, %39, %1
  %131 = phi i32 [ %63, %62 ], [ -14, %86 ], [ -22, %39 ], [ -12, %1 ], [ 0, %122 ], [ 0, %111 ], [ 0, %115 ], [ 0, %118 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #14
  ret i32 %131
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart_dma_rx_complete(ptr noundef %0) #3 {
  tail call fastcc void @lpuart_copy_rx_to_tty(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lpuart_copy_rx_to_tty(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !51
  %5 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 21
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %9 = load i8, ptr %8, align 2
  switch i8 %9, label %51 [
    i8 3, label %10
    i8 6, label %15
  ]

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %21

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #14, !srcloc !8
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %21

21:                                               ; preds = %15, %10
  %22 = phi i32 [ %20, %15 ], [ %14, %10 ]
  %23 = and i32 %22, 196608
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %97, label %25

25:                                               ; preds = %21
  %26 = load i8, ptr %8, align 2
  switch i8 %26, label %37 [
    i8 3, label %27
    i8 6, label %32
  ]

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 12
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %37

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 12
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %37

37:                                               ; preds = %32, %27, %25
  %38 = and i32 %22, 65536
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  br label %97

44:                                               ; preds = %37
  %45 = and i32 %22, 131072
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %97, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4
  br label %97

51:                                               ; preds = %1
  %52 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 4
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %54) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !52
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 3
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %97, label %59

59:                                               ; preds = %51
  %60 = load ptr, ptr %52, align 4
  %61 = getelementptr i8, ptr %60, i32 3
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %61) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !53
  %63 = and i8 %62, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !54
  tail call void @arm_heavy_mb() #14
  %64 = load ptr, ptr %52, align 4
  %65 = getelementptr i8, ptr %64, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %65, i8 %63) #14, !srcloc !19
  %66 = load ptr, ptr %52, align 4
  %67 = getelementptr i8, ptr %66, i32 7
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %67) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !55
  %69 = and i32 %56, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 8
  br label %78

73:                                               ; preds = %59
  %74 = and i32 %56, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 6
  br label %78

78:                                               ; preds = %76, %71
  %79 = phi ptr [ %77, %76 ], [ %72, %71 ]
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 4
  br label %82

82:                                               ; preds = %78, %73
  %83 = load ptr, ptr %52, align 4
  %84 = getelementptr i8, ptr %83, i32 18
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %84) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !56
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !57
  tail call void @arm_heavy_mb() #14
  %89 = load ptr, ptr %52, align 4
  %90 = getelementptr i8, ptr %89, i32 18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %90, i8 1) #14, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !58
  tail call void @arm_heavy_mb() #14
  %91 = load ptr, ptr %52, align 4
  %92 = getelementptr i8, ptr %91, i32 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %92, i8 64) #14, !srcloc !19
  br label %93

93:                                               ; preds = %88, %82
  %94 = or i8 %62, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !59
  tail call void @arm_heavy_mb() #14
  %95 = load ptr, ptr %52, align 4
  %96 = getelementptr i8, ptr %95, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %96, i8 %94) #14, !srcloc !19
  br label %97

97:                                               ; preds = %93, %51, %47, %44, %40, %21
  %98 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 11
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %99, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = or i32 %101, 2
  store i32 %102, ptr %100, align 4
  %103 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #14
  %104 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 13
  %105 = load i32, ptr %104, align 4
  %106 = load ptr, ptr %6, align 4
  %107 = getelementptr inbounds %struct.dma_device, ptr %106, i32 0, i32 49
  %108 = load ptr, ptr %107, align 4
  %109 = call i32 %108(ptr noundef %6, i32 noundef %105, ptr noundef nonnull %2) #14
  %110 = icmp eq i32 %109, 3
  br i1 %110, label %111, label %114

111:                                              ; preds = %97
  %112 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %113 = load ptr, ptr %112, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.19) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %103) #14
  br label %244

114:                                              ; preds = %97
  %115 = load ptr, ptr %6, align 4
  %116 = getelementptr inbounds %struct.dma_device, ptr %115, i32 0, i32 15
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 19
  call void @dma_sync_sg_for_cpu(ptr noundef %117, ptr noundef %118, i32 noundef 1, i32 noundef 2) #14
  %119 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 19, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %122 = load i32, ptr %121, align 4
  %123 = sub i32 %120, %122
  %124 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 21, i32 1
  store i32 %123, ptr %124, align 4
  %125 = icmp ult i32 %120, %122
  br i1 %125, label %126, label %127, !prof !60

126:                                              ; preds = %114
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/fsl_lpuart.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1196, 0\0A.popsection", ""() #14, !srcloc !61
  unreachable

127:                                              ; preds = %114
  %128 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  %131 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 21, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = icmp slt i32 %123, %132
  br i1 %130, label %206, label %134

134:                                              ; preds = %127
  br i1 %133, label %135, label %169

135:                                              ; preds = %134
  %136 = sub i32 %120, %132
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %167, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr %7, align 4
  %140 = getelementptr i8, ptr %139, i32 %132
  br label %141

141:                                              ; preds = %163, %138
  %142 = phi i32 [ %129, %138 ], [ %164, %163 ]
  %143 = phi i32 [ %136, %138 ], [ %145, %163 ]
  %144 = phi ptr [ %140, %138 ], [ %165, %163 ]
  %145 = add i32 %143, -1
  %146 = load i8, ptr %144, align 1
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %163, label %148

148:                                              ; preds = %141
  %149 = zext i8 %146 to i32
  %150 = icmp eq i32 %142, 0
  br i1 %150, label %163, label %151

151:                                              ; preds = %148
  %152 = load volatile i32, ptr @jiffies, align 64
  %153 = sub i32 %152, %142
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = call i32 @sysrq_mask() #14
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %0, i32 noundef %149) #14
  br i1 %159, label %167, label %160

160:                                              ; preds = %158, %151
  store i32 0, ptr %128, align 4
  br label %163

161:                                              ; preds = %155
  %162 = zext i8 %146 to i32
  call void @handle_sysrq(i32 noundef %162) #14
  store i32 0, ptr %128, align 4
  br label %167

163:                                              ; preds = %160, %148, %141
  %164 = phi i32 [ 0, %160 ], [ 0, %148 ], [ %142, %141 ]
  %165 = getelementptr i8, ptr %144, i32 1
  %166 = icmp eq i32 %145, 0
  br i1 %166, label %167, label %141

167:                                              ; preds = %163, %161, %158, %135
  store i32 0, ptr %131, align 4
  %168 = load i32, ptr %124, align 4
  br label %169

169:                                              ; preds = %167, %134
  %170 = phi i32 [ 0, %167 ], [ %132, %134 ]
  %171 = phi i32 [ %168, %167 ], [ %123, %134 ]
  %172 = icmp sgt i32 %171, %170
  br i1 %172, label %173, label %234

173:                                              ; preds = %169
  %174 = sub i32 %171, %170
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %204, label %176

176:                                              ; preds = %173
  %177 = load ptr, ptr %7, align 4
  %178 = getelementptr i8, ptr %177, i32 %170
  br label %179

179:                                              ; preds = %201, %176
  %180 = phi i32 [ %174, %176 ], [ %182, %201 ]
  %181 = phi ptr [ %178, %176 ], [ %202, %201 ]
  %182 = add i32 %180, -1
  %183 = load i8, ptr %181, align 1
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %201, label %185

185:                                              ; preds = %179
  %186 = zext i8 %183 to i32
  %187 = load i32, ptr %128, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %201, label %189

189:                                              ; preds = %185
  %190 = load volatile i32, ptr @jiffies, align 64
  %191 = sub i32 %190, %187
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = call i32 @sysrq_mask() #14
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %0, i32 noundef %186) #14
  br i1 %197, label %204, label %198

198:                                              ; preds = %196, %189
  store i32 0, ptr %128, align 4
  br label %201

199:                                              ; preds = %193
  %200 = zext i8 %183 to i32
  call void @handle_sysrq(i32 noundef %200) #14
  store i32 0, ptr %128, align 4
  br label %204

201:                                              ; preds = %198, %185, %179
  %202 = getelementptr i8, ptr %181, i32 1
  %203 = icmp eq i32 %182, 0
  br i1 %203, label %204, label %179

204:                                              ; preds = %201, %199, %196, %173
  %205 = load i32, ptr %124, align 4
  store i32 %205, ptr %131, align 4
  br label %234

206:                                              ; preds = %127
  br i1 %133, label %207, label %216

207:                                              ; preds = %206
  %208 = sub i32 %120, %132
  %209 = load ptr, ptr %7, align 4
  %210 = getelementptr i8, ptr %209, i32 %132
  %211 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %4, ptr noundef %210, i8 noundef zeroext 0, i32 noundef %208) #14
  store i32 0, ptr %131, align 4
  %212 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %213 = load i32, ptr %212, align 4
  %214 = add i32 %213, %208
  store i32 %214, ptr %212, align 4
  %215 = load i32, ptr %124, align 4
  br label %216

216:                                              ; preds = %207, %206
  %217 = phi i32 [ %215, %207 ], [ %123, %206 ]
  %218 = phi i32 [ 0, %207 ], [ %132, %206 ]
  %219 = icmp sgt i32 %217, %218
  br i1 %219, label %220, label %234

220:                                              ; preds = %216
  %221 = sub i32 %217, %218
  %222 = load ptr, ptr %7, align 4
  %223 = getelementptr i8, ptr %222, i32 %218
  %224 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %4, ptr noundef %223, i8 noundef zeroext 0, i32 noundef %221) #14
  %225 = load i32, ptr %124, align 4
  %226 = load i32, ptr %119, align 4
  %227 = icmp ult i32 %225, %226
  br i1 %227, label %229, label %228

228:                                              ; preds = %220
  store i32 0, ptr %124, align 4
  br label %229

229:                                              ; preds = %228, %220
  %230 = phi i32 [ 0, %228 ], [ %225, %220 ]
  store i32 %230, ptr %131, align 4
  %231 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %232 = load i32, ptr %231, align 4
  %233 = add i32 %232, %221
  store i32 %233, ptr %231, align 4
  br label %234

234:                                              ; preds = %229, %216, %204, %169
  %235 = load ptr, ptr %6, align 4
  %236 = getelementptr inbounds %struct.dma_device, ptr %235, i32 0, i32 15
  %237 = load ptr, ptr %236, align 4
  call void @dma_sync_sg_for_device(ptr noundef %237, ptr noundef %118, i32 noundef 1, i32 noundef 2) #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %103) #14
  call void @tty_flip_buffer_push(ptr noundef %4) #14
  %238 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 18
  %239 = load volatile i32, ptr @jiffies, align 64
  %240 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 17
  %241 = load i32, ptr %240, align 4
  %242 = add i32 %241, %239
  %243 = call i32 @mod_timer(ptr noundef %238, i32 noundef %242) #14
  br label %244

244:                                              ; preds = %234, %111
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart_timer_func(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -384
  tail call fastcc void @lpuart_copy_rx_to_tty(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lpuart_dma_shutdown(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 7
  %4 = load i8, ptr %3, align 1, !range !22
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 18
  %8 = tail call i32 @del_timer_sync(ptr noundef %7) #14
  %9 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %6
  %16 = tail call i32 %13(ptr noundef %10) #14
  %17 = load ptr, ptr %10, align 4
  br label %18

18:                                               ; preds = %15, %6
  %19 = phi ptr [ %11, %6 ], [ %17, %15 ]
  %20 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 19
  tail call void @dma_unmap_sg_attrs(ptr noundef %21, ptr noundef %22, i32 noundef 1, i32 noundef 2, i32 noundef 0) #14
  %23 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 21
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #14
  %25 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 21, i32 2
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 21, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 11
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 13
  store i32 -22, ptr %28, align 4
  br label %29

29:                                               ; preds = %18, %1
  %30 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 6
  %31 = load i8, ptr %30, align 4, !range !22
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %71, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 16
  %35 = load i8, ptr %34, align 4, !range !22
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %71, label %37

37:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !51
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #14
  %38 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 24
  %39 = call i32 @prepare_to_wait_event(ptr noundef %38, ptr noundef nonnull %2, i32 noundef 1) #14
  %40 = load i8, ptr %34, align 4, !range !22
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %46, %37
  %43 = phi i32 [ %54, %46 ], [ 30, %37 ]
  %44 = phi i32 [ %48, %46 ], [ %39, %37 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = call i32 @schedule_timeout(i32 noundef %43) #14
  %48 = call i32 @prepare_to_wait_event(ptr noundef %38, ptr noundef nonnull %2, i32 noundef 1) #14
  %49 = load i8, ptr %34, align 4, !range !22
  %50 = icmp ne i8 %49, 0
  %51 = xor i1 %50, true
  %52 = icmp ne i32 %47, 0
  %53 = select i1 %50, i1 true, i1 %52
  %54 = select i1 %53, i32 %47, i32 1
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %51, i1 true, i1 %55
  br i1 %56, label %57, label %42

57:                                               ; preds = %46, %37
  %58 = phi i32 [ 30, %37 ], [ %54, %46 ]
  call void @finish_wait(ptr noundef %38, ptr noundef nonnull %2) #14
  br label %59

59:                                               ; preds = %57, %42
  %60 = phi i32 [ %58, %57 ], [ %44, %42 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  store i8 0, ptr %34, align 4
  %63 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 47
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %62
  %70 = call i32 %67(ptr noundef %64) #14
  br label %71

71:                                               ; preds = %69, %62, %59, %33, %29
  %72 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 8
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  call void @dma_release_channel(ptr noundef nonnull %73) #14
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 9
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  call void @dma_release_channel(ptr noundef nonnull %78) #14
  br label %81

81:                                               ; preds = %80, %76
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lpuart_tx_empty(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !62
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 18
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !63
  %9 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 16
  %10 = load i8, ptr %9, align 4, !range !22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = and i8 %5, 64
  %14 = icmp ne i8 %13, 0
  %15 = icmp slt i8 %8, 0
  %16 = select i1 %14, i1 %15, i1 false
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i32 [ 0, %1 ], [ %17, %12 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart_set_mctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 2
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !64
  %7 = and i8 %6, 95
  %8 = lshr i32 %1, 8
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, -128
  %11 = or i8 %7, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !65
  tail call void @arm_heavy_mb() #14
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #14, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lpuart_get_mctrl(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 2
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !66
  %6 = and i8 %5, -128
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart_stop_tx(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 3
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !67
  %6 = and i8 %5, 63
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !68
  tail call void @arm_heavy_mb() #14
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %6) #14, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart_start_tx(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 3
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !69
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !70
  tail call void @arm_heavy_mb() #14
  %6 = or i8 %5, -128
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %6) #14, !srcloc !19
  %9 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 6
  %10 = load i8, ptr %9, align 4, !range !22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.uart_state, ptr %14, i32 0, i32 2, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.uart_state, ptr %14, i32 0, i32 2, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %39, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.tty_port, ptr %14, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tty_struct, ptr %22, i32 0, i32 19, i32 1
  %26 = load i8, ptr %25, align 4, !range !22
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  tail call fastcc void @lpuart_dma_tx(ptr noundef %0)
  br label %39

33:                                               ; preds = %1
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr i8, ptr %34, i32 4
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %35) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !71
  %37 = icmp sgt i8 %36, -1
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call fastcc void @lpuart_transmit_buffer(ptr noundef %0)
  br label %39

39:                                               ; preds = %38, %33, %32, %28, %24, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart_stop_rx(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 3
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !72
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !73
  tail call void @arm_heavy_mb() #14
  %6 = and i8 %5, -5
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %6) #14, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart_break_ctl(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 3
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !74
  %7 = and i8 %6, -2
  %8 = icmp ne i32 %1, 0
  %9 = zext i1 %8 to i8
  %10 = or i8 %7, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !75
  tail call void @arm_heavy_mb() #14
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %10) #14, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lpuart_startup(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !76
  %6 = zext i8 %5 to i32
  %7 = lshr i32 %6, 4
  %8 = and i32 %7, 7
  %9 = icmp eq i32 %8, 0
  %10 = shl nuw nsw i32 2, %8
  %11 = select i1 %9, i32 1, i32 %10
  %12 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 4
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  store i32 %11, ptr %13, align 4
  %14 = and i32 %6, 7
  %15 = icmp eq i32 %14, 0
  %16 = shl nuw nsw i32 2, %14
  %17 = select i1 %15, i32 1, i32 %16
  %18 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 5
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %20 = load ptr, ptr %19, align 4
  %21 = tail call ptr @dma_request_chan(ptr noundef %20, ptr noundef nonnull @.str.13) #14
  %22 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 8
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i1, ptr @lpuart_request_dma.__print_once, align 1
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  store i1 true, ptr @lpuart_request_dma.__print_once, align 1
  br label %27

27:                                               ; preds = %26, %24
  store ptr null, ptr %22, align 4
  br label %28

28:                                               ; preds = %27, %1
  %29 = load ptr, ptr %19, align 4
  %30 = tail call ptr @dma_request_chan(ptr noundef %29, ptr noundef nonnull @.str.14) #14
  %31 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 9
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i1, ptr @lpuart_request_dma.__print_once.15, align 1
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  store i1 true, ptr @lpuart_request_dma.__print_once.15, align 1
  br label %36

36:                                               ; preds = %35, %33
  store ptr null, ptr %31, align 4
  br label %37

37:                                               ; preds = %36, %28
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #14
  tail call fastcc void @lpuart_setup_watermark(ptr noundef %0) #14
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr i8, ptr %39, i32 3
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %40) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !77
  %42 = or i8 %41, 44
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !78
  tail call void @arm_heavy_mb() #14
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr i8, ptr %43, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 %42) #14, !srcloc !19
  tail call fastcc void @lpuart_rx_dma_startup(ptr noundef %0)
  tail call fastcc void @lpuart_tx_dma_startup(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %38) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart_shutdown(ptr noundef %0) #3 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 3
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !79
  %7 = and i8 %6, 19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !80
  tail call void @arm_heavy_mb() #14
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %7) #14, !srcloc !19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #14
  tail call fastcc void @lpuart_dma_shutdown(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ktermios, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 48
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ %8, %5 ], [ 48, %3 ]
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 2
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !81
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr i8, ptr %15, i32 3
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !82
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 6
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %19) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !83
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr i8, ptr %21, i32 10
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !84
  %24 = load ptr, ptr %11, align 4
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !85
  %26 = load ptr, ptr %11, align 4
  %27 = getelementptr i8, ptr %26, i32 13
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %27) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !86
  %29 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %35, %9
  %32 = phi i32 [ %30, %9 ], [ %37, %35 ]
  %33 = phi i32 [ %10, %9 ], [ 48, %35 ]
  %34 = and i32 %32, 48
  switch i32 %34, label %35 [
    i32 48, label %38
    i32 32, label %38
  ]

35:                                               ; preds = %31
  %36 = and i32 %32, -49
  %37 = or i32 %36, %33
  store i32 %37, ptr %29, align 4
  br label %31

38:                                               ; preds = %31, %31
  %39 = and i8 %14, -17
  %40 = and i32 %32, 1073741824
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = icmp eq i32 %34, 48
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = or i32 %32, 48
  store i32 %45, ptr %29, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %45, %44 ], [ %32, %42 ]
  %48 = or i8 %14, 16
  br label %49

49:                                               ; preds = %46, %38
  %50 = phi i32 [ %47, %46 ], [ %32, %38 ]
  %51 = phi i8 [ %48, %46 ], [ %39, %38 ]
  %52 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  %56 = and i32 %50, 2147483647
  %57 = select i1 %55, i32 %50, i32 %56
  %58 = and i8 %28, -10
  %59 = icmp slt i32 %57, 0
  %60 = select i1 %59, i8 9, i8 0
  %61 = or i8 %60, %58
  %62 = and i32 %57, -65
  %63 = and i32 %57, 48
  %64 = icmp eq i32 %63, 32
  %65 = or i32 %62, 256
  %66 = select i1 %64, i32 %65, i32 %62
  store i32 %66, ptr %29, align 4
  %67 = and i32 %66, 256
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %91, label %69

69:                                               ; preds = %49
  %70 = and i32 %66, 1073741824
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %69
  %73 = and i8 %51, -3
  %74 = and i32 %66, 512
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = or i8 %20, 64
  br label %93

78:                                               ; preds = %72
  %79 = and i8 %20, -65
  br label %93

80:                                               ; preds = %69
  %81 = and i32 %66, 48
  %82 = icmp eq i32 %81, 48
  %83 = select i1 %82, i8 18, i8 2
  %84 = or i8 %83, %51
  %85 = and i32 %66, 512
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = or i8 %84, 1
  br label %93

89:                                               ; preds = %80
  %90 = and i8 %84, -2
  br label %93

91:                                               ; preds = %49
  %92 = and i8 %51, -3
  br label %93

93:                                               ; preds = %91, %89, %87, %78, %76
  %94 = phi i8 [ %77, %76 ], [ %79, %78 ], [ %20, %87 ], [ %20, %89 ], [ %20, %91 ]
  %95 = phi i8 [ %73, %76 ], [ %73, %78 ], [ %88, %87 ], [ %90, %89 ], [ %92, %91 ]
  %96 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %97 = load i32, ptr %96, align 4
  %98 = lshr i32 %97, 4
  %99 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 50, i32 noundef %98) #14
  br i1 %4, label %127, label %100

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 7
  %102 = load i8, ptr %101, align 1, !range !22
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %127, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 18
  %106 = tail call i32 @del_timer_sync(ptr noundef %105) #14
  %107 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 9
  %108 = load ptr, ptr %107, align 4
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.dma_device, ptr %109, i32 0, i32 47
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %104
  %114 = tail call i32 %111(ptr noundef %108) #14
  %115 = load ptr, ptr %108, align 4
  br label %116

116:                                              ; preds = %113, %104
  %117 = phi ptr [ %109, %104 ], [ %115, %113 ]
  %118 = getelementptr inbounds %struct.dma_device, ptr %117, i32 0, i32 15
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 19
  tail call void @dma_unmap_sg_attrs(ptr noundef %119, ptr noundef %120, i32 noundef 1, i32 noundef 2, i32 noundef 0) #14
  %121 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 21
  %122 = load ptr, ptr %121, align 4
  tail call void @kfree(ptr noundef %122) #14
  %123 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 21, i32 2
  store i32 0, ptr %123, align 4
  %124 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 21, i32 1
  store i32 0, ptr %124, align 4
  %125 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 11
  store ptr null, ptr %125, align 4
  %126 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 13
  store i32 -22, ptr %126, align 4
  br label %127

127:                                              ; preds = %116, %100, %93
  %128 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #14
  %129 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 0, ptr %129, align 4
  %130 = load i32, ptr %1, align 4
  %131 = and i32 %130, 16
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %132, i32 0, i32 3
  store i32 %133, ptr %129, align 4
  %134 = load i32, ptr %1, align 4
  %135 = and i32 %134, 11
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %127
  %138 = or i32 %133, 2
  store i32 %138, ptr %129, align 4
  br label %139

139:                                              ; preds = %137, %127
  %140 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 0, ptr %140, align 4
  %141 = load i32, ptr %1, align 4
  %142 = lshr i32 %141, 2
  %143 = and i32 %142, 1
  store i32 %143, ptr %140, align 4
  %144 = load i32, ptr %1, align 4
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %139
  %148 = or i32 %143, 2
  store i32 %148, ptr %140, align 4
  %149 = load i32, ptr %1, align 4
  %150 = and i32 %149, 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %147
  %153 = or i32 %143, 10
  store i32 %153, ptr %140, align 4
  br label %154

154:                                              ; preds = %152, %147, %139
  %155 = load i32, ptr %29, align 4
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %155, i32 noundef %99) #14
  %156 = load ptr, ptr %11, align 4
  %157 = getelementptr i8, ptr %156, i32 4
  %158 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %157) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !15
  %159 = and i8 %158, 64
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %161, %154
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !17
  %162 = load ptr, ptr %11, align 4
  %163 = getelementptr i8, ptr %162, i32 4
  %164 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %163) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !15
  %165 = and i8 %164, 64
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %161, label %167

167:                                              ; preds = %161, %154
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !87
  tail call void @arm_heavy_mb() #14
  %168 = and i8 %17, -13
  %169 = load ptr, ptr %11, align 4
  %170 = getelementptr i8, ptr %169, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %170, i8 %168) #14, !srcloc !19
  %171 = load i32, ptr %96, align 4
  %172 = shl i32 %99, 4
  %173 = udiv i32 %171, %172
  %174 = mul i32 %99, 2147483632
  %175 = mul i32 %174, %173
  %176 = add i32 %175, %171
  %177 = shl i32 %176, 1
  %178 = udiv i32 %177, %99
  %179 = and i8 %25, -32
  %180 = lshr i32 %173, 8
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 31
  %183 = or i8 %182, %179
  %184 = and i8 %23, -32
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !88
  tail call void @arm_heavy_mb() #14
  %185 = trunc i32 %178 to i8
  %186 = and i8 %185, 31
  %187 = or i8 %186, %184
  %188 = load ptr, ptr %11, align 4
  %189 = getelementptr i8, ptr %188, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %189, i8 %187) #14, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !89
  tail call void @arm_heavy_mb() #14
  %190 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %190, i8 %183) #14, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !90
  tail call void @arm_heavy_mb() #14
  %191 = trunc i32 %173 to i8
  %192 = load ptr, ptr %11, align 4
  %193 = getelementptr i8, ptr %192, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %193, i8 %191) #14, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !91
  tail call void @arm_heavy_mb() #14
  %194 = load ptr, ptr %11, align 4
  %195 = getelementptr i8, ptr %194, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %195, i8 %94) #14, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !92
  tail call void @arm_heavy_mb() #14
  %196 = load ptr, ptr %11, align 4
  %197 = getelementptr i8, ptr %196, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %197, i8 %95) #14, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !93
  tail call void @arm_heavy_mb() #14
  %198 = load ptr, ptr %11, align 4
  %199 = getelementptr i8, ptr %198, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %199, i8 %61) #14, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !94
  tail call void @arm_heavy_mb() #14
  %200 = load ptr, ptr %11, align 4
  %201 = getelementptr i8, ptr %200, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %201, i8 %17) #14, !srcloc !19
  br i1 %4, label %217, label %202

202:                                              ; preds = %167
  %203 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 7
  %204 = load i8, ptr %203, align 1, !range !22
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %217, label %206

206:                                              ; preds = %202
  %207 = tail call fastcc i32 @lpuart_start_rx_dma(ptr noundef %0)
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 18
  tail call void @init_timer_key(ptr noundef %210, ptr noundef nonnull @lpuart_timer_func, i32 noundef 0, ptr noundef null, ptr noundef null) #14
  %211 = load volatile i32, ptr @jiffies, align 64
  %212 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 17
  %213 = load i32, ptr %212, align 4
  %214 = add i32 %213, %211
  %215 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 18, i32 1
  store i32 %214, ptr %215, align 4
  tail call void @add_timer(ptr noundef %210) #14
  br label %217

216:                                              ; preds = %206
  store i8 0, ptr %203, align 1
  br label %217

217:                                              ; preds = %216, %209, %202, %167
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %128) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lpuart_transmit_buffer(ptr noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 24
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !95
  tail call void @arm_heavy_mb() #14
  %9 = load i8, ptr %5, align 4
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %9) #14, !srcloc !19
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  store i8 0, ptr %5, align 4
  br label %91

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %38, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tty_struct, ptr %24, i32 0, i32 19, i32 1
  %28 = load i8, ptr %27, align 4, !range !22
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %36 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 4
  %37 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  br label %46

38:                                               ; preds = %30, %26, %16
  %39 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 3
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %41) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !67
  %43 = and i8 %42, 63
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !68
  tail call void @arm_heavy_mb() #14
  %44 = load ptr, ptr %39, align 4
  %45 = getelementptr i8, ptr %44, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %45, i8 %43) #14, !srcloc !19
  br label %91

46:                                               ; preds = %56, %34
  %47 = load ptr, ptr %35, align 4
  %48 = getelementptr i8, ptr %47, i32 20
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %48) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !96
  %50 = zext i8 %49 to i32
  %51 = load i32, ptr %36, align 4
  %52 = icmp ugt i32 %51, %50
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, ptr %17, align 4
  %55 = load i32, ptr %19, align 4
  br label %71

56:                                               ; preds = %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !97
  tail call void @arm_heavy_mb() #14
  %57 = load ptr, ptr %4, align 4
  %58 = load i32, ptr %19, align 4
  %59 = getelementptr i8, ptr %57, i32 %58
  %60 = load i8, ptr %59, align 1
  %61 = load ptr, ptr %35, align 4
  %62 = getelementptr i8, ptr %61, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %62, i8 %60) #14, !srcloc !19
  %63 = load i32, ptr %19, align 4
  %64 = add i32 %63, 1
  %65 = and i32 %64, 4095
  store i32 %65, ptr %19, align 4
  %66 = load i32, ptr %37, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %37, align 4
  %68 = load i32, ptr %17, align 4
  %69 = load i32, ptr %19, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %46

71:                                               ; preds = %56, %53
  %72 = phi i32 [ %55, %53 ], [ %68, %56 ]
  %73 = phi i32 [ %54, %53 ], [ %68, %56 ]
  %74 = sub i32 %73, %72
  %75 = and i32 %74, 3840
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  tail call void @uart_write_wakeup(ptr noundef %0) #14
  %78 = load i32, ptr %17, align 4
  %79 = load i32, ptr %19, align 4
  br label %80

80:                                               ; preds = %77, %71
  %81 = phi i32 [ %79, %77 ], [ %72, %71 ]
  %82 = phi i32 [ %78, %77 ], [ %73, %71 ]
  %83 = icmp eq i32 %82, %81
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load ptr, ptr %35, align 4
  %86 = getelementptr i8, ptr %85, i32 3
  %87 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %86) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !67
  %88 = and i8 %87, 63
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !68
  tail call void @arm_heavy_mb() #14
  %89 = load ptr, ptr %35, align 4
  %90 = getelementptr i8, ptr %89, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %90, i8 %88) #14, !srcloc !19
  br label %91

91:                                               ; preds = %84, %80, %38, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lpuart_setup_watermark(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 3
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !98
  %6 = and i8 %5, 19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !99
  tail call void @arm_heavy_mb() #14
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %6) #14, !srcloc !19
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !100
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !101
  tail call void @arm_heavy_mb() #14
  %12 = or i8 %11, -120
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %12) #14, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !102
  tail call void @arm_heavy_mb() #14
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 -64) #14, !srcloc !19
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 4
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !103
  %20 = and i8 %19, 32
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr i8, ptr %23, i32 7
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !104
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !105
  tail call void @arm_heavy_mb() #14
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr i8, ptr %26, i32 18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 1) #14, !srcloc !19
  br label %28

28:                                               ; preds = %22, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !106
  tail call void @arm_heavy_mb() #14
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr i8, ptr %29, i32 19
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 0) #14, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !107
  tail call void @arm_heavy_mb() #14
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr i8, ptr %31, i32 21
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %32, i8 1) #14, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !108
  tail call void @arm_heavy_mb() #14
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 %5) #14, !srcloc !19
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart32_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr [6 x ptr], ptr @lpuart_ports, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @oops_in_progress, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !109
  %13 = tail call i32 @_raw_spin_trylock(ptr noundef %8) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #14, !srcloc !110
  br label %18

16:                                               ; preds = %3
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #14
  br label %18

18:                                               ; preds = %16, %15, %11
  %19 = phi i1 [ true, %15 ], [ false, %11 ], [ false, %16 ]
  %20 = phi i32 [ %12, %15 ], [ %12, %11 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 26
  %22 = load i8, ptr %21, align 2
  switch i8 %22, label %37 [
    i8 3, label %23
    i8 6, label %28
  ]

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %34

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #14, !srcloc !8
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i32 [ %27, %23 ], [ %33, %28 ]
  %36 = load i8, ptr %21, align 2
  br label %37

37:                                               ; preds = %34, %18
  %38 = phi i8 [ %36, %34 ], [ %22, %18 ]
  %39 = phi i32 [ %35, %34 ], [ 0, %18 ]
  %40 = and i32 %39, -15466497
  %41 = or i32 %40, 786432
  switch i8 %38, label %51 [
    i8 3, label %42
    i8 6, label %46
  ]

42:                                               ; preds = %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %43 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %41) #14, !srcloc !12
  br label %51

46:                                               ; preds = %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %47 = tail call i32 @llvm.bswap.i32(i32 %41) #14
  %48 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %47) #14, !srcloc !12
  br label %51

51:                                               ; preds = %46, %42, %37
  tail call void @uart_console_write(ptr noundef %8, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @lpuart32_console_putchar) #14
  %52 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 2
  br label %53

53:                                               ; preds = %68, %51
  %54 = load i8, ptr %21, align 2
  switch i8 %54, label %68 [
    i8 3, label %55
    i8 6, label %59
  ]

55:                                               ; preds = %53
  %56 = load ptr, ptr %52, align 4
  %57 = getelementptr i8, ptr %56, i32 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %64

59:                                               ; preds = %53
  %60 = load ptr, ptr %52, align 4
  %61 = getelementptr i8, ptr %60, i32 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #14, !srcloc !8
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i32 [ %63, %59 ], [ %58, %55 ]
  %66 = and i32 %65, 4194304
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !21
  br label %53

69:                                               ; preds = %64
  %70 = load i8, ptr %21, align 2
  switch i8 %70, label %78 [
    i8 3, label %71
    i8 6, label %74
  ]

71:                                               ; preds = %69
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %72 = load ptr, ptr %52, align 4
  %73 = getelementptr i8, ptr %72, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %39) #14, !srcloc !12
  br label %78

74:                                               ; preds = %69
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %75 = tail call i32 @llvm.bswap.i32(i32 %39) #14
  %76 = load ptr, ptr %52, align 4
  %77 = getelementptr i8, ptr %76, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #14, !srcloc !12
  br label %78

78:                                               ; preds = %74, %71, %69
  br i1 %19, label %80, label %79

79:                                               ; preds = %78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %20) #14
  br label %80

80:                                               ; preds = %79, %78
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @lpuart_console_setup(ptr noundef %0, ptr noundef %1) #1 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 115200, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 110, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 110, ptr %6, align 4
  %7 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 2
  %9 = icmp ugt i16 %8, 5
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i16 0, ptr %7, align 2
  br label %11

11:                                               ; preds = %10, %2
  %12 = phi i16 [ %8, %2 ], [ 0, %10 ]
  %13 = zext i16 %12 to i32
  %14 = getelementptr [6 x ptr], ptr @lpuart_ports, i32 0, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %11
  %18 = icmp eq ptr %1, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #14
  br label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.uart_port, ptr %15, i32 0, i32 26
  %22 = load i8, ptr %21, align 2
  switch i8 %22, label %24 [
    i8 6, label %23
    i8 3, label %23
  ]

23:                                               ; preds = %20, %20
  call fastcc void @lpuart32_console_get_options(ptr noundef nonnull %15, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  br label %25

24:                                               ; preds = %20
  call fastcc void @lpuart_console_get_options(ptr noundef nonnull %15, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  br label %25

25:                                               ; preds = %24, %23, %19
  %26 = getelementptr inbounds %struct.uart_port, ptr %15, i32 0, i32 26
  %27 = load i8, ptr %26, align 2
  switch i8 %27, label %29 [
    i8 6, label %28
    i8 3, label %28
  ]

28:                                               ; preds = %25, %25
  call fastcc void @lpuart32_setup_watermark(ptr noundef nonnull %15)
  br label %30

29:                                               ; preds = %25
  call fastcc void @lpuart_setup_watermark(ptr noundef nonnull %15)
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, ptr %3, align 4
  %32 = load i32, ptr %5, align 4
  %33 = load i32, ptr %4, align 4
  %34 = load i32, ptr %6, align 4
  %35 = call i32 @uart_set_options(ptr noundef nonnull %15, ptr noundef %0, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34) #14
  br label %36

36:                                               ; preds = %30, %11
  %37 = phi i32 [ %35, %30 ], [ -19, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @lpuart32_console_get_options(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #1 section ".init.text" {
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %6 = load i8, ptr %5, align 2
  switch i8 %6, label %81 [
    i8 3, label %7
    i8 6, label %12
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %18

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #14, !srcloc !8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %18

18:                                               ; preds = %12, %7
  %19 = phi i32 [ %17, %12 ], [ %11, %7 ]
  %20 = and i32 %19, 786432
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %81, label %22

22:                                               ; preds = %18
  %23 = load i8, ptr %5, align 2
  switch i8 %23, label %43 [
    i8 3, label %24
    i8 6, label %29
  ]

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %35

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #14, !srcloc !8
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %35

35:                                               ; preds = %29, %24
  %36 = phi i32 [ %34, %29 ], [ %28, %24 ]
  store i32 110, ptr %2, align 4
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = and i32 %36, 1
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 101, i32 111
  br label %43

43:                                               ; preds = %39, %22
  %44 = phi i32 [ 110, %22 ], [ %42, %39 ]
  %45 = phi i32 [ 0, %22 ], [ %36, %39 ]
  store i32 %44, ptr %2, align 4
  br label %46

46:                                               ; preds = %43, %35
  %47 = phi i32 [ %36, %35 ], [ %45, %43 ]
  %48 = and i32 %47, 16
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 8, i32 9
  store i32 %50, ptr %3, align 4
  %51 = load i8, ptr %5, align 2
  switch i8 %51, label %81 [
    i8 3, label %52
    i8 6, label %56
  ]

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %61

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #14, !srcloc !8
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %61

61:                                               ; preds = %56, %52
  %62 = phi i32 [ %60, %56 ], [ %55, %52 ]
  %63 = and i32 %62, 8191
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %81, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 4
  %69 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 2
  %70 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 3
  %71 = select i1 %68, ptr %70, ptr %69
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 @clk_get_rate(ptr noundef %72) #14
  %74 = shl nuw nsw i32 %63, 4
  %75 = udiv i32 %73, %74
  %76 = load i32, ptr %1, align 4
  %77 = icmp eq i32 %76, %75
  br i1 %77, label %81, label %78

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %80 = load ptr, ptr %79, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.23, i32 noundef %75, i32 noundef %76) #15
  br label %81

81:                                               ; preds = %78, %65, %61, %46, %18, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @lpuart_console_get_options(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #1 section ".init.text" {
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 3
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !111
  %9 = and i8 %8, 12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %53, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 2
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !112
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %15, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 101, i32 111
  %21 = select i1 %17, i32 110, i32 %20
  store i32 %21, ptr %2, align 4
  %22 = and i32 %15, 16
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 8, i32 9
  store i32 %24, ptr %3, align 4
  %25 = load ptr, ptr %5, align 4
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %25) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !113
  %27 = and i8 %26, 31
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr i8, ptr %28, i32 1
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %29) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !114
  %31 = zext i8 %27 to i32
  %32 = zext i8 %30 to i32
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i8, ptr %33, i32 10
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %34) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !115
  %36 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 4
  %39 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 2
  %40 = getelementptr inbounds %struct.lpuart_port, ptr %0, i32 0, i32 3
  %41 = select i1 %38, ptr %40, ptr %39
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @clk_get_rate(ptr noundef %42) #14
  %44 = shl nuw nsw i32 %31, 12
  %45 = shl nuw nsw i32 %32, 4
  %46 = or i32 %45, %44
  %47 = udiv i32 %43, %46
  %48 = load i32, ptr %1, align 4
  %49 = icmp eq i32 %48, %47
  br i1 %49, label %53, label %50

50:                                               ; preds = %11
  %51 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %52 = load ptr, ptr %51, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.23, i32 noundef %47, i32 noundef %48) #15
  br label %53

53:                                               ; preds = %50, %11, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lpuart_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr [6 x ptr], ptr @lpuart_ports, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @oops_in_progress, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !109
  %13 = tail call i32 @_raw_spin_trylock(ptr noundef %8) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #14, !srcloc !110
  br label %18

16:                                               ; preds = %3
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #14
  br label %18

18:                                               ; preds = %16, %15, %11
  %19 = phi i1 [ true, %15 ], [ false, %11 ], [ false, %16 ]
  %20 = phi i32 [ %12, %15 ], [ %12, %11 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 3
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %23) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !116
  %25 = and i8 %24, 19
  %26 = or i8 %25, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !117
  tail call void @arm_heavy_mb() #14
  %27 = load ptr, ptr %21, align 4
  %28 = getelementptr i8, ptr %27, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 %26) #14, !srcloc !19
  tail call void @uart_console_write(ptr noundef %8, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @lpuart_console_putchar) #14
  %29 = load ptr, ptr %21, align 4
  %30 = getelementptr i8, ptr %29, i32 4
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %30) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !15
  %32 = and i8 %31, 64
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %34, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !17
  %35 = load ptr, ptr %21, align 4
  %36 = getelementptr i8, ptr %35, i32 4
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %36) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !15
  %38 = and i8 %37, 64
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %34, label %40

40:                                               ; preds = %34, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !118
  tail call void @arm_heavy_mb() #14
  %41 = load ptr, ptr %21, align 4
  %42 = getelementptr i8, ptr %41, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %42, i8 %24) #14, !srcloc !19
  br i1 %19, label %44, label %43

43:                                               ; preds = %40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %20) #14
  br label %44

44:                                               ; preds = %43, %40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lpuart_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 26
  %5 = load i8, ptr %4, align 2
  switch i8 %5, label %30 [
    i8 3, label %6
    i8 6, label %11
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #14, !srcloc !8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %17

17:                                               ; preds = %11, %6
  %18 = phi i32 [ %10, %6 ], [ %16, %11 ]
  %19 = load i8, ptr %4, align 2
  %20 = and i32 %18, -13107201
  switch i8 %19, label %38 [
    i8 3, label %21
    i8 6, label %25
  ]

21:                                               ; preds = %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %22 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %20) #14, !srcloc !12
  br label %38

25:                                               ; preds = %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %26 = tail call i32 @llvm.bswap.i32(i32 %20) #14
  %27 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #14, !srcloc !12
  br label %38

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 3
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %33) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !119
  %35 = and i8 %34, 55
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !120
  tail call void @arm_heavy_mb() #14
  %36 = load ptr, ptr %31, align 4
  %37 = getelementptr i8, ptr %36, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 %35) #14, !srcloc !19
  br label %38

38:                                               ; preds = %30, %25, %21, %17
  %39 = tail call i32 @uart_suspend_port(ptr noundef nonnull @lpuart_reg, ptr noundef %3) #14
  %40 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 20
  %41 = load i32, ptr %40, align 4
  %42 = tail call ptr @irq_get_irq_data(i32 noundef %41) #14
  %43 = getelementptr inbounds %struct.irq_data, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 16384
  %47 = icmp ne i32 %46, 0
  %48 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 7
  %49 = load i8, ptr %48, align 1, !range !22
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %105, label %51

51:                                               ; preds = %38
  br i1 %47, label %52, label %75

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 18
  %54 = tail call i32 @del_timer_sync(ptr noundef %53) #14
  %55 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 9
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 47
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  %62 = tail call i32 %59(ptr noundef %56) #14
  %63 = load ptr, ptr %56, align 4
  br label %64

64:                                               ; preds = %61, %52
  %65 = phi ptr [ %57, %52 ], [ %63, %61 ]
  %66 = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 15
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 19
  tail call void @dma_unmap_sg_attrs(ptr noundef %67, ptr noundef %68, i32 noundef 1, i32 noundef 2, i32 noundef 0) #14
  %69 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 21
  %70 = load ptr, ptr %69, align 4
  tail call void @kfree(ptr noundef %70) #14
  %71 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 21, i32 2
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 21, i32 1
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 11
  store ptr null, ptr %73, align 4
  %74 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 13
  store i32 -22, ptr %74, align 4
  br label %75

75:                                               ; preds = %64, %51
  %76 = load i8, ptr %4, align 2
  switch i8 %76, label %97 [
    i8 3, label %77
    i8 6, label %81
  ]

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %86

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #14, !srcloc !8
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  br label %86

86:                                               ; preds = %81, %77
  %87 = phi i32 [ %80, %77 ], [ %85, %81 ]
  %88 = load i8, ptr %4, align 2
  %89 = and i32 %87, -2097153
  switch i8 %88, label %105 [
    i8 3, label %90
    i8 6, label %93
  ]

90:                                               ; preds = %86
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %91 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %89) #14, !srcloc !12
  br label %105

93:                                               ; preds = %86
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !13
  tail call void @arm_heavy_mb() #14
  %94 = tail call i32 @llvm.bswap.i32(i32 %89) #14
  %95 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #14, !srcloc !12
  br label %105

97:                                               ; preds = %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !121
  tail call void @arm_heavy_mb() #14
  %98 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 11
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %100) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !122
  %102 = and i8 %101, -33
  %103 = load ptr, ptr %98, align 4
  %104 = getelementptr i8, ptr %103, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %104, i8 %102) #14, !srcloc !19
  br label %105

105:                                              ; preds = %97, %93, %90, %86, %38
  %106 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 6
  %107 = load i8, ptr %106, align 4, !range !22
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 16
  store i8 0, ptr %110, align 4
  %111 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 8
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.dma_device, ptr %113, i32 0, i32 47
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %109
  %118 = tail call i32 %115(ptr noundef %112) #14
  br label %119

119:                                              ; preds = %117, %109, %105
  %120 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 51
  %121 = load i8, ptr %120, align 1
  %122 = icmp eq i8 %121, 0
  %123 = select i1 %122, i1 true, i1 %47
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  tail call void @clk_disable(ptr noundef %126) #14
  tail call void @clk_unprepare(ptr noundef %126) #14
  %127 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  tail call void @clk_disable(ptr noundef %128) #14
  tail call void @clk_unprepare(ptr noundef %128) #14
  br label %129

129:                                              ; preds = %124, %119
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lpuart_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @irq_get_irq_data(i32 noundef %5) #14
  %7 = getelementptr inbounds %struct.irq_data, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 16384
  %11 = icmp ne i32 %10, 0
  %12 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 51
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i1 true, i1 %11
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = tail call fastcc i32 @__lpuart_enable_clks(ptr noundef %3, i1 noundef zeroext true)
  br label %18

18:                                               ; preds = %16, %1
  %19 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 26
  %20 = load i8, ptr %19, align 2
  switch i8 %20, label %22 [
    i8 6, label %21
    i8 3, label %21
  ]

21:                                               ; preds = %18, %18
  tail call fastcc void @lpuart32_setup_watermark_enable(ptr noundef %3)
  br label %30

22:                                               ; preds = %18
  tail call fastcc void @lpuart_setup_watermark(ptr noundef %3) #14
  %23 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 3
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %25) #14, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !77
  %27 = or i8 %26, 44
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !78
  tail call void @arm_heavy_mb() #14
  %28 = load ptr, ptr %23, align 4
  %29 = getelementptr i8, ptr %28, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 %27) #14, !srcloc !19
  br label %30

30:                                               ; preds = %22, %21
  %31 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 7
  %32 = load i8, ptr %31, align 1, !range !22
  %33 = icmp eq i8 %32, 0
  %34 = xor i1 %11, true
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %47, label %36

36:                                               ; preds = %30
  %37 = tail call fastcc i32 @lpuart_start_rx_dma(ptr noundef %3)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 18
  tail call void @init_timer_key(ptr noundef %40, ptr noundef nonnull @lpuart_timer_func, i32 noundef 0, ptr noundef null, ptr noundef null) #14
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 17
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %41
  %45 = getelementptr inbounds %struct.lpuart_port, ptr %3, i32 0, i32 18, i32 1
  store i32 %44, ptr %45, align 4
  tail call void @add_timer(ptr noundef %40) #14
  br label %47

46:                                               ; preds = %36
  store i8 0, ptr %31, align 1
  br label %47

47:                                               ; preds = %46, %39, %30
  tail call fastcc void @lpuart_tx_dma_startup(ptr noundef %3)
  %48 = load i8, ptr %19, align 2
  switch i8 %48, label %50 [
    i8 6, label %49
    i8 3, label %49
  ]

49:                                               ; preds = %47, %47
  tail call fastcc void @lpuart32_configure(ptr noundef %3)
  br label %50

50:                                               ; preds = %49, %47
  %51 = tail call i32 @uart_resume_port(ptr noundef nonnull @lpuart_reg, ptr noundef %3) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold }

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
!8 = !{i64 5073928}
!9 = !{i64 2153426189}
!10 = !{i64 2153426611}
!11 = !{i64 2153426987}
!12 = !{i64 5073510}
!13 = !{i64 2153427354}
!14 = !{i64 5073708}
!15 = !{i64 2153436608}
!16 = !{i64 2153436854}
!17 = !{i64 2153436696}
!18 = !{i64 2153487888}
!19 = !{i64 5073313}
!20 = !{i64 2153437103}
!21 = !{i64 2153436945}
!22 = !{i8 0, i8 2}
!23 = !{i64 2153458362}
!24 = !{i64 2153458573}
!25 = !{i64 2153458945}
!26 = !{i64 2148953339}
!27 = !{i64 2148949163}
!28 = !{i64 2148949238, i64 2148949265, i64 2148949312, i64 2148949334, i64 2148949362, i64 2148949382}
!29 = !{i64 2148976342}
!30 = !{i64 2153446580}
!31 = !{i64 2153446811}
!32 = !{i64 2153447016}
!33 = !{i64 2153445152}
!34 = !{i64 2153445385}
!35 = !{i64 2153445611}
!36 = !{i64 2153445867}
!37 = !{i64 2153446137}
!38 = !{i64 2153428357}
!39 = !{i64 2153428663}
!40 = !{i64 2153436122}
!41 = !{i64 2153436331}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2152630530, i64 2152631022, i64 2152630567, i64 2152630623, i64 2152630657, i64 2152630681, i64 2152630722, i64 2152630743, i64 2152630771, i64 2152630805}
!44 = !{i64 2153469674}
!45 = !{i64 2153469878}
!46 = !{i64 2153469145}
!47 = !{i64 2153469301}
!48 = !{i32 0, i32 33}
!49 = !{i64 2153455499}
!50 = !{i64 2153455655}
!51 = !{!"auto-init"}
!52 = !{i64 2153447580}
!53 = !{i64 2153447816}
!54 = !{i64 2153448020}
!55 = !{i64 2153448310}
!56 = !{i64 2153448546}
!57 = !{i64 2153448756}
!58 = !{i64 2153449026}
!59 = !{i64 2153449295}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{i64 2153450664, i64 2153451161, i64 2153450701, i64 2153450757, i64 2153450791, i64 2153450815, i64 2153450856, i64 2153450877, i64 2153450905, i64 2153450939}
!62 = !{i64 2153443494}
!63 = !{i64 2153443708}
!64 = !{i64 2153460788}
!65 = !{i64 2153461003}
!66 = !{i64 2153460521}
!67 = !{i64 2153429002}
!68 = !{i64 2153429206}
!69 = !{i64 2153440420}
!70 = !{i64 2153440626}
!71 = !{i64 2153440906}
!72 = !{i64 2153429511}
!73 = !{i64 2153429719}
!74 = !{i64 2153461325}
!75 = !{i64 2153461529}
!76 = !{i64 2153471334}
!77 = !{i64 2153464696}
!78 = !{i64 2153464910}
!79 = !{i64 2153477278}
!80 = !{i64 2153477497}
!81 = !{i64 2153480549}
!82 = !{i64 2153480775}
!83 = !{i64 2153481001}
!84 = !{i64 2153481227}
!85 = !{i64 2153481453}
!86 = !{i64 2153481679}
!87 = !{i64 2153482688}
!88 = !{i64 2153482996}
!89 = !{i64 2153483266}
!90 = !{i64 2153483536}
!91 = !{i64 2153483806}
!92 = !{i64 2153484069}
!93 = !{i64 2153484334}
!94 = !{i64 2153484603}
!95 = !{i64 2153437489}
!96 = !{i64 2153437835}
!97 = !{i64 2153438052}
!98 = !{i64 2153461846}
!99 = !{i64 2153462070}
!100 = !{i64 2153462360}
!101 = !{i64 2153462583}
!102 = !{i64 2153462878}
!103 = !{i64 2153463176}
!104 = !{i64 2153463407}
!105 = !{i64 2153463612}
!106 = !{i64 2153463874}
!107 = !{i64 2153464133}
!108 = !{i64 2153464400}
!109 = !{i64 410026, i64 410087}
!110 = !{i64 413043}
!111 = !{i64 2153492123}
!112 = !{i64 2153492359}
!113 = !{i64 2153492600}
!114 = !{i64 2153492831}
!115 = !{i64 2153493057}
!116 = !{i64 2153489621}
!117 = !{i64 2153489845}
!118 = !{i64 2153490122}
!119 = !{i64 2153509653}
!120 = !{i64 2153509868}
!121 = !{i64 2153510537}
!122 = !{i64 2153510693}
