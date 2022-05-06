; ModuleID = '/llk/IR/drivers/tty/serial/amba-pl011.c_pt.bc'
source_filename = "../drivers/tty/serial/amba-pl011.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vendor_data = type { ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
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
%struct.uart_amba_port = type { %struct.uart_port, ptr, ptr, ptr, i32, i32, i32, i32, i32, [12 x i8], i8, i32, i8, i8, %struct.pl011_dmarx_data, %struct.pl011_dmatx_data, i8 }
%struct.pl011_dmarx_data = type { ptr, %struct.completion, i8, %struct.pl011_sgbuf, %struct.pl011_sgbuf, i32, i8, %struct.timer_list, i32, i32, i8, i32, i32 }
%struct.pl011_sgbuf = type { %struct.scatterlist, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.pl011_dmatx_data = type { ptr, %struct.scatterlist, ptr, i8 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.41, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.41 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.39, %struct.anon.40, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.39 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.40 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.amba_pl011_data = type { ptr, ptr, ptr, i8, i32, i32, ptr, ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.page = type { i32, %union.anon.1, %union.anon.69, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }

@__UNIQUE_ID___earlycon_pl011255 = internal constant %struct.earlycon_id { [15 x i8] c"pl011\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"arm,pl011\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pl011_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_pl011256 = internal constant %struct.earlycon_id { [15 x i8] c"pl011\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"arm,sbsa-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pl011_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_qdf2400_e44257 = internal constant %struct.earlycon_id { [15 x i8] c"qdf2400_e44\00\00\00\00", i8 0, [128 x i8] zeroinitializer, ptr @qdf2400_e44_early_console_setup }, section "__earlycon_table", align 4
@arm_sbsa_uart_platform_driver = internal global %struct.platform_driver { ptr @sbsa_uart_probe, ptr @sbsa_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sbsa_uart_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl011_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@pl011_driver = internal global %struct.amba_driver { %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl011_dev_pm_ops, ptr null, ptr null }, ptr @pl011_probe, ptr @pl011_remove, ptr null, ptr @pl011_ids }, align 4
@__initcall__kmod_amba_pl011__262_2946_pl011_init3 = internal global ptr @pl011_init, section ".initcall3.init", align 4
@__exitcall_pl011_exit = internal global ptr @pl011_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author263 = internal constant [50 x i8] c"amba_pl011.author=ARM Ltd/Deep Blue Solutions Ltd\00", section ".modinfo", align 1
@__UNIQUE_ID_description264 = internal constant [51 x i8] c"amba_pl011.description=ARM AMBA serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file265 = internal constant [46 x i8] c"amba_pl011.file=drivers/tty/serial/amba-pl011\00", section ".modinfo", align 1
@__UNIQUE_ID_license266 = internal constant [23 x i8] c"amba_pl011.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"sbsa-uart\00", align 1
@sbsa_uart_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,sbsa-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@pl011_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pl011_suspend, ptr @pl011_resume, ptr @pl011_suspend, ptr @pl011_resume, ptr @pl011_suspend, ptr @pl011_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"current-speed\00", align 1
@vendor_sbsa = internal constant %struct.vendor_data { ptr @pl011_std_offsets, i32 0, i32 8, i32 2, i32 1, i32 256, i32 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1, ptr null }, align 4
@sbsa_uart_pops = internal constant %struct.uart_ops { ptr @pl011_tx_empty, ptr @sbsa_uart_set_mctrl, ptr @sbsa_uart_get_mctrl, ptr @pl011_stop_tx, ptr @pl011_start_tx, ptr null, ptr null, ptr null, ptr @pl011_stop_rx, ptr null, ptr null, ptr @sbsa_uart_startup, ptr @sbsa_uart_shutdown, ptr null, ptr @sbsa_uart_set_termios, ptr null, ptr null, ptr @pl011_type, ptr null, ptr null, ptr @pl011_config_port, ptr @pl011_verify_port, ptr null }, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"SBSA\00", align 1
@amba_ports = internal unnamed_addr global [14 x ptr] zeroinitializer, align 4
@pl011_std_offsets = internal global <{ [15 x i16], [9 x i16] }> <{ [15 x i16] [i16 0, i16 0, i16 0, i16 24, i16 44, i16 44, i16 36, i16 40, i16 48, i16 52, i16 56, i16 60, i16 64, i16 68, i16 72], [9 x i16] zeroinitializer }>, align 2
@.str.4 = private unnamed_addr constant [42 x i8] c"timeout while draining hardware tx queue\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"uart-pl011\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"unable to pause DMA transfer\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"couldn't insert all characters (TTY is full?)\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@pl011_probe_dt_alias.seen_dev_with_alias = internal unnamed_addr global i1 false, align 1
@pl011_probe_dt_alias.seen_dev_without_alias = internal unnamed_addr global i1 false, align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"requested serial port %d  not available.\0A\00", align 1
@.str.10 = private unnamed_addr constant [108 x i8] c"aliased and non-aliased serial devices found in device tree. Serial port enumeration may be unpredictable.\0A\00", align 1
@amba_reg = internal global %struct.uart_driver { ptr null, ptr @.str.12, ptr @.str.12, i32 204, i32 64, i32 14, ptr @amba_console, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"Failed to register AMBA-PL011 driver\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"ttyAMA\00", align 1
@amba_console = internal global %struct.console { [16 x i8] c"ttyAMA\00\00\00\00\00\00\00\00\00\00", ptr @pl011_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @pl011_console_setup, ptr null, ptr @pl011_console_match, i16 17, i16 -1, i32 0, i32 0, i32 0, ptr @amba_reg, ptr null }, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"qdf2400_e44\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"pl011\00", align 1
@pl011_ids = internal constant [3 x %struct.amba_id] [%struct.amba_id { i32 266257, i32 1048575, ptr @vendor_arm }, %struct.amba_id { i32 3672066, i32 16777215, ptr @vendor_st }, %struct.amba_id zeroinitializer], align 4
@amba_pl011_pops = internal constant %struct.uart_ops { ptr @pl011_tx_empty, ptr @pl011_set_mctrl, ptr @pl011_get_mctrl, ptr @pl011_stop_tx, ptr @pl011_start_tx, ptr null, ptr null, ptr null, ptr @pl011_stop_rx, ptr @pl011_enable_ms, ptr @pl011_break_ctl, ptr @pl011_startup, ptr @pl011_shutdown, ptr @pl011_dma_flush_buffer, ptr @pl011_set_termios, ptr null, ptr null, ptr @pl011_type, ptr null, ptr null, ptr @pl011_config_port, ptr @pl011_verify_port, ptr null }, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"PL011 rev%u\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"no memory for DMA TX buffer\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"failed to init DMA %s: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"RX buffer A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"RX buffer B\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"no DMA platform data\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"no TX DMA channel!\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"DMA channel TX %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"no RX DMA channel!\0A\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"RX DMA disabled - no residue processing\0A\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"auto-poll\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"poll-rate-ms\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"poll-timeout-ms\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"DMA channel RX %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@vendor_arm = internal global %struct.vendor_data { ptr @pl011_std_offsets, i32 18, i32 8, i32 2, i32 1, i32 256, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @get_fifosize_arm }, align 4
@vendor_st = internal global %struct.vendor_data { ptr @pl011_st_offsets, i32 45, i32 8, i32 2, i32 1, i32 256, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 0, ptr @get_fifosize_st }, align 4
@pl011_st_offsets = internal global [24 x i16] [i16 0, i16 8, i16 12, i16 24, i16 28, i16 44, i16 36, i16 40, i16 48, i16 52, i16 56, i16 60, i16 64, i16 68, i16 72, i16 80, i16 84, i16 88, i16 92, i16 96, i16 128, i16 132, i16 256, i16 348], align 2
@.str.31 = private unnamed_addr constant [34 x i8] c"\016Serial: AMBA PL011 UART driver\0A\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"\014could not register SBSA UART platform driver\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID___earlycon_pl011255, ptr @__UNIQUE_ID___earlycon_pl011256, ptr @__UNIQUE_ID___earlycon_qdf2400_e44257, ptr @__UNIQUE_ID_author263, ptr @__UNIQUE_ID_description264, ptr @__UNIQUE_ID_file265, ptr @__UNIQUE_ID_license266, ptr @__exitcall_pl011_exit, ptr @__initcall__kmod_amba_pl011__262_2946_pl011_init3, ptr @pl011_exit], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @pl011_early_console_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 1
  store ptr @pl011_early_write, ptr %8, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.console, ptr %9, i32 0, i32 2
  store ptr null, ptr %10, align 4
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %6 ], [ -19, %2 ]
  ret i32 %12
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @qdf2400_e44_early_console_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 1
  store ptr @qdf2400_e44_early_write, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -19, %2 ]
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pl011_exit() #1 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @arm_sbsa_uart_platform_driver) #17
  tail call void @amba_driver_unregister(ptr noundef nonnull @pl011_driver) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pl011_init() #1 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #18
  %2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @arm_sbsa_uart_platform_driver, ptr noundef null) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #18
  br label %6

6:                                                ; preds = %4, %0
  %7 = tail call i32 @amba_driver_register(ptr noundef nonnull @pl011_driver) #17
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_early_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.earlycon_device, ptr %5, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @pl011_putc) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_putc(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #17, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !9
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !11
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #17, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !9
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %2
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %17 = load i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #17
  tail call void @arm_heavy_mb() #17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %1) #17, !srcloc !12
  br label %24

21:                                               ; preds = %15
  %22 = trunc i32 %1 to i8
  %23 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 %22) #17, !srcloc !13
  br label %24

24:                                               ; preds = %21, %19
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #17, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !14
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %30, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !16
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr i8, ptr %31, i32 24
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #17, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !14
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %30

36:                                               ; preds = %30, %24
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @qdf2400_e44_early_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.earlycon_device, ptr %5, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @qdf2400_e44_putc) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @qdf2400_e44_putc(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #17, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !17
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !19
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #17, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !17
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !20
  tail call void @arm_heavy_mb() #17
  %16 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %1) #17, !srcloc !12
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %17, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #17, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !21
  %20 = and i32 %19, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %22, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !23
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #17, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !21
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %22, label %28

28:                                               ; preds = %22, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sbsa_uart_probe(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !annotation !24
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #17
  %9 = call i32 @llvm.smin.i32(i32 %8, i32 0) #17
  %10 = icmp sgt i32 %8, -1
  br i1 %10, label %12, label %77

11:                                               ; preds = %1
  store i32 115200, ptr %2, align 4
  br label %12

12:                                               ; preds = %11, %7
  %13 = load ptr, ptr @amba_ports, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %54, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %54, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %54, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %54, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %54, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 8), align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 9), align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 10), align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 11), align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 12), align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 13), align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %77

54:                                               ; preds = %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12
  %55 = phi i32 [ 12, %48 ], [ 11, %45 ], [ 10, %42 ], [ 9, %39 ], [ 8, %36 ], [ 7, %33 ], [ 6, %30 ], [ 5, %27 ], [ 4, %24 ], [ 3, %21 ], [ 2, %18 ], [ 1, %15 ], [ 0, %12 ], [ 13, %51 ]
  %56 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 532, i32 noundef 3520) #17
  %57 = icmp eq ptr %56, null
  br i1 %57, label %77, label %58

58:                                               ; preds = %54
  %59 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #17
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.uart_port, ptr %56, i32 0, i32 20
  store i32 %59, ptr %62, align 4
  %63 = getelementptr inbounds %struct.uart_amba_port, ptr %56, i32 0, i32 3
  store ptr @vendor_sbsa, ptr %63, align 4
  %64 = getelementptr inbounds %struct.uart_amba_port, ptr %56, i32 0, i32 1
  store ptr @pl011_std_offsets, ptr %64, align 4
  %65 = getelementptr inbounds %struct.uart_amba_port, ptr %56, i32 0, i32 7
  store i32 32, ptr %65, align 4
  %66 = getelementptr inbounds %struct.uart_port, ptr %56, i32 0, i32 26
  store i8 3, ptr %66, align 2
  %67 = getelementptr inbounds %struct.uart_port, ptr %56, i32 0, i32 39
  store ptr @sbsa_uart_pops, ptr %67, align 4
  %68 = load i32, ptr %2, align 4
  %69 = getelementptr inbounds %struct.uart_amba_port, ptr %56, i32 0, i32 8
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.uart_amba_port, ptr %56, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %70, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i32 5, i1 false)
  %71 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #17
  %72 = call fastcc i32 @pl011_setup_port(ptr noundef %3, ptr noundef nonnull %56, ptr noundef %71, i32 noundef %55)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %56, ptr %75, align 8
  %76 = call fastcc i32 @pl011_register_port(ptr noundef nonnull %56)
  br label %77

77:                                               ; preds = %74, %61, %58, %54, %51, %7
  %78 = phi i32 [ %76, %74 ], [ %9, %7 ], [ -12, %54 ], [ %59, %58 ], [ %72, %61 ], [ -16, %51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sbsa_uart_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @amba_reg, ptr noundef %3) #17
  tail call fastcc void @pl011_unregister_port(ptr noundef %3)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pl011_setup_port(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = tail call ptr @devm_ioremap_resource(ptr noundef %0, ptr noundef %2) #17
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = ptrtoint ptr %5 to i32
  br label %52

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @of_alias_get_id(ptr noundef nonnull %11, ptr noundef nonnull @.str.8) #17
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i1 true, ptr @pl011_probe_dt_alias.seen_dev_without_alias, align 1
  br label %24

17:                                               ; preds = %13
  store i1 true, ptr @pl011_probe_dt_alias.seen_dev_with_alias, align 1
  %18 = icmp ugt i32 %14, 13
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = getelementptr [14 x ptr], ptr @amba_ports, i32 0, i32 %14
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %14) #18
  br label %24

24:                                               ; preds = %23, %19, %16
  %25 = phi i32 [ %3, %16 ], [ %3, %23 ], [ %14, %19 ]
  %26 = load i1, ptr @pl011_probe_dt_alias.seen_dev_with_alias, align 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i1, ptr @pl011_probe_dt_alias.seen_dev_without_alias, align 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.10) #18
  br label %30

30:                                               ; preds = %29, %27, %24, %9
  %31 = phi i32 [ %3, %9 ], [ %25, %29 ], [ %25, %27 ], [ %25, %24 ]
  %32 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 45
  store ptr %0, ptr %32, align 4
  %33 = load i32, ptr %2, align 4
  %34 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 43
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  store ptr %5, ptr %35, align 4
  %36 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 23
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 48
  store i8 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 33
  store i32 268435456, ptr %40, align 4
  %41 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  store i32 %31, ptr %41, align 4
  %42 = tail call i32 @uart_get_rs485_mode(ptr noundef %1) #17
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 56, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 100) #17
  store i32 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 56, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 100) #17
  store i32 %50, ptr %48, align 4
  %51 = getelementptr [14 x ptr], ptr @amba_ports, i32 0, i32 %31
  store ptr %1, ptr %51, align 4
  br label %52

52:                                               ; preds = %44, %30, %7
  %53 = phi i32 [ %8, %7 ], [ 0, %44 ], [ %42, %30 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pl011_register_port(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i16, ptr %5, i32 10
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %3, i32 %8
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #17, !srcloc !12
  br label %15

14:                                               ; preds = %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 0) #17, !srcloc !25
  br label %15

15:                                               ; preds = %14, %13
  %16 = load ptr, ptr %2, align 4
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i16, ptr %17, i32 13
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %16, i32 %20
  %22 = load i8, ptr %10, align 2
  %23 = icmp eq i8 %22, 3
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 65535) #17, !srcloc !12
  br label %26

25:                                               ; preds = %15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 -1) #17, !srcloc !25
  br label %26

26:                                               ; preds = %25, %24
  %27 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @amba_reg, i32 0, i32 7), align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %90

29:                                               ; preds = %26
  %30 = tail call i32 @uart_register_driver(ptr noundef nonnull @amba_reg) #17
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %90

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.11) #18
  %35 = load ptr, ptr @amba_ports, align 4
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store ptr null, ptr @amba_ports, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  %44 = icmp eq ptr %43, %0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  %48 = icmp eq ptr %47, %0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  %64 = icmp eq ptr %63, %0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 8), align 4
  %68 = icmp eq ptr %67, %0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 8), align 4
  br label %70

70:                                               ; preds = %69, %66
  %71 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 9), align 4
  %72 = icmp eq ptr %71, %0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 9), align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 10), align 4
  %76 = icmp eq ptr %75, %0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 10), align 4
  br label %78

78:                                               ; preds = %77, %74
  %79 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 11), align 4
  %80 = icmp eq ptr %79, %0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 11), align 4
  br label %82

82:                                               ; preds = %81, %78
  %83 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 12), align 4
  %84 = icmp eq ptr %83, %0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 12), align 4
  br label %86

86:                                               ; preds = %85, %82
  %87 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 13), align 4
  %88 = icmp eq ptr %87, %0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 13), align 4
  br label %94

90:                                               ; preds = %29, %26
  %91 = tail call i32 @uart_add_one_port(ptr noundef nonnull @amba_reg, ptr noundef %0) #17
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  tail call fastcc void @pl011_unregister_port(ptr noundef %0)
  br label %94

94:                                               ; preds = %93, %90, %89, %86
  %95 = phi i32 [ %91, %93 ], [ 0, %90 ], [ %30, %89 ], [ %30, %86 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl011_tx_empty(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i16, ptr %5, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %3, i32 %8
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 3
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #17, !srcloc !8
  br label %18

15:                                               ; preds = %1
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #17, !srcloc !26
  %17 = zext i16 %16 to i32
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi i32 [ %14, %13 ], [ %17, %15 ]
  %20 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.vendor_data, ptr %21, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = xor i32 %23, %19
  %25 = getelementptr inbounds %struct.vendor_data, ptr %21, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 32
  %28 = and i32 %27, %24
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @sbsa_uart_set_mctrl(ptr nocapture noundef %0, i32 noundef %1) #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sbsa_uart_get_mctrl(ptr nocapture noundef readnone %0) #6 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_stop_tx(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -33
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i16, ptr %8, i32 10
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %4) #17, !srcloc !12
  br label %19

17:                                               ; preds = %1
  %18 = trunc i32 %4 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %18) #17, !srcloc !25
  br label %19

19:                                               ; preds = %17, %16
  %20 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 3
  %21 = load i8, ptr %20, align 4, !range !27
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, -3
  store i32 %26, ptr %24, align 4
  %27 = load ptr, ptr %5, align 4
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr i16, ptr %28, i32 14
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = getelementptr i8, ptr %27, i32 %31
  %33 = load i8, ptr %13, align 2
  %34 = icmp eq i8 %33, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %26) #17, !srcloc !12
  br label %38

36:                                               ; preds = %23
  %37 = trunc i32 %26 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 %37) #17, !srcloc !25
  br label %38

38:                                               ; preds = %36, %35, %19
  %39 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 10
  %45 = load i8, ptr %44, align 4, !range !27
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call fastcc void @pl011_rs485_tx_stop(ptr noundef %0)
  br label %48

48:                                               ; preds = %47, %43, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_start_tx(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 12
  %3 = load i8, ptr %2, align 4, !range !27
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %120, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 24
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 3
  %11 = load i8, ptr %10, align 4, !range !27
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @pl011_dma_tx_refill(ptr noundef %0) #17
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %120

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, -33
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i16, ptr %23, i32 10
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %21, i32 %26
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %29 = load i8, ptr %28, align 2
  %30 = icmp eq i8 %29, 3
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %19) #17, !srcloc !12
  br label %140

32:                                               ; preds = %16
  %33 = trunc i32 %19 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 %33) #17, !srcloc !25
  br label %140

34:                                               ; preds = %9
  %35 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %140

39:                                               ; preds = %34
  %40 = or i32 %36, 2
  store i32 %40, ptr %35, align 4
  %41 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i16, ptr %44, i32 14
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = getelementptr i8, ptr %42, i32 %47
  %49 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %50 = load i8, ptr %49, align 2
  %51 = icmp eq i8 %50, 3
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %40) #17, !srcloc !12
  br label %140

53:                                               ; preds = %39
  %54 = trunc i32 %40 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %48, i16 %54) #17, !srcloc !25
  br label %140

55:                                               ; preds = %5
  %56 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, -3
  store i32 %58, ptr %56, align 4
  %59 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i16, ptr %62, i32 14
  %64 = load i16, ptr %63, align 2
  %65 = zext i16 %64 to i32
  %66 = getelementptr i8, ptr %60, i32 %65
  %67 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %68 = load i8, ptr %67, align 2
  %69 = icmp eq i8 %68, 3
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %58) #17, !srcloc !12
  br label %73

