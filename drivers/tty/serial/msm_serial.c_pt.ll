; ModuleID = '/llk/IR/drivers/tty/serial/msm_serial.c_pt.bc'
source_filename = "../drivers/tty/serial/msm_serial.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.msm_port = type { %struct.uart_port, [16 x i8], ptr, ptr, i32, i32, i32, i8, %struct.msm_dma, %struct.msm_dma }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.msm_dma = type { ptr, i32, i32, ptr, i32, i32, i32, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msm_baud_map = type { i16, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
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
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.qcom_adm_peripheral_config = type { i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.36, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.36 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.34, %struct.anon.35, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.34 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.35 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.page = type { i32, %union.anon.1, %union.anon.64, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__UNIQUE_ID___earlycon_msm_serial234 = internal constant %struct.earlycon_id { [15 x i8] c"msm_serial\00\00\00\00\00", i8 0, [128 x i8] c"qcom,msm-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_serial_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_msm_serial_dm235 = internal constant %struct.earlycon_id { [15 x i8] c"msm_serial_dm\00\00", i8 0, [128 x i8] c"qcom,msm-uartdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_serial_early_console_setup_dm }, section "__earlycon_table", align 4
@msm_platform_driver = internal global %struct.platform_driver { ptr @msm_serial_probe, ptr @msm_serial_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @msm_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm_serial_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@msm_uart_driver = internal global %struct.uart_driver { ptr null, ptr @.str, ptr @.str.15, i32 0, i32 0, i32 3, ptr @msm_console, ptr null, ptr null }, align 4
@__initcall__kmod_msm_serial__236_1914_msm_serial_init6 = internal global ptr @msm_serial_init, section ".initcall6.init", align 4
@__exitcall_msm_serial_exit = internal global ptr @msm_serial_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [49 x i8] c"msm_serial.author=Robert Love <rlove@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [54 x i8] c"msm_serial.description=Driver for msm7x serial device\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [46 x i8] c"msm_serial.file=drivers/tty/serial/msm_serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [23 x i8] c"msm_serial.license=GPL\00", section ".modinfo", align 1
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [11 x i8] c"msm_serial\00", align 1
@msm_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-uartdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@msm_serial_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @msm_serial_suspend, ptr @msm_serial_resume, ptr @msm_serial_suspend, ptr @msm_serial_resume, ptr @msm_serial_suspend, ptr @msm_serial_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@msm_uart_next_id = internal global %struct.atomic_t zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"msm_serial: detected port #%d\0A\00", align 1
@msm_uartdm_table = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-uartdm-v1.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-uartdm-v1.2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-uartdm-v1.3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-uartdm-v1.4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"uartclk = %d\0A\00", align 1
@msm_uart_ports = internal global [3 x %struct.msm_port] [%struct.msm_port { %struct.uart_port { %struct.spinlock zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 64, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @msm_uart_pops, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, [16 x i8] zeroinitializer, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, %struct.msm_dma zeroinitializer, %struct.msm_dma zeroinitializer }, %struct.msm_port { %struct.uart_port { %struct.spinlock zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 64, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @msm_uart_pops, i32 0, i32 1, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, [16 x i8] zeroinitializer, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, %struct.msm_dma zeroinitializer, %struct.msm_dma zeroinitializer }, %struct.msm_port { %struct.uart_port { %struct.spinlock zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 64, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @msm_uart_pops, i32 0, i32 2, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, [16 x i8] zeroinitializer, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, %struct.msm_dma zeroinitializer, %struct.msm_dma zeroinitializer }], align 4
@msm_uart_pops = internal constant %struct.uart_ops { ptr @msm_tx_empty, ptr @msm_set_mctrl, ptr @msm_get_mctrl, ptr @msm_stop_tx, ptr @msm_start_tx, ptr null, ptr null, ptr null, ptr @msm_stop_rx, ptr @msm_enable_ms, ptr @msm_break_ctl, ptr @msm_startup, ptr @msm_shutdown, ptr null, ptr @msm_set_termios, ptr null, ptr @msm_power, ptr @msm_type, ptr @msm_release_port, ptr @msm_request_port, ptr @msm_config_port, ptr @msm_verify_port, ptr null }, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"msm_serial%d\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"qcom,tx-crci\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"qcom,rx-crci\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@msm_find_best_baud.table = internal constant [16 x %struct.msm_baud_map] [%struct.msm_baud_map { i16 1, i8 -1, i8 31 }, %struct.msm_baud_map { i16 2, i8 -18, i8 16 }, %struct.msm_baud_map { i16 3, i8 -35, i8 8 }, %struct.msm_baud_map { i16 4, i8 -52, i8 6 }, %struct.msm_baud_map { i16 6, i8 -69, i8 6 }, %struct.msm_baud_map { i16 8, i8 -86, i8 6 }, %struct.msm_baud_map { i16 12, i8 -103, i8 6 }, %struct.msm_baud_map { i16 16, i8 -120, i8 1 }, %struct.msm_baud_map { i16 24, i8 119, i8 1 }, %struct.msm_baud_map { i16 32, i8 102, i8 1 }, %struct.msm_baud_map { i16 48, i8 85, i8 1 }, %struct.msm_baud_map { i16 96, i8 68, i8 1 }, %struct.msm_baud_map { i16 192, i8 51, i8 1 }, %struct.msm_baud_map { i16 384, i8 34, i8 1 }, %struct.msm_baud_map { i16 768, i8 17, i8 1 }, %struct.msm_baud_map { i16 1536, i8 0, i8 1 }], align 2
@.str.13 = private unnamed_addr constant [35 x i8] c"\013msm_serial: Unknown PM state %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"MSM\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"ttyMSM\00", align 1
@msm_console = internal global %struct.console { [16 x i8] c"ttyMSM\00\00\00\00\00\00\00\00\00\00", ptr @msm_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @msm_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @msm_uart_driver, ptr null }, align 4
@.str.16 = private unnamed_addr constant [41 x i8] c"\016msm_serial: console setup on port #%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"\016msm_serial: driver initialized\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___earlycon_msm_serial234, ptr @__UNIQUE_ID___earlycon_msm_serial_dm235, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_msm_serial_exit, ptr @__initcall__kmod_msm_serial__236_1914_msm_serial_init6, ptr @msm_serial_exit], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @msm_serial_early_console_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 1
  store ptr @msm_serial_early_write, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -19, %2 ]
  ret i32 %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @msm_serial_early_console_setup_dm(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 1
  store ptr @msm_serial_early_write_dm, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -19, %2 ]
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @msm_serial_exit() #1 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @msm_platform_driver) #12
  tail call void @uart_unregister_driver(ptr noundef nonnull @msm_uart_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @msm_serial_init() #1 section ".init.text" {
  %1 = tail call i32 @uart_register_driver(ptr noundef nonnull @msm_uart_driver) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %9, !prof !8

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @msm_platform_driver, ptr noundef null) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %3
  tail call void @uart_unregister_driver(ptr noundef nonnull @msm_uart_driver) #12
  br label %7

7:                                                ; preds = %6, %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %9

9:                                                ; preds = %7, %0
  %10 = phi i32 [ %4, %7 ], [ %1, %0 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_serial_early_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.earlycon_device, ptr %5, i32 0, i32 1
  tail call fastcc void @__msm_console_write(ptr noundef %6, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__msm_console_write(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #3 {
  %5 = alloca [4 x i8], align 4
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = select i1 %3, i32 112, i32 12
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %11, %4
  %12 = phi i32 [ %19, %11 ], [ 0, %4 ]
  %13 = phi i32 [ %18, %11 ], [ 0, %4 ]
  %14 = getelementptr i8, ptr %1, i32 %12
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 10
  %17 = zext i1 %16 to i32
  %18 = add i32 %13, %17
  %19 = add nuw i32 %12, 1
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %11

21:                                               ; preds = %11, %4
  %22 = phi i32 [ 0, %4 ], [ %18, %11 ]
  %23 = add i32 %22, %2
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, ptr @oops_in_progress, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @_raw_spin_trylock(ptr noundef %0) #12
  br label %33

32:                                               ; preds = %27
  tail call void @_raw_spin_lock(ptr noundef %0) #12
  br label %33

33:                                               ; preds = %32, %30, %21
  %34 = phi i32 [ %31, %30 ], [ 1, %32 ], [ 0, %21 ]
  br i1 %3, label %35, label %62

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  br label %37

37:                                               ; preds = %50, %35
  %38 = phi i32 [ 500000, %35 ], [ %52, %50 ]
  %39 = load ptr, ptr %36, align 4
  %40 = getelementptr i8, ptr %39, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #12, !srcloc !9
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load ptr, ptr %36, align 4
  %46 = getelementptr i8, ptr %45, i32 20
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #12, !srcloc !9
  %48 = and i32 %47, 128
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #12
  %52 = add nsw i32 %38, -1
  %53 = icmp eq i32 %38, 0
  br i1 %53, label %54, label %37

54:                                               ; preds = %50, %44, %37
  %55 = load ptr, ptr %36, align 4
  %56 = getelementptr i8, ptr %55, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 768) #12, !srcloc !10
  %57 = load ptr, ptr %36, align 4
  %58 = getelementptr i8, ptr %57, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %23) #12, !srcloc !10
  %59 = load ptr, ptr %36, align 4
  %60 = getelementptr i8, ptr %59, i32 64
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #12, !srcloc !9
  br label %62

62:                                               ; preds = %54, %33
  %63 = icmp eq i32 %23, 0
  br i1 %63, label %113, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  br label %66

66:                                               ; preds = %110, %64
  %67 = phi ptr [ %1, %64 ], [ %76, %110 ]
  %68 = phi i32 [ 0, %64 ], [ %111, %110 ]
  %69 = phi i1 [ false, %64 ], [ %75, %110 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4
  %70 = sub i32 %23, %68
  %71 = call i32 @llvm.umin.i32(i32 %70, i32 4)
  %72 = select i1 %3, i32 %71, i32 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %99, %66
  %75 = phi i1 [ %69, %66 ], [ %100, %99 ]
  %76 = phi ptr [ %67, %66 ], [ %101, %99 ]
  %77 = load ptr, ptr %65, align 4
  %78 = getelementptr i8, ptr %77, i32 8
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #12, !srcloc !9
  %80 = and i32 %79, 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %104, label %110

82:                                               ; preds = %99, %66
  %83 = phi ptr [ %101, %99 ], [ %67, %66 ]
  %84 = phi i32 [ %102, %99 ], [ 0, %66 ]
  %85 = phi i1 [ %100, %99 ], [ %69, %66 ]
  %86 = load i8, ptr %83, align 1
  %87 = icmp ne i8 %86, 10
  %88 = select i1 %87, i1 true, i1 %85
  br i1 %88, label %92, label %89

89:                                               ; preds = %82
  %90 = getelementptr [4 x i8], ptr %5, i32 0, i32 %84
  store i8 13, ptr %90, align 1
  %91 = add nuw i32 %84, 1
  br label %92

92:                                               ; preds = %89, %82
  %93 = phi i1 [ true, %89 ], [ %85, %82 ]
  %94 = phi i32 [ %91, %89 ], [ %84, %82 ]
  %95 = icmp ult i32 %94, %72
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = getelementptr [4 x i8], ptr %5, i32 0, i32 %94
  store i8 %86, ptr %97, align 1
  %98 = getelementptr i8, ptr %83, i32 1
  br label %99

99:                                               ; preds = %96, %92
  %100 = phi i1 [ false, %96 ], [ %93, %92 ]
  %101 = phi ptr [ %98, %96 ], [ %83, %92 ]
  %102 = add i32 %94, 1
  %103 = icmp ult i32 %102, %72
  br i1 %103, label %82, label %74

104:                                              ; preds = %104, %74
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !12
  %105 = load ptr, ptr %65, align 4
  %106 = getelementptr i8, ptr %105, i32 8
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #12, !srcloc !9
  %108 = and i32 %107, 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %104, label %110

110:                                              ; preds = %104, %74
  call void @__raw_writesl(ptr noundef %9, ptr noundef nonnull %5, i32 noundef 1) #12
  %111 = add i32 %72, %68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %112 = icmp ugt i32 %23, %111
  br i1 %112, label %66, label %113

113:                                              ; preds = %110, %62
  %114 = icmp eq i32 %34, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %113
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %116 = load i16, ptr %0, align 4
  %117 = add i16 %116, 1
  store i16 %117, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  br label %118

118:                                              ; preds = %115, %113
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_serial_early_write_dm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.earlycon_device, ptr %5, i32 0, i32 1
  tail call fastcc void @__msm_console_write(ptr noundef %6, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_serial_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @of_alias_get_id(ptr noundef nonnull %4, ptr noundef nonnull @.str.1) #12
  br label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ %7, %6 ], [ %10, %8 ]
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @msm_uart_next_id) #12, !srcloc !18
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @msm_uart_next_id, ptr nonnull @msm_uart_next_id, i32 1, ptr nonnull elementtype(i32) @msm_uart_next_id) #12, !srcloc !19
  %16 = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !20
  %17 = add i32 %16, -1
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %17, %14 ], [ %12, %11 ]
  %20 = icmp ugt i32 %19, 2
  br i1 %20, label %65, label %21, !prof !21

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %19) #13
  %22 = getelementptr [3 x %struct.msm_port], ptr @msm_uart_ports, i32 0, i32 %19
  %23 = getelementptr inbounds %struct.uart_port, ptr %22, i32 0, i32 45
  store ptr %2, ptr %23, align 4
  %24 = tail call ptr @of_match_device(ptr noundef nonnull @msm_uartdm_table, ptr noundef %2) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.of_device_id, ptr %24, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi i32 [ %29, %26 ], [ 0, %21 ]
  %32 = getelementptr [3 x %struct.msm_port], ptr @msm_uart_ports, i32 0, i32 %19, i32 5
  store i32 %31, ptr %32, align 4
  %33 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #12
  %34 = getelementptr [3 x %struct.msm_port], ptr @msm_uart_ports, i32 0, i32 %19, i32 2
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = ptrtoint ptr %33 to i32
  br label %65

38:                                               ; preds = %30
  %39 = load i32, ptr %32, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #12
  %43 = getelementptr [3 x %struct.msm_port], ptr @msm_uart_ports, i32 0, i32 %19, i32 3
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %34, align 4
  br label %49

47:                                               ; preds = %41
  %48 = ptrtoint ptr %42 to i32
  br label %65

49:                                               ; preds = %45, %38
  %50 = phi ptr [ %46, %45 ], [ %33, %38 ]
  %51 = tail call i32 @clk_get_rate(ptr noundef %50) #12
  %52 = getelementptr inbounds %struct.uart_port, ptr %22, i32 0, i32 22
  store i32 %51, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %51) #13
  %53 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #12
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55, !prof !21

55:                                               ; preds = %49
  %56 = load i32, ptr %53, align 4
  %57 = getelementptr inbounds %struct.uart_port, ptr %22, i32 0, i32 43
  store i32 %56, ptr %57, align 4
  %58 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #12
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %65, label %60, !prof !21

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.uart_port, ptr %22, i32 0, i32 20
  store i32 %58, ptr %61, align 4
  %62 = getelementptr inbounds %struct.uart_port, ptr %22, i32 0, i32 48
  store i8 1, ptr %62, align 4
  %63 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %22, ptr %63, align 8
  %64 = tail call i32 @uart_add_one_port(ptr noundef nonnull @msm_uart_driver, ptr noundef %22) #12
  br label %65

65:                                               ; preds = %60, %55, %49, %47, %36, %18
  %66 = phi i32 [ %37, %36 ], [ %48, %47 ], [ %64, %60 ], [ -6, %18 ], [ -6, %49 ], [ -6, %55 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_serial_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @msm_uart_driver, ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_tx_empty(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !9
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_set_mctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !9
  %6 = and i32 %1, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = and i32 %5, -129
  %10 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #12, !srcloc !10
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 224) #12, !srcloc !10
  br label %16

13:                                               ; preds = %2
  %14 = or i32 %5, 128
  %15 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #12, !srcloc !10
  br label %16

16:                                               ; preds = %13, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @msm_get_mctrl(ptr nocapture noundef readnone %0) #7 {
  ret i32 356
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_stop_tx(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -2
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #12, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_start_tx(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 1
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #12, !srcloc !10
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_stop_rx(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9
  %3 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, -25
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %5) #12, !srcloc !10
  %9 = load ptr, ptr %2, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 6
  %15 = load i32, ptr %14, align 4
  store i32 0, ptr %14, align 4
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 47
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %11
  %21 = tail call i32 %18(ptr noundef nonnull %9) #12
  br label %22

22:                                               ; preds = %20, %11
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr i8, ptr %23, i32 60
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #12, !srcloc !9
  %26 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %25, %28
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr i8, ptr %30, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #12, !srcloc !10
  %32 = icmp eq i32 %15, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 1
  %37 = load i32, ptr %36, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %13, i32 noundef %35, i32 noundef %15, i32 noundef %37, i32 noundef 0) #12
  br label %38

38:                                               ; preds = %33, %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_enable_ms(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 32
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #12, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_break_ctl(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  br i1 %3, label %8, label %7

7:                                                ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 80) #12, !srcloc !10
  br label %9

8:                                                ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 96) #12, !srcloc !10
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_startup(ptr noundef %0) #3 {
  %2 = alloca %struct.dma_slave_config, align 4
  %3 = alloca %struct.qcom_adm_peripheral_config, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_slave_config, align 4
  %6 = alloca %struct.qcom_adm_peripheral_config, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %8, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %10)
  tail call fastcc void @msm_init_clock(ptr noundef %0)
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 12
  %15 = add i32 %13, -12
  %16 = select i1 %14, i32 %15, i32 %13, !prof !8
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #12, !srcloc !9
  %20 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 261888, i32 -256
  %24 = xor i32 %23, -1
  %25 = and i32 %19, -261952
  %26 = and i32 %25, %24
  %27 = shl i32 %16, 2
  %28 = and i32 %23, %27
  %29 = and i32 %16, 63
  %30 = or i32 %28, %29
  %31 = or i32 %30, %26
  %32 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #12, !srcloc !10
  %33 = load i32, ptr %20, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %127, label %35

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %39 = load ptr, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store i64 0, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4
  %40 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8
  %41 = tail call ptr @dma_request_chan(ptr noundef %39, ptr noundef nonnull @.str.7) #12
  store ptr %41, ptr %40, align 4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %77, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 25
  %45 = load ptr, ptr %44, align 8
  %46 = call i32 @of_property_read_variable_u32_array(ptr noundef %45, ptr noundef nonnull @.str.8, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #12
  %47 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %47, i8 0, i32 44, i1 false) #12
  store i32 1, ptr %5, align 4
  %48 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 9
  store i8 1, ptr %48, align 4
  %49 = add i32 %37, 112
  %50 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 2
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 6
  store i32 16, ptr %51, align 4
  %52 = load i32, ptr %7, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 10
  store ptr %6, ptr %55, align 4
  %56 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 11
  store i32 8, ptr %56, align 4
  store i32 %52, ptr %6, align 8
  br label %57

