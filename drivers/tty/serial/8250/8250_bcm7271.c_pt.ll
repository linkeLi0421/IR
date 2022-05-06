; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_bcm7271.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_bcm7271.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.brcmuart_priv = type { i32, ptr, i32, [4 x i32], ptr, i64, ptr, %struct.hrtimer, i8, i8, %struct.uart_8250_dma, [5 x ptr], i32, ptr, i32, i32, i32, ptr, i32, i8, i8, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.34, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.34 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_8250_bcm7271__228_1207_brcmuart_init6 = internal global ptr @brcmuart_init, section ".initcall6.init", align 4
@brcmuart_platform_driver = internal global %struct.platform_driver { ptr @brcmuart_probe, ptr @brcmuart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcmuart_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmuart_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@brcmuart_debugfs_root = internal unnamed_addr global ptr null, align 4
@__exitcall_brcmuart_deinit = internal global ptr @brcmuart_deinit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [30 x i8] c"8250_bcm7271.author=Al Cooper\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [73 x i8] c"8250_bcm7271.description=Broadcom NS16550A compatible serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [55 x i8] c"8250_bcm7271.file=drivers/tty/serial/8250/8250_bcm7271\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [28 x i8] c"8250_bcm7271.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"bcm7271-uart\00", align 1
@brcmuart_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7278-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @brcmstb_rate_table_7278 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7271-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @brcmstb_rate_table }, %struct.of_device_id zeroinitializer], align 4
@brcmuart_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @brcmuart_suspend, ptr @brcmuart_resume, ptr @brcmuart_suspend, ptr @brcmuart_resume, ptr @brcmuart_suspend, ptr @brcmuart_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@brcmuart_probe.reg_names = internal unnamed_addr constant [5 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"dma_rx\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"dma_tx\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"dma_intr2\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"dma_arb\00", align 1
@brcmstb_rate_table = internal constant [4 x i32] [i32 81000000, i32 108000000, i32 64000000, i32 48000000], align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"%s registers not specified\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Unsupported DMA Hardware Revision\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Timeout arbitrating for UART DMA hardware\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"sw_baud\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"clock-frequency or clk not defined\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"unable to register 8250 port\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"no IRQ resource info\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"uart DMA irq\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"unable to register IRQ handler\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Error selecting BAUD MUX clock for %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Error, %d BAUD rate is too fast.\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Error selecting BAUD MUX clock\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"Error, baud: %d has %u.%u%% error\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Spurious interrupt: 0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"RX buffer ready out of sequence, restarting RX DMA\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"RX TIMEOUT Error\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"RX done interrupt but DATA_RDY not found\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"RX OVERRUN Error\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"RX FRAMING Error\0A\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"RX PARITY Error\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"Flip buffer overrun of %d bytes\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Unexpected TX_ABORT interrupt\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@debugfs_stats_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @debugfs_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.32 = private unnamed_addr constant [15 x i8] c"rx_err:\09\09\09\09%u\0A\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"rx_timeout:\09\09\09%u\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"rx_abort:\09\09\09%u\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"rx_bad_timeout_late_char:\09%u\0A\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"rx_bad_timeout_no_char:\09\09%u\0A\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"rx_missing_close_timeout:\09%u\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"dma_rx_partial_buf:\09\09%llu\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"dma_rx_full_buf:\09\09%llu\0A\00", align 1
@brcmstb_rate_table_7278 = internal constant [4 x i32] [i32 81000000, i32 108000000, i32 0, i32 48000000], align 4
@.str.40 = private unnamed_addr constant [31 x i8] c"Error enabling BAUD MUX clock\0A\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"Error restoring default BAUD MUX clock\0A\00", align 1
@.str.42 = private unnamed_addr constant [48 x i8] c"Timeout arbitrating for DMA hardware on resume\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_brcmuart_deinit, ptr @__initcall__kmod_8250_bcm7271__228_1207_brcmuart_init6, ptr @brcmuart_deinit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcmuart_init() #0 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.platform_driver, ptr @brcmuart_platform_driver, i32 0, i32 5), align 4
  %2 = tail call ptr @debugfs_create_dir(ptr noundef %1, ptr noundef null) #8
  store ptr %2, ptr @brcmuart_debugfs_root, align 4
  %3 = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcmuart_platform_driver, ptr noundef null) #8
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @brcmuart_deinit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmuart_platform_driver) #8
  %1 = load ptr, ptr @brcmuart_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmuart_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.uart_8250_port, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 460, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(460) %2, i8 0, i32 460, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  %7 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %326, label %9

9:                                                ; preds = %1
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 368, i32 noundef 3520) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %326, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @of_match_node(ptr noundef nonnull @brcmuart_dt_ids, ptr noundef %6) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.of_device_id, ptr %13, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr @brcmstb_rate_table, ptr %17
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi ptr [ @brcmstb_rate_table, %12 ], [ %19, %15 ]
  %22 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 4
  store ptr %21, ptr %22, align 4
  %23 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.1) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %83, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %23, align 4
  %27 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 1, %26
  %30 = add i32 %29, %28
  %31 = tail call ptr @devm_ioremap(ptr noundef %4, i32 noundef %26, i32 noundef %30) #8
  %32 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 11, i32 0
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %326, label %34

34:                                               ; preds = %25
  %35 = load i32, ptr %23, align 4
  %36 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.2) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %105, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %36, align 4
  %40 = getelementptr inbounds %struct.resource, ptr %36, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = sub i32 1, %39
  %43 = add i32 %42, %41
  %44 = tail call ptr @devm_ioremap(ptr noundef %4, i32 noundef %39, i32 noundef %43) #8
  %45 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 11, i32 1
  store ptr %44, ptr %45, align 4
  %46 = icmp eq ptr %44, null
  br i1 %46, label %326, label %47

47:                                               ; preds = %38
  %48 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.3) #8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %83, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %48, align 4
  %52 = getelementptr inbounds %struct.resource, ptr %48, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = sub i32 1, %51
  %55 = add i32 %54, %53
  %56 = tail call ptr @devm_ioremap(ptr noundef %4, i32 noundef %51, i32 noundef %55) #8
  %57 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 11, i32 2
  store ptr %56, ptr %57, align 4
  %58 = icmp eq ptr %56, null
  br i1 %58, label %326, label %59