71:                                               ; preds = %55
  %72 = trunc i32 %58 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %66, i16 %72) #17, !srcloc !25
  br label %73

73:                                               ; preds = %71, %70
  %74 = load ptr, ptr %59, align 4
  %75 = load ptr, ptr %61, align 4
  %76 = getelementptr i16, ptr %75, i32 3
  %77 = load i16, ptr %76, align 2
  %78 = zext i16 %77 to i32
  %79 = getelementptr i8, ptr %74, i32 %78
  %80 = load i8, ptr %67, align 2
  %81 = icmp eq i8 %80, 3
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #17, !srcloc !8
  br label %87

84:                                               ; preds = %73
  %85 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %79) #17, !srcloc !26
  %86 = zext i16 %85 to i32
  br label %87

87:                                               ; preds = %84, %82
  %88 = phi i32 [ %83, %82 ], [ %86, %84 ]
  %89 = and i32 %88, 32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %87
  %92 = load i8, ptr %6, align 4
  %93 = load ptr, ptr %59, align 4
  %94 = load ptr, ptr %61, align 4
  %95 = load i16, ptr %94, align 2
  %96 = zext i16 %95 to i32
  %97 = getelementptr i8, ptr %93, i32 %96
  %98 = load i8, ptr %67, align 2
  %99 = icmp eq i8 %98, 3
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = zext i8 %92 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %101) #17, !srcloc !12
  br label %104

102:                                              ; preds = %91
  %103 = zext i8 %92 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %97, i16 %103) #17, !srcloc !25
  br label %104

104:                                              ; preds = %102, %100
  %105 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 4
  store i8 0, ptr %6, align 4
  %108 = and i32 %57, 65535
  store i32 %108, ptr %56, align 4
  %109 = load ptr, ptr %59, align 4
  %110 = load ptr, ptr %61, align 4
  %111 = getelementptr i16, ptr %110, i32 14
  %112 = load i16, ptr %111, align 2
  %113 = zext i16 %112 to i32
  %114 = getelementptr i8, ptr %109, i32 %113
  %115 = load i8, ptr %67, align 2
  %116 = icmp eq i8 %115, 3
  br i1 %116, label %117, label %118

117:                                              ; preds = %104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %108) #17, !srcloc !12
  br label %140

118:                                              ; preds = %104
  %119 = trunc i32 %57 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %114, i16 %119) #17, !srcloc !25
  br label %140

120:                                              ; preds = %87, %13, %1
  %121 = tail call fastcc zeroext i1 @pl011_tx_chars(ptr noundef %0, i1 noundef zeroext false) #17
  br i1 %121, label %122, label %140

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  %124 = load i32, ptr %123, align 4
  %125 = or i32 %124, 32
  store i32 %125, ptr %123, align 4
  %126 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr i16, ptr %129, i32 10
  %131 = load i16, ptr %130, align 2
  %132 = zext i16 %131 to i32
  %133 = getelementptr i8, ptr %127, i32 %132
  %134 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %135 = load i8, ptr %134, align 2
  %136 = icmp eq i8 %135, 3
  br i1 %136, label %137, label %138

137:                                              ; preds = %122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %125) #17, !srcloc !12
  br label %140

138:                                              ; preds = %122
  %139 = trunc i32 %125 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %133, i16 %139) #17, !srcloc !25
  br label %140

140:                                              ; preds = %138, %137, %120, %118, %117, %53, %52, %34, %32, %31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_stop_rx(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -2001
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i16, ptr %8, i32 10
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %4) #17, !srcloc !12
  br label %19

17:                                               ; preds = %1
  %18 = trunc i32 %4 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %18) #17, !srcloc !25
  br label %19

19:                                               ; preds = %17, %16
  %20 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, -2
  store i32 %22, ptr %20, align 4
  %23 = load ptr, ptr %5, align 4
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr i16, ptr %24, i32 14
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %23, i32 %27
  %29 = load i8, ptr %13, align 2
  %30 = icmp eq i8 %29, 3
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %22) #17, !srcloc !12
  br label %34

32:                                               ; preds = %19
  %33 = trunc i32 %22 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %28, i16 %33) #17, !srcloc !25
  br label %34

34:                                               ; preds = %32, %31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sbsa_uart_startup(ptr noundef %0) #3 {
  %2 = tail call fastcc i32 @pl011_hwinit(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i16, ptr %10, i32 10
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %8, i32 %13
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %16 = load i8, ptr %15, align 2
  %17 = icmp eq i8 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %6) #17, !srcloc !12
  br label %21

19:                                               ; preds = %4
  %20 = trunc i32 %6 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 %20) #17, !srcloc !25
  br label %21

21:                                               ; preds = %19, %18
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @request_threaded_irq(i32 noundef %23, ptr noundef nonnull @pl011_int, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.5, ptr noundef %0) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 6
  store i32 0, ptr %27, align 4
  tail call fastcc void @pl011_enable_interrupts(ptr noundef %0)
  br label %28

28:                                               ; preds = %26, %21, %1
  %29 = phi i32 [ 0, %26 ], [ %2, %1 ], [ %24, %21 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sbsa_uart_shutdown(ptr noundef %0) #3 {
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #17
  %2 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i16, ptr %6, i32 10
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #17, !srcloc !12
  br label %16

15:                                               ; preds = %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %10, i16 0) #17, !srcloc !25
  br label %16

16:                                               ; preds = %15, %14
  %17 = load ptr, ptr %3, align 4
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i16, ptr %18, i32 13
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %17, i32 %21
  %23 = load i8, ptr %11, align 2
  %24 = icmp eq i8 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 65535) #17, !srcloc !12
  br label %27

26:                                               ; preds = %16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 -1) #17, !srcloc !25
  br label %27

27:                                               ; preds = %26, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  %28 = load i16, ptr %0, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !30
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !32
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %31 = load i32, ptr %30, align 4
  %32 = tail call ptr @free_irq(i32 noundef %31, ptr noundef %0) #17
  %33 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 39
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.uart_ops, ptr %34, i32 0, i32 13
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  tail call void %36(ptr noundef %0) #17
  br label %39

39:                                               ; preds = %38, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sbsa_uart_set_termios(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  tail call void @tty_termios_encode_baud_rate(ptr noundef %1, i32 noundef %5, i32 noundef %5) #17
  %6 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1073738895
  %9 = or i32 %8, 2096
  store i32 %9, ptr %6, align 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #17
  %11 = load i32, ptr %4, align 4
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef 48, i32 noundef %11) #17
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 2303, ptr %12, align 4
  %13 = load i32, ptr %1, align 4
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 2303, i32 3071
  store i32 %16, ptr %12, align 4
  %17 = load i32, ptr %1, align 4
  %18 = and i32 %17, 11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = or i32 %16, 1024
  store i32 %21, ptr %12, align 4
  br label %22

22:                                               ; preds = %20, %3
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 0, ptr %23, align 4
  %24 = load i32, ptr %1, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 0, i32 768
  store i32 %27, ptr %23, align 4
  %28 = load i32, ptr %1, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %22
  %32 = or i32 %27, 1024
  store i32 %32, ptr %23, align 4
  %33 = load i32, ptr %1, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = or i32 %27, 3072
  store i32 %37, ptr %23, align 4
  br label %38

38:                                               ; preds = %36, %31, %22
  %39 = phi i32 [ %32, %31 ], [ %37, %36 ], [ %27, %22 ]
  %40 = load i32, ptr %6, align 4
  %41 = and i32 %40, 128
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = or i32 %39, 65536
  store i32 %44, ptr %23, align 4
  br label %45

45:                                               ; preds = %43, %38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %10) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pl011_type(ptr noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 32
  %5 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 9
  %6 = select i1 %4, ptr %5, ptr null
  ret ptr %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @pl011_config_port(ptr nocapture noundef writeonly %0, i32 noundef %1) #8 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 32, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pl011_verify_port(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, -33
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, -1
  %9 = load i32, ptr @nr_irqs, align 4
  %10 = icmp slt i32 %7, %9
  %11 = select i1 %8, i1 %10, i1 false
  %12 = select i1 %11, i1 %5, i1 false
  %13 = select i1 %12, i32 0, i32 -22
  %14 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = icmp slt i32 %15, 9600
  %17 = select i1 %16, i32 -22, i32 %13
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 14
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = icmp eq i32 %19, %22
  %24 = select i1 %23, i32 %17, i32 -22
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pl011_rs485_tx_stop(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %5 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %7 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 11
  br label %8

8:                                                ; preds = %40, %1
  %9 = phi i32 [ 0, %1 ], [ %43, %40 ]
  %10 = load ptr, ptr %2, align 4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i16, ptr %11, i32 3
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %10, i32 %14
  %16 = load i8, ptr %4, align 2
  %17 = icmp eq i8 %16, 3
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #17, !srcloc !8
  br label %23

20:                                               ; preds = %8
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #17, !srcloc !26
  %22 = zext i16 %21 to i32
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi i32 [ %19, %18 ], [ %22, %20 ]
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.vendor_data, ptr %25, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, %24
  %29 = getelementptr inbounds %struct.vendor_data, ptr %25, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 32
  %32 = and i32 %31, %28
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %23
  %35 = load i32, ptr %6, align 4
  %36 = icmp eq i32 %9, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.4) #18
  br label %44

40:                                               ; preds = %34
  %41 = load i32, ptr %7, align 4
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %42(i32 noundef %41) #17
  %43 = add i32 %9, 1
  br label %8

44:                                               ; preds = %37, %23
  %45 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %46 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %49, %44
  %50 = phi i32 [ %51, %49 ], [ %47, %44 ]
  %51 = add i32 %50, -1
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #17
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %54, label %49

54:                                               ; preds = %49, %44
  %55 = load ptr, ptr %2, align 4
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr i16, ptr %56, i32 8
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr i8, ptr %55, i32 %59
  %61 = load i8, ptr %4, align 2
  %62 = icmp eq i8 %61, 3
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #17, !srcloc !8
  br label %68

65:                                               ; preds = %54
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %60) #17, !srcloc !26
  %67 = zext i16 %66 to i32
  br label %68

68:                                               ; preds = %65, %63
  %69 = phi i32 [ %64, %63 ], [ %67, %65 ]
  %70 = load i32, ptr %45, align 4
  %71 = and i32 %69, -2817
  %72 = shl i32 %70, 9
  %73 = and i32 %72, 2048
  %74 = or i32 %73, %71
  %75 = xor i32 %74, 2560
  %76 = load ptr, ptr %2, align 4
  %77 = load ptr, ptr %3, align 4
  %78 = getelementptr i16, ptr %77, i32 8
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = getelementptr i8, ptr %76, i32 %80
  %82 = load i8, ptr %4, align 2
  %83 = icmp eq i8 %82, 3
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %75) #17, !srcloc !12
  br label %87

85:                                               ; preds = %68
  %86 = trunc i32 %75 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %81, i16 %86) #17, !srcloc !25
  br label %87

87:                                               ; preds = %85, %84
  %88 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 10
  store i8 0, ptr %88, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pl011_dma_tx_refill(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uart_state, ptr %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.uart_state, ptr %6, i32 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uart_state, ptr %6, i32 0, i32 2, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %9, %11
  %13 = and i32 %12, 4095
  %14 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 1
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 3
  store i8 0, ptr %19, align 4
  br label %105

20:                                               ; preds = %1
  %21 = add nsw i32 %13, -1
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 4096)
  %23 = icmp sgt i32 %9, %11
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr i8, ptr %27, i32 %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %26, ptr align 1 %28, i32 %22, i1 false)
  br label %42

29:                                               ; preds = %20
  %30 = sub i32 4096, %11
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %22)
  %32 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr i8, ptr %34, i32 %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %33, ptr align 1 %35, i32 %31, i1 false)
  %36 = icmp ugt i32 %22, %30
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = sub nsw i32 %22, %31
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr i8, ptr %39, i32 %31
  %41 = load ptr, ptr %7, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %40, ptr align 1 %41, i32 %38, i1 false)
  br label %42

42:                                               ; preds = %37, %29, %24
  %43 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 1
  %44 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 1, i32 2
  store i32 %22, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 15
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @dma_map_sg_attrs(ptr noundef %46, ptr noundef %43, i32 noundef 1, i32 noundef 1, i32 noundef 0) #17
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 3
  store i8 0, ptr %50, align 4
  br label %105

51:                                               ; preds = %42
  %52 = icmp eq ptr %3, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %51
  %54 = load ptr, ptr %3, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 39
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = tail call ptr %58(ptr noundef nonnull %3, ptr noundef %43, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #17
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %56, %53, %51
  %64 = load ptr, ptr %45, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %64, ptr noundef %43, i32 noundef 1, i32 noundef 1, i32 noundef 0) #17
  %65 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 3
  store i8 0, ptr %65, align 4
  br label %105

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %61, i32 0, i32 6
  store ptr @pl011_dma_tx_callback, ptr %67, align 4
  %68 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %61, i32 0, i32 8
  store ptr %0, ptr %68, align 4
  %69 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %61, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 %70(ptr noundef nonnull %61) #17
  %72 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 50
  %73 = load ptr, ptr %72, align 4
  tail call void %73(ptr noundef nonnull %3) #17
  %74 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = or i32 %75, 2
  store i32 %76, ptr %74, align 4
  %77 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i16, ptr %80, i32 14
  %82 = load i16, ptr %81, align 2
  %83 = zext i16 %82 to i32
  %84 = getelementptr i8, ptr %78, i32 %83
  %85 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %86 = load i8, ptr %85, align 2
  %87 = icmp eq i8 %86, 3
  br i1 %87, label %88, label %89

88:                                               ; preds = %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %76) #17, !srcloc !12
  br label %91

89:                                               ; preds = %66
  %90 = trunc i32 %76 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %84, i16 %90) #17, !srcloc !25
  br label %91

91:                                               ; preds = %89, %88
  %92 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 3
  store i8 1, ptr %92, align 4
  %93 = load i32, ptr %10, align 4
  %94 = add i32 %93, %22
  %95 = and i32 %94, 4095
  store i32 %95, ptr %10, align 4
  %96 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %97, %22
  store i32 %98, ptr %96, align 4
  %99 = load i32, ptr %8, align 4
  %100 = load i32, ptr %10, align 4
  %101 = sub i32 %99, %100
  %102 = and i32 %101, 3840
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  tail call void @uart_write_wakeup(ptr noundef %0) #17
  br label %105

105:                                              ; preds = %104, %91, %63, %49, %18
  %106 = phi i32 [ 0, %18 ], [ -16, %49 ], [ -16, %63 ], [ 1, %104 ], [ 1, %91 ]
  ret i32 %106
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_dma_tx_callback(ptr noundef %0) #3 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 3
  %4 = load i8, ptr %3, align 4, !range !27
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %11, ptr noundef %12, i32 noundef 1, i32 noundef 1, i32 noundef 0) #17
  br label %13

13:                                               ; preds = %6, %1
  %14 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65533
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i16, ptr %20, i32 14
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %18, i32 %23
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %26 = load i8, ptr %25, align 2
  %27 = icmp eq i8 %26, 3
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %16) #17, !srcloc !12
  br label %31

29:                                               ; preds = %13
  %30 = trunc i32 %16 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %30) #17, !srcloc !25
  br label %31

31:                                               ; preds = %29, %28
  %32 = and i32 %15, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tty_port, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.tty_struct, ptr %38, i32 0, i32 19, i32 1
  %42 = load i8, ptr %41, align 4, !range !27
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40, %34
  %45 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.uart_state, ptr %36, i32 0, i32 2, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.uart_state, ptr %36, i32 0, i32 2, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %44, %40, %31
  store i8 0, ptr %3, align 4
  br label %75

55:                                               ; preds = %48
  %56 = tail call fastcc i32 @pl011_dma_tx_refill(ptr noundef %0)
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = tail call fastcc zeroext i1 @pl011_tx_chars(ptr noundef %0, i1 noundef zeroext false) #17
  br i1 %59, label %60, label %75

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, 32
  store i32 %63, ptr %61, align 4
  %64 = load ptr, ptr %17, align 4
  %65 = load ptr, ptr %19, align 4
  %66 = getelementptr i16, ptr %65, i32 10
  %67 = load i16, ptr %66, align 2
  %68 = zext i16 %67 to i32
  %69 = getelementptr i8, ptr %64, i32 %68
  %70 = load i8, ptr %25, align 2
  %71 = icmp eq i8 %70, 3
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %63) #17, !srcloc !12
  br label %75

73:                                               ; preds = %60
  %74 = trunc i32 %63 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %69, i16 %74) #17, !srcloc !25
  br label %75

75:                                               ; preds = %73, %72, %58, %55, %54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pl011_tx_chars(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 1
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 24
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %54, label %12

12:                                               ; preds = %2
  br i1 %1, label %34, label %13, !prof !33

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i16, ptr %17, i32 3
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %15, i32 %20
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 3
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #17, !srcloc !8
  br label %30

27:                                               ; preds = %13
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %21) #17, !srcloc !26
  %29 = zext i16 %28 to i32
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ %26, %25 ], [ %29, %27 ]
  %32 = and i32 %31, 32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %358

34:                                               ; preds = %30, %12
  %35 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %36, i32 %40
  %42 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %43 = load i8, ptr %42, align 2
  %44 = icmp eq i8 %43, 3
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = zext i8 %10 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %46) #17, !srcloc !12
  br label %49

47:                                               ; preds = %34
  %48 = zext i8 %10 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %41, i16 %48) #17, !srcloc !25
  br label %49

49:                                               ; preds = %47, %45
  %50 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  store i8 0, ptr %9, align 4
  %53 = add nsw i32 %8, -1
  br label %54

54:                                               ; preds = %49, %2
  %55 = phi i32 [ %53, %49 ], [ %8, %2 ]
  %56 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %74, label %61

61:                                               ; preds = %54
  %62 = load ptr, ptr %3, align 4
  %63 = getelementptr inbounds %struct.tty_port, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.tty_struct, ptr %64, i32 0, i32 19, i32 1
  %68 = load i8, ptr %67, align 4, !range !27
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66, %61
  %71 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %121, label %74

74:                                               ; preds = %70, %66, %54
  %75 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, -33
  store i32 %77, ptr %75, align 4
  %78 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i16, ptr %81, i32 10
  %83 = load i16, ptr %82, align 2
  %84 = zext i16 %83 to i32
  %85 = getelementptr i8, ptr %79, i32 %84
  %86 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %87 = load i8, ptr %86, align 2
  %88 = icmp eq i8 %87, 3
  br i1 %88, label %89, label %90

89:                                               ; preds = %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %77) #17, !srcloc !12
  br label %92

90:                                               ; preds = %74
  %91 = trunc i32 %77 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %85, i16 %91) #17, !srcloc !25
  br label %92

92:                                               ; preds = %90, %89
  %93 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 3
  %94 = load i8, ptr %93, align 4, !range !27
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %111, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, -3
  store i32 %99, ptr %97, align 4
  %100 = load ptr, ptr %78, align 4
  %101 = load ptr, ptr %80, align 4
  %102 = getelementptr i16, ptr %101, i32 14
  %103 = load i16, ptr %102, align 2
  %104 = zext i16 %103 to i32
  %105 = getelementptr i8, ptr %100, i32 %104
  %106 = load i8, ptr %86, align 2
  %107 = icmp eq i8 %106, 3
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %99) #17, !srcloc !12
  br label %111

109:                                              ; preds = %96
  %110 = trunc i32 %99 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %105, i16 %110) #17, !srcloc !25
  br label %111

111:                                              ; preds = %109, %108, %92
  %112 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %358, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 10
  %118 = load i8, ptr %117, align 4, !range !27
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %358, label %120

120:                                              ; preds = %116
  tail call fastcc void @pl011_rs485_tx_stop(ptr noundef %0) #17
  br label %358

121:                                              ; preds = %70
  %122 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %181, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 10
  %128 = load i8, ptr %127, align 4, !range !27
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %181

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr i16, ptr %134, i32 8
  %136 = load i16, ptr %135, align 2
  %137 = zext i16 %136 to i32
  %138 = getelementptr i8, ptr %132, i32 %137
  %139 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %140 = load i8, ptr %139, align 2
  %141 = icmp eq i8 %140, 3
  br i1 %141, label %142, label %144

142:                                              ; preds = %130
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #17, !srcloc !8
  br label %147

144:                                              ; preds = %130
  %145 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %138) #17, !srcloc !26
  %146 = zext i16 %145 to i32
  br label %147