57:                                               ; preds = %54, %43
  %58 = load ptr, ptr %40, align 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 44
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %57
  %64 = call i32 %61(ptr noundef %58, ptr noundef nonnull %5) #12
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %40, align 4
  br label %75

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 1
  store i32 1, ptr %69, align 4
  %70 = load i32, ptr %20, align 4
  %71 = icmp slt i32 %70, 4
  %72 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 5
  br i1 %71, label %73, label %74

73:                                               ; preds = %68
  store i32 1, ptr %72, align 4
  br label %78

74:                                               ; preds = %68
  store i32 4, ptr %72, align 4
  br label %78

75:                                               ; preds = %66, %57
  %76 = phi ptr [ %67, %66 ], [ %58, %57 ]
  call void @dma_release_channel(ptr noundef %76) #12
  br label %77

77:                                               ; preds = %75, %35
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %40, i8 0, i32 32, i1 false) #12
  br label %78

78:                                               ; preds = %77, %74, %73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #12
  %79 = load i32, ptr %36, align 4
  %80 = load ptr, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %2, i8 0, i32 48, i1 false) #12, !annotation !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4
  %81 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9
  %82 = call ptr @dma_request_chan(ptr noundef %80, ptr noundef nonnull @.str.9) #12
  store ptr %82, ptr %81, align 4
  %83 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %125, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 25
  %86 = load ptr, ptr %85, align 8
  %87 = call i32 @of_property_read_variable_u32_array(ptr noundef %86, ptr noundef nonnull @.str.10, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #12
  %88 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %89 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %88, i32 noundef 3520, i32 noundef 1024) #14
  %90 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 3
  store ptr %89, ptr %90, align 4
  %91 = icmp eq ptr %89, null
  br i1 %91, label %123, label %92

92:                                               ; preds = %84
  %93 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %93, i8 0, i32 40, i1 false) #12
  store i32 2, ptr %2, align 4
  %94 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 9
  store i8 1, ptr %94, align 4
  %95 = add i32 %79, 112
  %96 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 1
  store i32 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 5
  store i32 16, ptr %97, align 4
  %98 = load i32, ptr %4, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 10
  store ptr %3, ptr %101, align 4
  %102 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 11
  store i32 8, ptr %102, align 4
  store i32 %98, ptr %3, align 8
  br label %103

103:                                              ; preds = %100, %92
  %104 = load ptr, ptr %81, align 4
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.dma_device, ptr %105, i32 0, i32 44
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %121, label %109

109:                                              ; preds = %103
  %110 = call i32 %107(ptr noundef %104, ptr noundef nonnull %2) #12
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %90, align 4
  br label %121

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 1
  store i32 2, ptr %115, align 4
  %116 = load i32, ptr %20, align 4
  %117 = icmp slt i32 %116, 4
  %118 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 5
  br i1 %117, label %119, label %120

119:                                              ; preds = %114
  store i32 2, ptr %118, align 4
  br label %126

120:                                              ; preds = %114
  store i32 8, ptr %118, align 4
  br label %126

121:                                              ; preds = %112, %103
  %122 = phi ptr [ %113, %112 ], [ %89, %103 ]
  call void @kfree(ptr noundef %122) #12
  br label %123

123:                                              ; preds = %121, %84
  %124 = load ptr, ptr %81, align 4
  call void @dma_release_channel(ptr noundef %124) #12
  br label %125

125:                                              ; preds = %123, %78
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %81, i8 0, i32 32, i1 false) #12
  br label %126

126:                                              ; preds = %125, %120, %119
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #12
  br label %127

127:                                              ; preds = %126, %1
  %128 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %129 = load i32, ptr %128, align 4
  %130 = call i32 @request_threaded_irq(i32 noundef %129, ptr noundef nonnull @msm_uart_irq, ptr noundef null, i32 noundef 4, ptr noundef %8, ptr noundef %0) #12
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %141, label %132, !prof !8

132:                                              ; preds = %127
  %133 = load i32, ptr %20, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  call fastcc void @msm_release_dma(ptr noundef %0)
  br label %136