59:                                               ; preds = %50
  %60 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.4) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %83, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %60, align 4
  %64 = getelementptr inbounds %struct.resource, ptr %60, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = sub i32 1, %63
  %67 = add i32 %66, %65
  %68 = tail call ptr @devm_ioremap(ptr noundef %4, i32 noundef %63, i32 noundef %67) #8
  %69 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 11, i32 3
  store ptr %68, ptr %69, align 4
  %70 = icmp eq ptr %68, null
  br i1 %70, label %326, label %71

71:                                               ; preds = %62
  %72 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.5) #8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %72, align 4
  %76 = getelementptr inbounds %struct.resource, ptr %72, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = sub i32 1, %75
  %79 = add i32 %78, %77
  %80 = tail call ptr @devm_ioremap(ptr noundef %4, i32 noundef %75, i32 noundef %79) #8
  %81 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 11, i32 4
  store ptr %80, ptr %81, align 4
  %82 = icmp eq ptr %80, null
  br i1 %82, label %326, label %87

83:                                               ; preds = %71, %59, %47, %20
  %84 = phi i32 [ 4, %71 ], [ 3, %59 ], [ 2, %47 ], [ 0, %20 ]
  %85 = getelementptr [5 x ptr], ptr @brcmuart_probe.reg_names, i32 0, i32 %84
  %86 = load ptr, ptr %85, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef %86) #9
  br label %326

87:                                               ; preds = %74
  %88 = tail call fastcc i32 @brcmuart_arbitration(ptr noundef nonnull %10, i1 noundef zeroext true)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 11, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %94 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 11, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %97 = icmp ugt i32 %93, 256
  %98 = icmp ugt i32 %96, 256
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 9
  store i8 1, ptr %101, align 1
  br label %105

102:                                              ; preds = %90
  %103 = tail call fastcc i32 @brcmuart_arbitration(ptr noundef nonnull %10, i1 noundef zeroext false)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #9
  br label %105

104:                                              ; preds = %87
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #9
  br label %105

105:                                              ; preds = %104, %102, %100, %34
  %106 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %107 = call ptr @of_clk_get_by_name(ptr noundef %6, ptr noundef nonnull @.str.10) #8
  %108 = icmp ugt ptr %107, inttoptr (i32 -4096 to ptr)
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = icmp eq ptr %107, inttoptr (i32 -517 to ptr)
  br i1 %110, label %326, label %217

111:                                              ; preds = %105
  %112 = call i32 @clk_prepare(ptr noundef %107) #8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %326

114:                                              ; preds = %111
  %115 = call i32 @clk_enable(ptr noundef %107) #8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  call void @clk_unprepare(ptr noundef %107) #8
  br label %326

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 1
  store ptr %107, ptr %119, align 4
  %120 = call i32 @clk_get_rate(ptr noundef %107) #8
  %121 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 2
  store i32 %120, ptr %121, align 8
  %122 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 4
  %123 = load ptr, ptr %122, align 4
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 3, i32 0
  store i32 0, ptr %127, align 4
  br label %143

128:                                              ; preds = %118
  %129 = load ptr, ptr %119, align 4
  %130 = call i32 @clk_set_rate(ptr noundef %129, i32 noundef %124) #8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr %122, align 4
  %134 = load i32, ptr %133, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef %134) #9
  %135 = load ptr, ptr %122, align 4
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 3, i32 0
  store i32 %136, ptr %137, align 4
  br label %143

138:                                              ; preds = %128
  %139 = load ptr, ptr %119, align 4
  %140 = call i32 @clk_get_rate(ptr noundef %139) #8
  %141 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 3, i32 0
  store i32 %140, ptr %141, align 4
  %142 = load ptr, ptr %122, align 4
  br label %143

143:                                              ; preds = %138, %132, %126
  %144 = phi ptr [ %135, %132 ], [ %142, %138 ], [ %123, %126 ]
  %145 = getelementptr i32, ptr %144, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %165, label %148

148:                                              ; preds = %143
  %149 = load ptr, ptr %119, align 4
  %150 = call i32 @clk_set_rate(ptr noundef %149, i32 noundef %146) #8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr %122, align 4
  %154 = getelementptr i32, ptr %153, i32 1
  %155 = load i32, ptr %154, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef %155) #9
  %156 = load ptr, ptr %122, align 4
  %157 = getelementptr i32, ptr %156, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 3, i32 1
  store i32 %158, ptr %159, align 4
  br label %167

160:                                              ; preds = %148
  %161 = load ptr, ptr %119, align 4
  %162 = call i32 @clk_get_rate(ptr noundef %161) #8
  %163 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 3, i32 1
  store i32 %162, ptr %163, align 4
  %164 = load ptr, ptr %122, align 4
  br label %167

165:                                              ; preds = %143
  %166 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 3, i32 1
  store i32 0, ptr %166, align 4
  br label %167

167:                                              ; preds = %165, %160, %152
  %168 = phi ptr [ %144, %165 ], [ %164, %160 ], [ %156, %152 ]
  %169 = getelementptr i32, ptr %168, i32 2
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %189, label %172

172:                                              ; preds = %167
  %173 = load ptr, ptr %119, align 4
  %174 = call i32 @clk_set_rate(ptr noundef %173, i32 noundef %170) #8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %122, align 4
  %178 = getelementptr i32, ptr %177, i32 2
  %179 = load i32, ptr %178, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef %179) #9
  %180 = load ptr, ptr %122, align 4
  %181 = getelementptr i32, ptr %180, i32 2
  %182 = load i32, ptr %181, align 4
  %183 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 3, i32 2
  store i32 %182, ptr %183, align 4
  br label %191

184:                                              ; preds = %172
  %185 = load ptr, ptr %119, align 4
  %186 = call i32 @clk_get_rate(ptr noundef %185) #8
  %187 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 3, i32 2
  store i32 %186, ptr %187, align 4
  %188 = load ptr, ptr %122, align 4
  br label %191

189:                                              ; preds = %167
  %190 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 3, i32 2
  store i32 0, ptr %190, align 4
  br label %191

191:                                              ; preds = %189, %184, %176
  %192 = phi ptr [ %168, %189 ], [ %188, %184 ], [ %180, %176 ]
  %193 = getelementptr i32, ptr %192, i32 3
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %210, label %196