147:                                              ; preds = %144, %142
  %148 = phi i32 [ %143, %142 ], [ %146, %144 ]
  %149 = or i32 %148, 256
  %150 = load i32, ptr %122, align 4
  %151 = and i32 %150, 16
  %152 = icmp eq i32 %151, 0
  %153 = and i32 %149, -2561
  %154 = select i1 %152, i32 %153, i32 %149
  %155 = and i32 %154, -2049
  %156 = shl i32 %150, 10
  %157 = and i32 %156, 2048
  %158 = or i32 %155, %157
  %159 = xor i32 %158, 2048
  %160 = load ptr, ptr %131, align 4
  %161 = load ptr, ptr %133, align 4
  %162 = getelementptr i16, ptr %161, i32 8
  %163 = load i16, ptr %162, align 2
  %164 = zext i16 %163 to i32
  %165 = getelementptr i8, ptr %160, i32 %164
  %166 = load i8, ptr %139, align 2
  %167 = icmp eq i8 %166, 3
  br i1 %167, label %168, label %169

168:                                              ; preds = %147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %159) #17, !srcloc !12
  br label %171

169:                                              ; preds = %147
  %170 = trunc i32 %159 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %165, i16 %170) #17, !srcloc !25
  br label %171

171:                                              ; preds = %169, %168
  %172 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %175, %171
  %176 = phi i32 [ %177, %175 ], [ %173, %171 ]
  %177 = add i32 %176, -1
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %178(i32 noundef 214748000) #17
  %179 = icmp eq i32 %177, 0
  br i1 %179, label %180, label %175

180:                                              ; preds = %175, %171
  store i8 1, ptr %127, align 4
  br label %181

181:                                              ; preds = %180, %126, %121
  %182 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 12
  %183 = load i8, ptr %182, align 4, !range !27
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %243, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 3
  %187 = load i8, ptr %186, align 4, !range !27
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %222, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 4
  %191 = load i32, ptr %190, align 4
  %192 = or i32 %191, 2
  store i32 %192, ptr %190, align 4
  %193 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr i16, ptr %196, i32 14
  %198 = load i16, ptr %197, align 2
  %199 = zext i16 %198 to i32
  %200 = getelementptr i8, ptr %194, i32 %199
  %201 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %202 = load i8, ptr %201, align 2
  %203 = icmp eq i8 %202, 3
  br i1 %203, label %204, label %205

204:                                              ; preds = %189
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %192) #17, !srcloc !12
  br label %207

205:                                              ; preds = %189
  %206 = trunc i32 %192 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %200, i16 %206) #17, !srcloc !25
  br label %207

207:                                              ; preds = %205, %204
  %208 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  %209 = load i32, ptr %208, align 4
  %210 = and i32 %209, -33
  store i32 %210, ptr %208, align 4
  %211 = load ptr, ptr %193, align 4
  %212 = load ptr, ptr %195, align 4
  %213 = getelementptr i16, ptr %212, i32 10
  %214 = load i16, ptr %213, align 2
  %215 = zext i16 %214 to i32
  %216 = getelementptr i8, ptr %211, i32 %215
  %217 = load i8, ptr %201, align 2
  %218 = icmp eq i8 %217, 3
  br i1 %218, label %219, label %220

219:                                              ; preds = %207
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %210) #17, !srcloc !12
  br label %358

220:                                              ; preds = %207
  %221 = trunc i32 %210 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %216, i16 %221) #17, !srcloc !25
  br label %358

222:                                              ; preds = %185
  %223 = tail call fastcc i32 @pl011_dma_tx_refill(ptr noundef %0) #17
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %243

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  %227 = load i32, ptr %226, align 4
  %228 = and i32 %227, -33
  store i32 %228, ptr %226, align 4
  %229 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr i16, ptr %232, i32 10
  %234 = load i16, ptr %233, align 2
  %235 = zext i16 %234 to i32
  %236 = getelementptr i8, ptr %230, i32 %235
  %237 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %238 = load i8, ptr %237, align 2
  %239 = icmp eq i8 %238, 3
  br i1 %239, label %240, label %241

240:                                              ; preds = %225
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 %228) #17, !srcloc !12
  br label %358

241:                                              ; preds = %225
  %242 = trunc i32 %228 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %236, i16 %242) #17, !srcloc !25
  br label %358

243:                                              ; preds = %222, %181
  %244 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %245 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %246 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %247 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  br label %248

248:                                              ; preds = %294, %243
  %249 = phi i32 [ %55, %243 ], [ %282, %294 ]
  br i1 %1, label %250, label %258, !prof !33

250:                                              ; preds = %248
  %251 = icmp eq i32 %249, 0
  br i1 %251, label %302, label %252

252:                                              ; preds = %250
  %253 = add i32 %249, -1
  %254 = load ptr, ptr %5, align 4
  %255 = load i32, ptr %58, align 4
  %256 = getelementptr i8, ptr %254, i32 %255
  %257 = load i8, ptr %256, align 1
  br label %280

258:                                              ; preds = %248
  %259 = load ptr, ptr %5, align 4
  %260 = load i32, ptr %58, align 4
  %261 = getelementptr i8, ptr %259, i32 %260
  %262 = load i8, ptr %261, align 1
  %263 = load ptr, ptr %244, align 4
  %264 = load ptr, ptr %245, align 4
  %265 = getelementptr i16, ptr %264, i32 3
  %266 = load i16, ptr %265, align 2
  %267 = zext i16 %266 to i32
  %268 = getelementptr i8, ptr %263, i32 %267
  %269 = load i8, ptr %246, align 2
  %270 = icmp eq i8 %269, 3
  br i1 %270, label %271, label %273

271:                                              ; preds = %258
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %268) #17, !srcloc !8
  br label %276

273:                                              ; preds = %258
  %274 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %268) #17, !srcloc !26
  %275 = zext i16 %274 to i32
  br label %276

276:                                              ; preds = %273, %271
  %277 = phi i32 [ %272, %271 ], [ %275, %273 ]
  %278 = and i32 %277, 32
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %302

280:                                              ; preds = %276, %252
  %281 = phi i8 [ %257, %252 ], [ %262, %276 ]
  %282 = phi i32 [ %253, %252 ], [ %249, %276 ]
  %283 = load ptr, ptr %244, align 4
  %284 = load ptr, ptr %245, align 4
  %285 = load i16, ptr %284, align 2
  %286 = zext i16 %285 to i32
  %287 = getelementptr i8, ptr %283, i32 %286
  %288 = load i8, ptr %246, align 2
  %289 = icmp eq i8 %288, 3
  br i1 %289, label %290, label %292

290:                                              ; preds = %280
  %291 = zext i8 %281 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %287, i32 %291) #17, !srcloc !12
  br label %294

292:                                              ; preds = %280
  %293 = zext i8 %281 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %287, i16 %293) #17, !srcloc !25
  br label %294

294:                                              ; preds = %292, %290
  %295 = load i32, ptr %247, align 4
  %296 = add i32 %295, 1
  store i32 %296, ptr %247, align 4
  %297 = load i32, ptr %58, align 4
  %298 = add i32 %297, 1
  %299 = and i32 %298, 4095
  store i32 %299, ptr %58, align 4
  %300 = load i32, ptr %56, align 4
  %301 = icmp eq i32 %300, %299
  br i1 %301, label %302, label %248

302:                                              ; preds = %294, %276, %250
  %303 = load i32, ptr %56, align 4
  %304 = load i32, ptr %58, align 4
  %305 = sub i32 %303, %304
  %306 = and i32 %305, 3840
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %302
  tail call void @uart_write_wakeup(ptr noundef %0) #17
  %309 = load i32, ptr %56, align 4
  %310 = load i32, ptr %58, align 4
  br label %311

311:                                              ; preds = %308, %302
  %312 = phi i32 [ %310, %308 ], [ %304, %302 ]
  %313 = phi i32 [ %309, %308 ], [ %303, %302 ]
  %314 = icmp eq i32 %313, %312
  br i1 %314, label %315, label %358

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  %317 = load i32, ptr %316, align 4
  %318 = and i32 %317, -33
  store i32 %318, ptr %316, align 4
  %319 = load ptr, ptr %244, align 4
  %320 = load ptr, ptr %245, align 4
  %321 = getelementptr i16, ptr %320, i32 10
  %322 = load i16, ptr %321, align 2
  %323 = zext i16 %322 to i32
  %324 = getelementptr i8, ptr %319, i32 %323
  %325 = load i8, ptr %246, align 2
  %326 = icmp eq i8 %325, 3
  br i1 %326, label %327, label %328

327:                                              ; preds = %315
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %324, i32 %318) #17, !srcloc !12
  br label %330

328:                                              ; preds = %315
  %329 = trunc i32 %318 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %324, i16 %329) #17, !srcloc !25
  br label %330

330:                                              ; preds = %328, %327
  %331 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 3
  %332 = load i8, ptr %331, align 4, !range !27
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %349, label %334

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 4
  %336 = load i32, ptr %335, align 4
  %337 = and i32 %336, -3
  store i32 %337, ptr %335, align 4
  %338 = load ptr, ptr %244, align 4
  %339 = load ptr, ptr %245, align 4
  %340 = getelementptr i16, ptr %339, i32 14
  %341 = load i16, ptr %340, align 2
  %342 = zext i16 %341 to i32
  %343 = getelementptr i8, ptr %338, i32 %342
  %344 = load i8, ptr %246, align 2
  %345 = icmp eq i8 %344, 3
  br i1 %345, label %346, label %347

346:                                              ; preds = %334
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %343, i32 %337) #17, !srcloc !12
  br label %349

347:                                              ; preds = %334
  %348 = trunc i32 %337 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %343, i16 %348) #17, !srcloc !25
  br label %349

349:                                              ; preds = %347, %346, %330
  %350 = load i32, ptr %122, align 4
  %351 = and i32 %350, 1
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %358, label %353

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 10
  %355 = load i8, ptr %354, align 4, !range !27
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %358, label %357

357:                                              ; preds = %353
  tail call fastcc void @pl011_rs485_tx_stop(ptr noundef %0) #17
  br label %358

358:                                              ; preds = %357, %353, %349, %311, %241, %240, %220, %219, %120, %116, %111, %30
  %359 = phi i1 [ true, %311 ], [ true, %30 ], [ false, %111 ], [ false, %116 ], [ false, %120 ], [ false, %349 ], [ false, %353 ], [ false, %357 ], [ true, %219 ], [ true, %220 ], [ true, %240 ], [ true, %241 ]
  ret i1 %359
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pl011_hwinit(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %3) #17
  %5 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %67

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #17
  br label %67

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 4
  %15 = tail call i32 @clk_get_rate(ptr noundef %14) #17
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i16, ptr %20, i32 13
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %18, i32 %23
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %26 = load i8, ptr %25, align 2
  %27 = icmp eq i8 %26, 3
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 2000) #17, !srcloc !12
  br label %30

29:                                               ; preds = %13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 2000) #17, !srcloc !25
  br label %30

30:                                               ; preds = %29, %28
  %31 = load ptr, ptr %17, align 4
  %32 = load ptr, ptr %19, align 4
  %33 = getelementptr i16, ptr %32, i32 10
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %31, i32 %35
  %37 = load i8, ptr %25, align 2
  %38 = icmp eq i8 %37, 3
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #17, !srcloc !8
  br label %44

41:                                               ; preds = %30
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %36) #17, !srcloc !26
  %43 = zext i16 %42 to i32
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %40, %39 ], [ %43, %41 ]
  %46 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  store i32 %45, ptr %46, align 4
  %47 = load ptr, ptr %17, align 4
  %48 = load ptr, ptr %19, align 4
  %49 = getelementptr i16, ptr %48, i32 10
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = getelementptr i8, ptr %47, i32 %51
  %53 = load i8, ptr %25, align 2
  %54 = icmp eq i8 %53, 3
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 80) #17, !srcloc !12
  br label %57

56:                                               ; preds = %44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %52, i16 80) #17, !srcloc !25
  br label %57

57:                                               ; preds = %56, %55
  %58 = load ptr, ptr %2, align 4
  %59 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 7
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.amba_pl011_data, ptr %60, i32 0, i32 6
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void %64() #17
  br label %67

67:                                               ; preds = %66, %62, %57, %12, %1
  %68 = phi i32 [ 0, %62 ], [ 0, %66 ], [ 0, %57 ], [ %10, %12 ], [ %7, %1 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pl011_enable_interrupts(ptr noundef %0) unnamed_addr #3 {
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #17
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i16, ptr %5, i32 13
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %3, i32 %8
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 80) #17, !srcloc !12
  br label %15

14:                                               ; preds = %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 80) #17, !srcloc !25
  br label %15

15:                                               ; preds = %14, %13
  %16 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2147483647
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %51, %15
  %21 = phi i32 [ %52, %51 ], [ 0, %15 ]
  %22 = load ptr, ptr %2, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i16, ptr %23, i32 3
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %22, i32 %26
  %28 = load i8, ptr %10, align 2
  %29 = icmp eq i8 %28, 3
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #17, !srcloc !8
  br label %35

32:                                               ; preds = %20
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %27) #17, !srcloc !26
  %34 = zext i16 %33 to i32
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i32 [ %31, %30 ], [ %34, %32 ]
  %37 = and i32 %36, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 4
  %41 = load ptr, ptr %4, align 4
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr i8, ptr %40, i32 %43
  %45 = load i8, ptr %10, align 2
  %46 = icmp eq i8 %45, 3
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #17, !srcloc !8
  br label %51

49:                                               ; preds = %39
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %44) #17, !srcloc !26
  br label %51

51:                                               ; preds = %49, %47
  %52 = add nuw i32 %21, 1
  %53 = load i32, ptr %16, align 4
  %54 = shl i32 %53, 1
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %20, label %56

56:                                               ; preds = %51, %35, %15
  %57 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  store i32 64, ptr %57, align 4
  %58 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 13
  %59 = load i8, ptr %58, align 1, !range !27
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 6
  %63 = load i8, ptr %62, align 4, !range !27
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %56
  store i32 80, ptr %57, align 4
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i32 [ 80, %65 ], [ 64, %61 ]
  %68 = load ptr, ptr %2, align 4
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr i16, ptr %69, i32 10
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  %73 = getelementptr i8, ptr %68, i32 %72
  %74 = load i8, ptr %10, align 2
  %75 = icmp eq i8 %74, 3
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %67) #17, !srcloc !12
  br label %79

77:                                               ; preds = %66
  %78 = trunc i32 %67 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %73, i16 %78) #17, !srcloc !25
  br label %79

79:                                               ; preds = %77, %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  %80 = load i16, ptr %0, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !30
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl011_int(i32 noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.dma_tx_state, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i16, ptr %8, i32 11
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 26
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #17, !srcloc !8
  br label %21

18:                                               ; preds = %2
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #17, !srcloc !26
  %20 = zext i16 %19 to i32
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i32 [ %17, %16 ], [ %20, %18 ]
  %23 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %341, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 3
  %29 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 13
  %30 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 14, i32 6
  %31 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 14
  %32 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 14, i32 2
  %33 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 14, i32 4
  %34 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 14, i32 3
  %35 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 45
  %36 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 14, i32 5
  %37 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 4
  %38 = getelementptr inbounds %struct.dma_tx_state, ptr %3, i32 0, i32 2
  %39 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %40 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 14, i32 11
  %41 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 14, i32 8
  %42 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 4
  %43 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 14, i32 9
  %44 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 14, i32 7
  %45 = getelementptr inbounds %struct.uart_amba_port, ptr %1, i32 0, i32 6
  %46 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 1
  br label %47

47:                                               ; preds = %336, %27
  %48 = phi i32 [ %339, %336 ], [ %25, %27 ]
  %49 = phi i32 [ %322, %336 ], [ 256, %27 ]
  %50 = load ptr, ptr %28, align 4
  %51 = getelementptr inbounds %struct.vendor_data, ptr %50, i32 0, i32 10
  %52 = load i8, ptr %51, align 1, !range !27
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %91, label %54

54:                                               ; preds = %47
  %55 = load ptr, ptr %5, align 4
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr i16, ptr %56, i32 13
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr i8, ptr %55, i32 %59
  %61 = load i8, ptr %13, align 2
  %62 = icmp eq i8 %61, 3
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 0) #17, !srcloc !12
  br label %65

64:                                               ; preds = %54
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %60, i16 0) #17, !srcloc !25
  br label %65

65:                                               ; preds = %64, %63
  %66 = load ptr, ptr %5, align 4
  %67 = load ptr, ptr %7, align 4
  %68 = getelementptr i16, ptr %67, i32 13
  %69 = load i16, ptr %68, align 2
  %70 = zext i16 %69 to i32
  %71 = getelementptr i8, ptr %66, i32 %70
  %72 = load i8, ptr %13, align 2
  %73 = icmp eq i8 %72, 3
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #17, !srcloc !8
  br label %78

76:                                               ; preds = %65
  %77 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %71) #17, !srcloc !26
  br label %78

78:                                               ; preds = %76, %74
  %79 = load ptr, ptr %5, align 4
  %80 = load ptr, ptr %7, align 4
  %81 = getelementptr i16, ptr %80, i32 13
  %82 = load i16, ptr %81, align 2
  %83 = zext i16 %82 to i32
  %84 = getelementptr i8, ptr %79, i32 %83
  %85 = load i8, ptr %13, align 2
  %86 = icmp eq i8 %85, 3
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #17, !srcloc !8
  br label %91

89:                                               ; preds = %78
  %90 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %84) #17, !srcloc !26
  br label %91

91:                                               ; preds = %89, %87, %47
  %92 = and i32 %48, -113
  %93 = load ptr, ptr %5, align 4
  %94 = load ptr, ptr %7, align 4
  %95 = getelementptr i16, ptr %94, i32 13
  %96 = load i16, ptr %95, align 2
  %97 = zext i16 %96 to i32
  %98 = getelementptr i8, ptr %93, i32 %97
  %99 = load i8, ptr %13, align 2
  %100 = icmp eq i8 %99, 3
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %92) #17, !srcloc !12
  br label %104

102:                                              ; preds = %91
  %103 = trunc i32 %92 to i16
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %98, i16 %103) #17, !srcloc !25
  br label %104

104:                                              ; preds = %102, %101
  %105 = and i32 %48, 80
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %267, label %107

107:                                              ; preds = %104
  %108 = load i8, ptr %29, align 1, !range !27
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %234, label %110

110:                                              ; preds = %107
  %111 = load i8, ptr %30, align 4, !range !27
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %234, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %31, align 4
  %115 = load i8, ptr %32, align 4, !range !27
  %116 = icmp eq i8 %115, 0
  %117 = select i1 %116, ptr %34, ptr %33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #17, !annotation !24
  %118 = load ptr, ptr %114, align 4
  %119 = getelementptr inbounds %struct.dma_device, ptr %118, i32 0, i32 45
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %113
  %123 = call i32 %120(ptr noundef %114) #17
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %122, %113
  %126 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.6) #18
  br label %127

127:                                              ; preds = %125, %122
  %128 = load ptr, ptr %114, align 4
  %129 = getelementptr inbounds %struct.dma_device, ptr %128, i32 0, i32 49
  %130 = load ptr, ptr %129, align 4
  %131 = load i32, ptr %36, align 4
  %132 = call i32 %130(ptr noundef %114, i32 noundef %131, ptr noundef nonnull %3) #17
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %136, label %134

134:                                              ; preds = %127
  %135 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.6) #18
  br label %136

136:                                              ; preds = %134, %127
  %137 = load i32, ptr %37, align 4
  %138 = and i32 %137, -2
  store i32 %138, ptr %37, align 4
  %139 = load ptr, ptr %5, align 4
  %140 = load ptr, ptr %7, align 4
  %141 = getelementptr i16, ptr %140, i32 14
  %142 = load i16, ptr %141, align 2
  %143 = zext i16 %142 to i32
  %144 = getelementptr i8, ptr %139, i32 %143
  %145 = load i8, ptr %13, align 2
  %146 = icmp eq i8 %145, 3
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %138) #17, !srcloc !12
  br label %150

148:                                              ; preds = %136
  %149 = trunc i32 %138 to i16
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %144, i16 %149) #17, !srcloc !25
  br label %150

150:                                              ; preds = %148, %147
  store i8 0, ptr %30, align 4
  %151 = getelementptr inbounds %struct.scatterlist, ptr %117, i32 0, i32 2
  %152 = load i32, ptr %151, align 4
  %153 = load i32, ptr %38, align 4
  %154 = sub i32 %152, %153
  %155 = icmp ugt i32 %154, 4096
  br i1 %155, label %156, label %157, !prof !34

156:                                              ; preds = %150
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/amba-pl011.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 945, 0\0A.popsection", ""() #17, !srcloc !35
  unreachable