136:                                              ; preds = %135, %132
  %137 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 3
  %138 = load ptr, ptr %137, align 4
  call void @clk_disable(ptr noundef %138) #12
  call void @clk_unprepare(ptr noundef %138) #12
  %139 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 2
  %140 = load ptr, ptr %139, align 4
  call void @clk_disable(ptr noundef %140) #12
  call void @clk_unprepare(ptr noundef %140) #12
  br label %141

141:                                              ; preds = %136, %127
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_shutdown(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 4
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #12, !srcloc !10
  %6 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call fastcc void @msm_release_dma(ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %12) #12
  tail call void @clk_unprepare(ptr noundef %12) #12
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @free_irq(i32 noundef %14, ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 6
  %12 = load i32, ptr %11, align 4
  store i32 0, ptr %11, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 47
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %8
  %18 = tail call i32 %15(ptr noundef nonnull %6) #12
  br label %19

19:                                               ; preds = %17, %8
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 60
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #12, !srcloc !9
  %24 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %23, %26
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr i8, ptr %28, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #12, !srcloc !10
  %30 = icmp eq i32 %12, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 1
  %35 = load i32, ptr %34, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %10, i32 noundef %33, i32 noundef %12, i32 noundef %35, i32 noundef 0) #12
  br label %36

36:                                               ; preds = %31, %19, %3
  %37 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 300, i32 noundef 4000000) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %5) #12
  %38 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = shl i32 %37, 4
  %41 = tail call i32 @clk_round_rate(ptr noundef %39, i32 noundef %40) #12
  %42 = lshr exact i32 %40, 1
  %43 = add i32 %41, %42
  %44 = udiv i32 %43, %40
  br label %45

45:                                               ; preds = %80, %36
  %46 = phi i32 [ %44, %36 ], [ %59, %80 ]
  %47 = phi i32 [ %41, %36 ], [ %60, %80 ]
  %48 = phi i32 [ 0, %36 ], [ %69, %80 ]
  %49 = phi i32 [ -1, %36 ], [ %81, %80 ]
  %50 = phi ptr [ @msm_find_best_baud.table, %36 ], [ %68, %80 ]
  %51 = phi ptr [ @msm_find_best_baud.table, %36 ], [ %82, %80 ]
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp ult i32 %46, %53
  br i1 %54, label %71, label %57

55:                                               ; preds = %77
  %56 = udiv i32 %78, %40
  br label %57

57:                                               ; preds = %55, %45
  %58 = phi i16 [ %52, %45 ], [ 1, %55 ]
  %59 = phi i32 [ %46, %45 ], [ %56, %55 ]
  %60 = phi i32 [ %47, %45 ], [ %75, %55 ]
  %61 = phi ptr [ %51, %45 ], [ @msm_find_best_baud.table, %55 ]
  %62 = zext i16 %58 to i32
  %63 = udiv i32 %60, %62
  %64 = lshr i32 %63, 4
  %65 = sub i32 %64, %37
  %66 = tail call i32 @llvm.abs.i32(i32 %65, i1 false) #12
  %67 = icmp ult i32 %66, %49
  %68 = select i1 %67, ptr %61, ptr %50
  %69 = select i1 %67, i32 %60, i32 %48
  %70 = icmp eq i32 %64, %37
  br i1 %70, label %84, label %80

71:                                               ; preds = %77, %45
  %72 = phi i32 [ %75, %77 ], [ %47, %45 ]
  %73 = load ptr, ptr %38, align 4
  %74 = add i32 %72, 1
  %75 = tail call i32 @clk_round_rate(ptr noundef %73, i32 noundef %74) #12
  %76 = icmp eq i32 %75, %72
  br i1 %76, label %84, label %77

77:                                               ; preds = %71
  %78 = add i32 %75, %42
  %79 = icmp ugt i32 %40, %78
  br i1 %79, label %71, label %55

80:                                               ; preds = %57
  %81 = tail call i32 @llvm.umin.i32(i32 %66, i32 %49) #12
  %82 = getelementptr %struct.msm_baud_map, ptr %61, i32 1
  %83 = icmp ult ptr %82, getelementptr inbounds ([16 x %struct.msm_baud_map], ptr @msm_find_best_baud.table, i32 1, i32 0)
  br i1 %83, label %45, label %84

84:                                               ; preds = %80, %71, %57
  %85 = phi ptr [ %50, %71 ], [ %68, %57 ], [ %68, %80 ]
  %86 = phi i32 [ %48, %71 ], [ %69, %57 ], [ %69, %80 ]
  %87 = load ptr, ptr %38, align 4
  %88 = tail call i32 @clk_set_rate(ptr noundef %87, i32 noundef %86) #12
  %89 = load i16, ptr %85, align 2
  %90 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  %91 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  store i32 %86, ptr %91, align 4
  %92 = getelementptr inbounds %struct.msm_baud_map, ptr %85, i32 0, i32 1
  %93 = load i8, ptr %92, align 2
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr i8, ptr %96, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %94) #12, !srcloc !10
  %98 = getelementptr inbounds %struct.msm_baud_map, ptr %85, i32 0, i32 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 31
  %102 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  %105 = or i32 %101, 32
  %106 = select i1 %104, i32 %105, i32 %101
  %107 = shl nuw nsw i32 %100, 2
  %108 = and i32 %107, 896
  %109 = or i32 %106, %108
  %110 = load ptr, ptr %95, align 4
  %111 = getelementptr i8, ptr %110, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #12, !srcloc !10
  %112 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %113 = load i32, ptr %112, align 4
  %114 = mul i32 %113, 3
  %115 = lshr i32 %114, 2
  %116 = load ptr, ptr %95, align 4
  %117 = getelementptr i8, ptr %116, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #12, !srcloc !10
  %118 = load ptr, ptr %95, align 4
  %119 = getelementptr i8, ptr %118, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 10) #12, !srcloc !10
  %120 = load ptr, ptr %95, align 4
  %121 = getelementptr i8, ptr %120, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 256) #12, !srcloc !10
  %122 = load ptr, ptr %95, align 4
  %123 = getelementptr i8, ptr %122, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 16) #12, !srcloc !10
  %124 = load ptr, ptr %95, align 4
  %125 = getelementptr i8, ptr %124, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 32) #12, !srcloc !10
  %126 = load ptr, ptr %95, align 4
  %127 = getelementptr i8, ptr %126, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 48) #12, !srcloc !10
  %128 = load ptr, ptr %95, align 4
  %129 = getelementptr i8, ptr %128, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 64) #12, !srcloc !10
  %130 = load ptr, ptr %95, align 4
  %131 = getelementptr i8, ptr %130, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 112) #12, !srcloc !10
  %132 = load ptr, ptr %95, align 4
  %133 = getelementptr i8, ptr %132, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 224) #12, !srcloc !10
  %134 = load ptr, ptr %95, align 4
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #12, !srcloc !9
  %136 = and i32 %135, -129
  %137 = load ptr, ptr %95, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %136) #12, !srcloc !10
  %138 = load i32, ptr %102, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %84
  %141 = load ptr, ptr %95, align 4
  %142 = getelementptr i8, ptr %141, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 0) #12, !srcloc !10
  br label %143

143:                                              ; preds = %140, %84
  %144 = load ptr, ptr %95, align 4
  %145 = getelementptr i8, ptr %144, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 5) #12, !srcloc !10
  %146 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 4
  store i32 1112, ptr %146, align 4
  %147 = load ptr, ptr %95, align 4
  %148 = getelementptr i8, ptr %147, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 1112) #12, !srcloc !10
  %149 = load i32, ptr %102, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %143
  %152 = load ptr, ptr %95, align 4
  %153 = getelementptr i8, ptr %152, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 128) #12, !srcloc !10
  %154 = load ptr, ptr %95, align 4
  %155 = getelementptr i8, ptr %154, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 16777215) #12, !srcloc !10
  %156 = load ptr, ptr %95, align 4
  %157 = getelementptr i8, ptr %156, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 1280) #12, !srcloc !10
  br label %158

158:                                              ; preds = %151, %143
  %159 = lshr i32 %86, 4
  %160 = zext i16 %89 to i32
  %161 = udiv i32 %159, %160
  %162 = tail call i32 @tty_termios_baud_rate(ptr noundef %1) #12
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %158
  tail call void @tty_termios_encode_baud_rate(ptr noundef %1, i32 noundef %161, i32 noundef %161) #12
  br label %165

165:                                              ; preds = %164, %158
  %166 = load ptr, ptr %95, align 4
  %167 = getelementptr i8, ptr %166, i32 4
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #12, !srcloc !9
  %169 = and i32 %168, -4
  %170 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %171 = load i32, ptr %170, align 4
  %172 = and i32 %171, 256
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %186, label %174

174:                                              ; preds = %165
  %175 = and i32 %171, 512
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %174
  %178 = or i32 %169, 1
  br label %186

179:                                              ; preds = %174
  %180 = and i32 %171, 1073741824
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = or i32 %168, 3
  br label %186

184:                                              ; preds = %179
  %185 = or i32 %169, 2
  br label %186

186:                                              ; preds = %184, %182, %177, %165
  %187 = phi i32 [ %178, %177 ], [ %183, %182 ], [ %185, %184 ], [ %169, %165 ]
  %188 = and i32 %187, -49
  %189 = lshr i32 %171, 4
  %190 = and i32 %189, 3
  switch i32 %190, label %195 [
    i32 0, label %198
    i32 1, label %191
    i32 2, label %193
    i32 3, label %196
  ]

191:                                              ; preds = %186
  %192 = or i32 %188, 16
  br label %198

193:                                              ; preds = %186
  %194 = or i32 %188, 32
  br label %198

195:                                              ; preds = %186
  unreachable

196:                                              ; preds = %186
  %197 = or i32 %187, 48
  br label %198

198:                                              ; preds = %196, %193, %191, %186
  %199 = phi i32 [ %197, %196 ], [ %194, %193 ], [ %192, %191 ], [ %188, %186 ]
  %200 = and i32 %171, 64
  %201 = icmp eq i32 %200, 0
  %202 = or i32 %199, 12
  %203 = and i32 %199, -13
  %204 = or i32 %203, 4
  %205 = select i1 %201, i32 %204, i32 %202
  %206 = load ptr, ptr %95, align 4
  %207 = getelementptr i8, ptr %206, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 %205) #12, !srcloc !10
  %208 = load ptr, ptr %95, align 4
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %208) #12, !srcloc !9
  %210 = and i32 %209, -193
  %211 = load i32, ptr %170, align 4
  %212 = icmp slt i32 %211, 0
  %213 = select i1 %212, i32 192, i32 0
  %214 = or i32 %213, %210
  %215 = load ptr, ptr %95, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 %214) #12, !srcloc !10
  %216 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 0, ptr %216, align 4
  %217 = load i32, ptr %1, align 4
  %218 = shl i32 %217, 1
  %219 = and i32 %218, 32
  store i32 %219, ptr %216, align 4
  %220 = load i32, ptr %1, align 4
  %221 = and i32 %220, 11
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %198
  %224 = or i32 %219, 64
  store i32 %224, ptr %216, align 4
  br label %225

225:                                              ; preds = %223, %198
  %226 = load i32, ptr %170, align 4
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %226, i32 noundef %161) #12
  tail call fastcc void @msm_start_rx_dma(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %90) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_power(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  switch i32 %1, label %27 [
    i32 0, label %4
    i32 3, label %22
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = tail call i32 @clk_enable(ptr noundef %6) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #12
  br label %13

13:                                               ; preds = %12, %9, %4
  %14 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = tail call i32 @clk_enable(ptr noundef %15) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %15) #12
  br label %29

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %24) #12
  tail call void @clk_unprepare(ptr noundef %24) #12
  %25 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %26) #12
  tail call void @clk_unprepare(ptr noundef %26) #12
  br label %29