196:                                              ; preds = %191
  %197 = load ptr, ptr %119, align 4
  %198 = call i32 @clk_set_rate(ptr noundef %197, i32 noundef %194) #8
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %196
  %201 = load ptr, ptr %122, align 4
  %202 = getelementptr i32, ptr %201, i32 3
  %203 = load i32, ptr %202, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef %203) #9
  %204 = load ptr, ptr %122, align 4
  %205 = getelementptr i32, ptr %204, i32 3
  %206 = load i32, ptr %205, align 4
  br label %210

207:                                              ; preds = %196
  %208 = load ptr, ptr %119, align 4
  %209 = call i32 @clk_get_rate(ptr noundef %208) #8
  br label %210

210:                                              ; preds = %207, %200, %191
  %211 = phi i32 [ %209, %207 ], [ %206, %200 ], [ 0, %191 ]
  %212 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 3, i32 3
  store i32 %211, ptr %212, align 4
  %213 = load ptr, ptr %119, align 4
  %214 = load i32, ptr %121, align 8
  %215 = call i32 @clk_set_rate(ptr noundef %213, i32 noundef %214) #8
  %216 = load i32, ptr %121, align 8
  store i32 %216, ptr %3, align 4
  br label %219

217:                                              ; preds = %109
  %218 = load i32, ptr %3, align 4
  br label %219

219:                                              ; preds = %217, %210
  %220 = phi i32 [ %218, %217 ], [ %216, %210 ]
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11) #9
  br label %326

223:                                              ; preds = %219
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(460) %2, i8 0, i32 460, i1 false)
  %224 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 4, ptr %224, align 4
  %225 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 22
  store i32 %220, ptr %225, align 4
  %226 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 45
  store ptr %4, ptr %226, align 4
  %227 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %35, ptr %227, align 4
  %228 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %31, ptr %228, align 4
  %229 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 20
  store i32 %7, ptr %229, align 4
  %230 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 15
  store ptr @brcmuart_handle_irq, ptr %230, align 4
  %231 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 2, ptr %231, align 1
  %232 = call zeroext i1 @of_device_is_big_endian(ptr noundef %6) #8
  %233 = select i1 %232, i8 6, i8 3
  %234 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 %233, ptr %234, align 2
  %235 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  store i32 956301312, ptr %235, align 4
  store ptr %4, ptr %226, align 4
  %236 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 59
  store ptr %10, ptr %236, align 4
  %237 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 3
  store i32 2304, ptr %237, align 4
  %238 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 23
  store i32 32, ptr %238, align 4
  %239 = call i32 @of_alias_get_id(ptr noundef %6, ptr noundef nonnull @.str.12) #8
  %240 = icmp sgt i32 %239, -1
  br i1 %240, label %241, label %243

241:                                              ; preds = %223
  %242 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 41
  store i32 %239, ptr %242, align 4
  br label %243

243:                                              ; preds = %241, %223
  %244 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 7
  call void @hrtimer_init(ptr noundef %244, i32 noundef 1, i32 noundef 0) #8
  %245 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 7, i32 2
  store ptr @brcmuart_hrtimer_func, ptr %245, align 8
  %246 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 12
  store ptr @brcmuart_shutdown, ptr %246, align 4
  %247 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 11
  store ptr @brcmuart_startup, ptr %247, align 4
  %248 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 13
  store ptr @brcmuart_throttle, ptr %248, align 4
  %249 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 14
  store ptr @brcmuart_unthrottle, ptr %249, align 4
  %250 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 5
  store ptr @brcmstb_set_termios, ptr %250, align 4
  %251 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 9
  %252 = load i8, ptr %251, align 1, !range !11
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %266, label %254

254:                                              ; preds = %243
  %255 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 14
  store i32 8192, ptr %255, align 4
  %256 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 12
  %257 = call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef 8192, ptr noundef %256, i32 noundef 3264, i32 noundef 0) #8
  %258 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 13
  store ptr %257, ptr %258, align 8
  %259 = icmp eq ptr %257, null
  br i1 %259, label %298, label %260

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 18
  store i32 4096, ptr %261, align 4
  %262 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 16
  %263 = call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef 4096, ptr noundef %262, i32 noundef 3264, i32 noundef 0) #8
  %264 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 17
  store ptr %263, ptr %264, align 8
  %265 = icmp eq ptr %263, null
  br i1 %265, label %298, label %266

266:                                              ; preds = %260, %243
  %267 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %2) #8
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %266
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13) #9
  br label %298

270:                                              ; preds = %266
  store i32 %267, ptr %10, align 8
  %271 = call ptr @serial8250_get_port(i32 noundef %267) #8
  %272 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 6
  store ptr %271, ptr %272, align 8
  %273 = load i8, ptr %251, align 1, !range !11
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %281, label %275

275:                                              ; preds = %270
  %276 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.14) #8
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %294, label %278

278:                                              ; preds = %275
  %279 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %276, ptr noundef nonnull @brcmuart_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.16, ptr noundef %271) #8
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %294

281:                                              ; preds = %278, %270
  %282 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %282, align 8
  %283 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %284 = load ptr, ptr %283, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %288

286:                                              ; preds = %281
  %287 = load ptr, ptr %4, align 4
  br label %288

288:                                              ; preds = %286, %281
  %289 = phi ptr [ %287, %286 ], [ %284, %281 ]
  %290 = load ptr, ptr @brcmuart_debugfs_root, align 4
  %291 = call ptr @debugfs_create_dir(ptr noundef %289, ptr noundef %290) #8
  %292 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 21
  store ptr %291, ptr %292, align 4
  %293 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 292, ptr noundef %291, ptr noundef nonnull %10, ptr noundef nonnull @debugfs_stats_fops) #8
  br label %326

294:                                              ; preds = %278, %275
  %295 = phi ptr [ @.str.15, %275 ], [ @.str.17, %278 ]
  %296 = phi i32 [ %276, %275 ], [ %279, %278 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull %295) #9
  %297 = load i32, ptr %10, align 8
  call void @serial8250_unregister_port(i32 noundef %297) #8
  br label %298