157:                                              ; preds = %150
  %158 = load ptr, ptr %114, align 4
  %159 = getelementptr inbounds %struct.dma_device, ptr %158, i32 0, i32 47
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %157
  %163 = call i32 %160(ptr noundef %114) #17
  br label %164

164:                                              ; preds = %162, %157
  %165 = load i8, ptr %32, align 4, !range !27
  %166 = icmp eq i8 %165, 0
  %167 = load ptr, ptr %39, align 4
  %168 = select i1 %166, ptr %34, ptr %33
  %169 = load i32, ptr %40, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %179, label %171

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.scatterlist, ptr %168, i32 0, i32 2
  %173 = load i32, ptr %172, align 4
  %174 = load i32, ptr %41, align 4
  %175 = sub i32 %173, %174
  %176 = icmp ugt i32 %175, %154
  %177 = select i1 %176, i32 0, i32 %175
  %178 = sub i32 %154, %177
  br label %179

179:                                              ; preds = %171, %164
  %180 = phi i32 [ %154, %164 ], [ %178, %171 ]
  %181 = phi i32 [ 0, %164 ], [ %175, %171 ]
  %182 = icmp eq i32 %180, 0
  br i1 %182, label %193, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.pl011_sgbuf, ptr %168, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr i8, ptr %185, i32 %181
  %187 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %167, ptr noundef %186, i8 noundef zeroext 0, i32 noundef %180) #17
  %188 = load i32, ptr %42, align 4
  %189 = add i32 %188, %187
  store i32 %189, ptr %42, align 4
  %190 = icmp ult i32 %187, %180
  br i1 %190, label %191, label %193

191:                                              ; preds = %183
  %192 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %192, ptr noundef nonnull @.str.7) #18
  br label %193

193:                                              ; preds = %191, %183, %179
  %194 = phi i32 [ %187, %191 ], [ %187, %183 ], [ 0, %179 ]
  %195 = load i32, ptr %40, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.scatterlist, ptr %168, i32 0, i32 2
  %199 = load i32, ptr %198, align 4
  store i32 %199, ptr %41, align 4
  br label %200

200:                                              ; preds = %197, %193
  %201 = icmp eq i32 %194, %180
  br i1 %201, label %202, label %214

202:                                              ; preds = %200
  %203 = load ptr, ptr %5, align 4
  %204 = load ptr, ptr %7, align 4
  %205 = getelementptr i16, ptr %204, i32 13
  %206 = load i16, ptr %205, align 2
  %207 = zext i16 %206 to i32
  %208 = getelementptr i8, ptr %203, i32 %207
  %209 = load i8, ptr %13, align 2
  %210 = icmp eq i8 %209, 3
  br i1 %210, label %211, label %212

211:                                              ; preds = %202
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 1920) #17, !srcloc !12
  br label %213

212:                                              ; preds = %202
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %208, i16 1920) #17, !srcloc !25
  br label %213

213:                                              ; preds = %212, %211
  call fastcc void @pl011_fifo_to_tty(ptr noundef %1) #17
  br label %214

214:                                              ; preds = %213, %200
  call void @tty_flip_buffer_push(ptr noundef %167) #17
  %215 = load i8, ptr %32, align 4, !range !27
  %216 = xor i8 %215, 1
  store i8 %216, ptr %32, align 4
  %217 = call fastcc i32 @pl011_dma_rx_trigger_dma(ptr noundef %1) #17
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %233, label %219

219:                                              ; preds = %214
  %220 = load i32, ptr %23, align 4
  %221 = or i32 %220, 16
  store i32 %221, ptr %23, align 4
  %222 = load ptr, ptr %5, align 4
  %223 = load ptr, ptr %7, align 4
  %224 = getelementptr i16, ptr %223, i32 10
  %225 = load i16, ptr %224, align 2
  %226 = zext i16 %225 to i32
  %227 = getelementptr i8, ptr %222, i32 %226
  %228 = load i8, ptr %13, align 2
  %229 = icmp eq i8 %228, 3
  br i1 %229, label %230, label %231

230:                                              ; preds = %219
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 %221) #17, !srcloc !12
  br label %233

231:                                              ; preds = %219
  %232 = trunc i32 %221 to i16
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %227, i16 %232) #17, !srcloc !25
  br label %233

233:                                              ; preds = %231, %230, %214
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  br label %267

234:                                              ; preds = %110, %107
  call fastcc void @pl011_fifo_to_tty(ptr noundef %1) #17
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  %235 = load i16, ptr %1, align 4
  %236 = add i16 %235, 1
  store i16 %236, ptr %1, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !30
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !36
  %237 = load ptr, ptr %39, align 4
  call void @tty_flip_buffer_push(ptr noundef %237) #17
  %238 = load i8, ptr %29, align 1, !range !27
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %266, label %240

240:                                              ; preds = %234
  %241 = call fastcc i32 @pl011_dma_rx_trigger_dma(ptr noundef %1) #17
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %257, label %243

243:                                              ; preds = %240
  %244 = load i32, ptr %23, align 4
  %245 = or i32 %244, 16
  store i32 %245, ptr %23, align 4
  %246 = load ptr, ptr %5, align 4
  %247 = load ptr, ptr %7, align 4
  %248 = getelementptr i16, ptr %247, i32 10
  %249 = load i16, ptr %248, align 2
  %250 = zext i16 %249 to i32
  %251 = getelementptr i8, ptr %246, i32 %250
  %252 = load i8, ptr %13, align 2
  %253 = icmp eq i8 %252, 3
  br i1 %253, label %254, label %255

254:                                              ; preds = %243
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 %245) #17, !srcloc !12
  br label %266

255:                                              ; preds = %243
  %256 = trunc i32 %245 to i16
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %251, i16 %256) #17, !srcloc !25
  br label %266

257:                                              ; preds = %240
  %258 = load i32, ptr %40, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %266, label %260

260:                                              ; preds = %257
  %261 = load volatile i32, ptr @jiffies, align 64
  store i32 %261, ptr %43, align 4
  store i32 4096, ptr %41, align 4
  %262 = load volatile i32, ptr @jiffies, align 64
  %263 = call i32 @__msecs_to_jiffies(i32 noundef %258) #17
  %264 = add i32 %263, %262
  %265 = call i32 @mod_timer(ptr noundef %44, i32 noundef %264) #17
  br label %266

266:                                              ; preds = %260, %257, %255, %254, %234
  call void @_raw_spin_lock(ptr noundef %1) #17
  br label %267

267:                                              ; preds = %266, %233, %104
  %268 = and i32 %48, 15
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %314, label %270

270:                                              ; preds = %267
  %271 = load ptr, ptr %5, align 4
  %272 = load ptr, ptr %7, align 4
  %273 = getelementptr i16, ptr %272, i32 3
  %274 = load i16, ptr %273, align 2
  %275 = zext i16 %274 to i32
  %276 = getelementptr i8, ptr %271, i32 %275
  %277 = load i8, ptr %13, align 2
  %278 = icmp eq i8 %277, 3
  br i1 %278, label %279, label %281

279:                                              ; preds = %270
  %280 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %276) #17, !srcloc !8
  br label %284

281:                                              ; preds = %270
  %282 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %276) #17, !srcloc !26
  %283 = zext i16 %282 to i32
  br label %284

284:                                              ; preds = %281, %279
  %285 = phi i32 [ %280, %279 ], [ %283, %281 ]
  %286 = and i32 %285, 7
  %287 = load i32, ptr %45, align 4
  %288 = xor i32 %286, %287
  store i32 %286, ptr %45, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %314, label %290

290:                                              ; preds = %284
  %291 = and i32 %288, 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %290
  %294 = and i32 %285, 4
  call void @uart_handle_dcd_change(ptr noundef %1, i32 noundef %294) #17
  br label %295

295:                                              ; preds = %293, %290
  %296 = load ptr, ptr %28, align 4
  %297 = getelementptr inbounds %struct.vendor_data, ptr %296, i32 0, i32 3
  %298 = load i32, ptr %297, align 4
  %299 = and i32 %298, %288
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %295
  %302 = load i32, ptr %46, align 4
  %303 = add i32 %302, 1
  store i32 %303, ptr %46, align 4
  br label %304

304:                                              ; preds = %301, %295
  %305 = getelementptr inbounds %struct.vendor_data, ptr %296, i32 0, i32 4
  %306 = load i32, ptr %305, align 4
  %307 = and i32 %306, %288
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %311, label %309

309:                                              ; preds = %304
  %310 = and i32 %306, %286
  call void @uart_handle_cts_change(ptr noundef %1, i32 noundef %310) #17
  br label %311

311:                                              ; preds = %309, %304
  %312 = load ptr, ptr %39, align 4
  %313 = getelementptr inbounds %struct.tty_port, ptr %312, i32 0, i32 9
  call void @__wake_up(ptr noundef %313, i32 noundef 1, i32 noundef 1, ptr noundef null) #17
  br label %314

314:                                              ; preds = %311, %284, %267
  %315 = and i32 %48, 32
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %319, label %317

317:                                              ; preds = %314
  %318 = call fastcc zeroext i1 @pl011_tx_chars(ptr noundef %1, i1 noundef zeroext true)
  br label %319

319:                                              ; preds = %317, %314
  %320 = icmp eq i32 %49, 0
  br i1 %320, label %341, label %321

321:                                              ; preds = %319
  %322 = add nsw i32 %49, -1
  %323 = load ptr, ptr %5, align 4
  %324 = load ptr, ptr %7, align 4
  %325 = getelementptr i16, ptr %324, i32 11
  %326 = load i16, ptr %325, align 2
  %327 = zext i16 %326 to i32
  %328 = getelementptr i8, ptr %323, i32 %327
  %329 = load i8, ptr %13, align 2
  %330 = icmp eq i8 %329, 3
  br i1 %330, label %331, label %333

331:                                              ; preds = %321
  %332 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %328) #17, !srcloc !8
  br label %336

333:                                              ; preds = %321
  %334 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %328) #17, !srcloc !26
  %335 = zext i16 %334 to i32
  br label %336

336:                                              ; preds = %333, %331
  %337 = phi i32 [ %332, %331 ], [ %335, %333 ]
  %338 = load i32, ptr %23, align 4
  %339 = and i32 %338, %337
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %47

341:                                              ; preds = %336, %319, %21
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %4) #17
  %342 = xor i1 %26, true
  %343 = zext i1 %342 to i32
  ret i32 %343
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #12

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pl011_dma_rx_trigger_dma(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %72, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 2
  %7 = load i8, ptr %6, align 4, !range !27
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 4
  %10 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 3
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load ptr, ptr %3, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 39
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call ptr %16(ptr noundef nonnull %3, ptr noundef %11, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18, %14, %5
  %22 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 6
  store i8 0, ptr %22, align 4
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 47
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %72, label %27

27:                                               ; preds = %21
  %28 = tail call i32 %25(ptr noundef nonnull %3) #17
  br label %72

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %19, i32 0, i32 6
  store ptr @pl011_dma_rx_callback, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %19, i32 0, i32 8
  store ptr %0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %19, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef nonnull %19) #17
  %35 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 5
  store i32 %34, ptr %35, align 4
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 50
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef nonnull %3) #17
  %39 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 1
  store i32 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i16, ptr %45, i32 14
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = getelementptr i8, ptr %43, i32 %48
  %50 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %51 = load i8, ptr %50, align 2
  %52 = icmp eq i8 %51, 3
  br i1 %52, label %53, label %54

53:                                               ; preds = %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %41) #17, !srcloc !12
  br label %56

54:                                               ; preds = %29
  %55 = trunc i32 %41 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %49, i16 %55) #17, !srcloc !25
  br label %56

56:                                               ; preds = %54, %53
  %57 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 6
  store i8 1, ptr %57, align 4
  %58 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, -17
  store i32 %60, ptr %58, align 4
  %61 = load ptr, ptr %42, align 4
  %62 = load ptr, ptr %44, align 4
  %63 = getelementptr i16, ptr %62, i32 10
  %64 = load i16, ptr %63, align 2
  %65 = zext i16 %64 to i32
  %66 = getelementptr i8, ptr %61, i32 %65
  %67 = load i8, ptr %50, align 2
  %68 = icmp eq i8 %67, 3
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %60) #17, !srcloc !12
  br label %72

70:                                               ; preds = %56
  %71 = trunc i32 %60 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %66, i16 %71) #17, !srcloc !25
  br label %72

72:                                               ; preds = %70, %69, %27, %21, %1
  %73 = phi i32 [ -5, %1 ], [ -16, %21 ], [ -16, %27 ], [ 0, %69 ], [ 0, %70 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pl011_fifo_to_tty(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 9
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 8
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 6
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 7
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  br label %12

12:                                               ; preds = %111, %1
  %13 = phi i32 [ 0, %1 ], [ %112, %111 ]
  %14 = load ptr, ptr %2, align 4
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i16, ptr %15, i32 3
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %14, i32 %18
  %20 = load i8, ptr %4, align 2
  %21 = icmp eq i8 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #17, !srcloc !8
  br label %27

24:                                               ; preds = %12
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #17, !srcloc !26
  %26 = zext i16 %25 to i32
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %23, %22 ], [ %26, %24 ]
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %114

31:                                               ; preds = %27
  %32 = load ptr, ptr %2, align 4
  %33 = load ptr, ptr %3, align 4
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %32, i32 %35
  %37 = load i8, ptr %4, align 2
  %38 = icmp eq i8 %37, 3
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #17, !srcloc !8
  br label %44

41:                                               ; preds = %31
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %36) #17, !srcloc !26
  %43 = zext i16 %42 to i32
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %40, %39 ], [ %43, %41 ]
  %46 = or i32 %45, 65536
  %47 = load i32, ptr %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %5, align 4
  %49 = and i32 %45, 3840
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %88, label %51, !prof !33

51:                                               ; preds = %44
  %52 = and i32 %45, 1024
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = and i32 %46, -769
  %56 = load i32, ptr %6, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %6, align 4
  %58 = tail call fastcc i32 @uart_handle_break(ptr noundef %0)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %111

60:                                               ; preds = %51
  %61 = and i32 %45, 512
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = and i32 %45, 256
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63, %60
  %67 = phi ptr [ %7, %60 ], [ %8, %63 ]
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %66, %63, %54
  %71 = phi i32 [ %55, %54 ], [ %46, %63 ], [ %46, %66 ]
  %72 = and i32 %71, 2048
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %9, align 4
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i32, ptr %10, align 4
  %79 = and i32 %78, %71
  %80 = and i32 %79, 1024
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = and i32 %79, 512
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = lshr i32 %79, 7
  %87 = and i32 %86, 2
  br label %88

88:                                               ; preds = %85, %82, %77, %44
  %89 = phi i32 [ %46, %44 ], [ %79, %77 ], [ %79, %82 ], [ %79, %85 ]
  %90 = phi i32 [ 0, %44 ], [ 1, %77 ], [ 3, %82 ], [ %87, %85 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  %91 = load i16, ptr %0, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !36
  %93 = and i32 %89, 255
  %94 = load i32, ptr %11, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %88
  %97 = icmp eq i32 %93, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %96
  %99 = load volatile i32, ptr @jiffies, align 64
  %100 = sub i32 %99, %94
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = tail call i32 @sysrq_mask() #17
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %0, i32 noundef %93) #17
  br i1 %106, label %107, label %108

107:                                              ; preds = %105
  tail call void @_raw_spin_lock(ptr noundef %0) #17
  br label %111

108:                                              ; preds = %105, %98, %96
  store i32 0, ptr %11, align 4
  br label %110

109:                                              ; preds = %102
  tail call void @handle_sysrq(i32 noundef %93) #17
  store i32 0, ptr %11, align 4
  tail call void @_raw_spin_lock(ptr noundef %0) #17
  br label %111

110:                                              ; preds = %108, %88
  tail call void @_raw_spin_lock(ptr noundef %0) #17
  tail call void @uart_insert_char(ptr noundef %0, i32 noundef %89, i32 noundef 2048, i32 noundef %89, i32 noundef %90) #17
  br label %111

111:                                              ; preds = %110, %109, %107, %54
  %112 = add nuw nsw i32 %13, 1
  %113 = icmp eq i32 %112, 256
  br i1 %113, label %114, label %12

114:                                              ; preds = %111, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uart_handle_break(ptr noundef %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #17
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
  tail call void @do_SAK(ptr noundef %38) #17
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_dma_rx_callback(ptr noundef %0) #3 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 2
  %6 = load i8, ptr %5, align 4, !range !27
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 4
  %9 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 3
  %10 = select i1 %7, ptr %9, ptr %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !24
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #17
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 49
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = call i32 %13(ptr noundef %4, i32 noundef %15, ptr noundef nonnull %2) #17
  %17 = getelementptr inbounds %struct.scatterlist, ptr %10, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 %18, %20
  %22 = icmp ugt i32 %21, 4096
  br i1 %22, label %23, label %24, !prof !34

23:                                               ; preds = %1
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/amba-pl011.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 991, 0\0A.popsection", ""() #17, !srcloc !37
  unreachable

24:                                               ; preds = %1
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 47
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = call i32 %27(ptr noundef %4) #17
  br label %31

31:                                               ; preds = %29, %24
  %32 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 6
  store i8 0, ptr %32, align 4
  %33 = xor i8 %6, 1
  store i8 %33, ptr %5, align 4
  %34 = call fastcc i32 @pl011_dma_rx_trigger_dma(ptr noundef %0)
  %35 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %31
  %41 = load i32, ptr %17, align 4
  %42 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 8
  %43 = load i32, ptr %42, align 4
  %44 = sub i32 %41, %43
  %45 = icmp ugt i32 %44, %21
  %46 = select i1 %45, i32 0, i32 %44
  %47 = sub i32 %21, %46
  br label %48

48:                                               ; preds = %40, %31
  %49 = phi i32 [ %21, %31 ], [ %47, %40 ]
  %50 = phi i32 [ 0, %31 ], [ %44, %40 ]
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.pl011_sgbuf, ptr %10, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 %50
  %56 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %36, ptr noundef %55, i8 noundef zeroext 0, i32 noundef %49) #17
  %57 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, %56
  store i32 %59, ptr %57, align 4
  %60 = icmp ult i32 %56, %49
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %63 = load ptr, ptr %62, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.7) #18
  br label %64

64:                                               ; preds = %61, %52, %48
  %65 = load i32, ptr %37, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %17, align 4
  %69 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 8
  store i32 %68, ptr %69, align 4
  br label %70

70:                                               ; preds = %67, %64
  call void @tty_flip_buffer_push(ptr noundef %36) #17
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  %71 = load i16, ptr %0, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !29
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !30
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !32
  %73 = icmp eq i32 %34, 0
  br i1 %73, label %92, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  %76 = load i32, ptr %75, align 4
  %77 = or i32 %76, 16
  store i32 %77, ptr %75, align 4
  %78 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i16, ptr %81, i32 10
  %83 = load i16, ptr %82, align 2
  %84 = zext i16 %83 to i32
  %85 = getelementptr i8, ptr %79, i32 %84
  %86 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %87 = load i8, ptr %86, align 2
  %88 = icmp eq i8 %87, 3
  br i1 %88, label %89, label %90

89:                                               ; preds = %74
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %77) #17, !srcloc !12
  br label %92

90:                                               ; preds = %74
  %91 = trunc i32 %77 to i16
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %85, i16 %91) #17, !srcloc !25
  br label %92

92:                                               ; preds = %90, %89, %70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_rs485_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pl011_unregister_port(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr @amba_ports, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr null, ptr @amba_ports, align 4
  br label %7

5:                                                ; preds = %1
  %6 = icmp ne ptr %2, null
  br label %7

7:                                                ; preds = %5, %4
  %8 = phi i1 [ false, %4 ], [ %6, %5 ]
  %9 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = icmp ne ptr %9, null
  %13 = select i1 %12, i1 true, i1 %8
  br label %15

14:                                               ; preds = %7
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i1 [ %8, %14 ], [ %13, %11 ]
  %17 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = icmp ne ptr %17, null
  %21 = select i1 %20, i1 true, i1 %16
  br label %23

22:                                               ; preds = %15
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i1 [ %16, %22 ], [ %21, %19 ]
  %25 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = icmp ne ptr %25, null
  %29 = select i1 %28, i1 true, i1 %24
  br label %31

30:                                               ; preds = %23
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i1 [ %24, %30 ], [ %29, %27 ]
  %33 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = icmp ne ptr %33, null
  %37 = select i1 %36, i1 true, i1 %32
  br label %39

38:                                               ; preds = %31
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i1 [ %32, %38 ], [ %37, %35 ]
  %41 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = icmp ne ptr %41, null
  %45 = select i1 %44, i1 true, i1 %40
  br label %47

46:                                               ; preds = %39
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i1 [ %40, %46 ], [ %45, %43 ]
  %49 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  %50 = icmp eq ptr %49, %0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = icmp ne ptr %49, null
  %53 = select i1 %52, i1 true, i1 %48
  br label %55

54:                                               ; preds = %47
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i1 [ %48, %54 ], [ %53, %51 ]
  %57 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  %58 = icmp eq ptr %57, %0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = icmp ne ptr %57, null
  %61 = select i1 %60, i1 true, i1 %56
  br label %63

62:                                               ; preds = %55
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i1 [ %56, %62 ], [ %61, %59 ]
  %65 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 8), align 4
  %66 = icmp eq ptr %65, %0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = icmp ne ptr %65, null
  %69 = select i1 %68, i1 true, i1 %64
  br label %71