27:                                               ; preds = %3
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %1) #13
  br label %29

29:                                               ; preds = %27, %22, %21, %18, %13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @msm_type(ptr nocapture noundef readnone %0) #7 {
  ret ptr @.str.14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_release_port(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = tail call ptr @platform_get_resource(ptr noundef %4, i32 noundef 512, i32 noundef 0) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7, !prof !21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %5, align 4
  %11 = add i32 %9, 1
  %12 = sub i32 %11, %10
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %14 = load i32, ptr %13, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %14, i32 noundef %12) #12
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void @iounmap(ptr noundef %16) #12
  store ptr null, ptr %15, align 4
  br label %17

17:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_request_port(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = tail call ptr @platform_get_resource(ptr noundef %4, i32 noundef 512, i32 noundef 0) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7, !prof !21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %5, align 4
  %11 = add i32 %9, 1
  %12 = sub i32 %11, %10
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %14, i32 noundef %12, ptr noundef nonnull @.str, i32 noundef 0) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %7
  %18 = load i32, ptr %13, align 4
  %19 = tail call ptr @ioremap(i32 noundef %18, i32 noundef %12) #12
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, ptr %13, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %23, i32 noundef %12) #12
  br label %24

24:                                               ; preds = %22, %17, %7, %1
  %25 = phi i32 [ -16, %22 ], [ -6, %1 ], [ -16, %7 ], [ 0, %17 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_config_port(ptr nocapture noundef %0, i32 noundef %1) #3 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 88, ptr %6, align 4
  %7 = tail call i32 @msm_request_port(ptr noundef %0)
  br label %8

8:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @msm_verify_port(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = load i32, ptr %1, align 4
  switch i32 %3, label %11 [
    i32 88, label %4
    i32 0, label %4
  ]

4:                                                ; preds = %2, %2
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  %10 = select i1 %9, i32 0, i32 -22, !prof !8
  br label %11

11:                                               ; preds = %4, %2
  %12 = phi i32 [ -22, %2 ], [ %10, %4 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @msm_init_clock(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #12
  br label %10

10:                                               ; preds = %9, %6, %1
  %11 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = tail call i32 @clk_enable(ptr noundef %12) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %12) #12
  br label %19

19:                                               ; preds = %18, %15, %10
  %20 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %25 = load i32, ptr %24, align 4
  switch i32 %25, label %47 [
    i32 19200000, label %26
    i32 4800000, label %36
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 6) #12, !srcloc !10
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr i8, ptr %30, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 241) #12, !srcloc !10
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr i8, ptr %32, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 15) #12, !srcloc !10
  %34 = load ptr, ptr %27, align 4
  %35 = getelementptr i8, ptr %34, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 26) #12, !srcloc !10
  br label %46

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 24) #12, !srcloc !10
  %40 = load ptr, ptr %37, align 4
  %41 = getelementptr i8, ptr %40, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 246) #12, !srcloc !10
  %42 = load ptr, ptr %37, align 4
  %43 = getelementptr i8, ptr %42, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 15) #12, !srcloc !10
  %44 = load ptr, ptr %37, align 4
  %45 = getelementptr i8, ptr %44, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 10) #12, !srcloc !10
  br label %46

46:                                               ; preds = %36, %26
  store i32 1843200, ptr %24, align 4
  br label %47

47:                                               ; preds = %46, %23, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_uart_irq(i32 noundef %0, ptr noundef %1) #3 {
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.msm_port, ptr %1, i32 0, i32 9
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  %6 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #12, !srcloc !9
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #12, !srcloc !10
  %12 = and i32 %9, 1024
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.msm_port, ptr %1, i32 0, i32 7
  store i8 1, ptr %15, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 2080) #12, !srcloc !10
  br label %18

18:                                               ; preds = %14, %2
  %19 = and i32 %9, 24
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %397, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.msm_port, ptr %1, i32 0, i32 9, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr i8, ptr %26, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 1536) #12, !srcloc !10
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 128) #12, !srcloc !10
  %30 = load ptr, ptr %4, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 47
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %397, label %35

35:                                               ; preds = %25
  %36 = tail call i32 %33(ptr noundef %30) #12
  br label %397

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.msm_port, ptr %1, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %6, align 4
  %44 = getelementptr i8, ptr %43, i32 8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #12
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  br i1 %40, label %238, label %48

48:                                               ; preds = %37
  br i1 %47, label %77, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  %53 = getelementptr inbounds %struct.tty_bufhead, ptr %42, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.tty_buffer, ptr %54, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.tty_buffer, ptr %54, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.tty_buffer, ptr %54, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.tty_buffer, ptr %54, i32 0, i32 6
  %67 = getelementptr i8, ptr %66, i32 %61
  %68 = getelementptr i8, ptr %67, i32 %63
  store i8 4, ptr %68, align 1
  %69 = load i32, ptr %60, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %60, align 4
  %71 = getelementptr i8, ptr %66, i32 %69
  store i8 0, ptr %71, align 1
  br label %74

72:                                               ; preds = %59, %49
  %73 = tail call i32 @__tty_insert_flip_char(ptr noundef %42, i8 noundef zeroext 0, i8 noundef zeroext 4) #12
  br label %74

74:                                               ; preds = %72, %65
  %75 = load ptr, ptr %6, align 4
  %76 = getelementptr i8, ptr %75, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 48) #12, !srcloc !10
  br label %77

77:                                               ; preds = %74, %48
  %78 = and i32 %9, 8
  %79 = icmp eq i32 %78, 0
  %80 = load ptr, ptr %6, align 4
  br i1 %79, label %87, label %81

81:                                               ; preds = %77
  %82 = getelementptr i8, ptr %80, i32 56
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #12, !srcloc !9
  %84 = getelementptr inbounds %struct.msm_port, ptr %1, i32 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = sub i32 %83, %85
  store i32 0, ptr %84, align 4
  br label %94

87:                                               ; preds = %77
  %88 = getelementptr i8, ptr %80, i32 32
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #12, !srcloc !9
  %90 = shl i32 %89, 2
  %91 = getelementptr inbounds %struct.msm_port, ptr %1, i32 0, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, %90
  store i32 %93, ptr %91, align 4
  br label %94

94:                                               ; preds = %87, %81
  %95 = phi i32 [ %86, %81 ], [ %90, %87 ]
  %96 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %97, %95
  store i32 %98, ptr %96, align 4
  %99 = icmp sgt i32 %95, 0
  br i1 %99, label %100, label %229

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.msm_port, ptr %1, i32 0, i32 7
  %102 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 9
  %103 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 17
  %104 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 48
  %105 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %106 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %107 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 46
  %108 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 33
  %109 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 28
  %110 = getelementptr inbounds %struct.tty_bufhead, ptr %42, i32 0, i32 8
  br label %111

111:                                              ; preds = %226, %100
  %112 = phi i32 [ %95, %100 ], [ %227, %226 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !22
  %113 = load ptr, ptr %6, align 4
  %114 = getelementptr i8, ptr %113, i32 8
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #12, !srcloc !9
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.msm_port, ptr %1, i32 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = sub i32 %120, %112
  store i32 %121, ptr %119, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %229

122:                                              ; preds = %111
  %123 = load ptr, ptr %6, align 4
  %124 = getelementptr i8, ptr %123, i32 112
  call void @__raw_readsl(ptr noundef %124, ptr noundef nonnull %3, i32 noundef 1) #12
  %125 = call i32 @llvm.smin.i32(i32 %112, i32 4) #12
  br label %126

126:                                              ; preds = %223, %122
  %127 = phi i32 [ %224, %223 ], [ 0, %122 ]
  %128 = load i8, ptr %101, align 4, !range !23
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %167, label %130

130:                                              ; preds = %126
  %131 = getelementptr [4 x i8], ptr %3, i32 0, i32 %127
  %132 = load i8, ptr %131, align 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %167

134:                                              ; preds = %130
  %135 = load i32, ptr %102, align 4
  %136 = add i32 %135, 1
  store i32 %136, ptr %102, align 4
  store i8 0, ptr %101, align 4
  %137 = load ptr, ptr %41, align 4
  %138 = load ptr, ptr %103, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %134
  call void %138(ptr noundef %1) #12
  br label %141

141:                                              ; preds = %140, %134
  %142 = load i8, ptr %104, align 4
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %157, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %105, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %157, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.console, ptr %145, i32 0, i32 9
  %149 = load i16, ptr %148, align 2
  %150 = sext i16 %149 to i32
  %151 = load i32, ptr %106, align 4
  %152 = icmp eq i32 %151, %150
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i32, ptr %107, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %153
  store i32 0, ptr %107, align 4
  br label %157

157:                                              ; preds = %156, %147, %144, %141
  %158 = load i32, ptr %108, align 4
  %159 = and i32 %158, 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.tty_port, ptr %137, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  call void @do_SAK(ptr noundef %163) #12
  br label %167

164:                                              ; preds = %153
  %165 = load volatile i32, ptr @jiffies, align 64
  %166 = add i32 %165, 500
  store i32 %166, ptr %107, align 4
  br label %223

167:                                              ; preds = %161, %157, %130, %126
  %168 = phi i8 [ 0, %130 ], [ 0, %126 ], [ 1, %161 ], [ 1, %157 ]
  %169 = load i32, ptr %109, align 4
  %170 = and i32 %169, 64
  %171 = icmp eq i32 %170, 0
  %172 = select i1 %171, i8 0, i8 %168
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %173 = load i16, ptr %1, align 4
  %174 = add i16 %173, 1
  store i16 %174, ptr %1, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %175 = getelementptr [4 x i8], ptr %3, i32 0, i32 %127
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i32
  %178 = load i32, ptr %107, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %194, label %180

180:                                              ; preds = %167
  %181 = icmp eq i8 %176, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %180
  %183 = load volatile i32, ptr @jiffies, align 64
  %184 = sub i32 %183, %178
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = call i32 @sysrq_mask() #12
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %1, i32 noundef %177) #12
  br i1 %190, label %191, label %192

191:                                              ; preds = %189
  call void @_raw_spin_lock(ptr noundef %1) #12
  br label %223

192:                                              ; preds = %189, %182, %180
  store i32 0, ptr %107, align 4
  br label %194

193:                                              ; preds = %186
  call void @handle_sysrq(i32 noundef %177) #12
  store i32 0, ptr %107, align 4
  call void @_raw_spin_lock(ptr noundef %1) #12
  br label %223

194:                                              ; preds = %192, %167
  call void @_raw_spin_lock(ptr noundef %1) #12
  %195 = load i8, ptr %175, align 1
  %196 = load ptr, ptr %110, align 4
  %197 = getelementptr inbounds %struct.tty_buffer, ptr %196, i32 0, i32 5
  %198 = load i32, ptr %197, align 4
  %199 = and i32 %198, 1
  %200 = icmp ne i32 %199, 0
  %201 = icmp ne i8 %172, 0
  %202 = and i1 %201, %200
  br i1 %202, label %221, label %203

203:                                              ; preds = %194
  %204 = getelementptr inbounds %struct.tty_buffer, ptr %196, i32 0, i32 1
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr inbounds %struct.tty_buffer, ptr %196, i32 0, i32 2
  %207 = load i32, ptr %206, align 4
  %208 = icmp slt i32 %205, %207
  br i1 %208, label %209, label %221

209:                                              ; preds = %203
  %210 = icmp eq i32 %199, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %209
  %212 = getelementptr inbounds %struct.tty_buffer, ptr %196, i32 0, i32 6
  %213 = getelementptr i8, ptr %212, i32 %205
  %214 = getelementptr i8, ptr %213, i32 %207
  store i8 %172, ptr %214, align 1
  %215 = load i32, ptr %204, align 4
  br label %216