298:                                              ; preds = %294, %269, %260, %254
  %299 = phi i32 [ %267, %269 ], [ %296, %294 ], [ -12, %254 ], [ -12, %260 ]
  %300 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 13
  %301 = load ptr, ptr %300, align 8
  %302 = icmp eq ptr %301, null
  br i1 %302, label %308, label %303

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 14
  %305 = load i32, ptr %304, align 4
  %306 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 12
  %307 = load i32, ptr %306, align 4
  call void @dma_free_attrs(ptr noundef %4, i32 noundef %305, ptr noundef nonnull %301, i32 noundef %307, i32 noundef 0) #8
  br label %308

308:                                              ; preds = %303, %298
  %309 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 17
  %310 = load ptr, ptr %309, align 8
  %311 = icmp eq ptr %310, null
  br i1 %311, label %317, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 18
  %314 = load i32, ptr %313, align 4
  %315 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 16
  %316 = load i32, ptr %315, align 4
  call void @dma_free_attrs(ptr noundef %4, i32 noundef %314, ptr noundef nonnull %310, i32 noundef %316, i32 noundef 0) #8
  br label %317

317:                                              ; preds = %312, %308
  %318 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 11, i32 4
  %319 = load ptr, ptr %318, align 4
  %320 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %319) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %321 = and i32 %320, -2
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %319, i32 %321) #8, !srcloc !14
  %322 = load ptr, ptr %318, align 4
  %323 = getelementptr i8, ptr %322, i32 4
  %324 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %323) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %325 = and i32 %324, -2
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 %325) #8, !srcloc !14
  br label %326

326:                                              ; preds = %317, %288, %222, %117, %111, %109, %83, %74, %62, %50, %38, %25, %9, %1
  %327 = phi i32 [ -22, %83 ], [ -22, %222 ], [ %299, %317 ], [ 0, %288 ], [ %7, %1 ], [ -12, %9 ], [ -517, %109 ], [ %115, %117 ], [ %112, %111 ], [ -12, %74 ], [ -12, %62 ], [ -12, %50 ], [ -12, %38 ], [ -12, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 460, ptr nonnull %2) #8
  ret i32 %327
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmuart_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  tail call void @debugfs_remove(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 7
  %7 = tail call i32 @hrtimer_cancel(ptr noundef %6) #8
  %8 = load i32, ptr %3, align 8
  tail call void @serial8250_unregister_port(i32 noundef %8) #8
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 13
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 14
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef %15, ptr noundef nonnull %11, i32 noundef %17, i32 noundef 0) #8
  br label %18

18:                                               ; preds = %13, %1
  %19 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 17
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 18
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 16
  %26 = load i32, ptr %25, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef %24, ptr noundef nonnull %20, i32 noundef %26, i32 noundef 0) #8
  br label %27

27:                                               ; preds = %22, %18
  %28 = getelementptr %struct.brcmuart_priv, ptr %3, i32 0, i32 11, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %31 = and i32 %30, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %31) #8, !srcloc !14
  %32 = load ptr, ptr %28, align 4
  %33 = getelementptr i8, ptr %32, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %35 = and i32 %34, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %35) #8, !srcloc !14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmuart_arbitration(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  br i1 %1, label %3, label %29

3:                                                ; preds = %2
  %4 = getelementptr %struct.brcmuart_priv, ptr %0, i32 0, i32 11, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %7 = or i32 %6, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #8, !srcloc !14
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %11 = or i32 %10, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #8, !srcloc !14
  %12 = load ptr, ptr %4, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %17 = and i32 %13, 2
  %18 = and i32 %17, %16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %3
  tail call void @msleep(i32 noundef 1) #8
  %21 = load ptr, ptr %4, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %26 = and i32 %22, 2
  %27 = and i32 %26, %25
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %20, %2
  %30 = phi i32 [ 0, %2 ], [ 1, %20 ]
  %31 = getelementptr %struct.brcmuart_priv, ptr %0, i32 0, i32 11, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %34 = and i32 %33, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %34) #8, !srcloc !14
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr i8, ptr %35, i32 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %38 = and i32 %37, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %38) #8, !srcloc !14
  br label %39

39:                                               ; preds = %29, %20, %3
  %40 = phi i32 [ %30, %29 ], [ 0, %3 ], [ 0, %20 ]
  ret i32 %40
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmuart_handle_irq(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 2) #8
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %6 = load ptr, ptr %5, align 4
  %7 = and i32 %4, 14
  %8 = icmp eq i32 %7, 12
  br i1 %8, label %9, label %44

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.brcmuart_priv, ptr %6, i32 0, i32 8
  %11 = load i8, ptr %10, align 8, !range !11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #8
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 %15(ptr noundef %0, i32 noundef 5) #8
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %13
  %20 = load ptr, ptr %2, align 4
  %21 = tail call i32 %20(ptr noundef %0, i32 noundef 1) #8
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 11
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 32
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  %30 = and i32 %21, -6
  %31 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %0, i32 noundef 1, i32 noundef %30) #8
  %33 = load ptr, ptr %2, align 4
  %34 = tail call i32 %33(ptr noundef %0, i32 noundef 4) #8
  %35 = and i32 %34, -3
  %36 = load ptr, ptr %31, align 4
  tail call void %36(ptr noundef %0, i32 noundef 4, i32 noundef %35) #8
  %37 = getelementptr inbounds %struct.brcmuart_priv, ptr %6, i32 0, i32 7
  %38 = getelementptr inbounds %struct.brcmuart_priv, ptr %6, i32 0, i32 5
  %39 = load i64, ptr %38, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %37, i64 noundef %39, i64 noundef 0, i32 noundef 1) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %14) #8
  br label %46

40:                                               ; preds = %24, %19
  %41 = load ptr, ptr %2, align 4
  %42 = tail call i32 %41(ptr noundef %0, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %14) #8
  br label %46

43:                                               ; preds = %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %14) #8
  br label %44

44:                                               ; preds = %43, %9, %1
  %45 = tail call i32 @serial8250_handle_irq(ptr noundef %0, i32 noundef %4) #8
  br label %46