70:                                               ; preds = %63
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 8), align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i1 [ %64, %70 ], [ %69, %67 ]
  %73 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 9), align 4
  %74 = icmp eq ptr %73, %0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = icmp ne ptr %73, null
  %77 = select i1 %76, i1 true, i1 %72
  br label %79

78:                                               ; preds = %71
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 9), align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = phi i1 [ %72, %78 ], [ %77, %75 ]
  %81 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 10), align 4
  %82 = icmp eq ptr %81, %0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = icmp ne ptr %81, null
  %85 = select i1 %84, i1 true, i1 %80
  br label %87

86:                                               ; preds = %79
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 10), align 4
  br label %87

87:                                               ; preds = %86, %83
  %88 = phi i1 [ %80, %86 ], [ %85, %83 ]
  %89 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 11), align 4
  %90 = icmp eq ptr %89, %0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = icmp ne ptr %89, null
  %93 = select i1 %92, i1 true, i1 %88
  br label %95

94:                                               ; preds = %87
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 11), align 4
  br label %95

95:                                               ; preds = %94, %91
  %96 = phi i1 [ %88, %94 ], [ %93, %91 ]
  %97 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 12), align 4
  %98 = icmp eq ptr %97, %0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = icmp ne ptr %97, null
  %101 = select i1 %100, i1 true, i1 %96
  br label %103

102:                                              ; preds = %95
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 12), align 4
  br label %103

103:                                              ; preds = %102, %99
  %104 = phi i1 [ %96, %102 ], [ %101, %99 ]
  %105 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 13), align 4
  %106 = icmp eq ptr %105, %0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = icmp ne ptr %105, null
  %109 = select i1 %108, i1 true, i1 %104
  br label %111

110:                                              ; preds = %103
  store ptr null, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 13), align 4
  br label %111

111:                                              ; preds = %110, %107
  %112 = phi i1 [ %104, %110 ], [ %109, %107 ]
  %113 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  tail call void @dma_release_channel(ptr noundef nonnull %114) #17
  br label %117

117:                                              ; preds = %116, %111
  %118 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  tail call void @dma_release_channel(ptr noundef nonnull %119) #17
  br label %122

122:                                              ; preds = %121, %117
  br i1 %112, label %124, label %123

123:                                              ; preds = %122
  tail call void @uart_unregister_driver(ptr noundef nonnull @amba_reg) #17
  br label %124

124:                                              ; preds = %123, %122
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr [14 x ptr], ptr @amba_ports, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_amba_port, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_enable(ptr noundef %10) #17
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !38
  %13 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 46
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, ptr @oops_in_progress, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @_raw_spin_trylock(ptr noundef %8) #17
  br label %22

21:                                               ; preds = %16
  tail call void @_raw_spin_lock(ptr noundef %8) #17
  br label %22

22:                                               ; preds = %21, %19, %3
  %23 = phi i32 [ %20, %19 ], [ 1, %21 ], [ 0, %3 ]
  %24 = getelementptr inbounds %struct.uart_amba_port, ptr %8, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.vendor_data, ptr %25, i32 0, i32 11
  %27 = load i8, ptr %26, align 4, !range !27
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.uart_amba_port, ptr %8, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i16, ptr %33, i32 8
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = getelementptr i8, ptr %31, i32 %36
  %38 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 26
  %39 = load i8, ptr %38, align 2
  %40 = icmp eq i8 %39, 3
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #17, !srcloc !8
  br label %46

43:                                               ; preds = %29
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %37) #17, !srcloc !26
  %45 = zext i16 %44 to i32
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i32 [ %42, %41 ], [ %45, %43 ]
  %48 = and i32 %47, -33026
  %49 = or i32 %48, 257
  %50 = load ptr, ptr %30, align 4
  %51 = load ptr, ptr %32, align 4
  %52 = getelementptr i16, ptr %51, i32 8
  %53 = load i16, ptr %52, align 2
  %54 = zext i16 %53 to i32
  %55 = getelementptr i8, ptr %50, i32 %54
  %56 = load i8, ptr %38, align 2
  %57 = icmp eq i8 %56, 3
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %49) #17, !srcloc !12
  br label %61

59:                                               ; preds = %46
  %60 = trunc i32 %49 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %55, i16 %60) #17, !srcloc !25
  br label %61

61:                                               ; preds = %59, %58, %22
  %62 = phi i32 [ 0, %22 ], [ %47, %58 ], [ %47, %59 ]
  tail call void @uart_console_write(ptr noundef %8, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @pl011_console_putchar) #17
  %63 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 2
  %64 = getelementptr inbounds %struct.uart_amba_port, ptr %8, i32 0, i32 1
  %65 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 26
  br label %66

66:                                               ; preds = %90, %61
  %67 = load ptr, ptr %63, align 4
  %68 = load ptr, ptr %64, align 4
  %69 = getelementptr i16, ptr %68, i32 3
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  %72 = getelementptr i8, ptr %67, i32 %71
  %73 = load i8, ptr %65, align 2
  %74 = icmp eq i8 %73, 3
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #17, !srcloc !8
  br label %80

77:                                               ; preds = %66
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %72) #17, !srcloc !26
  %79 = zext i16 %78 to i32
  br label %80

80:                                               ; preds = %77, %75
  %81 = phi i32 [ %76, %75 ], [ %79, %77 ]
  %82 = load ptr, ptr %24, align 4
  %83 = getelementptr inbounds %struct.vendor_data, ptr %82, i32 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = xor i32 %84, %81
  %86 = getelementptr inbounds %struct.vendor_data, ptr %82, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %85, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !39
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !40
  br label %66

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.vendor_data, ptr %82, i32 0, i32 11
  %93 = load i8, ptr %92, align 4, !range !27
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = load ptr, ptr %63, align 4
  %97 = load ptr, ptr %64, align 4
  %98 = getelementptr i16, ptr %97, i32 8
  %99 = load i16, ptr %98, align 2
  %100 = zext i16 %99 to i32
  %101 = getelementptr i8, ptr %96, i32 %100
  %102 = load i8, ptr %65, align 2
  %103 = icmp eq i8 %102, 3
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %62) #17, !srcloc !12
  br label %107

105:                                              ; preds = %95
  %106 = trunc i32 %62 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %101, i16 %106) #17, !srcloc !25
  br label %107

107:                                              ; preds = %105, %104, %91
  %108 = icmp eq i32 %23, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %107
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  %110 = load i16, ptr %8, align 4
  %111 = add i16 %110, 1
  store i16 %111, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !36
  br label %112

112:                                              ; preds = %109, %107
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #17, !srcloc !41
  %113 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %113) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl011_console_setup(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 38400, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 110, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 110, ptr %6, align 4
  %7 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 2
  %9 = icmp sgt i16 %8, 13
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i16 0, ptr %7, align 2
  br label %11

11:                                               ; preds = %10, %2
  %12 = phi i16 [ 0, %10 ], [ %8, %2 ]
  %13 = sext i16 %12 to i32
  %14 = getelementptr [14 x ptr], ptr @amba_ports, i32 0, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %165, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.uart_port, ptr %15, i32 0, i32 45
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %19) #17
  %21 = getelementptr inbounds %struct.uart_amba_port, ptr %15, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @clk_prepare(ptr noundef %22) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %165

25:                                               ; preds = %17
  %26 = load ptr, ptr %18, align 4
  %27 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.amba_pl011_data, ptr %28, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void %32() #17
  br label %35

35:                                               ; preds = %34, %30, %25
  %36 = load ptr, ptr %21, align 4
  %37 = tail call i32 @clk_get_rate(ptr noundef %36) #17
  %38 = getelementptr inbounds %struct.uart_port, ptr %15, i32 0, i32 22
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.uart_amba_port, ptr %15, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.vendor_data, ptr %40, i32 0, i32 12
  %42 = load i8, ptr %41, align 1, !range !27
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.uart_amba_port, ptr %15, i32 0, i32 8
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %3, align 4
  br label %159

47:                                               ; preds = %35
  %48 = icmp eq ptr %1, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %47
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #17
  %50 = load i32, ptr %3, align 4
  %51 = load i32, ptr %5, align 4
  %52 = load i32, ptr %4, align 4
  %53 = load i32, ptr %6, align 4
  br label %159

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.uart_port, ptr %15, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.uart_amba_port, ptr %15, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i16, ptr %58, i32 8
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = getelementptr i8, ptr %56, i32 %61
  %63 = getelementptr inbounds %struct.uart_port, ptr %15, i32 0, i32 26
  %64 = load i8, ptr %63, align 2
  %65 = icmp eq i8 %64, 3
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #17, !srcloc !8
  br label %71

68:                                               ; preds = %54
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %62) #17, !srcloc !26
  %70 = zext i16 %69 to i32
  br label %71

71:                                               ; preds = %68, %66
  %72 = phi i32 [ %67, %66 ], [ %70, %68 ]
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %159, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %55, align 4
  %77 = load ptr, ptr %57, align 4
  %78 = getelementptr i16, ptr %77, i32 5
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = getelementptr i8, ptr %76, i32 %80
  %82 = load i8, ptr %63, align 2
  %83 = icmp eq i8 %82, 3
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #17, !srcloc !8
  br label %89

86:                                               ; preds = %75
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %81) #17, !srcloc !26
  %88 = zext i16 %87 to i32
  br label %89

89:                                               ; preds = %86, %84
  %90 = phi i32 [ %85, %84 ], [ %88, %86 ]
  %91 = and i32 %90, 2
  %92 = icmp eq i32 %91, 0
  %93 = and i32 %90, 4
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 111, i32 101
  %96 = select i1 %92, i32 110, i32 %95
  store i32 %96, ptr %5, align 4
  %97 = and i32 %90, 96
  %98 = icmp eq i32 %97, 64
  %99 = select i1 %98, i32 7, i32 8
  store i32 %99, ptr %4, align 4
  %100 = load ptr, ptr %55, align 4
  %101 = load ptr, ptr %57, align 4
  %102 = getelementptr i16, ptr %101, i32 6
  %103 = load i16, ptr %102, align 2
  %104 = zext i16 %103 to i32
  %105 = getelementptr i8, ptr %100, i32 %104
  %106 = load i8, ptr %63, align 2
  %107 = icmp eq i8 %106, 3
  br i1 %107, label %108, label %110

108:                                              ; preds = %89
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #17, !srcloc !8
  br label %113

110:                                              ; preds = %89
  %111 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %105) #17, !srcloc !26
  %112 = zext i16 %111 to i32
  br label %113

113:                                              ; preds = %110, %108
  %114 = phi i32 [ %109, %108 ], [ %112, %110 ]
  %115 = load ptr, ptr %55, align 4
  %116 = load ptr, ptr %57, align 4
  %117 = getelementptr i16, ptr %116, i32 7
  %118 = load i16, ptr %117, align 2
  %119 = zext i16 %118 to i32
  %120 = getelementptr i8, ptr %115, i32 %119
  %121 = load i8, ptr %63, align 2
  %122 = icmp eq i8 %121, 3
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #17, !srcloc !8
  br label %128

125:                                              ; preds = %113
  %126 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %120) #17, !srcloc !26
  %127 = zext i16 %126 to i32
  br label %128

128:                                              ; preds = %125, %123
  %129 = phi i32 [ %124, %123 ], [ %127, %125 ]
  %130 = load i32, ptr %38, align 4
  %131 = shl i32 %130, 2
  %132 = shl i32 %114, 6
  %133 = add i32 %129, %132
  %134 = udiv i32 %131, %133
  store i32 %134, ptr %3, align 4
  %135 = load ptr, ptr %39, align 4
  %136 = getelementptr inbounds %struct.vendor_data, ptr %135, i32 0, i32 8
  %137 = load i8, ptr %136, align 1, !range !27
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %159, label %139

139:                                              ; preds = %128
  %140 = load ptr, ptr %55, align 4
  %141 = load ptr, ptr %57, align 4
  %142 = getelementptr i16, ptr %141, i32 8
  %143 = load i16, ptr %142, align 2
  %144 = zext i16 %143 to i32
  %145 = getelementptr i8, ptr %140, i32 %144
  %146 = load i8, ptr %63, align 2
  %147 = icmp eq i8 %146, 3
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #17, !srcloc !8
  br label %153

150:                                              ; preds = %139
  %151 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %145) #17, !srcloc !26
  %152 = zext i16 %151 to i32
  br label %153

153:                                              ; preds = %150, %148
  %154 = phi i32 [ %149, %148 ], [ %152, %150 ]
  %155 = and i32 %154, 8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = shl i32 %134, 1
  store i32 %158, ptr %3, align 4
  br label %159

159:                                              ; preds = %157, %153, %128, %71, %49, %44
  %160 = phi i32 [ 110, %157 ], [ 110, %153 ], [ 110, %128 ], [ 110, %71 ], [ %53, %49 ], [ 110, %44 ]
  %161 = phi i32 [ %99, %157 ], [ %99, %153 ], [ %99, %128 ], [ 8, %71 ], [ %52, %49 ], [ 8, %44 ]
  %162 = phi i32 [ %96, %157 ], [ %96, %153 ], [ %96, %128 ], [ 110, %71 ], [ %51, %49 ], [ 110, %44 ]
  %163 = phi i32 [ %158, %157 ], [ %134, %153 ], [ %134, %128 ], [ 38400, %71 ], [ %50, %49 ], [ %46, %44 ]
  %164 = call i32 @uart_set_options(ptr noundef nonnull %15, ptr noundef %0, i32 noundef %163, i32 noundef %162, i32 noundef %161, i32 noundef %160) #17
  br label %165

165:                                              ; preds = %159, %17, %11
  %166 = phi i32 [ %164, %159 ], [ -19, %11 ], [ %23, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %166
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl011_console_match(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #3 {
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store ptr %3, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #17
  store i8 0, ptr %6, align 1, !annotation !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 0, ptr %7, align 4, !annotation !24
  %8 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(12) @.str.13)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(6) @.str.14)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %126

13:                                               ; preds = %10, %4
  %14 = call i32 @uart_parse_earlycon(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %126

16:                                               ; preds = %13
  %17 = load i8, ptr %6, align 1
  %18 = add i8 %17, -4
  %19 = icmp ult i8 %18, -2
  br i1 %19, label %126, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %7, align 4
  %22 = load ptr, ptr @amba_ports, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.uart_port, ptr %22, i32 0, i32 43
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %21
  br i1 %27, label %28, label %35

28:                                               ; preds = %122, %115, %108, %101, %94, %87, %80, %73, %66, %59, %52, %45, %38, %24
  %29 = phi i16 [ 0, %24 ], [ 1, %38 ], [ 2, %45 ], [ 3, %52 ], [ 4, %59 ], [ 5, %66 ], [ 6, %73 ], [ 7, %80 ], [ 8, %87 ], [ 9, %94 ], [ 10, %101 ], [ 11, %108 ], [ 12, %115 ], [ 13, %122 ]
  %30 = phi ptr [ %22, %24 ], [ %36, %38 ], [ %43, %45 ], [ %50, %52 ], [ %57, %59 ], [ %64, %66 ], [ %71, %73 ], [ %78, %80 ], [ %85, %87 ], [ %92, %94 ], [ %99, %101 ], [ %106, %108 ], [ %113, %115 ], [ %120, %122 ]
  %31 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  store i16 %29, ptr %31, align 2
  %32 = getelementptr inbounds %struct.uart_port, ptr %30, i32 0, i32 32
  store ptr %0, ptr %32, align 4
  %33 = load ptr, ptr %5, align 4
  %34 = call i32 @pl011_console_setup(ptr noundef %0, ptr noundef %33)
  br label %126

35:                                               ; preds = %24, %20
  %36 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.uart_port, ptr %36, i32 0, i32 43
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %21
  br i1 %41, label %28, label %42

42:                                               ; preds = %38, %35
  %43 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.uart_port, ptr %43, i32 0, i32 43
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %21
  br i1 %48, label %28, label %49

49:                                               ; preds = %45, %42
  %50 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.uart_port, ptr %50, i32 0, i32 43
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, %21
  br i1 %55, label %28, label %56

56:                                               ; preds = %52, %49
  %57 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.uart_port, ptr %57, i32 0, i32 43
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, %21
  br i1 %62, label %28, label %63

63:                                               ; preds = %59, %56
  %64 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.uart_port, ptr %64, i32 0, i32 43
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, %21
  br i1 %69, label %28, label %70

70:                                               ; preds = %66, %63
  %71 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.uart_port, ptr %71, i32 0, i32 43
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, %21
  br i1 %76, label %28, label %77

77:                                               ; preds = %73, %70
  %78 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.uart_port, ptr %78, i32 0, i32 43
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, %21
  br i1 %83, label %28, label %84

84:                                               ; preds = %80, %77
  %85 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 8), align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.uart_port, ptr %85, i32 0, i32 43
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, %21
  br i1 %90, label %28, label %91

91:                                               ; preds = %87, %84
  %92 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 9), align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.uart_port, ptr %92, i32 0, i32 43
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, %21
  br i1 %97, label %28, label %98

98:                                               ; preds = %94, %91
  %99 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 10), align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.uart_port, ptr %99, i32 0, i32 43
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, %21
  br i1 %104, label %28, label %105

105:                                              ; preds = %101, %98
  %106 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 11), align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.uart_port, ptr %106, i32 0, i32 43
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, %21
  br i1 %111, label %28, label %112

112:                                              ; preds = %108, %105
  %113 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 12), align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.uart_port, ptr %113, i32 0, i32 43
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, %21
  br i1 %118, label %28, label %119

119:                                              ; preds = %115, %112
  %120 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 13), align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.uart_port, ptr %120, i32 0, i32 43
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, %21
  br i1 %125, label %28, label %126

126:                                              ; preds = %122, %119, %28, %16, %13, %10
  %127 = phi i32 [ %34, %28 ], [ -19, %10 ], [ -19, %13 ], [ -19, %16 ], [ -19, %122 ], [ -19, %119 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_console_putchar(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  br label %6

6:                                                ; preds = %24, %2
  %7 = load ptr, ptr %3, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i16, ptr %8, i32 3
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %7, i32 %11
  %13 = load i8, ptr %5, align 2
  %14 = icmp eq i8 %13, 3
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #17, !srcloc !8
  br label %20

17:                                               ; preds = %6
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #17, !srcloc !26
  %19 = zext i16 %18 to i32
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %16, %15 ], [ %19, %17 ]
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !43
  br label %6

25:                                               ; preds = %20
  %26 = load ptr, ptr %3, align 4
  %27 = load ptr, ptr %4, align 4
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = getelementptr i8, ptr %26, i32 %29
  %31 = load i8, ptr %5, align 2
  %32 = icmp eq i8 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %1) #17, !srcloc !12
  br label %36

34:                                               ; preds = %25
  %35 = trunc i32 %1 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %30, i16 %35) #17, !srcloc !25
  br label %36

36:                                               ; preds = %34, %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_parse_earlycon(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl011_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @uart_suspend_port(ptr noundef nonnull @amba_reg, ptr noundef nonnull %3) #17
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl011_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @uart_resume_port(ptr noundef nonnull @amba_reg, ptr noundef nonnull %3) #17
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl011_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.amba_id, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr @amba_ports, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %46, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %46, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %46, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 8), align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %46, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 9), align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 10), align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 11), align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 12), align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @amba_ports, i32 0, i32 13), align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %86

46:                                               ; preds = %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %2
  %47 = phi i32 [ 12, %40 ], [ 11, %37 ], [ 10, %34 ], [ 9, %31 ], [ 8, %28 ], [ 7, %25 ], [ 6, %22 ], [ 5, %19 ], [ 4, %16 ], [ 3, %13 ], [ 2, %10 ], [ 1, %7 ], [ 0, %2 ], [ 13, %43 ]
  %48 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 532, i32 noundef 3520) #17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %86, label %50