216:                                              ; preds = %211, %209
  %217 = phi i32 [ %215, %211 ], [ %205, %209 ]
  %218 = add i32 %217, 1
  store i32 %218, ptr %204, align 4
  %219 = getelementptr inbounds %struct.tty_buffer, ptr %196, i32 0, i32 6
  %220 = getelementptr i8, ptr %219, i32 %217
  store i8 %195, ptr %220, align 1
  br label %223

221:                                              ; preds = %203, %194
  %222 = call i32 @__tty_insert_flip_char(ptr noundef %42, i8 noundef zeroext %195, i8 noundef zeroext %172) #12
  br label %223

223:                                              ; preds = %221, %216, %193, %191, %164
  %224 = add nuw nsw i32 %127, 1
  %225 = icmp eq i32 %224, %125
  br i1 %225, label %226, label %126

226:                                              ; preds = %223
  %227 = sub i32 %112, %125
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %111, label %229

229:                                              ; preds = %226, %118, %94
  call void @tty_flip_buffer_push(ptr noundef %42) #12
  br i1 %79, label %233, label %230

230:                                              ; preds = %229
  %231 = load ptr, ptr %6, align 4
  %232 = getelementptr i8, ptr %231, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 128) #12, !srcloc !10
  br label %233

233:                                              ; preds = %230, %229
  %234 = load ptr, ptr %6, align 4
  %235 = getelementptr i8, ptr %234, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 16777215) #12, !srcloc !10
  %236 = load ptr, ptr %6, align 4
  %237 = getelementptr i8, ptr %236, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 1280) #12, !srcloc !10
  call fastcc void @msm_start_rx_dma(ptr noundef %1) #12
  br label %397

238:                                              ; preds = %37
  br i1 %47, label %267, label %239

239:                                              ; preds = %238
  %240 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 7
  %241 = load i32, ptr %240, align 4
  %242 = add i32 %241, 1
  store i32 %242, ptr %240, align 4
  %243 = getelementptr inbounds %struct.tty_bufhead, ptr %42, i32 0, i32 8
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.tty_buffer, ptr %244, i32 0, i32 5
  %246 = load i32, ptr %245, align 4
  %247 = and i32 %246, 1
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %239
  %250 = getelementptr inbounds %struct.tty_buffer, ptr %244, i32 0, i32 1
  %251 = load i32, ptr %250, align 4
  %252 = getelementptr inbounds %struct.tty_buffer, ptr %244, i32 0, i32 2
  %253 = load i32, ptr %252, align 4
  %254 = icmp slt i32 %251, %253
  br i1 %254, label %255, label %262

255:                                              ; preds = %249
  %256 = getelementptr inbounds %struct.tty_buffer, ptr %244, i32 0, i32 6
  %257 = getelementptr i8, ptr %256, i32 %251
  %258 = getelementptr i8, ptr %257, i32 %253
  store i8 4, ptr %258, align 1
  %259 = load i32, ptr %250, align 4
  %260 = add i32 %259, 1
  store i32 %260, ptr %250, align 4
  %261 = getelementptr i8, ptr %256, i32 %259
  store i8 0, ptr %261, align 1
  br label %264

262:                                              ; preds = %249, %239
  %263 = tail call i32 @__tty_insert_flip_char(ptr noundef %42, i8 noundef zeroext 0, i8 noundef zeroext 4) #12
  br label %264

264:                                              ; preds = %262, %255
  %265 = load ptr, ptr %6, align 4
  %266 = getelementptr i8, ptr %265, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 48) #12, !srcloc !10
  br label %267

267:                                              ; preds = %264, %238
  %268 = load ptr, ptr %6, align 4
  %269 = getelementptr i8, ptr %268, i32 8
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %269) #12, !srcloc !9
  %271 = and i32 %270, 1
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %396, label %273

273:                                              ; preds = %267
  %274 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 9
  %275 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 17
  %276 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 48
  %277 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %278 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %279 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 46
  %280 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 33
  %281 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 6
  %282 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 4
  %283 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 28
  %284 = getelementptr inbounds %struct.tty_bufhead, ptr %42, i32 0, i32 8
  br label %285

285:                                              ; preds = %390, %273
  %286 = phi i32 [ %270, %273 ], [ %393, %390 ]
  %287 = load ptr, ptr %6, align 4
  %288 = getelementptr i8, ptr %287, i32 12
  %289 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %288) #12, !srcloc !9
  %290 = and i32 %286, 64
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %325, label %292

292:                                              ; preds = %285
  %293 = load i32, ptr %274, align 4
  %294 = add i32 %293, 1
  store i32 %294, ptr %274, align 4
  %295 = load ptr, ptr %41, align 4
  %296 = load ptr, ptr %275, align 4
  %297 = icmp eq ptr %296, null
  br i1 %297, label %299, label %298

298:                                              ; preds = %292
  tail call void %296(ptr noundef %1) #12
  br label %299

299:                                              ; preds = %298, %292
  %300 = load i8, ptr %276, align 4
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %315, label %302

302:                                              ; preds = %299
  %303 = load ptr, ptr %277, align 4
  %304 = icmp eq ptr %303, null
  br i1 %304, label %315, label %305

305:                                              ; preds = %302
  %306 = getelementptr inbounds %struct.console, ptr %303, i32 0, i32 9
  %307 = load i16, ptr %306, align 2
  %308 = sext i16 %307 to i32
  %309 = load i32, ptr %278, align 4
  %310 = icmp eq i32 %309, %308
  br i1 %310, label %311, label %315

311:                                              ; preds = %305
  %312 = load i32, ptr %279, align 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %322, label %314

314:                                              ; preds = %311
  store i32 0, ptr %279, align 4
  br label %315

315:                                              ; preds = %314, %305, %302, %299
  %316 = load i32, ptr %280, align 4
  %317 = and i32 %316, 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %334, label %319

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.tty_port, ptr %295, i32 0, i32 1
  %321 = load ptr, ptr %320, align 4
  tail call void @do_SAK(ptr noundef %321) #12
  br label %334

322:                                              ; preds = %311
  %323 = load volatile i32, ptr @jiffies, align 64
  %324 = add i32 %323, 500
  store i32 %324, ptr %279, align 4
  br label %390

325:                                              ; preds = %285
  %326 = and i32 %286, 32
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %331, label %328

328:                                              ; preds = %325
  %329 = load i32, ptr %281, align 4
  %330 = add i32 %329, 1
  store i32 %330, ptr %281, align 4
  br label %334

331:                                              ; preds = %325
  %332 = load i32, ptr %282, align 4
  %333 = add i32 %332, 1
  store i32 %333, ptr %282, align 4
  br label %334

334:                                              ; preds = %331, %328, %319, %315
  %335 = load i32, ptr %283, align 4
  %336 = and i32 %335, %286
  %337 = and i32 %336, 64
  %338 = icmp eq i32 %337, 0
  %339 = trunc i32 %336 to i8
  %340 = lshr i8 %339, 4
  %341 = and i8 %340, 2
  %342 = select i1 %338, i8 %341, i8 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %343 = load i16, ptr %1, align 4
  %344 = add i16 %343, 1
  store i16 %344, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %345 = load i32, ptr %279, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %361, label %347

347:                                              ; preds = %334
  %348 = icmp eq i32 %289, 0
  br i1 %348, label %359, label %349

349:                                              ; preds = %347
  %350 = load volatile i32, ptr @jiffies, align 64
  %351 = sub i32 %350, %345
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %349
  %354 = tail call i32 @sysrq_mask() #12
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %353
  %357 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %1, i32 noundef %289) #12
  br i1 %357, label %358, label %359

358:                                              ; preds = %356
  tail call void @_raw_spin_lock(ptr noundef %1) #12
  br label %390

359:                                              ; preds = %356, %349, %347
  store i32 0, ptr %279, align 4
  br label %361

360:                                              ; preds = %353
  tail call void @handle_sysrq(i32 noundef %289) #12
  store i32 0, ptr %279, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #12
  br label %390

361:                                              ; preds = %359, %334
  tail call void @_raw_spin_lock(ptr noundef %1) #12
  %362 = trunc i32 %289 to i8
  %363 = load ptr, ptr %284, align 4
  %364 = getelementptr inbounds %struct.tty_buffer, ptr %363, i32 0, i32 5
  %365 = load i32, ptr %364, align 4
  %366 = and i32 %365, 1
  %367 = icmp ne i32 %366, 0
  %368 = icmp ne i8 %342, 0
  %369 = and i1 %368, %367
  br i1 %369, label %388, label %370

370:                                              ; preds = %361
  %371 = getelementptr inbounds %struct.tty_buffer, ptr %363, i32 0, i32 1
  %372 = load i32, ptr %371, align 4
  %373 = getelementptr inbounds %struct.tty_buffer, ptr %363, i32 0, i32 2
  %374 = load i32, ptr %373, align 4
  %375 = icmp slt i32 %372, %374
  br i1 %375, label %376, label %388

376:                                              ; preds = %370
  %377 = icmp eq i32 %366, 0
  br i1 %377, label %378, label %383

378:                                              ; preds = %376
  %379 = getelementptr inbounds %struct.tty_buffer, ptr %363, i32 0, i32 6
  %380 = getelementptr i8, ptr %379, i32 %372
  %381 = getelementptr i8, ptr %380, i32 %374
  store i8 %342, ptr %381, align 1
  %382 = load i32, ptr %371, align 4
  br label %383

383:                                              ; preds = %378, %376
  %384 = phi i32 [ %382, %378 ], [ %372, %376 ]
  %385 = add i32 %384, 1
  store i32 %385, ptr %371, align 4
  %386 = getelementptr inbounds %struct.tty_buffer, ptr %363, i32 0, i32 6
  %387 = getelementptr i8, ptr %386, i32 %384
  store i8 %362, ptr %387, align 1
  br label %390

388:                                              ; preds = %370, %361
  %389 = tail call i32 @__tty_insert_flip_char(ptr noundef %42, i8 noundef zeroext %362, i8 noundef zeroext %342) #12
  br label %390

390:                                              ; preds = %388, %383, %360, %358, %322
  %391 = load ptr, ptr %6, align 4
  %392 = getelementptr i8, ptr %391, i32 8
  %393 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %392) #12, !srcloc !9
  %394 = and i32 %393, 1
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %285

396:                                              ; preds = %390, %267
  tail call void @tty_flip_buffer_push(ptr noundef %42) #12
  br label %397

397:                                              ; preds = %396, %233, %35, %25, %18
  %398 = and i32 %9, 1
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %401, label %400

400:                                              ; preds = %397
  call fastcc void @msm_handle_tx(ptr noundef %1)
  br label %401

401:                                              ; preds = %400, %397
  %402 = and i32 %9, 32
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %413, label %404

404:                                              ; preds = %401
  %405 = load ptr, ptr %6, align 4
  %406 = getelementptr i8, ptr %405, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %406, i32 112) #12, !srcloc !10
  %407 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31
  %408 = load i32, ptr %407, align 4
  %409 = add i32 %408, 1
  store i32 %409, ptr %407, align 4
  %410 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %411 = load ptr, ptr %410, align 4
  %412 = getelementptr inbounds %struct.tty_port, ptr %411, i32 0, i32 9
  call void @__wake_up(ptr noundef %412, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %413

413:                                              ; preds = %404, %401
  %414 = getelementptr inbounds %struct.msm_port, ptr %1, i32 0, i32 4
  %415 = load i32, ptr %414, align 4
  %416 = load ptr, ptr %6, align 4
  %417 = getelementptr i8, ptr %416, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %417, i32 %415) #12, !srcloc !10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %5) #12
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @msm_release_dma(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 6
  %9 = load i32, ptr %8, align 4
  store i32 0, ptr %8, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 47
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = tail call i32 %12(ptr noundef nonnull %3) #12
  br label %16

16:                                               ; preds = %14, %5
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 60
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12, !srcloc !9
  %21 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %20, %23
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr i8, ptr %25, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #12, !srcloc !10
  %27 = icmp eq i32 %9, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 1
  %32 = load i32, ptr %31, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %30, i32 noundef %9, i32 noundef %32, i32 noundef 0) #12
  br label %33