46:                                               ; preds = %44, %40, %29
  %47 = phi i32 [ %45, %44 ], [ 1, %40 ], [ 1, %29 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmuart_hrtimer_func(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 48
  %5 = load i8, ptr %4, align 8, !range !11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %1
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %9 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %3, i32 noundef 5) #8
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %7
  %15 = load ptr, ptr %9, align 4
  %16 = tail call i32 %15(ptr noundef %3, i32 noundef 0) #8
  %17 = getelementptr i8, ptr %0, i32 292
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  br label %24

20:                                               ; preds = %7
  %21 = getelementptr i8, ptr %0, i32 288
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 8
  br label %24

24:                                               ; preds = %20, %14
  %25 = getelementptr inbounds %struct.uart_8250_port, ptr %3, i32 0, i32 9
  %26 = load i8, ptr %25, align 2
  %27 = and i8 %26, 5
  %28 = icmp eq i8 %27, 5
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load ptr, ptr %9, align 4
  %31 = tail call i32 %30(ptr noundef %3, i32 noundef 1) #8
  %32 = or i32 %31, 5
  %33 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %3, i32 noundef 1, i32 noundef %32) #8
  %35 = load ptr, ptr %9, align 4
  %36 = tail call i32 %35(ptr noundef %3, i32 noundef 4) #8
  %37 = or i32 %36, 2
  %38 = load ptr, ptr %33, align 4
  tail call void %38(ptr noundef %3, i32 noundef 4, i32 noundef %37) #8
  br label %39

39:                                               ; preds = %29, %24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %8) #8
  br label %40

40:                                               ; preds = %39, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmuart_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 8
  store i8 1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 9
  %7 = load i8, ptr %6, align 1, !range !11
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.brcmuart_priv, ptr %10, i32 0, i32 20
  %12 = load i8, ptr %11, align 1, !range !11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.brcmuart_priv, ptr %10, i32 0, i32 11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %19 = or i32 %18, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %19) #8, !srcloc !14
  %20 = load ptr, ptr %2, align 4
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi ptr [ %10, %9 ], [ %20, %14 ]
  %23 = getelementptr %struct.brcmuart_priv, ptr %22, i32 0, i32 11, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = load ptr, ptr %23, align 4
  %31 = getelementptr i8, ptr %30, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %33 = or i32 %32, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %33) #8, !srcloc !14
  br label %34

34:                                               ; preds = %29, %21
  %35 = getelementptr inbounds %struct.brcmuart_priv, ptr %22, i32 0, i32 19
  store i8 0, ptr %35, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %36 = getelementptr %struct.brcmuart_priv, ptr %3, i32 0, i32 11, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 16383) #8, !srcloc !14
  br label %39

39:                                               ; preds = %34, %1
  %40 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  store ptr null, ptr %40, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #8
  tail call void @serial8250_do_shutdown(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmuart_startup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 8
  store i8 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  store ptr null, ptr %5, align 4
  %6 = tail call i32 @serial8250_do_startup(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 9
  %8 = load i8, ptr %7, align 1, !range !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, -2
  store i8 %13, ptr %11, align 2
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %0, i32 noundef 1, i32 noundef %14) #8
  %17 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 19
  store i8 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 10
  %19 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 10, i32 1
  store ptr null, ptr %19, align 4
  store ptr @brcmuart_tx_dma, ptr %18, align 4
  store ptr %18, ptr %5, align 4
  tail call fastcc void @brcmuart_init_dma_hardware(ptr noundef %3)
  tail call fastcc void @start_rx_dma(ptr noundef %0)
  br label %20

20:                                               ; preds = %10, %1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmuart_throttle(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %4 = getelementptr %struct.brcmuart_priv, ptr %3, i32 0, i32 11, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 4095) #8, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmuart_unthrottle(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %4 = getelementptr %struct.brcmuart_priv, ptr %3, i32 0, i32 11, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 4095) #8, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmstb_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmuart_priv, ptr %5, i32 0, i32 9
  %7 = load i8, ptr %6, align 1, !range !11
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.brcmuart_priv, ptr %5, i32 0, i32 20
  %11 = load i8, ptr %10, align 1, !range !11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr %struct.brcmuart_priv, ptr %5, i32 0, i32 11, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %18 = or i32 %17, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %18) #8, !srcloc !14
  br label %19

19:                                               ; preds = %13, %9, %3
  %20 = tail call i32 @tty_termios_baud_rate(ptr noundef %1) #8
  %21 = getelementptr inbounds %struct.brcmuart_priv, ptr %5, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %112, label %24

24:                                               ; preds = %19
  %25 = lshr i32 %20, 1
  %26 = zext i32 %20 to i64
  %27 = mul nuw nsw i64 %26, 10000
  %28 = zext i32 %25 to i64
  br label %29

29:                                               ; preds = %73, %24
  %30 = phi i32 [ 0, %24 ], [ %77, %73 ]
  %31 = phi i32 [ -1, %24 ], [ %76, %73 ]
  %32 = phi i32 [ 1, %24 ], [ %75, %73 ]
  %33 = phi i32 [ -1, %24 ], [ %74, %73 ]
  %34 = phi i32 [ 0, %24 ], [ %78, %73 ]
  %35 = getelementptr %struct.brcmuart_priv, ptr %5, i32 0, i32 3, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %73, label %38

38:                                               ; preds = %29
  %39 = lshr i32 %36, 4
  %40 = add nuw i32 %39, %25
  %41 = udiv i32 %40, %20
  %42 = icmp ult i32 %40, %20
  br i1 %42, label %73, label %43

43:                                               ; preds = %38
  %44 = zext i32 %39 to i64
  %45 = mul nuw nsw i64 %44, 10000
  %46 = icmp ult i64 %45, 4294967296
  br i1 %46, label %47, label %51, !prof !18

47:                                               ; preds = %43
  %48 = trunc i64 %45 to i32
  %49 = udiv i32 %48, %41
  %50 = zext i32 %49 to i64
  br label %54

51:                                               ; preds = %43
  %52 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %41, i64 %45) #10, !srcloc !19
  %53 = extractvalue { i64, i64 } %52, 1
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi i64 [ %50, %47 ], [ %53, %51 ]
  %56 = icmp ugt i64 %55, %27
  %57 = sub i64 %55, %27
  %58 = sub i64 %27, %55
  %59 = select i1 %56, i64 %57, i64 %58
  %60 = add i64 %59, %28
  %61 = icmp ult i64 %60, 4294967296
  br i1 %61, label %62, label %65, !prof !18