50:                                               ; preds = %46
  %51 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef null) #17
  %52 = getelementptr inbounds %struct.uart_amba_port, ptr %48, i32 0, i32 2
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = ptrtoint ptr %51 to i32
  br label %86

56:                                               ; preds = %50
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr inbounds %struct.uart_amba_port, ptr %48, i32 0, i32 1
  store ptr %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.uart_amba_port, ptr %48, i32 0, i32 3
  store ptr %4, ptr %59, align 4
  %60 = getelementptr inbounds %struct.vendor_data, ptr %4, i32 0, i32 13
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 %61(ptr noundef %0) #17
  %63 = getelementptr inbounds %struct.uart_amba_port, ptr %48, i32 0, i32 7
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.vendor_data, ptr %4, i32 0, i32 7
  %65 = load i8, ptr %64, align 4, !range !27
  %66 = icmp eq i8 %65, 0
  %67 = select i1 %66, i8 2, i8 3
  %68 = getelementptr inbounds %struct.uart_port, ptr %48, i32 0, i32 26
  store i8 %67, ptr %68, align 2
  %69 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 7
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr inbounds %struct.uart_port, ptr %48, i32 0, i32 20
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.uart_port, ptr %48, i32 0, i32 39
  store ptr @amba_pl011_pops, ptr %72, align 4
  %73 = getelementptr inbounds %struct.uart_port, ptr %48, i32 0, i32 18
  store ptr @pl011_rs485_config, ptr %73, align 4
  %74 = getelementptr inbounds %struct.uart_amba_port, ptr %48, i32 0, i32 9
  %75 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 4
  %76 = load i32, ptr %75, align 8
  %77 = lshr i32 %76, 20
  %78 = and i32 %77, 15
  %79 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %74, i32 noundef 12, ptr noundef nonnull @.str.15, i32 noundef %78)
  %80 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  %81 = tail call fastcc i32 @pl011_setup_port(ptr noundef %0, ptr noundef nonnull %48, ptr noundef %80, i32 noundef %47)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %56
  %84 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %48, ptr %84, align 8
  %85 = tail call fastcc i32 @pl011_register_port(ptr noundef nonnull %48)
  br label %86

86:                                               ; preds = %83, %56, %54, %46, %43
  %87 = phi i32 [ %55, %54 ], [ %85, %83 ], [ -12, %46 ], [ %81, %56 ], [ -16, %43 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @amba_reg, ptr noundef %3) #17
  tail call fastcc void @pl011_unregister_port(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl011_rs485_config(ptr nocapture noundef %0, ptr nocapture noundef %1) #3 {
  %3 = load i32, ptr %1, align 4
  %4 = lshr i32 %3, 1
  %5 = lshr i32 %3, 2
  %6 = xor i32 %4, %5
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = and i32 %3, -7
  %11 = or i32 %10, 2
  store i32 %11, ptr %1, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = getelementptr inbounds %struct.serial_rs485, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 100)
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.serial_rs485, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 100)
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.serial_rs485, ptr %1, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %19, i8 0, i32 20, i1 false)
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  tail call fastcc void @pl011_rs485_tx_stop(ptr noundef %0)
  br label %25

25:                                               ; preds = %24, %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %20, ptr noundef align 4 dereferenceable(32) %1, i32 32, i1 false)
  %26 = load i32, ptr %20, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %64, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i16, ptr %33, i32 8
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = getelementptr i8, ptr %31, i32 %36
  %38 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %39 = load i8, ptr %38, align 2
  %40 = icmp eq i8 %39, 3
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #17, !srcloc !8
  br label %46

43:                                               ; preds = %29
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %37) #17, !srcloc !26
  %45 = zext i16 %44 to i32
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i32 [ %42, %41 ], [ %45, %43 ]
  %48 = and i32 %47, -16385
  %49 = load ptr, ptr %30, align 4
  %50 = load ptr, ptr %32, align 4
  %51 = getelementptr i16, ptr %50, i32 8
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = getelementptr i8, ptr %49, i32 %53
  %55 = load i8, ptr %38, align 2
  %56 = icmp eq i8 %55, 3
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %48) #17, !srcloc !12
  br label %60

58:                                               ; preds = %46
  %59 = trunc i32 %48 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %54, i16 %59) #17, !srcloc !25
  br label %60

60:                                               ; preds = %58, %57
  %61 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 34
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, -5
  store i32 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %60, %25
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_set_mctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i16, ptr %6, i32 8
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 3
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #17, !srcloc !8
  br label %19

16:                                               ; preds = %2
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %10) #17, !srcloc !26
  %18 = zext i16 %17 to i32
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i32 [ %15, %14 ], [ %18, %16 ]
  %21 = and i32 %1, 4
  %22 = and i32 %20, -15489
  %23 = shl nuw nsw i32 %21, 9
  %24 = or i32 %22, %23
  %25 = shl i32 %1, 9
  %26 = and i32 %25, 1024
  %27 = or i32 %24, %26
  %28 = lshr i32 %1, 1
  %29 = and i32 %28, 4096
  %30 = or i32 %27, %29
  %31 = and i32 %28, 8192
  %32 = or i32 %30, %31
  %33 = lshr i32 %1, 8
  %34 = and i32 %33, 128
  %35 = or i32 %32, %34
  %36 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 34
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %19
  %41 = icmp eq i32 %21, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = or i32 %35, 16384
  br label %46

44:                                               ; preds = %40
  %45 = and i32 %35, -16385
  br label %46

46:                                               ; preds = %44, %42, %19
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ], [ %35, %19 ]
  %48 = load ptr, ptr %3, align 4
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr i16, ptr %49, i32 8
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = getelementptr i8, ptr %48, i32 %52
  %54 = load i8, ptr %11, align 2
  %55 = icmp eq i8 %54, 3
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %47) #17, !srcloc !12
  br label %59

57:                                               ; preds = %46
  %58 = trunc i32 %47 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %53, i16 %58) #17, !srcloc !25
  br label %59

59:                                               ; preds = %57, %56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl011_get_mctrl(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i16, ptr %5, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %3, i32 %8
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 3
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #17, !srcloc !8
  br label %18

15:                                               ; preds = %1
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #17, !srcloc !26
  %17 = zext i16 %16 to i32
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi i32 [ %14, %13 ], [ %17, %15 ]
  %20 = shl i32 %19, 4
  %21 = and i32 %20, 64
  %22 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.vendor_data, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %19
  %27 = icmp eq i32 %26, 0
  %28 = or i32 %21, 256
  %29 = select i1 %27, i32 %21, i32 %28
  %30 = getelementptr inbounds %struct.vendor_data, ptr %23, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, %19
  %33 = icmp eq i32 %32, 0
  %34 = or i32 %29, 32
  %35 = select i1 %33, i32 %29, i32 %34
  %36 = getelementptr inbounds %struct.vendor_data, ptr %23, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, %19
  %39 = icmp eq i32 %38, 0
  %40 = or i32 %35, 128
  %41 = select i1 %39, i32 %35, i32 %40
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_enable_ms(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 15
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i16, ptr %8, i32 10
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %4) #17, !srcloc !12
  br label %19

17:                                               ; preds = %1
  %18 = trunc i32 %4 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %18) #17, !srcloc !25
  br label %19

19:                                               ; preds = %17, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_break_ctl(ptr noundef %0, i32 noundef %1) #3 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i16, ptr %7, i32 5
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %5, i32 %10
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %13 = load i8, ptr %12, align 2
  %14 = icmp eq i8 %13, 3
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #17, !srcloc !8
  br label %20

17:                                               ; preds = %2
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #17, !srcloc !26
  %19 = zext i16 %18 to i32
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %16, %15 ], [ %19, %17 ]
  %22 = icmp eq i32 %1, -1
  %23 = and i32 %21, -2
  %24 = zext i1 %22 to i32
  %25 = or i32 %23, %24
  %26 = load ptr, ptr %4, align 4
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr i16, ptr %27, i32 5
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr i8, ptr %26, i32 %30
  %32 = load i8, ptr %12, align 2
  %33 = icmp eq i8 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %25) #17, !srcloc !12
  br label %37

35:                                               ; preds = %20
  %36 = trunc i32 %25 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %31, i16 %36) #17, !srcloc !25
  br label %37

37:                                               ; preds = %35, %34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl011_startup(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = alloca %struct.dma_cap_mask_t, align 4
  %6 = alloca %struct.dma_slave_config, align 4
  %7 = alloca %struct.dma_slave_caps, align 4
  %8 = alloca i32, align 4
  %9 = tail call fastcc i32 @pl011_hwinit(ptr noundef %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %423

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i16, ptr %17, i32 10
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %15, i32 %20
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %13) #17, !srcloc !12
  br label %28

26:                                               ; preds = %11
  %27 = trunc i32 %13 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %27) #17, !srcloc !25
  br label %28

28:                                               ; preds = %26, %25
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @request_threaded_irq(i32 noundef %30, ptr noundef nonnull @pl011_int, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.5, ptr noundef %0) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %423

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.vendor_data, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %14, align 4
  %39 = load ptr, ptr %16, align 4
  %40 = getelementptr i16, ptr %39, i32 9
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = getelementptr i8, ptr %38, i32 %42
  %44 = load i8, ptr %22, align 2
  %45 = icmp eq i8 %44, 3
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %37) #17, !srcloc !12
  br label %49

47:                                               ; preds = %33
  %48 = trunc i32 %37 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %43, i16 %48) #17, !srcloc !25
  br label %49

49:                                               ; preds = %47, %46
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #17
  %50 = load ptr, ptr %14, align 4
  %51 = load ptr, ptr %16, align 4
  %52 = getelementptr i16, ptr %51, i32 8
  %53 = load i16, ptr %52, align 2
  %54 = zext i16 %53 to i32
  %55 = getelementptr i8, ptr %50, i32 %54
  %56 = load i8, ptr %22, align 2
  %57 = icmp eq i8 %56, 3
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #17, !srcloc !8
  br label %63

60:                                               ; preds = %49
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %55) #17, !srcloc !26
  %62 = zext i16 %61 to i32
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi i32 [ %59, %58 ], [ %62, %60 ]
  %65 = and i32 %64, 3072
  %66 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 769, i32 513
  %71 = or i32 %70, %65
  %72 = load ptr, ptr %14, align 4
  %73 = load ptr, ptr %16, align 4
  %74 = getelementptr i16, ptr %73, i32 8
  %75 = load i16, ptr %74, align 2
  %76 = zext i16 %75 to i32
  %77 = getelementptr i8, ptr %72, i32 %76
  %78 = load i8, ptr %22, align 2
  %79 = icmp eq i8 %78, 3
  br i1 %79, label %80, label %81

80:                                               ; preds = %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %71) #17, !srcloc !12
  br label %83

81:                                               ; preds = %63
  %82 = trunc i32 %71 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %77, i16 %82) #17, !srcloc !25
  br label %83

83:                                               ; preds = %81, %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  %84 = load i16, ptr %0, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !30
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !32
  %86 = load ptr, ptr %14, align 4
  %87 = load ptr, ptr %16, align 4
  %88 = getelementptr i16, ptr %87, i32 3
  %89 = load i16, ptr %88, align 2
  %90 = zext i16 %89 to i32
  %91 = getelementptr i8, ptr %86, i32 %90
  %92 = load i8, ptr %22, align 2
  %93 = icmp eq i8 %92, 3
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #17, !srcloc !8
  br label %99

96:                                               ; preds = %83
  %97 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %91) #17, !srcloc !26
  %98 = zext i16 %97 to i32
  br label %99

99:                                               ; preds = %96, %94
  %100 = phi i32 [ %95, %94 ], [ %98, %96 ]
  %101 = and i32 %100, 7
  %102 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 6
  store i32 %101, ptr %102, align 4
  %103 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 16
  %104 = load i8, ptr %103, align 4, !range !27
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %279

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 7
  %110 = load ptr, ptr %109, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #17
  %111 = getelementptr inbounds i8, ptr %4, i32 36
  store i32 0, ptr %111, align 4, !annotation !24
  store i32 1, ptr %4, align 4
  %112 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 1
  store i32 0, ptr %112, align 4
  %113 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 2
  %114 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %115 = load i32, ptr %114, align 4
  %116 = load ptr, ptr %16, align 4
  %117 = load i16, ptr %116, align 2
  %118 = zext i16 %117 to i32
  %119 = add i32 %115, %118
  store i32 %119, ptr %113, align 4
  %120 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 3
  store i32 0, ptr %120, align 4
  %121 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  store i32 1, ptr %121, align 4
  %122 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 5
  store i32 0, ptr %122, align 4
  %123 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 6
  %124 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 7
  %125 = load i32, ptr %124, align 4
  %126 = lshr i32 %125, 1
  store i32 %126, ptr %123, align 4
  %127 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 7
  store i32 0, ptr %127, align 4
  %128 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 8
  store i32 0, ptr %128, align 4
  %129 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 10
  store ptr null, ptr %129, align 4
  %130 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 11
  store i32 0, ptr %130, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !24
  store i8 1, ptr %103, align 4
  %131 = tail call ptr @dma_request_chan(ptr noundef %108, ptr noundef nonnull @.str.20) #17
  %132 = icmp ugt ptr %131, inttoptr (i32 -4096 to ptr)
  br i1 %132, label %133, label %151

133:                                              ; preds = %106
  %134 = icmp eq ptr %131, inttoptr (i32 -517 to ptr)
  br i1 %134, label %135, label %136

135:                                              ; preds = %133
  store i8 0, ptr %103, align 4
  br label %278

136:                                              ; preds = %133
  %137 = icmp eq ptr %110, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %136
  %139 = load ptr, ptr %110, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %138, %136
  %142 = load ptr, ptr %107, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %142, ptr noundef nonnull @.str.21) #18
  br label %278

143:                                              ; preds = %138
  store i32 0, ptr %5, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %5) #17
  %144 = load ptr, ptr %110, align 4
  %145 = getelementptr inbounds %struct.amba_pl011_data, ptr %110, i32 0, i32 2
  %146 = load ptr, ptr %145, align 4
  %147 = call ptr @__dma_request_channel(ptr noundef nonnull %5, ptr noundef %144, ptr noundef %146, ptr noundef null) #17
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load ptr, ptr %107, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.22) #18
  br label %278

151:                                              ; preds = %143, %106
  %152 = phi ptr [ %147, %143 ], [ %131, %106 ]
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.dma_device, ptr %153, i32 0, i32 44
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %151
  %158 = call i32 %155(ptr noundef %152, ptr noundef nonnull %4) #17
  br label %159

159:                                              ; preds = %157, %151
  %160 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15
  store ptr %152, ptr %160, align 4
  %161 = load ptr, ptr %107, align 4
  %162 = getelementptr inbounds %struct.dma_chan, ptr %152, i32 0, i32 5
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.dma_chan_dev, ptr %163, i32 0, i32 1, i32 3
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %159
  %168 = getelementptr inbounds %struct.dma_chan_dev, ptr %163, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  br label %170

170:                                              ; preds = %167, %159
  %171 = phi ptr [ %169, %167 ], [ %165, %159 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %161, ptr noundef nonnull @.str.23, ptr noundef %171) #18
  %172 = call ptr @dma_request_chan(ptr noundef %108, ptr noundef nonnull @.str.24) #17
  %173 = icmp ugt ptr %172, inttoptr (i32 -4096 to ptr)
  %174 = icmp eq ptr %172, null
  %175 = or i1 %173, %174
  %176 = icmp ne ptr %110, null
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %178, label %188

178:                                              ; preds = %170
  %179 = getelementptr inbounds %struct.amba_pl011_data, ptr %110, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %278, label %182

182:                                              ; preds = %178
  %183 = load ptr, ptr %110, align 4
  %184 = call ptr @__dma_request_channel(ptr noundef nonnull %5, ptr noundef %183, ptr noundef nonnull %180, ptr noundef null) #17
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load ptr, ptr %107, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %187, ptr noundef nonnull @.str.25) #18
  br label %278

188:                                              ; preds = %170
  br i1 %175, label %278, label %189

189:                                              ; preds = %188, %182
  %190 = phi ptr [ %172, %188 ], [ %184, %182 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #17
  %191 = getelementptr inbounds i8, ptr %6, i32 36
  store i32 0, ptr %191, align 4, !annotation !24
  store i32 2, ptr %6, align 4
  %192 = getelementptr inbounds %struct.dma_slave_config, ptr %6, i32 0, i32 1
  %193 = load i32, ptr %114, align 4
  %194 = load ptr, ptr %16, align 4
  %195 = load i16, ptr %194, align 2
  %196 = zext i16 %195 to i32
  %197 = add i32 %193, %196
  store i32 %197, ptr %192, align 4
  %198 = getelementptr inbounds %struct.dma_slave_config, ptr %6, i32 0, i32 2
  store i32 0, ptr %198, align 4
  %199 = getelementptr inbounds %struct.dma_slave_config, ptr %6, i32 0, i32 3
  store i32 1, ptr %199, align 4
  %200 = getelementptr inbounds %struct.dma_slave_config, ptr %6, i32 0, i32 4
  store i32 0, ptr %200, align 4
  %201 = getelementptr inbounds %struct.dma_slave_config, ptr %6, i32 0, i32 5
  %202 = load i32, ptr %124, align 4
  %203 = lshr i32 %202, 2
  store i32 %203, ptr %201, align 4
  %204 = getelementptr inbounds %struct.dma_slave_config, ptr %6, i32 0, i32 6
  %205 = getelementptr inbounds %struct.dma_slave_config, ptr %6, i32 0, i32 10
  store ptr null, ptr %205, align 4
  %206 = getelementptr inbounds %struct.dma_slave_config, ptr %6, i32 0, i32 11
  store i32 0, ptr %206, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(13) %204, i8 0, i64 13, i1 false) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %7, i8 0, i32 36, i1 false) #17, !annotation !24
  %207 = call i32 @dma_get_slave_caps(ptr noundef nonnull %190, ptr noundef nonnull %7) #17
  %208 = icmp eq i32 %207, 0
  %209 = getelementptr inbounds %struct.dma_slave_caps, ptr %7, i32 0, i32 9
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %210, 0
  %212 = select i1 %208, i1 %211, i1 false
  br i1 %212, label %213, label %215

213:                                              ; preds = %189
  call void @dma_release_channel(ptr noundef nonnull %190) #17
  %214 = load ptr, ptr %107, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %214, ptr noundef nonnull @.str.26) #18
  br label %277

215:                                              ; preds = %189
  %216 = load ptr, ptr %190, align 4
  %217 = getelementptr inbounds %struct.dma_device, ptr %216, i32 0, i32 44
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %222, label %220

220:                                              ; preds = %215
  %221 = call i32 %218(ptr noundef nonnull %190, ptr noundef nonnull %6) #17
  br label %222

222:                                              ; preds = %220, %215
  %223 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14
  store ptr %190, ptr %223, align 4
  %224 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 10
  store i8 0, ptr %224, align 4
  br i1 %176, label %225, label %243

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.amba_pl011_data, ptr %110, i32 0, i32 3
  %227 = load i8, ptr %226, align 4, !range !27
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %264, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.amba_pl011_data, ptr %110, i32 0, i32 4
  %231 = load i32, ptr %230, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  store i8 1, ptr %224, align 4
  br label %234

234:                                              ; preds = %233, %229
  %235 = phi i32 [ 100, %233 ], [ %231, %229 ]
  %236 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 11
  store i32 %235, ptr %236, align 4
  %237 = getelementptr inbounds %struct.amba_pl011_data, ptr %110, i32 0, i32 5
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq i32 %238, 0
  %240 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 12
  br i1 %239, label %242, label %241

241:                                              ; preds = %234
  store i32 %238, ptr %240, align 4
  br label %264

242:                                              ; preds = %234
  store i32 3000, ptr %240, align 4
  br label %264

243:                                              ; preds = %222
  %244 = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 25
  %245 = load ptr, ptr %244, align 8
  %246 = icmp eq ptr %245, null
  br i1 %246, label %264, label %247

247:                                              ; preds = %243
  %248 = call ptr @of_find_property(ptr noundef nonnull %245, ptr noundef nonnull @.str.27, ptr noundef null) #17
  %249 = icmp ne ptr %248, null
  %250 = zext i1 %249 to i8
  store i8 %250, ptr %224, align 4
  br i1 %249, label %251, label %264