33:                                               ; preds = %28, %16
  %34 = load ptr, ptr %2, align 4
  tail call void @dma_release_channel(ptr noundef %34) #12
  br label %35

35:                                               ; preds = %33, %1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false)
  %36 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %71, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 6
  %43 = load i32, ptr %42, align 4
  store i32 0, ptr %42, align 4
  %44 = load ptr, ptr %37, align 4
  %45 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 47
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %39
  %49 = tail call i32 %46(ptr noundef nonnull %37) #12
  br label %50

50:                                               ; preds = %48, %39
  %51 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 60
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #12, !srcloc !9
  %55 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %54, %57
  %59 = load ptr, ptr %51, align 4
  %60 = getelementptr i8, ptr %59, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #12, !srcloc !10
  %61 = icmp eq i32 %43, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 1
  %66 = load i32, ptr %65, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %41, i32 noundef %64, i32 noundef %43, i32 noundef %66, i32 noundef 0) #12
  br label %67

67:                                               ; preds = %62, %50
  %68 = load ptr, ptr %36, align 4
  tail call void @dma_release_channel(ptr noundef %68) #12
  %69 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 3
  %70 = load ptr, ptr %69, align 4
  tail call void @kfree(ptr noundef %70) #12
  br label %71

71:                                               ; preds = %67, %35
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %36, i8 0, i32 32, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @msm_handle_tx(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.scatterlist, align 4
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 24
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %54, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  br i1 %13, label %16, label %18

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %15, i32 12
  store i8 %8, ptr %3, align 4
  br label %49

18:                                               ; preds = %10
  %19 = getelementptr i8, ptr %15, i32 112
  store i8 %8, ptr %3, align 4
  %20 = getelementptr i8, ptr %15, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #12, !srcloc !9
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %34, %18
  %25 = phi i32 [ %35, %34 ], [ 500000, %18 ]
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr i8, ptr %26, i32 20
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #12, !srcloc !9
  %29 = and i32 %28, 128
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #12
  %33 = icmp eq i32 %25, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = add nsw i32 %25, -1
  %36 = load ptr, ptr %14, align 4
  %37 = getelementptr i8, ptr %36, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #12, !srcloc !9
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %24, label %41

41:                                               ; preds = %34, %31, %24, %18
  %42 = load ptr, ptr %14, align 4
  %43 = getelementptr i8, ptr %42, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 768) #12, !srcloc !10
  %44 = load ptr, ptr %14, align 4
  %45 = getelementptr i8, ptr %44, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 1) #12, !srcloc !10
  %46 = load ptr, ptr %14, align 4
  %47 = getelementptr i8, ptr %46, i32 64
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #12, !srcloc !9
  br label %49

49:                                               ; preds = %41, %16
  %50 = phi ptr [ %17, %16 ], [ %19, %41 ]
  call void @__raw_writesl(ptr noundef %50, ptr noundef nonnull %3, i32 noundef 1) #12
  %51 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  store i8 0, ptr %7, align 4
  br label %224

54:                                               ; preds = %1
  %55 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.tty_struct, ptr %62, i32 0, i32 19, i32 1
  %66 = load i8, ptr %65, align 4, !range !23
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64, %60
  %69 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68, %64, %54
  %73 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, -2
  store i32 %75, ptr %73, align 4
  %76 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %75) #12, !srcloc !10
  br label %224

79:                                               ; preds = %68
  %80 = sub i32 4096, %58
  %81 = add i32 %80, %56
  %82 = and i32 %81, 4095
  %83 = tail call i32 @llvm.smin.i32(i32 %82, i32 %80)
  %84 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = icmp sgt i32 %85, 3
  %87 = and i32 %83, -4
  %88 = tail call i32 @llvm.umin.i32(i32 %83, i32 256)
  %89 = select i1 %86, i32 16, i32 1
  %90 = select i1 %86, i32 %87, i32 %88
  %91 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %92 = load i32, ptr %91, align 4
  %93 = tail call i32 @llvm.umin.i32(i32 %83, i32 %92)
  %94 = load ptr, ptr %6, align 4
  %95 = icmp eq ptr %94, null
  %96 = icmp ult i32 %90, %89
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %79
  tail call fastcc void @msm_handle_tx_pio(ptr noundef %0, i32 noundef %93)
  br label %224

99:                                               ; preds = %79
  %100 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 %58
  %103 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %102) #12
  %108 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %109 = xor i1 %108, true
  %110 = select i1 %107, i1 %109, i1 false
  br i1 %110, label %111, label %120, !prof !21

111:                                              ; preds = %99
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %112 = tail call ptr @dev_driver_string(ptr noundef %104) #12
  %113 = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load ptr, ptr %104, align 4
  br label %118

118:                                              ; preds = %116, %111
  %119 = phi ptr [ %117, %116 ], [ %114, %111 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %112, ptr noundef %119) #12
  br label %120

120:                                              ; preds = %118, %99
  br i1 %107, label %121, label %123

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 2
  store i32 -1, ptr %122, align 4
  br label %223

123:                                              ; preds = %120
  %124 = load ptr, ptr @mem_map, align 4
  %125 = ptrtoint ptr %102 to i32
  %126 = add i32 %125, 1073741824
  %127 = lshr i32 %126, 12
  %128 = getelementptr %struct.page, ptr %124, i32 %127
  %129 = and i32 %125, 4095
  %130 = tail call i32 @dma_map_page_attrs(ptr noundef %104, ptr noundef %128, i32 noundef %129, i32 noundef %90, i32 noundef %106, i32 noundef 0) #12
  %131 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 2
  store i32 %130, ptr %131, align 4
  %132 = icmp eq i32 %130, -1
  br i1 %132, label %223, label %133

133:                                              ; preds = %123
  %134 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #12, !annotation !22
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #12
  %135 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %130, ptr %135, align 4
  %136 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 %90, ptr %136, align 4
  %137 = icmp eq ptr %134, null
  br i1 %137, label %145, label %138

138:                                              ; preds = %133
  %139 = load ptr, ptr %134, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.dma_device, ptr %139, i32 0, i32 39
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %141, %138, %133
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  %146 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 7
  store ptr null, ptr %146, align 4
  br label %217

147:                                              ; preds = %141
  %148 = call ptr %143(ptr noundef nonnull %134, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1, i32 noundef 33, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  %149 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 7
  store ptr %148, ptr %149, align 4
  %150 = icmp eq ptr %148, null
  br i1 %150, label %217, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %148, i32 0, i32 6
  store ptr @msm_complete_tx_dma, ptr %152, align 4
  %153 = load ptr, ptr %149, align 4
  %154 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %153, i32 0, i32 8
  store ptr %0, ptr %154, align 4
  %155 = load ptr, ptr %149, align 4
  %156 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %155, i32 0, i32 4
  %157 = load ptr, ptr %156, align 4
  %158 = call i32 %157(ptr noundef %155) #12
  %159 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 4
  store i32 %158, ptr %159, align 4
  %160 = call i32 @llvm.smin.i32(i32 %158, i32 0) #12
  %161 = icmp sgt i32 %158, -1
  br i1 %161, label %162, label %217

162:                                              ; preds = %151
  %163 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 4
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, -2
  store i32 %165, ptr %163, align 4
  %166 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr i8, ptr %167, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %165) #12, !srcloc !10
  %169 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 6
  store i32 %90, ptr %169, align 4
  %170 = load ptr, ptr %166, align 4
  %171 = getelementptr i8, ptr %170, i32 60
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #12, !srcloc !9
  %173 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 5
  %174 = load i32, ptr %173, align 4
  %175 = or i32 %174, %172
  %176 = load i32, ptr %84, align 4
  %177 = icmp slt i32 %176, 4
  br i1 %177, label %178, label %181

178:                                              ; preds = %162
  %179 = load ptr, ptr %166, align 4
  %180 = getelementptr i8, ptr %179, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %175) #12, !srcloc !10
  br label %181

181:                                              ; preds = %178, %162
  br label %182

182:                                              ; preds = %195, %181
  %183 = phi i32 [ %197, %195 ], [ 500000, %181 ]
  %184 = load ptr, ptr %166, align 4
  %185 = getelementptr i8, ptr %184, i32 8
  %186 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #12, !srcloc !9
  %187 = and i32 %186, 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %182
  %190 = load ptr, ptr %166, align 4
  %191 = getelementptr i8, ptr %190, i32 20
  %192 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #12, !srcloc !9
  %193 = and i32 %192, 128
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %196(i32 noundef 214748) #12
  %197 = add nsw i32 %183, -1
  %198 = icmp eq i32 %183, 0
  br i1 %198, label %199, label %182

199:                                              ; preds = %195, %189, %182
  %200 = load ptr, ptr %166, align 4
  %201 = getelementptr i8, ptr %200, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 768) #12, !srcloc !10
  %202 = load ptr, ptr %166, align 4
  %203 = getelementptr i8, ptr %202, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %90) #12, !srcloc !10
  %204 = load ptr, ptr %166, align 4
  %205 = getelementptr i8, ptr %204, i32 64
  %206 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #12, !srcloc !9
  %207 = load i32, ptr %84, align 4
  %208 = icmp sgt i32 %207, 3
  br i1 %208, label %209, label %212

209:                                              ; preds = %199
  %210 = load ptr, ptr %166, align 4
  %211 = getelementptr i8, ptr %210, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 %175) #12, !srcloc !10
  br label %212

212:                                              ; preds = %209, %199
  %213 = load ptr, ptr %6, align 4
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr inbounds %struct.dma_device, ptr %214, i32 0, i32 50
  %216 = load ptr, ptr %215, align 4
  call void %216(ptr noundef %213) #12
  br label %224

217:                                              ; preds = %151, %147, %145
  %218 = phi i32 [ %160, %151 ], [ -5, %147 ], [ -5, %145 ]
  %219 = load ptr, ptr %103, align 4
  %220 = load i32, ptr %131, align 4
  %221 = load i32, ptr %105, align 4
  call void @dma_unmap_page_attrs(ptr noundef %219, i32 noundef %220, i32 noundef %90, i32 noundef %221, i32 noundef 0) #12
  %222 = icmp eq i32 %218, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %217, %123, %121
  call fastcc void @msm_handle_tx_pio(ptr noundef %0, i32 noundef %93)
  br label %224

224:                                              ; preds = %223, %217, %212, %98, %72, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @msm_start_rx_dma(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.scatterlist, align 4
  %3 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %130, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %10) #12
  %14 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %26, !prof !21

17:                                               ; preds = %6
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %18 = tail call ptr @dev_driver_string(ptr noundef %8) #12
  %19 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load ptr, ptr %8, align 4
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %23, %22 ], [ %20, %17 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %18, ptr noundef %25) #12
  br label %26

26:                                               ; preds = %24, %6
  br i1 %13, label %27, label %29

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 2
  store i32 -1, ptr %28, align 4
  br label %113