62:                                               ; preds = %54
  %63 = trunc i64 %60 to i32
  %64 = udiv i32 %63, %20
  br label %69

65:                                               ; preds = %54
  %66 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %60) #10, !srcloc !19
  %67 = extractvalue { i64, i64 } %66, 1
  %68 = trunc i64 %67 to i32
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi i32 [ %64, %62 ], [ %68, %65 ]
  %71 = icmp ugt i32 %31, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %72, %69, %38, %29
  %74 = phi i32 [ %33, %29 ], [ %34, %72 ], [ %33, %69 ], [ %33, %38 ]
  %75 = phi i32 [ %32, %29 ], [ %41, %72 ], [ %32, %69 ], [ %32, %38 ]
  %76 = phi i32 [ %31, %29 ], [ %70, %72 ], [ %31, %69 ], [ %31, %38 ]
  %77 = phi i32 [ %30, %29 ], [ %70, %72 ], [ %70, %69 ], [ %30, %38 ]
  %78 = add nuw nsw i32 %34, 1
  %79 = icmp eq i32 %78, 4
  br i1 %79, label %80, label %29

80:                                               ; preds = %73
  %81 = icmp eq i32 %74, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %84 = load ptr, ptr %83, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.19, i32 noundef %20) #9
  br label %112

85:                                               ; preds = %80
  %86 = getelementptr %struct.brcmuart_priv, ptr %5, i32 0, i32 3, i32 %74
  %87 = load i32, ptr %86, align 4
  %88 = tail call i32 @clk_set_rate(ptr noundef nonnull %22, i32 noundef %87) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %92 = load ptr, ptr %91, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.20) #9
  br label %93

93:                                               ; preds = %90, %85
  %94 = icmp ugt i32 %76, 300
  br i1 %94, label %95, label %102

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %97 = load ptr, ptr %96, align 4
  %98 = freeze i32 %77
  %99 = udiv i32 %98, 100
  %100 = mul i32 %99, 100
  %101 = sub i32 %98, %100
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.21, i32 noundef %20, i32 noundef %99, i32 noundef %101) #9
  br label %102

102:                                              ; preds = %95, %93
  %103 = lshr i32 %87, 4
  %104 = udiv i32 %103, %75
  %105 = udiv i32 1000000000, %104
  %106 = udiv i32 %105, 10
  %107 = udiv i32 %105, 20
  %108 = add nuw nsw i32 %106, %107
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.brcmuart_priv, ptr %5, i32 0, i32 5
  store i64 %109, ptr %110, align 8
  %111 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  store i32 %87, ptr %111, align 4
  br label %112

112:                                              ; preds = %102, %82, %19
  tail call void @serial8250_do_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  %113 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 11
  %114 = load i8, ptr %113, align 4
  %115 = and i8 %114, 32
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 34
  %119 = load i32, ptr %118, align 4
  %120 = or i32 %119, 8
  store i32 %120, ptr %118, align 4
  br label %121

121:                                              ; preds = %117, %112
  %122 = load i8, ptr %6, align 1, !range !11
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  tail call fastcc void @start_rx_dma(ptr noundef %0)
  br label %125

125:                                              ; preds = %124, %121
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmuart_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 45
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 59
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.brcmuart_priv, ptr %6, i32 0, i32 11, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %196, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %9) #8, !srcloc !14
  %15 = and i32 %9, 4095
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %154, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %3, align 4
  %19 = and i32 %9, 1020
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %154, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr inbounds %struct.brcmuart_priv, ptr %22, i32 0, i32 15
  %24 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %25 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 7
  %26 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 6
  %27 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 8
  %28 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 4
  %29 = and i32 %9, 3075
  %30 = icmp eq i32 %29, 0
  %31 = and i32 %9, 2048
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.brcmuart_priv, ptr %22, i32 0, i32 27
  %34 = and i32 %9, 1024
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.brcmuart_priv, ptr %22, i32 0, i32 28
  %37 = and i32 %9, 2
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.brcmuart_priv, ptr %22, i32 0, i32 29
  %40 = getelementptr inbounds %struct.brcmuart_priv, ptr %22, i32 0, i32 20
  %41 = getelementptr %struct.brcmuart_priv, ptr %22, i32 0, i32 11, i32 1
  %42 = load i32, ptr %23, align 8
  br label %43

43:                                               ; preds = %146, %21
  %44 = phi i32 [ %42, %21 ], [ %152, %146 ]
  %45 = phi i32 [ %19, %21 ], [ %148, %146 ]
  %46 = shl i32 4, %44
  %47 = and i32 %46, %45
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %123, label %49

49:                                               ; preds = %43
  %50 = load ptr, ptr %5, align 4
  %51 = load ptr, ptr %24, align 4
  %52 = shl i32 %44, 4
  %53 = add i32 %52, 48
  %54 = getelementptr %struct.brcmuart_priv, ptr %50, i32 0, i32 11, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 %53
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %58 = add i32 %52, 52
  %59 = load ptr, ptr %54, align 4
  %60 = getelementptr i8, ptr %59, i32 %58
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %62 = and i32 %57, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.25) #9
  br label %122

66:                                               ; preds = %49
  %67 = and i32 %57, 28
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %90, label %69

69:                                               ; preds = %66
  %70 = and i32 %57, 16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %25, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %25, align 4
  %75 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %75, ptr noundef nonnull @.str.26) #9
  br label %76

76:                                               ; preds = %72, %69
  %77 = and i32 %57, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr %26, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %26, align 4
  %82 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %82, ptr noundef nonnull @.str.27) #9
  br label %83

83:                                               ; preds = %79, %76
  %84 = and i32 %57, 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load i32, ptr %27, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %27, align 4
  %89 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %89, ptr noundef nonnull @.str.28) #9
  br label %90