251:                                              ; preds = %247
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  store i32 0, ptr %8, align 4, !annotation !24
  %252 = load ptr, ptr %244, align 8
  %253 = call i32 @of_property_read_variable_u32_array(ptr noundef %252, ptr noundef nonnull @.str.28, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #17
  %254 = icmp sgt i32 %253, -1
  %255 = load i32, ptr %8, align 4
  %256 = select i1 %254, i32 %255, i32 100
  %257 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 11
  store i32 %256, ptr %257, align 4
  %258 = load ptr, ptr %244, align 8
  %259 = call i32 @of_property_read_variable_u32_array(ptr noundef %258, ptr noundef nonnull @.str.29, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #17
  %260 = icmp sgt i32 %259, -1
  %261 = load i32, ptr %8, align 4
  %262 = select i1 %260, i32 %261, i32 3000
  %263 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 12
  store i32 %262, ptr %263, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  br label %264

264:                                              ; preds = %251, %247, %243, %242, %241, %225
  %265 = load ptr, ptr %107, align 4
  %266 = load ptr, ptr %223, align 4
  %267 = getelementptr inbounds %struct.dma_chan, ptr %266, i32 0, i32 5
  %268 = load ptr, ptr %267, align 4
  %269 = getelementptr inbounds %struct.dma_chan_dev, ptr %268, i32 0, i32 1, i32 3
  %270 = load ptr, ptr %269, align 4
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %264
  %273 = getelementptr inbounds %struct.dma_chan_dev, ptr %268, i32 0, i32 1
  %274 = load ptr, ptr %273, align 4
  br label %275

275:                                              ; preds = %272, %264
  %276 = phi ptr [ %274, %272 ], [ %270, %264 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %265, ptr noundef nonnull @.str.30, ptr noundef %276) #18
  br label %277

277:                                              ; preds = %275, %213
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #17
  br label %278

278:                                              ; preds = %277, %188, %186, %178, %149, %141, %135
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #17
  br label %279

279:                                              ; preds = %278, %99
  %280 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %422, label %283

283:                                              ; preds = %279
  %284 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 2, i32 12), align 4
  %285 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %284, i32 noundef 3265, i32 noundef 4096) #19
  %286 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 2
  store ptr %285, ptr %286, align 4
  %287 = icmp eq ptr %285, null
  br i1 %287, label %288, label %294

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %290 = load ptr, ptr %289, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %290, ptr noundef nonnull @.str.16) #18
  %291 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 7
  %292 = load i32, ptr %291, align 4
  %293 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  store i32 %292, ptr %293, align 4
  br label %422

294:                                              ; preds = %283
  %295 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 1
  call void @sg_init_one(ptr noundef %295, ptr noundef nonnull %285, i32 noundef 4096) #17
  %296 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  store i32 4096, ptr %296, align 4
  %297 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 12
  store i8 1, ptr %297, align 4
  %298 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14
  %299 = load ptr, ptr %298, align 4
  %300 = icmp eq ptr %299, null
  br i1 %300, label %372, label %301

301:                                              ; preds = %294
  %302 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !annotation !24
  %303 = load ptr, ptr %299, align 4
  %304 = getelementptr inbounds %struct.dma_device, ptr %303, i32 0, i32 15
  %305 = load ptr, ptr %304, align 4
  %306 = call ptr @dma_alloc_attrs(ptr noundef %305, i32 noundef 4096, ptr noundef nonnull %3, i32 noundef 3264, i32 noundef 0) #17
  %307 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 3, i32 1
  store ptr %306, ptr %307, align 4
  %308 = icmp eq ptr %306, null
  br i1 %308, label %320, label %309

309:                                              ; preds = %301
  call void @sg_init_table(ptr noundef %302, i32 noundef 1) #17
  %310 = load ptr, ptr @mem_map, align 4
  %311 = load i32, ptr %3, align 4
  %312 = lshr i32 %311, 12
  %313 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %314 = sub i32 %312, %313
  %315 = getelementptr %struct.page, ptr %310, i32 %314
  %316 = ptrtoint ptr %315 to i32
  %317 = and i32 %316, 3
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %323, label %319, !prof !33

319:                                              ; preds = %309
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #17, !srcloc !44
  unreachable

320:                                              ; preds = %301
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  %321 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %322 = load ptr, ptr %321, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %322, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef -12) #18
  br label %372

323:                                              ; preds = %309
  %324 = and i32 %311, 4095
  %325 = load i32, ptr %302, align 4
  %326 = and i32 %325, 3
  %327 = or i32 %326, %316
  store i32 %327, ptr %302, align 4
  %328 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 3, i32 0, i32 1
  store i32 %324, ptr %328, align 4
  %329 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 3, i32 0, i32 2
  store i32 4096, ptr %329, align 4
  %330 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 3, i32 0, i32 3
  store i32 %311, ptr %330, align 4
  %331 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 3, i32 0, i32 4
  store i32 4096, ptr %331, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  %332 = load ptr, ptr %298, align 4
  %333 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !annotation !24
  %334 = load ptr, ptr %332, align 4
  %335 = getelementptr inbounds %struct.dma_device, ptr %334, i32 0, i32 15
  %336 = load ptr, ptr %335, align 4
  %337 = call ptr @dma_alloc_attrs(ptr noundef %336, i32 noundef 4096, ptr noundef nonnull %2, i32 noundef 3264, i32 noundef 0) #17
  %338 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 4, i32 1
  store ptr %337, ptr %338, align 4
  %339 = icmp eq ptr %337, null
  br i1 %339, label %351, label %340

340:                                              ; preds = %323
  call void @sg_init_table(ptr noundef %333, i32 noundef 1) #17
  %341 = load ptr, ptr @mem_map, align 4
  %342 = load i32, ptr %2, align 4
  %343 = lshr i32 %342, 12
  %344 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %345 = sub i32 %343, %344
  %346 = getelementptr %struct.page, ptr %341, i32 %345
  %347 = ptrtoint ptr %346 to i32
  %348 = and i32 %347, 3
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %362, label %350, !prof !33

350:                                              ; preds = %340
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #17, !srcloc !44
  unreachable

351:                                              ; preds = %323
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  %352 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %353 = load ptr, ptr %352, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %353, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, i32 noundef -12) #18
  %354 = load ptr, ptr %307, align 4
  %355 = icmp eq ptr %354, null
  br i1 %355, label %372, label %356

356:                                              ; preds = %351
  %357 = load ptr, ptr %298, align 4
  %358 = load ptr, ptr %357, align 4
  %359 = getelementptr inbounds %struct.dma_device, ptr %358, i32 0, i32 15
  %360 = load ptr, ptr %359, align 4
  %361 = load i32, ptr %330, align 4
  call void @dma_free_attrs(ptr noundef %360, i32 noundef 4096, ptr noundef nonnull %354, i32 noundef %361, i32 noundef 0) #17
  br label %372

362:                                              ; preds = %340
  %363 = and i32 %342, 4095
  %364 = load i32, ptr %333, align 4
  %365 = and i32 %364, 3
  %366 = or i32 %365, %347
  store i32 %366, ptr %333, align 4
  %367 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 4, i32 0, i32 1
  store i32 %363, ptr %367, align 4
  %368 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 4, i32 0, i32 2
  store i32 4096, ptr %368, align 4
  %369 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 4, i32 0, i32 3
  store i32 %342, ptr %369, align 4
  %370 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 4, i32 0, i32 4
  store i32 4096, ptr %370, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  %371 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 13
  store i8 1, ptr %371, align 1
  br label %372

372:                                              ; preds = %362, %356, %351, %320, %294
  %373 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 4
  %374 = load i32, ptr %373, align 4
  %375 = or i32 %374, 4
  store i32 %375, ptr %373, align 4
  %376 = load ptr, ptr %14, align 4
  %377 = load ptr, ptr %16, align 4
  %378 = getelementptr i16, ptr %377, i32 14
  %379 = load i16, ptr %378, align 2
  %380 = zext i16 %379 to i32
  %381 = getelementptr i8, ptr %376, i32 %380
  %382 = load i8, ptr %22, align 2
  %383 = icmp eq i8 %382, 3
  br i1 %383, label %384, label %385

384:                                              ; preds = %372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %381, i32 %375) #17, !srcloc !12
  br label %387

385:                                              ; preds = %372
  %386 = trunc i32 %375 to i16
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %381, i16 %386) #17, !srcloc !25
  br label %387

387:                                              ; preds = %385, %384
  %388 = load ptr, ptr %34, align 4
  %389 = getelementptr inbounds %struct.vendor_data, ptr %388, i32 0, i32 9
  %390 = load i8, ptr %389, align 2, !range !27
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %403, label %392

392:                                              ; preds = %387
  %393 = load ptr, ptr %14, align 4
  %394 = load ptr, ptr %16, align 4
  %395 = getelementptr i16, ptr %394, i32 1
  %396 = load i16, ptr %395, align 2
  %397 = zext i16 %396 to i32
  %398 = getelementptr i8, ptr %393, i32 %397
  %399 = load i8, ptr %22, align 2
  %400 = icmp eq i8 %399, 3
  br i1 %400, label %401, label %402

401:                                              ; preds = %392
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %398, i32 36) #17, !srcloc !12
  br label %403

402:                                              ; preds = %392
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %398, i16 36) #17, !srcloc !25
  br label %403

403:                                              ; preds = %402, %401, %387
  %404 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 13
  %405 = load i8, ptr %404, align 1, !range !27
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %422, label %407

407:                                              ; preds = %403
  %408 = call fastcc i32 @pl011_dma_rx_trigger_dma(ptr noundef %0) #17
  %409 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 11
  %410 = load i32, ptr %409, align 4
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %422, label %412

412:                                              ; preds = %407
  %413 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 7
  call void @init_timer_key(ptr noundef %413, ptr noundef nonnull @pl011_dma_rx_poll, i32 noundef 0, ptr noundef null, ptr noundef null) #17
  %414 = load volatile i32, ptr @jiffies, align 64
  %415 = load i32, ptr %409, align 4
  %416 = call i32 @__msecs_to_jiffies(i32 noundef %415) #17
  %417 = add i32 %416, %414
  %418 = call i32 @mod_timer(ptr noundef %413, i32 noundef %417) #17
  %419 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 8
  store i32 4096, ptr %419, align 4
  %420 = load volatile i32, ptr @jiffies, align 64
  %421 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 9
  store i32 %420, ptr %421, align 4
  br label %422

422:                                              ; preds = %412, %407, %403, %288, %279
  call fastcc void @pl011_enable_interrupts(ptr noundef %0)
  br label %427

423:                                              ; preds = %28, %1
  %424 = phi i32 [ %9, %1 ], [ %31, %28 ]
  %425 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 2
  %426 = load ptr, ptr %425, align 4
  tail call void @clk_disable(ptr noundef %426) #17
  tail call void @clk_unprepare(ptr noundef %426) #17
  br label %427

427:                                              ; preds = %423, %422
  %428 = phi i32 [ %424, %423 ], [ 0, %422 ]
  ret i32 %428
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_shutdown(ptr noundef %0) #3 {
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #17
  %2 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i16, ptr %6, i32 10
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #17, !srcloc !12
  br label %16

15:                                               ; preds = %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %10, i16 0) #17, !srcloc !25
  br label %16

16:                                               ; preds = %15, %14
  %17 = load ptr, ptr %3, align 4
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i16, ptr %18, i32 13
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %17, i32 %21
  %23 = load i8, ptr %11, align 2
  %24 = icmp eq i8 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 65535) #17, !srcloc !12
  br label %27

26:                                               ; preds = %16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 -1) #17, !srcloc !25
  br label %27

27:                                               ; preds = %26, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  %28 = load i16, ptr %0, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !30
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !32
  %30 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 12
  %31 = load i8, ptr %30, align 4, !range !27
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 13
  %35 = load i8, ptr %34, align 1, !range !27
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %146, label %37

37:                                               ; preds = %33, %27
  %38 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 3
  br label %39

39:                                               ; preds = %60, %37
  %40 = load ptr, ptr %3, align 4
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr i16, ptr %41, i32 3
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i32
  %45 = getelementptr i8, ptr %40, i32 %44
  %46 = load i8, ptr %11, align 2
  %47 = icmp eq i8 %46, 3
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #17, !srcloc !8
  br label %53

50:                                               ; preds = %39
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %45) #17, !srcloc !26
  %52 = zext i16 %51 to i32
  br label %53

53:                                               ; preds = %50, %48
  %54 = phi i32 [ %49, %48 ], [ %52, %50 ]
  %55 = load ptr, ptr %38, align 4
  %56 = getelementptr inbounds %struct.vendor_data, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, %54
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !45
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !46
  br label %39

61:                                               ; preds = %53
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #17
  %62 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, -8
  store i32 %64, ptr %62, align 4
  %65 = load ptr, ptr %3, align 4
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr i16, ptr %66, i32 14
  %68 = load i16, ptr %67, align 2
  %69 = zext i16 %68 to i32
  %70 = getelementptr i8, ptr %65, i32 %69
  %71 = load i8, ptr %11, align 2
  %72 = icmp eq i8 %71, 3
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %64) #17, !srcloc !12
  br label %76

74:                                               ; preds = %61
  %75 = trunc i32 %64 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %70, i16 %75) #17, !srcloc !25
  br label %76

76:                                               ; preds = %74, %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  %77 = load i16, ptr %0, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !30
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !32
  %79 = load i8, ptr %30, align 4, !range !27
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %103, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.dma_device, ptr %84, i32 0, i32 47
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %81
  %89 = tail call i32 %86(ptr noundef %83) #17
  br label %90

90:                                               ; preds = %88, %81
  %91 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 3
  %92 = load i8, ptr %91, align 4, !range !27
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %82, align 4
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.dma_device, ptr %96, i32 0, i32 15
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %98, ptr noundef %99, i32 noundef 1, i32 noundef 1, i32 noundef 0) #17
  store i8 0, ptr %91, align 4
  br label %100

100:                                              ; preds = %94, %90
  %101 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 2
  %102 = load ptr, ptr %101, align 4
  tail call void @kfree(ptr noundef %102) #17
  store i8 0, ptr %30, align 4
  br label %103

103:                                              ; preds = %100, %76
  %104 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 13
  %105 = load i8, ptr %104, align 1, !range !27
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %146, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14
  %109 = load ptr, ptr %108, align 4
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.dma_device, ptr %110, i32 0, i32 47
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %107
  %115 = tail call i32 %112(ptr noundef %109) #17
  br label %116

116:                                              ; preds = %114, %107
  %117 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 3, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %108, align 4
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.dma_device, ptr %122, i32 0, i32 15
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 3, i32 0, i32 3
  %126 = load i32, ptr %125, align 4
  tail call void @dma_free_attrs(ptr noundef %124, i32 noundef 4096, ptr noundef nonnull %118, i32 noundef %126, i32 noundef 0) #17
  br label %127

127:                                              ; preds = %120, %116
  %128 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 4, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %138, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr %108, align 4
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.dma_device, ptr %133, i32 0, i32 15
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 4, i32 0, i32 3
  %137 = load i32, ptr %136, align 4
  tail call void @dma_free_attrs(ptr noundef %135, i32 noundef 4096, ptr noundef nonnull %129, i32 noundef %137, i32 noundef 0) #17
  br label %138

138:                                              ; preds = %131, %127
  %139 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 11
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 7
  %144 = tail call i32 @del_timer_sync(ptr noundef %143) #17
  br label %145

145:                                              ; preds = %142, %138
  store i8 0, ptr %104, align 1
  br label %146

146:                                              ; preds = %145, %103, %33
  %147 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 10
  %153 = load i8, ptr %152, align 4, !range !27
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %151
  tail call fastcc void @pl011_rs485_tx_stop(ptr noundef %0)
  br label %156

156:                                              ; preds = %155, %151, %146
  %157 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %158 = load i32, ptr %157, align 4
  %159 = tail call ptr @free_irq(i32 noundef %158, ptr noundef %0) #17
  %160 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 34
  %161 = load i32, ptr %160, align 4
  %162 = and i32 %161, -13
  store i32 %162, ptr %160, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #17
  %163 = load ptr, ptr %3, align 4
  %164 = load ptr, ptr %5, align 4
  %165 = getelementptr i16, ptr %164, i32 8
  %166 = load i16, ptr %165, align 2
  %167 = zext i16 %166 to i32
  %168 = getelementptr i8, ptr %163, i32 %167
  %169 = load i8, ptr %11, align 2
  %170 = icmp eq i8 %169, 3
  br i1 %170, label %171, label %173

171:                                              ; preds = %156
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #17, !srcloc !8
  br label %176

173:                                              ; preds = %156
  %174 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %168) #17, !srcloc !26
  %175 = zext i16 %174 to i32
  br label %176

176:                                              ; preds = %173, %171
  %177 = phi i32 [ %172, %171 ], [ %175, %173 ]
  %178 = and i32 %177, 3072
  %179 = or i32 %178, 257
  %180 = load ptr, ptr %3, align 4
  %181 = load ptr, ptr %5, align 4
  %182 = getelementptr i16, ptr %181, i32 8
  %183 = load i16, ptr %182, align 2
  %184 = zext i16 %183 to i32
  %185 = getelementptr i8, ptr %180, i32 %184
  %186 = load i8, ptr %11, align 2
  %187 = icmp eq i8 %186, 3
  br i1 %187, label %188, label %189

188:                                              ; preds = %176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %179) #17, !srcloc !12
  br label %191

189:                                              ; preds = %176
  %190 = trunc i32 %179 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %185, i16 %190) #17, !srcloc !25
  br label %191

191:                                              ; preds = %189, %188
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  %192 = load i16, ptr %0, align 4
  %193 = add i16 %192, 1
  store i16 %193, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !30
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !32
  %194 = load ptr, ptr %3, align 4
  %195 = load ptr, ptr %5, align 4
  %196 = getelementptr i16, ptr %195, i32 4
  %197 = load i16, ptr %196, align 2
  %198 = zext i16 %197 to i32
  %199 = getelementptr i8, ptr %194, i32 %198
  %200 = load i8, ptr %11, align 2
  %201 = icmp eq i8 %200, 3
  br i1 %201, label %202, label %204

202:                                              ; preds = %191
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %199) #17, !srcloc !8
  br label %207

204:                                              ; preds = %191
  %205 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %199) #17, !srcloc !26
  %206 = zext i16 %205 to i32
  br label %207

207:                                              ; preds = %204, %202
  %208 = phi i32 [ %203, %202 ], [ %206, %204 ]
  %209 = and i32 %208, -18
  %210 = load ptr, ptr %3, align 4
  %211 = load ptr, ptr %5, align 4
  %212 = getelementptr i16, ptr %211, i32 4
  %213 = load i16, ptr %212, align 2
  %214 = zext i16 %213 to i32
  %215 = getelementptr i8, ptr %210, i32 %214
  %216 = load i8, ptr %11, align 2
  %217 = icmp eq i8 %216, 3
  br i1 %217, label %218, label %219

218:                                              ; preds = %207
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 %209) #17, !srcloc !12
  br label %221

219:                                              ; preds = %207
  %220 = trunc i32 %209 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %215, i16 %220) #17, !srcloc !25
  br label %221

221:                                              ; preds = %219, %218
  %222 = load ptr, ptr %5, align 4
  %223 = getelementptr i16, ptr %222, i32 4
  %224 = load i16, ptr %223, align 2
  %225 = getelementptr i16, ptr %222, i32 5
  %226 = load i16, ptr %225, align 2
  %227 = icmp eq i16 %224, %226
  br i1 %227, label %253, label %228

228:                                              ; preds = %221
  %229 = load ptr, ptr %3, align 4
  %230 = zext i16 %226 to i32
  %231 = getelementptr i8, ptr %229, i32 %230
  %232 = load i8, ptr %11, align 2
  %233 = icmp eq i8 %232, 3
  br i1 %233, label %234, label %236

234:                                              ; preds = %228
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %231) #17, !srcloc !8
  br label %239

236:                                              ; preds = %228
  %237 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %231) #17, !srcloc !26
  %238 = zext i16 %237 to i32
  br label %239

239:                                              ; preds = %236, %234
  %240 = phi i32 [ %235, %234 ], [ %238, %236 ]
  %241 = and i32 %240, -18
  %242 = load ptr, ptr %3, align 4
  %243 = load ptr, ptr %5, align 4
  %244 = getelementptr i16, ptr %243, i32 5
  %245 = load i16, ptr %244, align 2
  %246 = zext i16 %245 to i32
  %247 = getelementptr i8, ptr %242, i32 %246
  %248 = load i8, ptr %11, align 2
  %249 = icmp eq i8 %248, 3
  br i1 %249, label %250, label %251

250:                                              ; preds = %239
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 %241) #17, !srcloc !12
  br label %253

251:                                              ; preds = %239
  %252 = trunc i32 %241 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %247, i16 %252) #17, !srcloc !25
  br label %253