29:                                               ; preds = %26
  %30 = load ptr, ptr @mem_map, align 4
  %31 = ptrtoint ptr %10 to i32
  %32 = add i32 %31, 1073741824
  %33 = lshr i32 %32, 12
  %34 = getelementptr %struct.page, ptr %30, i32 %33
  %35 = and i32 %31, 4095
  %36 = tail call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %34, i32 noundef %35, i32 noundef 1024, i32 noundef %12, i32 noundef 0) #12
  %37 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 2
  store i32 %36, ptr %37, align 4
  %38 = icmp eq i32 %36, -1
  br i1 %38, label %113, label %39

39:                                               ; preds = %29
  %40 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #12, !annotation !22
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #12
  %41 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %36, ptr %41, align 4
  %42 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 1024, ptr %42, align 4
  %43 = icmp eq ptr %40, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %40, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 39
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %44, %39
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  %52 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 7
  store ptr null, ptr %52, align 4
  br label %109

53:                                               ; preds = %47
  %54 = call ptr %49(ptr noundef nonnull %40, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  %55 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 7
  store ptr %54, ptr %55, align 4
  %56 = icmp eq ptr %54, null
  br i1 %56, label %109, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %54, i32 0, i32 6
  store ptr @msm_complete_rx_dma, ptr %58, align 4
  %59 = load ptr, ptr %55, align 4
  %60 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %59, i32 0, i32 8
  store ptr %0, ptr %60, align 4
  %61 = load ptr, ptr %55, align 4
  %62 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %61, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = call i32 %63(ptr noundef %61) #12
  %65 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 4
  store i32 %64, ptr %65, align 4
  %66 = icmp sgt i32 %64, -1
  br i1 %66, label %67, label %109

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, -25
  store i32 %70, ptr %68, align 4
  %71 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = or i32 %70, 8
  store i32 %75, ptr %68, align 4
  br label %76

76:                                               ; preds = %74, %67
  %77 = phi i32 [ %75, %74 ], [ %70, %67 ]
  %78 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %77) #12, !srcloc !10
  %81 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 6
  store i32 1024, ptr %81, align 4
  %82 = load ptr, ptr %3, align 4
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.dma_device, ptr %83, i32 0, i32 50
  %85 = load ptr, ptr %84, align 4
  call void %85(ptr noundef %82) #12
  %86 = load ptr, ptr %78, align 4
  %87 = getelementptr i8, ptr %86, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 128) #12, !srcloc !10
  %88 = load ptr, ptr %78, align 4
  %89 = getelementptr i8, ptr %88, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 1280) #12, !srcloc !10
  %90 = load ptr, ptr %78, align 4
  %91 = getelementptr i8, ptr %90, i32 60
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #12, !srcloc !9
  %93 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 5
  %94 = load i32, ptr %93, align 4
  %95 = or i32 %94, %92
  %96 = load i32, ptr %71, align 4
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %98, label %101

98:                                               ; preds = %76
  %99 = load ptr, ptr %78, align 4
  %100 = getelementptr i8, ptr %99, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %95) #12, !srcloc !10
  br label %101

101:                                              ; preds = %98, %76
  %102 = load ptr, ptr %78, align 4
  %103 = getelementptr i8, ptr %102, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 1024) #12, !srcloc !10
  %104 = load i32, ptr %71, align 4
  %105 = icmp sgt i32 %104, 3
  br i1 %105, label %106, label %130

106:                                              ; preds = %101
  %107 = load ptr, ptr %78, align 4
  %108 = getelementptr i8, ptr %107, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %95) #12, !srcloc !10
  br label %130

109:                                              ; preds = %57, %53, %51
  %110 = load ptr, ptr %7, align 4
  %111 = load i32, ptr %37, align 4
  %112 = load i32, ptr %11, align 4
  call void @dma_unmap_page_attrs(ptr noundef %110, i32 noundef %111, i32 noundef 1024, i32 noundef %112, i32 noundef 0) #12
  br label %113

113:                                              ; preds = %109, %29, %27
  %114 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 16) #12, !srcloc !10
  %117 = load ptr, ptr %114, align 4
  %118 = getelementptr i8, ptr %117, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 1) #12, !srcloc !10
  %119 = load ptr, ptr %114, align 4
  %120 = getelementptr i8, ptr %119, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 128) #12, !srcloc !10
  %121 = load ptr, ptr %114, align 4
  %122 = getelementptr i8, ptr %121, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 16777215) #12, !srcloc !10
  %123 = load ptr, ptr %114, align 4
  %124 = getelementptr i8, ptr %123, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 1280) #12, !srcloc !10
  %125 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 4
  %126 = load i32, ptr %125, align 4
  %127 = or i32 %126, 24
  store i32 %127, ptr %125, align 4
  %128 = load ptr, ptr %114, align 4
  %129 = getelementptr i8, ptr %128, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #12, !srcloc !10
  br label %130

130:                                              ; preds = %113, %106, %101, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_complete_rx_dma(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %189, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 60
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !9
  %13 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %12, %15
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr i8, ptr %17, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #12, !srcloc !10
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i8, ptr %19, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #12, !srcloc !9
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %52, label %24

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.tty_bufhead, ptr %3, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.tty_buffer, ptr %29, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.tty_buffer, ptr %29, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tty_buffer, ptr %29, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.tty_buffer, ptr %29, i32 0, i32 6
  %42 = getelementptr i8, ptr %41, i32 %36
  %43 = getelementptr i8, ptr %42, i32 %38
  store i8 4, ptr %43, align 1
  %44 = load i32, ptr %35, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %35, align 4
  %46 = getelementptr i8, ptr %41, i32 %44
  store i8 0, ptr %46, align 1
  br label %49

47:                                               ; preds = %34, %24
  %48 = tail call i32 @__tty_insert_flip_char(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 4) #12
  br label %49

49:                                               ; preds = %47, %40
  %50 = load ptr, ptr %9, align 4
  %51 = getelementptr i8, ptr %50, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 48) #12, !srcloc !10
  br label %52

52:                                               ; preds = %49, %8
  %53 = load ptr, ptr %9, align 4
  %54 = getelementptr i8, ptr %53, i32 56
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #12, !srcloc !9
  %56 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, %55
  store i32 %58, ptr %56, align 4
  store i32 0, ptr %5, align 4
  %59 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 1
  %64 = load i32, ptr %63, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %60, i32 noundef %62, i32 noundef 1024, i32 noundef %64, i32 noundef 0) #12
  %65 = icmp sgt i32 %55, 0
  br i1 %65, label %66, label %185

66:                                               ; preds = %52
  %67 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 7
  %68 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 9, i32 3
  %69 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 9
  %70 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 17
  %71 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 48
  %72 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %73 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %74 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  %75 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %76 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %77 = getelementptr inbounds %struct.tty_bufhead, ptr %3, i32 0, i32 8
  br label %78

78:                                               ; preds = %181, %66
  %79 = phi i32 [ %4, %66 ], [ %182, %181 ]
  %80 = phi i32 [ 0, %66 ], [ %183, %181 ]
  %81 = load i8, ptr %67, align 4, !range !23
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %121, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr %68, align 4
  %85 = getelementptr i8, ptr %84, i32 %80
  %86 = load i8, ptr %85, align 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %121

88:                                               ; preds = %83
  %89 = load i32, ptr %69, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %69, align 4
  store i8 0, ptr %67, align 4
  %91 = load ptr, ptr %2, align 4
  %92 = load ptr, ptr %70, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  tail call void %92(ptr noundef %0) #12
  br label %95

95:                                               ; preds = %94, %88
  %96 = load i8, ptr %71, align 4
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %111, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %72, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %111, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.console, ptr %99, i32 0, i32 9
  %103 = load i16, ptr %102, align 2
  %104 = sext i16 %103 to i32
  %105 = load i32, ptr %73, align 4
  %106 = icmp eq i32 %105, %104
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32, ptr %74, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %107
  store i32 0, ptr %74, align 4
  br label %111

111:                                              ; preds = %110, %101, %98, %95
  %112 = load i32, ptr %75, align 4
  %113 = and i32 %112, 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.tty_port, ptr %91, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  tail call void @do_SAK(ptr noundef %117) #12
  br label %121

118:                                              ; preds = %107
  %119 = load volatile i32, ptr @jiffies, align 64
  %120 = add i32 %119, 500
  store i32 %120, ptr %74, align 4
  br label %181

121:                                              ; preds = %115, %111, %83, %78
  %122 = phi i8 [ 0, %83 ], [ 0, %78 ], [ 1, %115 ], [ 1, %111 ]
  %123 = load i32, ptr %76, align 4
  %124 = and i32 %123, 64
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, i8 0, i8 %122
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %79) #12
  %127 = load ptr, ptr %68, align 4
  %128 = getelementptr i8, ptr %127, i32 %80
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = load i32, ptr %74, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %149, label %133

133:                                              ; preds = %121
  %134 = icmp eq i8 %129, 0
  br i1 %134, label %146, label %135

135:                                              ; preds = %133
  %136 = load volatile i32, ptr @jiffies, align 64
  %137 = sub i32 %136, %131
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = tail call i32 @sysrq_mask() #12
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %0, i32 noundef %130) #12
  br i1 %143, label %144, label %146

144:                                              ; preds = %142
  %145 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  br label %181

146:                                              ; preds = %142, %135, %133
  store i32 0, ptr %74, align 4
  br label %149

147:                                              ; preds = %139
  tail call void @handle_sysrq(i32 noundef %130) #12
  store i32 0, ptr %74, align 4
  %148 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  br label %181

149:                                              ; preds = %146, %121
  %150 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  %151 = load ptr, ptr %68, align 4
  %152 = getelementptr i8, ptr %151, i32 %80
  %153 = load i8, ptr %152, align 1
  %154 = load ptr, ptr %77, align 4
  %155 = getelementptr inbounds %struct.tty_buffer, ptr %154, i32 0, i32 5
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, 1
  %158 = icmp ne i32 %157, 0
  %159 = icmp ne i8 %126, 0
  %160 = and i1 %159, %158
  br i1 %160, label %179, label %161

161:                                              ; preds = %149
  %162 = getelementptr inbounds %struct.tty_buffer, ptr %154, i32 0, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds %struct.tty_buffer, ptr %154, i32 0, i32 2
  %165 = load i32, ptr %164, align 4
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = icmp eq i32 %157, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %167
  %170 = getelementptr inbounds %struct.tty_buffer, ptr %154, i32 0, i32 6
  %171 = getelementptr i8, ptr %170, i32 %163
  %172 = getelementptr i8, ptr %171, i32 %165
  store i8 %126, ptr %172, align 1
  %173 = load i32, ptr %162, align 4
  br label %174

174:                                              ; preds = %169, %167
  %175 = phi i32 [ %173, %169 ], [ %163, %167 ]
  %176 = add i32 %175, 1
  store i32 %176, ptr %162, align 4
  %177 = getelementptr inbounds %struct.tty_buffer, ptr %154, i32 0, i32 6
  %178 = getelementptr i8, ptr %177, i32 %175
  store i8 %153, ptr %178, align 1
  br label %181

179:                                              ; preds = %161, %149
  %180 = tail call i32 @__tty_insert_flip_char(ptr noundef %3, i8 noundef zeroext %153, i8 noundef zeroext %126) #12
  br label %181

181:                                              ; preds = %179, %174, %147, %144, %118
  %182 = phi i32 [ %79, %118 ], [ %148, %147 ], [ %145, %144 ], [ %150, %174 ], [ %150, %179 ]
  %183 = add nuw nsw i32 %80, 1
  %184 = icmp eq i32 %183, %55
  br i1 %184, label %185, label %78