90:                                               ; preds = %86, %83, %66
  %91 = getelementptr inbounds %struct.brcmuart_priv, ptr %50, i32 0, i32 13
  %92 = load ptr, ptr %91, align 8
  %93 = shl i32 %44, 12
  %94 = getelementptr i8, ptr %92, i32 %93
  %95 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %51, ptr noundef %94, i8 noundef zeroext 0, i32 noundef %61) #8
  %96 = icmp eq i32 %61, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = load ptr, ptr %3, align 4
  %99 = sub i32 %61, %95
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %98, ptr noundef nonnull @.str.29, i32 noundef %99) #9
  %100 = load i32, ptr %25, align 4
  %101 = add i32 %100, %99
  store i32 %101, ptr %25, align 4
  br label %102

102:                                              ; preds = %97, %90
  %103 = load i32, ptr %28, align 4
  %104 = add i32 %103, %61
  store i32 %104, ptr %28, align 4
  %105 = and i32 %57, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.brcmuart_priv, ptr %50, i32 0, i32 22
  %109 = load i64, ptr %108, align 8
  %110 = add i64 %109, 1
  store i64 %110, ptr %108, align 8
  br label %121

111:                                              ; preds = %102
  %112 = icmp eq i32 %61, 4096
  br i1 %112, label %117, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.brcmuart_priv, ptr %50, i32 0, i32 26
  %115 = load i32, ptr %114, align 8
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 8
  br label %121

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.brcmuart_priv, ptr %50, i32 0, i32 23
  %119 = load i64, ptr %118, align 8
  %120 = add i64 %119, 1
  store i64 %120, ptr %118, align 8
  br label %121

121:                                              ; preds = %117, %113, %107
  tail call void @tty_flip_buffer_push(ptr noundef %51) #8
  br label %122

122:                                              ; preds = %121, %64
  br i1 %30, label %137, label %124

123:                                              ; preds = %43
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.23) #9
  tail call fastcc void @start_rx_dma(ptr noundef %1) #8
  br label %154

124:                                              ; preds = %122
  br i1 %32, label %128, label %125

125:                                              ; preds = %124
  %126 = load i32, ptr %33, align 4
  %127 = add i32 %126, 1
  store i32 %127, ptr %33, align 4
  br label %128

128:                                              ; preds = %125, %124
  br i1 %35, label %132, label %129

129:                                              ; preds = %128
  %130 = load i32, ptr %36, align 8
  %131 = add i32 %130, 1
  store i32 %131, ptr %36, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.24) #9
  br label %132

132:                                              ; preds = %129, %128
  br i1 %38, label %136, label %133

133:                                              ; preds = %132
  %134 = load i32, ptr %39, align 4
  %135 = add i32 %134, 1
  store i32 %135, ptr %39, align 4
  br label %136

136:                                              ; preds = %133, %132
  store i8 0, ptr %40, align 1
  br label %137

137:                                              ; preds = %136, %122
  br i1 %38, label %138, label %146

138:                                              ; preds = %137
  %139 = load i32, ptr %23, align 8
  %140 = shl i32 %139, 4
  %141 = add i32 %140, 48
  %142 = load ptr, ptr %41, align 4
  %143 = getelementptr i8, ptr %142, i32 %141
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %145 = and i32 %144, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %145) #8, !srcloc !14
  br label %146

146:                                              ; preds = %138, %137
  %147 = xor i32 %46, -1
  %148 = and i32 %45, %147
  %149 = load i32, ptr %23, align 8
  %150 = add i32 %149, 1
  %151 = icmp eq i32 %150, 2
  %152 = select i1 %151, i32 0, i32 %150
  store i32 %152, ptr %23, align 8
  %153 = icmp eq i32 %148, 0
  br i1 %153, label %154, label %43

154:                                              ; preds = %146, %123, %17, %11
  %155 = and i32 %9, 12288
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %191, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr %5, align 4
  %159 = load ptr, ptr %3, align 4
  %160 = and i32 %9, 8192
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.brcmuart_priv, ptr %158, i32 0, i32 19
  %164 = load i8, ptr %163, align 8, !range !11
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %191, label %166

166:                                              ; preds = %162
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.30) #9
  br label %191

167:                                              ; preds = %157
  %168 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.brcmuart_priv, ptr %158, i32 0, i32 19
  store i8 0, ptr %170, align 8
  %171 = getelementptr inbounds %struct.uart_state, ptr %169, i32 0, i32 2, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr inbounds %struct.uart_state, ptr %169, i32 0, i32 2, i32 2
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %172, %174
  br i1 %175, label %191, label %176

176:                                              ; preds = %167
  %177 = load ptr, ptr %168, align 4
  %178 = getelementptr inbounds %struct.tty_port, ptr %177, i32 0, i32 1
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %185, label %181

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.tty_struct, ptr %179, i32 0, i32 19, i32 1
  %183 = load i8, ptr %182, align 4, !range !11
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %181, %176
  %186 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 35
  %187 = load i32, ptr %186, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = tail call i32 @brcmuart_tx_dma(ptr noundef %1) #8
  br label %191

191:                                              ; preds = %189, %185, %181, %167, %166, %162, %154
  %192 = and i32 %9, 16383
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.22, i32 noundef %9) #9
  br label %195

195:                                              ; preds = %194, %191
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %12) #8
  br label %196

196:                                              ; preds = %195, %2
  %197 = phi i32 [ 1, %195 ], [ 0, %2 ]
  ret i32 %197
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_handle_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_do_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmuart_tx_dma(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 19, i32 1
  %12 = load i8, ptr %11, align 4, !range !11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %65

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 19
  %20 = load i8, ptr %19, align 8, !range !11
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %65, label %28

28:                                               ; preds = %22
  %29 = sub i32 4096, %26
  %30 = add i32 %29, %24
  %31 = and i32 %30, 4095
  %32 = tail call i32 @llvm.smin.i32(i32 %31, i32 %29)
  %33 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 10, i32 19
  store i8 0, ptr %33, align 1
  %34 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 17
  %35 = load ptr, ptr %34, align 8
  %36 = load ptr, ptr %6, align 4
  %37 = load i32, ptr %25, align 4
  %38 = getelementptr i8, ptr %36, i32 %37
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %35, ptr align 1 %38, i32 %32, i1 false)
  %39 = load i32, ptr %25, align 4
  %40 = add i32 %39, %32
  %41 = and i32 %40, 4095
  store i32 %41, ptr %25, align 4
  %42 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %32
  store i32 %44, ptr %42, align 4
  %45 = load i32, ptr %23, align 4
  %46 = load i32, ptr %25, align 4
  %47 = sub i32 %45, %46
  %48 = and i32 %47, 3840
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %28
  tail call void @uart_write_wakeup(ptr noundef %0) #8
  br label %51