253:                                              ; preds = %251, %250, %221
  %254 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 2
  %255 = load ptr, ptr %254, align 4
  tail call void @clk_disable(ptr noundef %255) #17
  tail call void @clk_unprepare(ptr noundef %255) #17
  %256 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %257 = load ptr, ptr %256, align 4
  %258 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %257) #17
  %259 = load ptr, ptr %256, align 4
  %260 = getelementptr inbounds %struct.device, ptr %259, i32 0, i32 7
  %261 = load ptr, ptr %260, align 4
  %262 = icmp eq ptr %261, null
  br i1 %262, label %268, label %263

263:                                              ; preds = %253
  %264 = getelementptr inbounds %struct.amba_pl011_data, ptr %261, i32 0, i32 7
  %265 = load ptr, ptr %264, align 4
  %266 = icmp eq ptr %265, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %263
  tail call void %265() #17
  br label %268

268:                                              ; preds = %267, %263, %253
  %269 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 39
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr inbounds %struct.uart_ops, ptr %270, i32 0, i32 13
  %272 = load ptr, ptr %271, align 4
  %273 = icmp eq ptr %272, null
  br i1 %273, label %275, label %274

274:                                              ; preds = %268
  tail call void %272(ptr noundef %0) #17
  br label %275

275:                                              ; preds = %274, %268
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_dma_flush_buffer(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 12
  %3 = load i8, ptr %2, align 4, !range !27
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = tail call i32 %10(ptr noundef %7) #17
  br label %14

14:                                               ; preds = %12, %5
  %15 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 3
  %16 = load i8, ptr %15, align 4, !range !27
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %6, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 15, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %22, ptr noundef %23, i32 noundef 1, i32 noundef 1, i32 noundef 0) #17
  store i8 0, ptr %15, align 4
  %24 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, -3
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i16, ptr %30, i32 14
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr i8, ptr %28, i32 %33
  %35 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %36 = load i8, ptr %35, align 2
  %37 = icmp eq i8 %36, 3
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %26) #17, !srcloc !12
  br label %41

39:                                               ; preds = %18
  %40 = trunc i32 %26 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %34, i16 %40) #17, !srcloc !25
  br label %41

41:                                               ; preds = %39, %38, %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vendor_data, ptr %5, i32 0, i32 8
  %7 = load i8, ptr %6, align 1, !range !27
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %8, i32 4, i32 3
  %12 = lshr i32 %10, %11
  %13 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %12) #17
  %14 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 10
  %15 = load i8, ptr %14, align 4, !range !27
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = add i32 %13, 9999999
  %19 = udiv i32 %18, %13
  %20 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 14, i32 11
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, ptr %9, align 4
  %23 = lshr i32 %22, 4
  %24 = icmp ugt i32 %13, %23
  %25 = lshr i32 %13, 1
  %26 = select i1 %24, i32 3, i32 2
  %27 = shl i32 %22, %26
  %28 = add i32 %27, %25
  %29 = udiv i32 %28, %13
  %30 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 48
  switch i32 %32, label %35 [
    i32 0, label %36
    i32 16, label %33
    i32 32, label %34
  ]

33:                                               ; preds = %21
  br label %36

34:                                               ; preds = %21
  br label %36

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35, %34, %33, %21
  %37 = phi i32 [ 96, %35 ], [ 64, %34 ], [ 32, %33 ], [ %32, %21 ]
  %38 = lshr i32 %31, 3
  %39 = and i32 %38, 8
  %40 = or i32 %37, %39
  %41 = and i32 %31, 256
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %36
  %44 = and i32 %31, 512
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 6, i32 2
  %47 = lshr i32 %31, 23
  %48 = and i32 %47, 128
  %49 = or i32 %46, %48
  %50 = or i32 %49, %40
  br label %51

51:                                               ; preds = %43, %36
  %52 = phi i32 [ %40, %36 ], [ %50, %43 ]
  %53 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %54, 1
  %56 = or i32 %52, 16
  %57 = select i1 %55, i32 %56, i32 %52
  %58 = tail call zeroext i8 @tty_get_frame_size(i32 noundef %31) #17
  %59 = zext i8 %58 to i32
  %60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #17
  %61 = load i32, ptr %30, align 4
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %61, i32 noundef %13) #17
  %62 = mul nuw nsw i32 %59, 1000000
  %63 = udiv i32 %62, %13
  %64 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 11
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 2303, ptr %65, align 4
  %66 = load i32, ptr %1, align 4
  %67 = and i32 %66, 16
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i32 2303, i32 3071
  store i32 %69, ptr %65, align 4
  %70 = load i32, ptr %1, align 4
  %71 = and i32 %70, 11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %51
  %74 = or i32 %69, 1024
  store i32 %74, ptr %65, align 4
  br label %75

75:                                               ; preds = %73, %51
  %76 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 0, ptr %76, align 4
  %77 = load i32, ptr %1, align 4
  %78 = and i32 %77, 4
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i32 0, i32 768
  store i32 %80, ptr %76, align 4
  %81 = load i32, ptr %1, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %75
  %85 = or i32 %80, 1024
  store i32 %85, ptr %76, align 4
  %86 = load i32, ptr %1, align 4
  %87 = and i32 %86, 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = or i32 %80, 3072
  store i32 %90, ptr %76, align 4
  br label %91

91:                                               ; preds = %89, %84, %75
  %92 = phi i32 [ %85, %84 ], [ %90, %89 ], [ %80, %75 ]
  %93 = load i32, ptr %30, align 4
  %94 = and i32 %93, 128
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = or i32 %92, 65536
  store i32 %97, ptr %76, align 4
  br label %98

98:                                               ; preds = %96, %91
  %99 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 2048
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, ptr %30, align 4
  %105 = and i32 %104, -2147481600
  %106 = icmp eq i32 %105, 2048
  br i1 %106, label %125, label %107

107:                                              ; preds = %103, %98
  %108 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 5
  %109 = load i32, ptr %108, align 4
  %110 = or i32 %109, 15
  store i32 %110, ptr %108, align 4
  %111 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr i16, ptr %114, i32 10
  %116 = load i16, ptr %115, align 2
  %117 = zext i16 %116 to i32
  %118 = getelementptr i8, ptr %112, i32 %117
  %119 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %120 = load i8, ptr %119, align 2
  %121 = icmp eq i8 %120, 3
  br i1 %121, label %122, label %123

122:                                              ; preds = %107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %110) #17, !srcloc !12
  br label %125

123:                                              ; preds = %107
  %124 = trunc i32 %110 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %118, i16 %124) #17, !srcloc !25
  br label %125

125:                                              ; preds = %123, %122, %103
  %126 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = load i32, ptr %30, align 4
  %132 = and i32 %131, 2147483647
  store i32 %132, ptr %30, align 4
  br label %133

133:                                              ; preds = %130, %125
  %134 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.uart_amba_port, ptr %0, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr i16, ptr %137, i32 8
  %139 = load i16, ptr %138, align 2
  %140 = zext i16 %139 to i32
  %141 = getelementptr i8, ptr %135, i32 %140
  %142 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %143 = load i8, ptr %142, align 2
  %144 = icmp eq i8 %143, 3
  br i1 %144, label %145, label %147

145:                                              ; preds = %133
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #17, !srcloc !8
  br label %150

147:                                              ; preds = %133
  %148 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %141) #17, !srcloc !26
  %149 = zext i16 %148 to i32
  br label %150

150:                                              ; preds = %147, %145
  %151 = phi i32 [ %146, %145 ], [ %149, %147 ]
  %152 = load i32, ptr %30, align 4
  %153 = icmp sgt i32 %152, -1
  br i1 %153, label %162, label %154

154:                                              ; preds = %150
  %155 = shl i32 %151, 3
  %156 = and i32 %155, 16384
  %157 = or i32 %151, %156
  %158 = or i32 %157, 32768
  %159 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 34
  %160 = load i32, ptr %159, align 4
  %161 = or i32 %160, 12
  store i32 %161, ptr %159, align 4
  br label %167

162:                                              ; preds = %150
  %163 = and i32 %151, -49153
  %164 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 34
  %165 = load i32, ptr %164, align 4
  %166 = and i32 %165, -13
  store i32 %166, ptr %164, align 4
  br label %167

167:                                              ; preds = %162, %154
  %168 = phi i32 [ %158, %154 ], [ %163, %162 ]
  %169 = load ptr, ptr %4, align 4
  %170 = getelementptr inbounds %struct.vendor_data, ptr %169, i32 0, i32 8
  %171 = load i8, ptr %170, align 1, !range !27
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %192, label %173

173:                                              ; preds = %167
  %174 = load i32, ptr %9, align 4
  %175 = lshr i32 %174, 4
  %176 = icmp ugt i32 %13, %175
  %177 = and i32 %168, -9
  %178 = select i1 %176, i32 8, i32 0
  %179 = or i32 %178, %177
  %180 = add i32 %13, -3000000
  %181 = icmp ult i32 %180, 250000
  %182 = icmp ugt i32 %29, 1
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %184, label %186

184:                                              ; preds = %173
  %185 = add i32 %29, -1
  br label %192

186:                                              ; preds = %173
  %187 = icmp ugt i32 %13, 3250000
  %188 = icmp ugt i32 %29, 2
  %189 = select i1 %187, i1 %188, i1 false
  %190 = add i32 %29, -2
  %191 = select i1 %189, i32 %190, i32 %29
  br label %192

192:                                              ; preds = %186, %184, %167
  %193 = phi i32 [ %179, %184 ], [ %179, %186 ], [ %168, %167 ]
  %194 = phi i32 [ %185, %184 ], [ %191, %186 ], [ %29, %167 ]
  %195 = and i32 %194, 63
  %196 = load ptr, ptr %134, align 4
  %197 = load ptr, ptr %136, align 4
  %198 = getelementptr i16, ptr %197, i32 7
  %199 = load i16, ptr %198, align 2
  %200 = zext i16 %199 to i32
  %201 = getelementptr i8, ptr %196, i32 %200
  %202 = load i8, ptr %142, align 2
  %203 = icmp eq i8 %202, 3
  br i1 %203, label %204, label %205

204:                                              ; preds = %192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %195) #17, !srcloc !12
  br label %207

205:                                              ; preds = %192
  %206 = trunc i32 %195 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %201, i16 %206) #17, !srcloc !25
  br label %207

207:                                              ; preds = %205, %204
  %208 = lshr i32 %194, 6
  %209 = load ptr, ptr %134, align 4
  %210 = load ptr, ptr %136, align 4
  %211 = getelementptr i16, ptr %210, i32 6
  %212 = load i16, ptr %211, align 2
  %213 = zext i16 %212 to i32
  %214 = getelementptr i8, ptr %209, i32 %213
  %215 = load i8, ptr %142, align 2
  %216 = icmp eq i8 %215, 3
  br i1 %216, label %217, label %218

217:                                              ; preds = %207
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %208) #17, !srcloc !12
  br label %220

218:                                              ; preds = %207
  %219 = trunc i32 %208 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %214, i16 %219) #17, !srcloc !25
  br label %220

220:                                              ; preds = %218, %217
  %221 = load ptr, ptr %134, align 4
  %222 = load ptr, ptr %136, align 4
  %223 = getelementptr i16, ptr %222, i32 4
  %224 = load i16, ptr %223, align 2
  %225 = zext i16 %224 to i32
  %226 = getelementptr i8, ptr %221, i32 %225
  %227 = load i8, ptr %142, align 2
  %228 = icmp eq i8 %227, 3
  br i1 %228, label %229, label %230

229:                                              ; preds = %220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %226, i32 %57) #17, !srcloc !12
  br label %232

230:                                              ; preds = %220
  %231 = trunc i32 %57 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %226, i16 %231) #17, !srcloc !25
  br label %232

232:                                              ; preds = %230, %229
  %233 = load ptr, ptr %136, align 4
  %234 = getelementptr i16, ptr %233, i32 4
  %235 = load i16, ptr %234, align 2
  %236 = getelementptr i16, ptr %233, i32 5
  %237 = load i16, ptr %236, align 2
  %238 = icmp eq i16 %235, %237
  br i1 %238, label %268, label %239

239:                                              ; preds = %254, %232
  %240 = phi ptr [ %255, %254 ], [ %233, %232 ]
  %241 = phi i32 [ %252, %254 ], [ 0, %232 ]
  %242 = load ptr, ptr %134, align 4
  %243 = getelementptr i16, ptr %240, i32 12
  %244 = load i16, ptr %243, align 2
  %245 = zext i16 %244 to i32
  %246 = getelementptr i8, ptr %242, i32 %245
  %247 = load i8, ptr %142, align 2
  %248 = icmp eq i8 %247, 3
  br i1 %248, label %249, label %250

249:                                              ; preds = %239
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 255) #17, !srcloc !12
  br label %251

250:                                              ; preds = %239
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %246, i16 255) #17, !srcloc !25
  br label %251

251:                                              ; preds = %250, %249
  %252 = add nuw nsw i32 %241, 1
  %253 = icmp eq i32 %252, 10
  br i1 %253, label %256, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr %136, align 4
  br label %239

256:                                              ; preds = %251
  %257 = load ptr, ptr %134, align 4
  %258 = load ptr, ptr %136, align 4
  %259 = getelementptr i16, ptr %258, i32 5
  %260 = load i16, ptr %259, align 2
  %261 = zext i16 %260 to i32
  %262 = getelementptr i8, ptr %257, i32 %261
  %263 = load i8, ptr %142, align 2
  %264 = icmp eq i8 %263, 3
  br i1 %264, label %265, label %266

265:                                              ; preds = %256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 %57) #17, !srcloc !12
  br label %268

266:                                              ; preds = %256
  %267 = trunc i32 %57 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %262, i16 %267) #17, !srcloc !25
  br label %268

268:                                              ; preds = %266, %265, %232
  %269 = load ptr, ptr %134, align 4
  %270 = load ptr, ptr %136, align 4
  %271 = getelementptr i16, ptr %270, i32 8
  %272 = load i16, ptr %271, align 2
  %273 = zext i16 %272 to i32
  %274 = getelementptr i8, ptr %269, i32 %273
  %275 = load i8, ptr %142, align 2
  %276 = icmp eq i8 %275, 3
  br i1 %276, label %277, label %278

277:                                              ; preds = %268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %274, i32 %193) #17, !srcloc !12
  br label %280

278:                                              ; preds = %268
  %279 = trunc i32 %193 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %274, i16 %279) #17, !srcloc !25
  br label %280

280:                                              ; preds = %278, %277
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %60) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl011_dma_rx_poll(ptr noundef %0) #3 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr i8, ptr %0, i32 -456
  %4 = getelementptr i8, ptr %0, i32 -348
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -80
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !24
  %8 = getelementptr i8, ptr %0, i32 -60
  %9 = load i8, ptr %8, align 4, !range !27
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 49
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 -8
  %14 = load i32, ptr %13, align 4
  %15 = call i32 %12(ptr noundef %7, i32 noundef %14, ptr noundef nonnull %2) #17
  %16 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %0, i32 20
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, %17
  br i1 %20, label %21, label %39, !prof !33

21:                                               ; preds = %1
  %22 = icmp eq i8 %9, 0
  %23 = select i1 %22, i32 -56, i32 -32
  %24 = getelementptr i8, ptr %0, i32 %23
  %25 = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %26, %19
  %28 = sub i32 %19, %17
  %29 = getelementptr inbounds %struct.pl011_sgbuf, ptr %24, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 %27
  %32 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %5, ptr noundef %31, i8 noundef zeroext 0, i32 noundef %28) #17
  %33 = icmp eq i32 %32, %28
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, ptr %16, align 4
  store i32 %35, ptr %18, align 4
  br label %36

36:                                               ; preds = %34, %21
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = getelementptr i8, ptr %0, i32 24
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %36, %1
  call void @tty_flip_buffer_push(ptr noundef %5) #17
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = getelementptr i8, ptr %0, i32 24
  %42 = load i32, ptr %41, align 4
  %43 = sub i32 %40, %42
  %44 = call i32 @jiffies_to_msecs(i32 noundef %43) #17
  %45 = getelementptr i8, ptr %0, i32 36
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %44, %46
  br i1 %47, label %48, label %92

48:                                               ; preds = %39
  %49 = call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #17
  %50 = getelementptr i8, ptr %0, i32 -124
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, -2
  store i32 %52, ptr %50, align 4
  %53 = getelementptr i8, ptr %0, i32 -448
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %0, i32 -136
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i16, ptr %56, i32 14
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr i8, ptr %54, i32 %59
  %61 = getelementptr i8, ptr %0, i32 -358
  %62 = load i8, ptr %61, align 2
  %63 = icmp eq i8 %62, 3
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %52) #17, !srcloc !12
  br label %67

65:                                               ; preds = %48
  %66 = trunc i32 %52 to i16
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %60, i16 %66) #17, !srcloc !25
  br label %67

67:                                               ; preds = %65, %64
  %68 = getelementptr i8, ptr %0, i32 -120
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, 16
  store i32 %70, ptr %68, align 4
  %71 = load ptr, ptr %53, align 4
  %72 = load ptr, ptr %55, align 4
  %73 = getelementptr i16, ptr %72, i32 10
  %74 = load i16, ptr %73, align 2
  %75 = zext i16 %74 to i32
  %76 = getelementptr i8, ptr %71, i32 %75
  %77 = load i8, ptr %61, align 2
  %78 = icmp eq i8 %77, 3
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %70) #17, !srcloc !12
  br label %82

80:                                               ; preds = %67
  %81 = trunc i32 %70 to i16
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %76, i16 %81) #17, !srcloc !25
  br label %82

82:                                               ; preds = %80, %79
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %49) #17
  %83 = getelementptr i8, ptr %0, i32 -4
  store i8 0, ptr %83, align 4
  %84 = load ptr, ptr %7, align 4
  %85 = getelementptr inbounds %struct.dma_device, ptr %84, i32 0, i32 47
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = call i32 %86(ptr noundef %7) #17
  br label %90

90:                                               ; preds = %88, %82
  %91 = call i32 @del_timer(ptr noundef %0) #17
  br label %99

92:                                               ; preds = %39
  %93 = load volatile i32, ptr @jiffies, align 64
  %94 = getelementptr i8, ptr %0, i32 32
  %95 = load i32, ptr %94, align 4
  %96 = call i32 @__msecs_to_jiffies(i32 noundef %95) #17
  %97 = add i32 %96, %93
  %98 = call i32 @mod_timer(ptr noundef %0, i32 noundef %97) #17
  br label %99

99:                                               ; preds = %92, %90
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_slave_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tty_get_frame_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @get_fifosize_arm(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 15728640
  %5 = icmp ult i32 %4, 3145728
  %6 = select i1 %5, i32 16, i32 32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @get_fifosize_st(ptr nocapture noundef readnone %0) #6 {
  ret i32 64
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }

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
!8 = !{i64 4718079}
!9 = !{i64 2154603350}
!10 = !{i64 2154603602}
!11 = !{i64 2154603444}
!12 = !{i64 4717661}
!13 = !{i64 4717464}
!14 = !{i64 2154604539}
!15 = !{i64 2154604791}
!16 = !{i64 2154604633}
!17 = !{i64 2154601825}
!18 = !{i64 2154602077}
!19 = !{i64 2154601919}
!20 = !{i64 2154602271}
!21 = !{i64 2154602747}
!22 = !{i64 2154602999}
!23 = !{i64 2154602841}
!24 = !{!"auto-init"}
!25 = !{i64 4717041}
!26 = !{i64 4717241}
!27 = !{i8 0, i8 2}
!28 = !{i64 2148999739}
!29 = !{i64 2148995563}
!30 = !{i64 2148995638, i64 2148995665, i64 2148995712, i64 2148995734, i64 2148995762, i64 2148995782}
!31 = !{i64 521137}
!32 = !{i64 2149023883}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2154554732, i64 2154555228, i64 2154554769, i64 2154554825, i64 2154554859, i64 2154554883, i64 2154554924, i64 2154554945, i64 2154554973, i64 2154555007}
!36 = !{i64 2149022742}
!37 = !{i64 2154556732, i64 2154557228, i64 2154556769, i64 2154556825, i64 2154556859, i64 2154556883, i64 2154556924, i64 2154556945, i64 2154556973, i64 2154557007}
!38 = !{i64 520892, i64 520953}
!39 = !{i64 2154600666}
!40 = !{i64 2154600508}
!41 = !{i64 523909}
!42 = !{i64 2154600109}
!43 = !{i64 2154599951}
!44 = !{i64 2153845220, i64 2153845712, i64 2153845257, i64 2153845313, i64 2153845347, i64 2153845371, i64 2153845412, i64 2153845433, i64 2153845461, i64 2153845495}
!45 = !{i64 2154563803}
!46 = !{i64 2154563645}