185:                                              ; preds = %181, %52
  %186 = phi i32 [ %4, %52 ], [ %182, %181 ]
  tail call fastcc void @msm_start_rx_dma(ptr noundef %0)
  %187 = icmp eq i32 %55, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %186) #12
  br i1 %187, label %190, label %188

188:                                              ; preds = %185
  tail call void @tty_flip_buffer_push(ptr noundef %3) #12
  br label %190

189:                                              ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #12
  br label %190

190:                                              ; preds = %189, %188, %185
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @msm_handle_tx_pio(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  br i1 %9, label %12, label %14

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %11, i32 12
  br label %47

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %11, i32 112
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %132, label %17

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %11, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #12, !srcloc !9
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %32, %17
  %23 = phi i32 [ %33, %32 ], [ 500000, %17 ]
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr i8, ptr %24, i32 20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #12, !srcloc !9
  %27 = and i32 %26, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #12
  %31 = icmp eq i32 %23, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = add nsw i32 %23, -1
  %34 = load ptr, ptr %10, align 4
  %35 = getelementptr i8, ptr %34, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #12, !srcloc !9
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %22, label %39

39:                                               ; preds = %32, %29, %22, %17
  %40 = load ptr, ptr %10, align 4
  %41 = getelementptr i8, ptr %40, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 768) #12, !srcloc !10
  %42 = load ptr, ptr %10, align 4
  %43 = getelementptr i8, ptr %42, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %1) #12, !srcloc !10
  %44 = load ptr, ptr %10, align 4
  %45 = getelementptr i8, ptr %44, i32 64
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #12, !srcloc !9
  br label %47

47:                                               ; preds = %39, %12
  %48 = phi ptr [ %15, %39 ], [ %13, %12 ]
  %49 = icmp eq i32 %1, 0
  br i1 %49, label %132, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %52 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 2
  %53 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %54 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  %55 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  %56 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  %57 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 4
  %58 = getelementptr [4 x i8], ptr %3, i32 0, i32 5
  %59 = getelementptr [4 x i8], ptr %3, i32 0, i32 6
  br label %60

60:                                               ; preds = %126, %50
  %61 = phi i32 [ 0, %50 ], [ %130, %126 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %62 = load ptr, ptr %51, align 4
  %63 = getelementptr i8, ptr %62, i32 8
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #12, !srcloc !9
  %65 = and i32 %64, 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %132

68:                                               ; preds = %60
  %69 = load i32, ptr %7, align 4
  %70 = icmp eq i32 %69, 0
  %71 = sub i32 %1, %61
  %72 = call i32 @llvm.umin.i32(i32 %71, i32 4)
  %73 = select i1 %70, i32 1, i32 %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %126, label %75

75:                                               ; preds = %68
  %76 = load i32, ptr %53, align 4
  %77 = load ptr, ptr %6, align 4
  %78 = load i32, ptr %52, align 4
  %79 = getelementptr i8, ptr %77, i32 %78
  %80 = load i8, ptr %79, align 1
  store i8 %80, ptr %3, align 4
  %81 = add i32 %76, 1
  store i32 %81, ptr %53, align 4
  %82 = icmp eq i32 %73, 1
  br i1 %82, label %126, label %83

83:                                               ; preds = %75
  %84 = load ptr, ptr %6, align 4
  %85 = load i32, ptr %52, align 4
  %86 = add i32 %85, 1
  %87 = getelementptr i8, ptr %84, i32 %86
  %88 = load i8, ptr %87, align 1
  store i8 %88, ptr %54, align 1
  %89 = add i32 %76, 2
  store i32 %89, ptr %53, align 4
  %90 = icmp eq i32 %73, 2
  br i1 %90, label %126, label %91

91:                                               ; preds = %83
  %92 = load ptr, ptr %6, align 4
  %93 = load i32, ptr %52, align 4
  %94 = add i32 %93, 2
  %95 = getelementptr i8, ptr %92, i32 %94
  %96 = load i8, ptr %95, align 1
  store i8 %96, ptr %55, align 2
  %97 = add i32 %76, 3
  store i32 %97, ptr %53, align 4
  %98 = icmp eq i32 %73, 3
  br i1 %98, label %126, label %99

99:                                               ; preds = %91
  %100 = load ptr, ptr %6, align 4
  %101 = load i32, ptr %52, align 4
  %102 = add i32 %101, 3
  %103 = getelementptr i8, ptr %100, i32 %102
  %104 = load i8, ptr %103, align 1
  store i8 %104, ptr %56, align 1
  %105 = add i32 %76, 4
  store i32 %105, ptr %53, align 4
  %106 = icmp eq i32 %73, 4
  br i1 %106, label %126, label %107

107:                                              ; preds = %99
  %108 = load ptr, ptr %6, align 4
  %109 = load i32, ptr %52, align 4
  %110 = add i32 %109, 4
  %111 = getelementptr i8, ptr %108, i32 %110
  %112 = load i8, ptr %111, align 1
  store i8 %112, ptr %57, align 4
  %113 = add i32 %76, 5
  store i32 %113, ptr %53, align 4
  %114 = load ptr, ptr %6, align 4
  %115 = load i32, ptr %52, align 4
  %116 = add i32 %115, 5
  %117 = getelementptr i8, ptr %114, i32 %116
  %118 = load i8, ptr %117, align 1
  store i8 %118, ptr %58, align 1
  %119 = add i32 %76, 6
  store i32 %119, ptr %53, align 4
  %120 = load ptr, ptr %6, align 4
  %121 = load i32, ptr %52, align 4
  %122 = add i32 %121, 6
  %123 = getelementptr i8, ptr %120, i32 %122
  %124 = load i8, ptr %123, align 1
  store i8 %124, ptr %59, align 2
  %125 = add i32 %76, 7
  store i32 %125, ptr %53, align 4
  br label %126

126:                                              ; preds = %107, %99, %91, %83, %75, %68
  call void @__raw_writesl(ptr noundef %48, ptr noundef nonnull %3, i32 noundef 1) #12
  %127 = load i32, ptr %52, align 4
  %128 = add i32 %127, %73
  %129 = and i32 %128, 4095
  store i32 %129, ptr %52, align 4
  %130 = add i32 %73, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %131 = icmp ult i32 %130, %1
  br i1 %131, label %60, label %132

132:                                              ; preds = %126, %67, %47, %14
  %133 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 4
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %140, -2
  store i32 %141, ptr %139, align 4
  %142 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr i8, ptr %143, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %141) #12, !srcloc !10
  %145 = load i32, ptr %133, align 4
  %146 = load i32, ptr %135, align 4
  br label %147

147:                                              ; preds = %138, %132
  %148 = phi i32 [ %146, %138 ], [ %136, %132 ]
  %149 = phi i32 [ %145, %138 ], [ %134, %132 ]
  %150 = sub i32 %149, %148
  %151 = and i32 %150, 3840
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  call void @uart_write_wakeup(ptr noundef %0) #12
  br label %154

154:                                              ; preds = %153, %147
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_complete_tx_dma(ptr noundef %0) #3 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !22
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %68, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 49
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %2) #12
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %6, align 4
  %23 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 1
  %24 = load i32, ptr %23, align 4
  call void @dma_unmap_page_attrs(ptr noundef %19, i32 noundef %21, i32 noundef %22, i32 noundef %24, i32 noundef 0) #12
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 60
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #12, !srcloc !9
  %29 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 8, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %28, %31
  %33 = load ptr, ptr %25, align 4
  %34 = getelementptr i8, ptr %33, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #12, !srcloc !10
  %35 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp sgt i32 %36, 3
  br i1 %37, label %38, label %43

38:                                               ; preds = %9
  %39 = load ptr, ptr %25, align 4
  %40 = getelementptr i8, ptr %39, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 32) #12, !srcloc !10
  %41 = load ptr, ptr %25, align 4
  %42 = getelementptr i8, ptr %41, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 4) #12, !srcloc !10
  br label %43

43:                                               ; preds = %38, %9
  %44 = load i32, ptr %6, align 4
  %45 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 %44, %46
  %48 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %47
  store i32 %50, ptr %48, align 4
  store i32 0, ptr %6, align 4
  %51 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, %47
  %54 = and i32 %53, 4095
  store i32 %54, ptr %51, align 4
  %55 = getelementptr inbounds %struct.msm_port, ptr %0, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %56, 1
  store i32 %57, ptr %55, align 4
  %58 = load ptr, ptr %25, align 4
  %59 = getelementptr i8, ptr %58, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #12, !srcloc !10
  %60 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %51, align 4
  %63 = sub i32 %61, %62
  %64 = and i32 %63, 3840
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %43
  call void @uart_write_wakeup(ptr noundef %0) #12
  br label %67

67:                                               ; preds = %66, %43
  call fastcc void @msm_handle_tx(ptr noundef %0)
  br label %68

68:                                               ; preds = %67, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_serial_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_suspend_port(ptr noundef nonnull @msm_uart_driver, ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_serial_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_resume_port(ptr noundef nonnull @msm_uart_driver, ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_console_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = icmp ugt i16 %5, 2
  br i1 %6, label %7, label %8, !prof !21

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/msm_serial.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1672, 0\0A.popsection", ""() #12, !srcloc !24
  unreachable

8:                                                ; preds = %3
  %9 = zext i16 %5 to i32
  %10 = getelementptr [3 x %struct.msm_port], ptr @msm_uart_ports, i32 0, i32 %9
  %11 = getelementptr [3 x %struct.msm_port], ptr @msm_uart_ports, i32 0, i32 %9, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  tail call fastcc void @__msm_console_write(ptr noundef %10, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %13)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_console_setup(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 115200, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 110, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 110, ptr %6, align 4
  %7 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 2
  %9 = icmp ugt i16 %8, 2
  br i1 %9, label %28, label %10, !prof !21

10:                                               ; preds = %2
  %11 = zext i16 %8 to i32
  %12 = getelementptr [3 x %struct.msm_port], ptr @msm_uart_ports, i32 0, i32 %11
  %13 = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16, !prof !21

16:                                               ; preds = %10
  tail call fastcc void @msm_init_clock(ptr noundef %12)
  %17 = icmp eq ptr %1, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #12
  br label %19

19:                                               ; preds = %18, %16
  %20 = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 41
  %21 = load i32, ptr %20, align 4
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %21) #13
  %23 = load i32, ptr %3, align 4
  %24 = load i32, ptr %5, align 4
  %25 = load i32, ptr %4, align 4
  %26 = load i32, ptr %6, align 4
  %27 = call i32 @uart_set_options(ptr noundef %12, ptr noundef %0, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26) #12
  br label %28

28:                                               ; preds = %19, %10, %2
  %29 = phi i32 [ %27, %19 ], [ -6, %2 ], [ -6, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 4997516}
!10 = !{i64 4997098}
!11 = !{i64 2153437279}
!12 = !{i64 2153437121}
!13 = !{i64 2149274359}
!14 = !{i64 2149270183}
!15 = !{i64 2149270258, i64 2149270285, i64 2149270332, i64 2149270354, i64 2149270382, i64 2149270402}
!16 = !{i64 2149297362}
!17 = !{i64 2148054437}
!18 = !{i64 454432, i64 2147944403, i64 2147944429, i64 2147944476, i64 2147944498, i64 2147944526, i64 2147944546}
!19 = !{i64 2147957299, i64 2147957331, i64 2147957360, i64 2147957394, i64 2147957425, i64 2147957448}
!20 = !{i64 2148054640}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{!"auto-init"}
!23 = !{i8 0, i8 2}
!24 = !{i64 2153438488, i64 2153438985, i64 2153438525, i64 2153438581, i64 2153438615, i64 2153438639, i64 2153438680, i64 2153438701, i64 2153438729, i64 2153438763}