51:                                               ; preds = %50, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %52 = getelementptr %struct.brcmuart_priv, ptr %3, i32 0, i32 11, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %32) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %55 = load ptr, ptr %52, align 4
  %56 = getelementptr i8, ptr %55, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %32) #8, !srcloc !14
  %57 = load ptr, ptr %52, align 4
  %58 = getelementptr i8, ptr %57, i32 44
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %60 = and i32 %59, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %60) #8, !srcloc !14
  %61 = load ptr, ptr %52, align 4
  %62 = getelementptr i8, ptr %61, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %64 = or i32 %63, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %64) #8, !srcloc !14
  store i8 1, ptr %19, align 8
  br label %65

65:                                               ; preds = %51, %22, %18, %14, %10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmuart_init_dma_hardware(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %2 = getelementptr %struct.brcmuart_priv, ptr %0, i32 0, i32 11, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -1) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %5 = getelementptr %struct.brcmuart_priv, ptr %0, i32 0, i32 11, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 4096) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 5120) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 65680) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #8, !srcloc !14
  %14 = getelementptr inbounds %struct.brcmuart_priv, ptr %0, i32 0, i32 12
  %15 = load i32, ptr %14, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %15) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i8, ptr %20, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #8, !srcloc !14
  %22 = add i32 %15, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr i8, ptr %25, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %22) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr i8, ptr %27, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #8, !srcloc !14
  %29 = getelementptr inbounds %struct.brcmuart_priv, ptr %0, i32 0, i32 16
  %30 = load i32, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %31 = getelementptr %struct.brcmuart_priv, ptr %0, i32 0, i32 11, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %30) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %34 = load ptr, ptr %31, align 4
  %35 = getelementptr i8, ptr %34, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 0) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %36 = load ptr, ptr %31, align 4
  %37 = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 16) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 -1) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %40 = load ptr, ptr %2, align 4
  %41 = getelementptr i8, ptr %40, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 16383) #8, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @start_rx_dma(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.brcmuart_priv, ptr %3, i32 0, i32 11, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %8 = and i32 %7, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %8) #8, !srcloc !14
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 48
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %12 = and i32 %11, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %12) #8, !srcloc !14
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 64
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %16 = and i32 %15, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %16) #8, !srcloc !14
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %20 = and i32 %19, -16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %20) #8, !srcloc !14
  %21 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 15
  store i32 0, ptr %21, align 8
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %25 = or i32 %24, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %25) #8, !srcloc !14
  %26 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 20
  store i8 1, ptr %26, align 1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_set_termios(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debugfs_stats_open(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @debugfs_stats_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debugfs_stats_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.brcmuart_priv, ptr %4, i32 0, i32 27
  %6 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %6) #8
  %7 = getelementptr inbounds %struct.brcmuart_priv, ptr %4, i32 0, i32 28
  %8 = load i32, ptr %7, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %8) #8
  %9 = getelementptr inbounds %struct.brcmuart_priv, ptr %4, i32 0, i32 29
  %10 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %10) #8
  %11 = getelementptr inbounds %struct.brcmuart_priv, ptr %4, i32 0, i32 24
  %12 = load i32, ptr %11, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %12) #8
  %13 = getelementptr inbounds %struct.brcmuart_priv, ptr %4, i32 0, i32 25
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %14) #8
  %15 = getelementptr inbounds %struct.brcmuart_priv, ptr %4, i32 0, i32 26
  %16 = load i32, ptr %15, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %16) #8
  %17 = getelementptr inbounds %struct.brcmuart_priv, ptr %4, i32 0, i32 9
  %18 = load i8, ptr %17, align 1, !range !11
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.brcmuart_priv, ptr %4, i32 0, i32 22
  %22 = load i64, ptr %21, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.38, i64 noundef %22) #8
  %23 = getelementptr inbounds %struct.brcmuart_priv, ptr %4, i32 0, i32 23
  %24 = load i64, ptr %23, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i64 noundef %24) #8
  br label %25

25:                                               ; preds = %20, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmuart_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 8
  %5 = tail call ptr @serial8250_get_port(i32 noundef %4) #8
  %6 = load i32, ptr %3, align 8
  tail call void @serial8250_suspend_port(i32 noundef %6) #8
  %7 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #8
  tail call void @clk_unprepare(ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 36
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 30
  store i32 %10, ptr %11, align 8
  store i32 0, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmuart_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 8
  %5 = tail call ptr @serial8250_get_port(i32 noundef %4) #8
  %6 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %14

14:                                               ; preds = %13, %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.40) #9
  br label %15

15:                                               ; preds = %14, %10
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = tail call i32 @clk_set_rate(ptr noundef %16, i32 noundef %18) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.41) #9
  br label %22

22:                                               ; preds = %21, %15
  %23 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 9
  %24 = load i8, ptr %23, align 1, !range !11
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = tail call fastcc i32 @brcmuart_arbitration(ptr noundef %3, i1 noundef zeroext true)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.42) #9
  br label %38

30:                                               ; preds = %26
  tail call fastcc void @brcmuart_init_dma_hardware(ptr noundef %3)
  %31 = load i32, ptr %3, align 8
  %32 = tail call ptr @serial8250_get_port(i32 noundef %31) #8
  tail call fastcc void @start_rx_dma(ptr noundef %32)
  br label %33

33:                                               ; preds = %30, %22
  %34 = load i32, ptr %3, align 8
  tail call void @serial8250_resume_port(i32 noundef %34) #8
  %35 = getelementptr inbounds %struct.brcmuart_priv, ptr %3, i32 0, i32 30
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 36
  store i32 %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i32 [ -16, %29 ], [ 0, %33 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!9 = !{i64 4559155}
!10 = !{i64 2153408455}
!11 = !{i8 0, i8 2}
!12 = !{i64 2153409675}
!13 = !{i64 2153409848}
!14 = !{i64 4558737}
!15 = !{i64 2153409091}
!16 = !{i64 2153409264}
!17 = !{i64 2153408654}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2147921973, i64 2147922253, i64 2147922587, i64 2147922921}
