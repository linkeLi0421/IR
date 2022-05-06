; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_omap.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_omap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap8250_platdata = type { ptr, i8 }
%struct.omap8250_dma_params = type { i32, i8, i8 }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.omap8250_priv = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i32, i32, %struct.pm_qos_request, %struct.work_struct, %struct.uart_8250_dma, %struct.spinlock, i8, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
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
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__initcall__kmod_8250_omap__229_1695_omap8250_console_fixupcon = internal global ptr @omap8250_console_fixup, section ".con_initcall.init", align 4
@__initcall__kmod_8250_omap__230_1715_omap8250_platform_driver_init6 = internal global ptr @omap8250_platform_driver_init, section ".initcall6.init", align 4
@omap8250_platform_driver = internal global %struct.platform_driver { ptr @omap8250_probe, ptr @omap8250_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap8250_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap8250_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_omap8250_platform_driver_exit = internal global ptr @omap8250_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [43 x i8] c"8250_omap.author=Sebastian Andrzej Siewior\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [39 x i8] c"8250_omap.description=OMAP 8250 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [49 x i8] c"8250_omap.file=drivers/tty/serial/8250/8250_omap\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [25 x i8] c"8250_omap.license=GPL v2\00", section ".modinfo", align 1
@boot_command_line = external dso_local global [0 x i8], section ".init.data", align 1
@.str = private unnamed_addr constant [13 x i8] c"console=ttyS\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"console=ttyO\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ttyS\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"\013WARNING: Your 'console=ttyO%d' has been replaced by 'ttyS%d'\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"\013This ensures that you still see kernel messages. Please\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\013update your kernel commandline.\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"omap8250\00", align 1
@omap8250_dt_ids = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am654_platdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_platdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3352-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am33xx_platdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4372-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am33xx_platdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra742-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_platdata }, %struct.of_device_id zeroinitializer], align 4
@omap8250_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr @omap8250_prepare, ptr @omap8250_complete, ptr @omap8250_suspend, ptr @omap8250_resume, ptr @omap8250_suspend, ptr @omap8250_resume, ptr @omap8250_suspend, ptr @omap8250_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap8250_runtime_suspend, ptr @omap8250_runtime_resume, ptr null }, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"missing registers\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"failed to get alias\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"overrun-throttle-ms\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"No clock speed specified: using default: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"dma-names\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"unable to register 8250 port\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = private unnamed_addr constant [26 x i8] c"Errata i202: timedout %x\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@omap_8250_startup._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.omap_8250_startup = private unnamed_addr constant [18 x i8] c"omap_8250_startup\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"failed to request DMA\0A\00", align 1
@omap_8250_rx_dma_flush.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"drivers/tty/serial/8250/8250_omap.c\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"teardown incomplete\0A\00", align 1
@omap_serial_fill_features_erratas.k3_soc_devices = internal constant [3 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.19, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.20, ptr @.str.21, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"AM65X\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"J721E\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"SR1.0\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"Unknown revision, defaulting to highest\0A\00", align 1
@omap8250_no_handle_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"Unexpected irq handling before port startup\0A\00", align 1
@am654_platdata = internal global %struct.omap8250_platdata { ptr @am654_dma, i8 112 }, align 4
@omap4_platdata = internal global %struct.omap8250_platdata { ptr @am33xx_dma, i8 8 }, align 4
@am33xx_platdata = internal global %struct.omap8250_platdata { ptr @am33xx_dma, i8 12 }, align 4
@am654_dma = internal global %struct.omap8250_dma_params { i32 2048, i8 1, i8 1 }, align 4
@am33xx_dma = internal global %struct.omap8250_dma_params { i32 48, i8 48, i8 1 }, align 4
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"timed out waiting for reset done\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_omap8250_platform_driver_exit, ptr @__initcall__kmod_8250_omap__229_1695_omap8250_console_fixupcon, ptr @__initcall__kmod_8250_omap__230_1715_omap8250_platform_driver_init6, ptr @omap8250_platform_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap8250_console_fixup() #0 section ".init.text" {
  %1 = tail call ptr @strstr(ptr noundef nonnull @boot_command_line, ptr noundef nonnull @.str)
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %22

3:                                                ; preds = %0
  %4 = tail call ptr @strstr(ptr noundef nonnull @boot_command_line, ptr noundef nonnull @.str.1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %4, i32 12
  %8 = load i8, ptr %7, align 1
  %9 = add i8 %8, -48
  %10 = icmp ult i8 %9, 10
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %4, i32 13
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 44
  %15 = getelementptr i8, ptr %4, i32 14
  %16 = select i1 %14, ptr %15, ptr null
  %17 = zext i8 %9 to i32
  %18 = tail call i32 @add_preferred_console(ptr noundef nonnull @.str.2, i32 noundef %17, ptr noundef %16) #10
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %17, i32 noundef %17) #11
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %22

22:                                               ; preds = %11, %6, %3, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap8250_platform_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap8250_platform_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap8250_platform_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap8250_platform_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_preferred_console(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap8250_probe(ptr noundef %0) #5 {
  %2 = alloca %struct.uart_8250_port, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 460, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(460) %2, i8 0, i32 460, i1 false), !annotation !8
  %6 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %185, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #11
  br label %185

12:                                               ; preds = %8
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 248, i32 noundef 3520) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %185, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %9, align 4
  %17 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 1, %16
  %20 = add i32 %19, %18
  %21 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %16, i32 noundef %20) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %185, label %23

23:                                               ; preds = %15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(460) %2, i8 0, i32 460, i1 false)
  %24 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 45
  store ptr %3, ptr %24, align 4
  %25 = load i32, ptr %9, align 4
  %26 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %21, ptr %27, align 4
  %28 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 20
  store i32 %6, ptr %28, align 4
  %29 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %30, align 2
  %31 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  store i32 678428672, ptr %31, align 4
  %32 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 59
  store ptr %13, ptr %32, align 4
  %33 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 2, ptr %33, align 1
  %34 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 23
  store i32 64, ptr %34, align 4
  %35 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 6
  store i32 64, ptr %35, align 4
  %36 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 3
  store i32 33024, ptr %36, align 4
  %37 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 5
  store ptr @omap_8250_set_termios, ptr %37, align 4
  %38 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 8
  store ptr @omap8250_set_mctrl, ptr %38, align 4
  %39 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 16
  store ptr @omap_8250_pm, ptr %39, align 4
  %40 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 11
  store ptr @omap_8250_startup, ptr %40, align 4
  %41 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 12
  store ptr @omap_8250_shutdown, ptr %41, align 4
  %42 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 13
  store ptr @omap_8250_throttle, ptr %42, align 4
  %43 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 14
  store ptr @omap_8250_unthrottle, ptr %43, align 4
  %44 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 18
  store ptr @serial8250_em485_config, ptr %44, align 4
  %45 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 24
  store ptr @serial8250_em485_start_tx, ptr %45, align 4
  %46 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 25
  store ptr @serial8250_em485_stop_tx, ptr %46, align 4
  %47 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 48
  store i8 1, ptr %47, align 4
  %48 = tail call i32 @of_alias_get_id(ptr noundef %5, ptr noundef nonnull @.str.8) #10
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #11
  br label %185

51:                                               ; preds = %23
  %52 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 41
  store i32 %48, ptr %52, align 4
  %53 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 22
  %54 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef %53, i32 noundef 1, i32 noundef 0) #10
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %63, label %56

56:                                               ; preds = %51
  %57 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #10
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = icmp eq ptr %57, inttoptr (i32 -517 to ptr)
  br i1 %60, label %185, label %63

61:                                               ; preds = %56
  %62 = call i32 @clk_get_rate(ptr noundef %57) #10
  store i32 %62, ptr %53, align 4
  br label %63

63:                                               ; preds = %61, %59, %51
  %64 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 27
  %65 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef %64, i32 noundef 1, i32 noundef 0) #10
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 0, ptr %64, align 4
  br label %68

68:                                               ; preds = %67, %63
  %69 = call i32 @irq_of_parse_and_map(ptr noundef %5, i32 noundef 1) #10
  %70 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 13
  store i32 %69, ptr %70, align 4
  %71 = call ptr @of_device_get_match_data(ptr noundef %3) #10
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.omap8250_platdata, ptr %71, i32 0, i32 1
  %75 = load i8, ptr %74, align 4
  %76 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 1
  %77 = load i8, ptr %76, align 4
  %78 = or i8 %77, %75
  store i8 %78, ptr %76, align 4
  br label %79

79:                                               ; preds = %73, %68
  %80 = load i32, ptr %53, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 48000000, ptr %53, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef 48000000) #11
  br label %83

83:                                               ; preds = %82, %79
  %84 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 15
  store i32 2000000000, ptr %84, align 4
  %85 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 16
  store i32 2000000000, ptr %85, align 4
  %86 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 17
  call void @cpu_latency_qos_add_request(ptr noundef %86, i32 noundef 2000000000) #10
  %87 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 18
  store i32 -32, ptr %87, align 4
  %88 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 18, i32 1
  store volatile ptr %88, ptr %88, align 4
  %89 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 18, i32 1, i32 1
  store ptr %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 18, i32 2
  store ptr @omap8250_uart_qos_work, ptr %90, align 4
  %91 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 20
  store i32 0, ptr %91, align 4
  %92 = call i32 @device_init_wakeup(ptr noundef %3, i1 noundef zeroext true) #10
  call void @pm_runtime_enable(ptr noundef %3) #10
  call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #10
  %93 = load ptr, ptr %4, align 8
  %94 = call ptr @of_get_next_available_child(ptr noundef %93, ptr noundef null) #10
  %95 = icmp eq ptr %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %96, %83
  %97 = phi i32 [ %99, %96 ], [ 0, %83 ]
  %98 = phi ptr [ %100, %96 ], [ %94, %83 ]
  %99 = add i32 %97, 1
  %100 = call ptr @of_get_next_available_child(ptr noundef %93, ptr noundef nonnull %98) #10
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %96

102:                                              ; preds = %96
  %103 = icmp eq i32 %99, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %102, %83
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef -1) #10
  br label %105

105:                                              ; preds = %104, %102
  call void @pm_runtime_irq_safe(ptr noundef %3) #10
  %106 = call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  %107 = load ptr, ptr %27, align 4
  %108 = load i8, ptr %33, align 1
  %109 = zext i8 %108 to i32
  %110 = shl i32 20, %109
  %111 = getelementptr i8, ptr %107, i32 %110
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #10, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %113 = lshr i32 %112, 30
  switch i32 %113, label %122 [
    i32 0, label %114
    i32 1, label %118
  ]

114:                                              ; preds = %105
  %115 = lshr i32 %112, 4
  %116 = and i32 %115, 15
  %117 = and i32 %112, 15
  br label %124

118:                                              ; preds = %105
  %119 = lshr i32 %112, 8
  %120 = and i32 %119, 7
  %121 = and i32 %112, 63
  br label %124

122:                                              ; preds = %105
  %123 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %123, ptr noundef nonnull @.str.22) #11
  br label %124

124:                                              ; preds = %122, %118, %114
  %125 = phi i32 [ 255, %122 ], [ %120, %118 ], [ %116, %114 ]
  %126 = phi i32 [ 255, %122 ], [ %121, %118 ], [ %117, %114 ]
  %127 = shl nuw nsw i32 %125, 8
  %128 = or i32 %127, %126
  %129 = trunc i32 %128 to i16
  switch i16 %129, label %137 [
    i16 1030, label %132
    i16 1282, label %130
    i16 1539, label %131
  ]

130:                                              ; preds = %124
  br label %132

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %131, %130, %124
  %133 = phi i8 [ 3, %131 ], [ 3, %130 ], [ 1, %124 ]
  %134 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 1
  %135 = load i8, ptr %134, align 4
  %136 = or i8 %135, %133
  store i8 %136, ptr %134, align 4
  br label %137

137:                                              ; preds = %132, %124
  %138 = call ptr @soc_device_match(ptr noundef nonnull @omap_serial_fill_features_erratas.k3_soc_devices) #10
  %139 = icmp eq ptr %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 1
  %142 = load i8, ptr %141, align 4
  %143 = and i8 %142, -33
  store i8 %143, ptr %141, align 4
  br label %144

144:                                              ; preds = %140, %137
  %145 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 15
  store ptr @omap8250_no_handle_irq, ptr %145, align 4
  %146 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 11
  store i8 48, ptr %146, align 1
  %147 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 10
  store i8 1, ptr %147, align 2
  %148 = call i32 @of_property_read_string_helper(ptr noundef %5, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %175

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 19
  %152 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 19
  store ptr %151, ptr %152, align 4
  %153 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 19, i32 2
  store ptr @the_no_dma_filter_fn, ptr %153, align 4
  store ptr @omap_8250_tx_dma, ptr %151, align 4
  %154 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 19, i32 1
  store ptr @omap_8250_rx_dma, ptr %154, align 4
  br i1 %72, label %171, label %155

155:                                              ; preds = %150
  %156 = load ptr, ptr %71, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %171, label %158

158:                                              ; preds = %155
  %159 = load i32, ptr %156, align 4
  %160 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 19, i32 16
  store i32 %159, ptr %160, align 4
  %161 = getelementptr inbounds %struct.omap8250_dma_params, ptr %156, i32 0, i32 1
  %162 = load i8, ptr %161, align 4
  %163 = zext i8 %162 to i32
  %164 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 19, i32 5, i32 5
  store i32 %163, ptr %164, align 4
  %165 = getelementptr inbounds %struct.omap8250_dma_params, ptr %156, i32 0, i32 2
  %166 = load i8, ptr %165, align 1
  %167 = zext i8 %166 to i32
  %168 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 19, i32 6, i32 6
  store i32 %167, ptr %168, align 4
  %169 = load i8, ptr %161, align 4
  store i8 %169, ptr %146, align 1
  %170 = load i8, ptr %165, align 1
  store i8 %170, ptr %147, align 2
  br label %175

171:                                              ; preds = %155, %150
  %172 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 19, i32 16
  store i32 48, ptr %172, align 4
  %173 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 19, i32 5, i32 5
  store i32 48, ptr %173, align 4
  %174 = getelementptr inbounds %struct.omap8250_priv, ptr %13, i32 0, i32 19, i32 6, i32 6
  store i32 1, ptr %174, align 4
  br label %175

175:                                              ; preds = %171, %158, %144
  %176 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %2) #10
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14) #11
  call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext false) #10
  %179 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #10
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #10
  br label %185

180:                                              ; preds = %175
  store i32 %176, ptr %13, align 4
  %181 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %181, align 8
  %182 = call i64 @ktime_get_mono_fast_ns() #10
  %183 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %182, ptr %183, align 8
  %184 = call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #10
  br label %185

185:                                              ; preds = %180, %178, %59, %50, %15, %12, %11, %1
  %186 = phi i32 [ %48, %50 ], [ %176, %178 ], [ 0, %180 ], [ -22, %11 ], [ %6, %1 ], [ -12, %12 ], [ -19, %15 ], [ -517, %59 ]
  call void @llvm.lifetime.end.p0(i64 460, ptr nonnull %2) #10
  ret i32 %186
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap8250_remove(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %4, i1 noundef zeroext false) #10
  %5 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 4) #10
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #10
  %6 = load i32, ptr %3, align 4
  tail call void @serial8250_unregister_port(i32 noundef %6) #10
  %7 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 17
  tail call void @cpu_latency_qos_remove_request(ptr noundef %7) #10
  %8 = tail call i32 @device_init_wakeup(ptr noundef %4, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_8250_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = trunc i32 %7 to i8
  %9 = lshr i8 %8, 4
  %10 = and i8 %9, 3
  %11 = trunc i32 %7 to i8
  %12 = lshr i8 %11, 4
  %13 = and i8 %12, 4
  %14 = lshr i32 %7, 5
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 8
  %17 = or i8 %16, %13
  %18 = or i8 %17, %10
  %19 = and i32 %7, 512
  %20 = icmp eq i32 %19, 0
  %21 = or i8 %18, 16
  %22 = select i1 %20, i8 %21, i8 %18
  %23 = lshr i32 %7, 25
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 32
  %26 = or i8 %22, %25
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %28 = load i32, ptr %27, align 4
  %29 = udiv i32 %28, 1048560
  %30 = udiv i32 %28, 13
  %31 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %29, i32 noundef %30) #10
  %32 = load i32, ptr %27, align 4
  %33 = icmp eq i32 %31, 38400
  br i1 %33, label %34, label %50

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 4144
  %38 = icmp eq i32 %37, 48
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 40
  %41 = load i32, ptr %40, align 4
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds %struct.omap8250_priv, ptr %5, i32 0, i32 9
  store i16 %42, ptr %43, align 4
  %44 = load i32, ptr %40, align 4
  %45 = and i32 %44, 65536
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr inbounds %struct.omap8250_priv, ptr %5, i32 0, i32 2
  br i1 %46, label %49, label %48

48:                                               ; preds = %39
  store i8 3, ptr %47, align 1
  br label %79

49:                                               ; preds = %39
  store i8 0, ptr %47, align 1
  br label %79

50:                                               ; preds = %34, %3
  %51 = mul i32 %31, 13
  %52 = lshr i32 %51, 1
  %53 = add i32 %52, %32
  %54 = udiv i32 %53, %51
  %55 = shl i32 %31, 4
  %56 = lshr exact i32 %55, 1
  %57 = add i32 %56, %32
  %58 = udiv i32 %57, %55
  %59 = icmp ugt i32 %51, %53
  %60 = select i1 %59, i32 1, i32 %54
  %61 = icmp ugt i32 %55, %57
  %62 = select i1 %61, i32 1, i32 %58
  %63 = udiv i32 %32, 13
  %64 = udiv i32 %63, %60
  %65 = sub i32 %31, %64
  %66 = tail call i32 @llvm.abs.i32(i32 %65, i1 false) #10
  %67 = lshr i32 %32, 4
  %68 = udiv i32 %67, %62
  %69 = sub i32 %31, %68
  %70 = tail call i32 @llvm.abs.i32(i32 %69, i1 false) #10
  %71 = icmp ult i32 %66, %70
  %72 = getelementptr inbounds %struct.omap8250_priv, ptr %5, i32 0, i32 2
  br i1 %71, label %76, label %73

73:                                               ; preds = %50
  store i8 0, ptr %72, align 1
  %74 = trunc i32 %62 to i16
  %75 = getelementptr inbounds %struct.omap8250_priv, ptr %5, i32 0, i32 9
  store i16 %74, ptr %75, align 4
  br label %79

76:                                               ; preds = %50
  store i8 3, ptr %72, align 1
  %77 = trunc i32 %60 to i16
  %78 = getelementptr inbounds %struct.omap8250_priv, ptr %5, i32 0, i32 9
  store i16 %77, ptr %78, align 4
  br label %79

79:                                               ; preds = %76, %73, %49, %48
  %80 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %81 = load ptr, ptr %80, align 4
  %82 = tail call i32 @__pm_runtime_resume(ptr noundef %81, i32 noundef 4) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #10
  %83 = load i32, ptr %6, align 4
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %83, i32 noundef %31) #10
  %84 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 35, ptr %84, align 4
  %85 = load i32, ptr %1, align 4
  %86 = and i32 %85, 16
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 35, i32 47
  store i32 %88, ptr %84, align 4
  %89 = load i32, ptr %1, align 4
  %90 = and i32 %89, 9
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %79
  %93 = or i32 %88, 16
  store i32 %93, ptr %84, align 4
  br label %94

94:                                               ; preds = %92, %79
  %95 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 0, ptr %95, align 4
  %96 = load i32, ptr %1, align 4
  %97 = and i32 %96, 4
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 0, i32 12
  store i32 %99, ptr %95, align 4
  %100 = load i32, ptr %1, align 4
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %94
  %104 = or i32 %99, 16
  store i32 %104, ptr %95, align 4
  %105 = load i32, ptr %1, align 4
  %106 = and i32 %105, 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = or i32 %99, 18
  store i32 %109, ptr %95, align 4
  br label %110

110:                                              ; preds = %108, %103, %94
  %111 = phi i32 [ %104, %103 ], [ %109, %108 ], [ %99, %94 ]
  %112 = load i32, ptr %6, align 4
  %113 = and i32 %112, 128
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = or i32 %111, 1
  store i32 %116, ptr %95, align 4
  br label %117

117:                                              ; preds = %115, %110
  %118 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %119 = load i8, ptr %118, align 2
  %120 = and i8 %119, -9
  store i8 %120, ptr %118, align 2
  %121 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 2048
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load i32, ptr %6, align 4
  %127 = and i32 %126, -2147481600
  %128 = icmp eq i32 %127, 2048
  br i1 %128, label %131, label %129

129:                                              ; preds = %125, %117
  %130 = or i8 %119, 8
  store i8 %130, ptr %118, align 2
  br label %131

131:                                              ; preds = %129, %125
  %132 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 10
  store i8 %26, ptr %132, align 1
  %133 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 8
  store i8 1, ptr %133, align 1
  %134 = getelementptr inbounds %struct.omap8250_priv, ptr %5, i32 0, i32 10
  %135 = load i8, ptr %134, align 2
  %136 = shl i8 %135, 4
  %137 = and i8 %136, 48
  %138 = or i8 %137, 1
  store i8 %138, ptr %133, align 1
  %139 = getelementptr inbounds %struct.omap8250_priv, ptr %5, i32 0, i32 11
  %140 = load i8, ptr %139, align 1
  %141 = shl i8 %140, 6
  %142 = or i8 %138, %141
  store i8 %142, ptr %133, align 1
  %143 = getelementptr inbounds %struct.omap8250_priv, ptr %5, i32 0, i32 4
  store i8 -56, ptr %143, align 1
  %144 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  %147 = select i1 %146, i8 -56, i8 -53
  store i8 %147, ptr %143, align 1
  %148 = getelementptr %struct.ktermios, ptr %1, i32 0, i32 5, i32 8
  %149 = load i8, ptr %148, align 1
  %150 = getelementptr inbounds %struct.omap8250_priv, ptr %5, i32 0, i32 6
  store i8 %149, ptr %150, align 1
  %151 = getelementptr %struct.ktermios, ptr %1, i32 0, i32 5, i32 9
  %152 = load i8, ptr %151, align 1
  %153 = getelementptr inbounds %struct.omap8250_priv, ptr %5, i32 0, i32 7
  store i8 %152, ptr %153, align 2
  %154 = getelementptr inbounds %struct.omap8250_priv, ptr %5, i32 0, i32 3
  store i8 0, ptr %154, align 2
  %155 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 34
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, -29
  store i32 %157, ptr %155, align 4
  %158 = load i32, ptr %6, align 4
  %159 = icmp sgt i32 %158, -1
  br i1 %159, label %173, label %160

160:                                              ; preds = %131
  %161 = load i32, ptr %121, align 4
  %162 = and i32 %161, 3145728
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %166 = load ptr, ptr %165, align 4
  %167 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %166, i32 noundef 4) #10
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load ptr, ptr %165, align 4
  %171 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %170, i32 noundef 0) #10
  %172 = icmp eq ptr %171, null
  br i1 %172, label %181, label %173

173:                                              ; preds = %169, %164, %160, %131
  %174 = load i32, ptr %121, align 4
  %175 = and i32 %174, 4194304
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %173
  %178 = load i32, ptr %1, align 4
  %179 = and i32 %178, 4096
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %177, %169
  %182 = phi i32 [ 12, %169 ], [ 16, %177 ]
  %183 = phi i8 [ -128, %169 ], [ 8, %177 ]
  %184 = load i32, ptr %155, align 4
  %185 = or i32 %184, %182
  store i32 %185, ptr %155, align 4
  %186 = load i8, ptr %154, align 2
  %187 = or i8 %186, %183
  store i8 %187, ptr %154, align 2
  br label %188

188:                                              ; preds = %181, %177, %173
  tail call fastcc void @omap8250_restore_regs(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %189 = load i16, ptr %0, align 4
  %190 = add i16 %189, 1
  store i16 %190, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %191 = load ptr, ptr %80, align 4
  %192 = tail call i64 @ktime_get_mono_fast_ns() #10
  %193 = getelementptr inbounds %struct.device, ptr %191, i32 0, i32 11, i32 22
  store volatile i64 %192, ptr %193, align 8
  %194 = load ptr, ptr %80, align 4
  %195 = tail call i32 @__pm_runtime_suspend(ptr noundef %194, i32 noundef 13) #10
  %196 = udiv i32 512000000, %31
  %197 = getelementptr inbounds %struct.omap8250_priv, ptr %5, i32 0, i32 16
  store i32 %196, ptr %197, align 4
  %198 = getelementptr inbounds %struct.omap8250_priv, ptr %5, i32 0, i32 15
  store i32 %196, ptr %198, align 4
  %199 = getelementptr inbounds %struct.omap8250_priv, ptr %5, i32 0, i32 18
  %200 = load ptr, ptr @system_wq, align 4
  %201 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %200, ptr noundef %199) #10
  %202 = tail call i32 @tty_termios_baud_rate(ptr noundef %1) #10
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %188
  tail call void @tty_termios_encode_baud_rate(ptr noundef %1, i32 noundef %31, i32 noundef %31) #10
  br label %205

205:                                              ; preds = %204, %188
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap8250_set_mctrl(ptr noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %4 = load ptr, ptr %3, align 4
  tail call void @serial8250_do_set_mctrl(ptr noundef %0, i32 noundef %1) #10
  %5 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %6, i32 noundef 4) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef 3) #10
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %0, i32 noundef 3, i32 noundef 191) #10
  %15 = and i32 %1, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 34
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.omap8250_priv, ptr %4, i32 0, i32 3
  %24 = load i8, ptr %23, align 2
  %25 = or i8 %24, 64
  store i8 %25, ptr %23, align 2
  br label %30

26:                                               ; preds = %17, %9
  %27 = getelementptr inbounds %struct.omap8250_priv, ptr %4, i32 0, i32 3
  %28 = load i8, ptr %27, align 2
  %29 = and i8 %28, -65
  store i8 %29, ptr %27, align 2
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i8 [ %29, %26 ], [ %25, %22 ]
  %32 = zext i8 %31 to i32
  %33 = load ptr, ptr %13, align 4
  tail call void %33(ptr noundef %0, i32 noundef 2, i32 noundef %32) #10
  %34 = and i32 %12, 255
  %35 = load ptr, ptr %13, align 4
  tail call void %35(ptr noundef %0, i32 noundef 3, i32 noundef %34) #10
  br label %36

36:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_8250_pm(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %0, i32 noundef 3, i32 noundef 191) #10
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, i32 noundef 2) #10
  %12 = and i32 %11, 255
  %13 = or i32 %12, 16
  %14 = load ptr, ptr %7, align 4
  tail call void %14(ptr noundef %0, i32 noundef 2, i32 noundef %13) #10
  %15 = load ptr, ptr %7, align 4
  tail call void %15(ptr noundef %0, i32 noundef 3, i32 noundef 0) #10
  %16 = icmp eq i32 %1, 0
  %17 = select i1 %16, i32 0, i32 16
  %18 = load ptr, ptr %7, align 4
  tail call void %18(ptr noundef %0, i32 noundef 1, i32 noundef %17) #10
  %19 = load ptr, ptr %7, align 4
  tail call void %19(ptr noundef %0, i32 noundef 3, i32 noundef 191) #10
  %20 = load ptr, ptr %7, align 4
  tail call void %20(ptr noundef %0, i32 noundef 2, i32 noundef %12) #10
  %21 = load ptr, ptr %7, align 4
  tail call void %21(ptr noundef %0, i32 noundef 3, i32 noundef 0) #10
  %22 = load ptr, ptr %4, align 4
  %23 = tail call i64 @ktime_get_mono_fast_ns() #10
  %24 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 11, i32 22
  store volatile i64 %23, ptr %24, align 8
  %25 = load ptr, ptr %4, align 4
  %26 = tail call i32 @__pm_runtime_suspend(ptr noundef %25, i32 noundef 13) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_8250_startup(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @dev_pm_set_dedicated_wake_irq(ptr noundef %9, i32 noundef %5) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %97

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #10
  %16 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 11
  store i8 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %0, i32 noundef 2, i32 noundef 6) #10
  %19 = load ptr, ptr %17, align 4
  tail call void %19(ptr noundef %0, i32 noundef 3, i32 noundef 3) #10
  %20 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 17
  store i8 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 18
  store i8 0, ptr %21, align 1
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.console, ptr %23, i32 0, i32 9
  %27 = load i16, ptr %26, align 2
  %28 = sext i16 %27 to i32
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %28
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  store ptr null, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %25, %12
  %35 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @serial8250_request_dma(ptr noundef %0) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @___ratelimit(ptr noundef nonnull @omap_8250_startup._rs, ptr noundef nonnull @__func__.omap_8250_startup) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.16) #11
  br label %46

46:                                               ; preds = %44, %41
  store ptr null, ptr %35, align 4
  br label %47

47:                                               ; preds = %46, %38, %34
  %48 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %13, align 4
  %51 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load ptr, ptr %50, align 4
  br label %56

56:                                               ; preds = %54, %47
  %57 = phi ptr [ %55, %54 ], [ %52, %47 ]
  %58 = tail call i32 @request_threaded_irq(i32 noundef %49, ptr noundef nonnull @omap8250_irq, ptr noundef null, i32 noundef 128, ptr noundef %57, ptr noundef %0) #10
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %90, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  store i8 5, ptr %61, align 2
  %62 = load ptr, ptr %17, align 4
  tail call void %62(ptr noundef %0, i32 noundef 1, i32 noundef 5) #10
  %63 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %64, 32768
  store i32 %65, ptr %63, align 4
  %66 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 5
  %67 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 1
  %68 = load i8, ptr %67, align 4
  %69 = and i8 %68, 2
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, i8 127, i8 -1
  store i8 %71, ptr %66, align 4
  %72 = zext i8 %71 to i32
  %73 = load ptr, ptr %17, align 4
  tail call void %73(ptr noundef %0, i32 noundef 23, i32 noundef %72) #10
  %74 = load ptr, ptr %35, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %60
  %77 = load i8, ptr %67, align 4
  %78 = and i8 %77, 16
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.uart_8250_dma, ptr %74, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 %82(ptr noundef %0) #10
  br label %84

84:                                               ; preds = %80, %76, %60
  %85 = load ptr, ptr %13, align 4
  %86 = tail call i64 @ktime_get_mono_fast_ns() #10
  %87 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 11, i32 22
  store volatile i64 %86, ptr %87, align 8
  %88 = load ptr, ptr %13, align 4
  %89 = tail call i32 @__pm_runtime_suspend(ptr noundef %88, i32 noundef 13) #10
  br label %97

90:                                               ; preds = %56
  %91 = load ptr, ptr %13, align 4
  %92 = tail call i64 @ktime_get_mono_fast_ns() #10
  %93 = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 11, i32 22
  store volatile i64 %92, ptr %93, align 8
  %94 = load ptr, ptr %13, align 4
  %95 = tail call i32 @__pm_runtime_suspend(ptr noundef %94, i32 noundef 13) #10
  %96 = load ptr, ptr %13, align 4
  tail call void @dev_pm_clear_wake_irq(ptr noundef %96) #10
  br label %97

97:                                               ; preds = %90, %84, %7
  %98 = phi i32 [ %58, %90 ], [ 0, %84 ], [ %10, %7 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_8250_shutdown(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 18
  %5 = tail call zeroext i1 @flush_work(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call fastcc void @omap_8250_rx_dma_flush(ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #10
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0, i32 noundef 23, i32 noundef 0) #10
  %16 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 16
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  %21 = load ptr, ptr %14, align 4
  tail call void %21(ptr noundef %0, i32 noundef 35, i32 noundef 0) #10
  br label %22

22:                                               ; preds = %20, %10
  %23 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  store i8 0, ptr %23, align 2
  %24 = load ptr, ptr %14, align 4
  tail call void %24(ptr noundef %0, i32 noundef 1, i32 noundef 0) #10
  %25 = load ptr, ptr %6, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void @serial8250_release_dma(ptr noundef %0) #10
  br label %28

28:                                               ; preds = %27, %22
  %29 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 10
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = and i32 %31, 191
  %36 = load ptr, ptr %14, align 4
  tail call void %36(ptr noundef %0, i32 noundef 3, i32 noundef %35) #10
  br label %37

37:                                               ; preds = %34, %28
  %38 = load ptr, ptr %14, align 4
  tail call void %38(ptr noundef %0, i32 noundef 2, i32 noundef 6) #10
  %39 = load ptr, ptr %11, align 4
  %40 = tail call i64 @ktime_get_mono_fast_ns() #10
  %41 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 11, i32 22
  store volatile i64 %40, ptr %41, align 8
  %42 = load ptr, ptr %11, align 4
  %43 = tail call i32 @__pm_runtime_suspend(ptr noundef %42, i32 noundef 13) #10
  %44 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %45 = load i32, ptr %44, align 4
  %46 = tail call ptr @free_irq(i32 noundef %45, ptr noundef %0) #10
  %47 = load ptr, ptr %11, align 4
  tail call void @dev_pm_clear_wake_irq(ptr noundef %47) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_8250_throttle(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #10
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 39
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uart_ops, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0) #10
  %12 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 22
  store i8 1, ptr %12, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %7) #10
  %13 = load ptr, ptr %4, align 4
  %14 = tail call i64 @ktime_get_mono_fast_ns() #10
  %15 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 11, i32 22
  store volatile i64 %14, ptr %15, align 8
  %16 = load ptr, ptr %4, align 4
  %17 = tail call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_8250_unthrottle(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #10
  %8 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 22
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.uart_8250_dma, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0) #10
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %18 = load i8, ptr %17, align 2
  %19 = or i8 %18, 5
  store i8 %19, ptr %17, align 2
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 1
  store i32 %22, ptr %20, align 4
  %23 = zext i8 %19 to i32
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %0, i32 noundef 1, i32 noundef %23) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %7) #10
  %26 = load ptr, ptr %4, align 4
  %27 = tail call i64 @ktime_get_mono_fast_ns() #10
  %28 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 11, i32 22
  store volatile i64 %27, ptr %28, align 8
  %29 = load ptr, ptr %4, align 4
  %30 = tail call i32 @__pm_runtime_suspend(ptr noundef %29, i32 noundef 13) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_em485_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_em485_start_tx(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_em485_stop_tx(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap8250_uart_qos_work(ptr noundef %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = load i32, ptr %3, align 4
  tail call void @cpu_latency_qos_update_request(ptr noundef %2, i32 noundef %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap8250_no_handle_irq(ptr nocapture noundef readnone %0) #5 {
  %2 = load i1, ptr @omap8250_no_handle_irq.__already_done, align 1
  br i1 %2, label %4, label %3, !prof !16

3:                                                ; preds = %1
  store i1 true, ptr @omap8250_no_handle_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1239, i32 noundef 9, ptr noundef nonnull @.str.23) #10
  br label %4

4:                                                ; preds = %3, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @the_no_dma_filter_fn(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #7 {
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_8250_tx_dma(ptr noundef %0) #5 {
  %2 = alloca %struct.scatterlist, align 4
  %3 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_state, ptr %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 18
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %138

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.tty_port, ptr %8, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tty_struct, ptr %15, i32 0, i32 19, i32 1
  %19 = load i8, ptr %18, align 4, !range !17
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.uart_state, ptr %8, i32 0, i32 2, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.uart_state, ptr %8, i32 0, i32 2, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25, %21, %17
  %32 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 19
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %135

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 32768
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %135

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %42 = load i8, ptr %41, align 2
  %43 = and i8 %42, 2
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %138, label %45

45:                                               ; preds = %40
  %46 = and i8 %42, -3
  store i8 %46, ptr %41, align 2
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef %0, i32 noundef 1, i32 noundef %47) #10
  br label %138

50:                                               ; preds = %25
  %51 = sub i32 4096, %29
  %52 = add i32 %51, %27
  %53 = and i32 %52, 4095
  %54 = tail call i32 @llvm.smin.i32(i32 %53, i32 %51)
  %55 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 17
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.omap8250_priv, ptr %6, i32 0, i32 1
  %57 = load i8, ptr %56, align 4
  %58 = and i8 %57, 4
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 %62(ptr noundef %0, i32 noundef 26) #10
  %64 = and i32 %63, 255
  %65 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %135, label %68

68:                                               ; preds = %60
  %69 = load i32, ptr %55, align 4
  %70 = icmp ult i32 %69, 4
  br i1 %70, label %135, label %71

71:                                               ; preds = %68, %50
  %72 = phi i32 [ %54, %50 ], [ %69, %68 ]
  %73 = phi i32 [ 0, %50 ], [ 1, %68 ]
  %74 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 8
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 12
  %77 = load i32, ptr %76, align 4
  %78 = load i32, ptr %28, align 4
  %79 = add i32 %77, %73
  %80 = add i32 %79, %78
  %81 = sub i32 %72, %73
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #10, !annotation !8
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #10
  %82 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %80, ptr %82, align 4
  %83 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 %81, ptr %83, align 4
  %84 = icmp eq ptr %75, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %71
  %86 = load ptr, ptr %75, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.dma_device, ptr %86, i32 0, i32 39
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %85, %71
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  br label %135

93:                                               ; preds = %88
  %94 = call ptr %90(ptr noundef nonnull %75, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  %95 = icmp eq ptr %94, null
  br i1 %95, label %135, label %96

96:                                               ; preds = %93
  store i8 1, ptr %10, align 4
  %97 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %94, i32 0, i32 6
  store ptr @omap_8250_dma_tx_complete, ptr %97, align 4
  %98 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %94, i32 0, i32 8
  store ptr %0, ptr %98, align 4
  %99 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %94, i32 0, i32 4
  %100 = load ptr, ptr %99, align 4
  %101 = call i32 %100(ptr noundef nonnull %94) #10
  %102 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 14
  store i32 %101, ptr %102, align 4
  %103 = load ptr, ptr %74, align 4
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.dma_device, ptr %104, i32 0, i32 15
  %106 = load ptr, ptr %105, align 4
  %107 = load i32, ptr %76, align 4
  call void @dma_sync_single_for_device(ptr noundef %106, i32 noundef %107, i32 noundef 4096, i32 noundef 1) #10
  %108 = load ptr, ptr %74, align 4
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.dma_device, ptr %109, i32 0, i32 50
  %111 = load ptr, ptr %110, align 4
  call void %111(ptr noundef %108) #10
  %112 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 19
  %113 = load i8, ptr %112, align 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %96
  store i8 0, ptr %112, align 1
  br label %116

116:                                              ; preds = %115, %96
  %117 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %118 = load i8, ptr %117, align 2
  %119 = and i8 %118, 2
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = and i8 %118, -3
  store i8 %122, ptr %117, align 2
  %123 = zext i8 %122 to i32
  %124 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %125 = load ptr, ptr %124, align 4
  call void %125(ptr noundef %0, i32 noundef 1, i32 noundef %123) #10
  br label %126

126:                                              ; preds = %121, %116
  br i1 %59, label %138, label %127

127:                                              ; preds = %126
  %128 = load ptr, ptr %9, align 4
  %129 = load i32, ptr %28, align 4
  %130 = getelementptr i8, ptr %128, i32 %129
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %134 = load ptr, ptr %133, align 4
  call void %134(ptr noundef %0, i32 noundef 0, i32 noundef %132) #10
  br label %138

135:                                              ; preds = %93, %92, %68, %60, %35, %31
  %136 = phi i32 [ -16, %35 ], [ -16, %31 ], [ -16, %93 ], [ -16, %92 ], [ -16, %60 ], [ -22, %68 ]
  %137 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 19
  store i8 1, ptr %137, align 1
  br label %138

138:                                              ; preds = %135, %127, %126, %45, %40, %1
  %139 = phi i32 [ %136, %135 ], [ 0, %1 ], [ 0, %127 ], [ 0, %126 ], [ 0, %40 ], [ 0, %45 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_8250_rx_dma(ptr noundef %0) #5 {
  %2 = alloca %struct.scatterlist, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.omap8250_priv, ptr %4, i32 0, i32 21
  %8 = load i8, ptr %7, align 4, !range !17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %76

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.omap8250_priv, ptr %4, i32 0, i32 20
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #10
  %13 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 20
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  br i1 %15, label %33, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 13
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 49
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %17, i32 noundef %20, ptr noundef null) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %74

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %28 = load i8, ptr %27, align 2
  %29 = and i8 %28, -6
  store i8 %29, ptr %27, align 2
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %0, i32 noundef 1, i32 noundef %30) #10
  br label %74

33:                                               ; preds = %10
  %34 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 16
  %37 = load i32, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #10, !annotation !8
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #10
  %38 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %35, ptr %38, align 4
  %39 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 %37, ptr %39, align 4
  %40 = icmp eq ptr %17, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %33
  %42 = load ptr, ptr %17, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.dma_device, ptr %42, i32 0, i32 39
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %41, %33
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  br label %74

49:                                               ; preds = %44
  %50 = call ptr %46(ptr noundef nonnull %17, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  %51 = icmp eq ptr %50, null
  br i1 %51, label %74, label %52

52:                                               ; preds = %49
  store i8 1, ptr %13, align 2
  %53 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %50, i32 0, i32 6
  store ptr @__dma_rx_complete, ptr %53, align 4
  %54 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %50, i32 0, i32 8
  store ptr %0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %50, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 %56(ptr noundef nonnull %50) #10
  %58 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 13
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.omap8250_priv, ptr %4, i32 0, i32 1
  %60 = load i8, ptr %59, align 4
  %61 = and i8 %60, 32
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = call i32 %65(ptr noundef %0, i32 noundef 27) #10
  %67 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %68 = load ptr, ptr %67, align 4
  call void %68(ptr noundef %0, i32 noundef 27, i32 noundef 4) #10
  br label %69

69:                                               ; preds = %63, %52
  %70 = load ptr, ptr %16, align 4
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.dma_device, ptr %71, i32 0, i32 50
  %73 = load ptr, ptr %72, align 4
  call void %73(ptr noundef %70) #10
  br label %74

74:                                               ; preds = %69, %49, %48, %26, %18
  %75 = phi i32 [ 0, %69 ], [ 0, %26 ], [ 0, %18 ], [ -16, %49 ], [ -16, %48 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #10
  br label %76

76:                                               ; preds = %74, %1
  %77 = phi i32 [ %75, %74 ], [ -22, %1 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_to_gpiod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap8250_restore_regs(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uart_8250_dma, ptr %5, i32 0, i32 18
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 8
  store i8 1, ptr %12, align 1
  br label %112

13:                                               ; preds = %7, %1
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0, i32 noundef 3, i32 noundef 191) #10
  %16 = load ptr, ptr %14, align 4
  tail call void %16(ptr noundef %0, i32 noundef 2, i32 noundef 16) #10
  %17 = load ptr, ptr %14, align 4
  tail call void %17(ptr noundef %0, i32 noundef 3, i32 noundef 128) #10
  %18 = load ptr, ptr %14, align 4
  tail call void %18(ptr noundef %0, i32 noundef 4, i32 noundef 64) #10
  %19 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  tail call void @mctrl_gpio_set(ptr noundef nonnull %20, i32 noundef 0) #10
  br label %23

23:                                               ; preds = %22, %13
  %24 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 8
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load ptr, ptr %14, align 4
  tail call void %27(ptr noundef %0, i32 noundef 2, i32 noundef %26) #10
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %0, i32 noundef 16) #10
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 4
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %47, label %36

36:                                               ; preds = %23
  %37 = and i32 %34, 6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = and i32 %34, 249
  %41 = load ptr, ptr %14, align 4
  tail call void %41(ptr noundef %0, i32 noundef 16, i32 noundef %40) #10
  %42 = load i8, ptr %32, align 1
  %43 = zext i8 %42 to i32
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i32 [ %43, %39 ], [ %34, %36 ]
  %46 = load ptr, ptr %14, align 4
  tail call void %46(ptr noundef %0, i32 noundef 16, i32 noundef %45) #10
  br label %47

47:                                               ; preds = %44, %23
  %48 = load ptr, ptr %14, align 4
  tail call void %48(ptr noundef %0, i32 noundef 3, i32 noundef 191) #10
  %49 = load ptr, ptr %14, align 4
  tail call void %49(ptr noundef %0, i32 noundef 6, i32 noundef 77) #10
  %50 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 10
  %51 = load i8, ptr %50, align 2
  %52 = lshr i8 %51, 2
  %53 = and i8 %52, 15
  %54 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 11
  %55 = load i8, ptr %54, align 1
  %56 = shl i8 %55, 2
  %57 = and i8 %56, -16
  %58 = or i8 %57, %53
  %59 = zext i8 %58 to i32
  %60 = load ptr, ptr %14, align 4
  tail call void %60(ptr noundef %0, i32 noundef 7, i32 noundef %59) #10
  %61 = load ptr, ptr %14, align 4
  tail call void %61(ptr noundef %0, i32 noundef 3, i32 noundef 0) #10
  %62 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 11
  %63 = load i8, ptr %62, align 4
  %64 = zext i8 %63 to i32
  %65 = load ptr, ptr %14, align 4
  tail call void %65(ptr noundef %0, i32 noundef 4, i32 noundef %64) #10
  %66 = load ptr, ptr %19, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %47
  %69 = shl nuw nsw i32 %64, 1
  %70 = and i32 %69, 6
  %71 = shl nuw nsw i32 %64, 11
  %72 = and i32 %71, 8192
  %73 = or i32 %70, %72
  %74 = and i32 %71, 16384
  %75 = or i32 %73, %74
  %76 = and i32 %71, 32768
  %77 = or i32 %75, %76
  tail call void @mctrl_gpio_set(ptr noundef nonnull %66, i32 noundef %77) #10
  br label %78

78:                                               ; preds = %68, %47
  %79 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %80 = load i8, ptr %79, align 2
  %81 = zext i8 %80 to i32
  %82 = load ptr, ptr %14, align 4
  tail call void %82(ptr noundef %0, i32 noundef 1, i32 noundef %81) #10
  %83 = load ptr, ptr %14, align 4
  tail call void %83(ptr noundef %0, i32 noundef 3, i32 noundef 191) #10
  %84 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 9
  %85 = load i16, ptr %84, align 4
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 22
  %88 = load ptr, ptr %87, align 4
  tail call void %88(ptr noundef %0, i32 noundef %86) #10
  %89 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 3
  %90 = load i8, ptr %89, align 2
  %91 = zext i8 %90 to i32
  %92 = load ptr, ptr %14, align 4
  tail call void %92(ptr noundef %0, i32 noundef 2, i32 noundef %91) #10
  %93 = load ptr, ptr %14, align 4
  tail call void %93(ptr noundef %0, i32 noundef 3, i32 noundef 191) #10
  %94 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 6
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = load ptr, ptr %14, align 4
  tail call void %97(ptr noundef %0, i32 noundef 4, i32 noundef %96) #10
  %98 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 7
  %99 = load i8, ptr %98, align 2
  %100 = zext i8 %99 to i32
  %101 = load ptr, ptr %14, align 4
  tail call void %101(ptr noundef %0, i32 noundef 6, i32 noundef %100) #10
  %102 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 10
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = load ptr, ptr %14, align 4
  tail call void %105(ptr noundef %0, i32 noundef 3, i32 noundef %104) #10
  tail call fastcc void @omap8250_update_mdr1(ptr noundef %0, ptr noundef %3)
  %106 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 39
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.uart_ops, ptr %107, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %111 = load i32, ptr %110, align 4
  tail call void %109(ptr noundef %0, i32 noundef %111) #10
  br label %112

112:                                              ; preds = %78, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap8250_update_mdr1(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0, i32 noundef 8, i32 noundef %9) #10
  br i1 %6, label %39, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 429496) #10
  %14 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 8
  %15 = load i8, ptr %14, align 1
  %16 = or i8 %15, 6
  %17 = zext i8 %16 to i32
  %18 = load ptr, ptr %10, align 4
  tail call void %18(ptr noundef %0, i32 noundef 2, i32 noundef %17) #10
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %0, i32 noundef 5) #10
  %22 = and i32 %21, 33
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %39, label %24

24:                                               ; preds = %33, %12
  %25 = phi i8 [ %26, %33 ], [ -1, %12 ]
  %26 = add i8 %25, -1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %19, align 4
  %32 = tail call i32 %31(ptr noundef %0, i32 noundef 5) #10
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %30, ptr noundef nonnull @.str.15, i32 noundef %32) #11
  br label %39

33:                                               ; preds = %24
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #10
  %35 = load ptr, ptr %19, align 4
  %36 = tail call i32 %35(ptr noundef %0, i32 noundef 5) #10
  %37 = and i32 %36, 33
  %38 = icmp eq i32 %37, 32
  br i1 %38, label %39, label %24

39:                                               ; preds = %33, %28, %12, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_set_mctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_dedicated_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_request_dma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap8250_irq(i32 noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 59
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_8250_port, ptr %1, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  tail call void @serial8250_rpm_get(ptr noundef %1) #10
  %8 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  br i1 %7, label %114, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %9(ptr noundef %1, i32 noundef 2) #10
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %113

14:                                               ; preds = %10
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  %15 = load ptr, ptr %8, align 4
  %16 = tail call i32 %15(ptr noundef %1, i32 noundef 5) #10
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds %struct.omap8250_priv, ptr %4, i32 0, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 16
  %21 = icmp eq i8 %20, 0
  %22 = and i8 %17, 17
  %23 = icmp eq i8 %22, 0
  br i1 %21, label %51, label %24

24:                                               ; preds = %14
  br i1 %23, label %34, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.uart_8250_port, ptr %1, i32 0, i32 9
  %27 = load i8, ptr %26, align 2
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @omap_8250_rx_dma(ptr noundef %1) #10
  %32 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %1, i32 noundef 35, i32 noundef 64) #10
  br label %64

34:                                               ; preds = %25, %24
  %35 = and i32 %11, 63
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.uart_8250_port, ptr %1, i32 0, i32 9
  %39 = load i8, ptr %38, align 2
  %40 = and i8 %39, -6
  store i8 %40, ptr %38, align 2
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %1, i32 noundef 1, i32 noundef %41) #10
  tail call fastcc void @omap_8250_rx_dma_flush(ptr noundef %1) #10
  %44 = load ptr, ptr %8, align 4
  %45 = tail call i32 %44(ptr noundef %1, i32 noundef 2) #10
  %46 = load ptr, ptr %42, align 4
  tail call void %46(ptr noundef %1, i32 noundef 35, i32 noundef 0) #10
  %47 = load i8, ptr %38, align 2
  %48 = or i8 %47, 5
  store i8 %48, ptr %38, align 2
  %49 = zext i8 %48 to i32
  %50 = load ptr, ptr %42, align 4
  tail call void %50(ptr noundef %1, i32 noundef 1, i32 noundef %49) #10
  br label %64

51:                                               ; preds = %14
  %52 = and i32 %11, 4
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %23, i1 true, i1 %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = and i32 %11, 63
  switch i32 %56, label %58 [
    i32 6, label %57
    i32 12, label %57
    i32 4, label %57
  ]

57:                                               ; preds = %55, %55, %55
  tail call fastcc void @omap_8250_rx_dma_flush(ptr noundef %1) #10
  br label %61

58:                                               ; preds = %55
  %59 = tail call i32 @omap_8250_rx_dma(ptr noundef %1) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58, %57
  %62 = tail call zeroext i8 @serial8250_rx_chars(ptr noundef %1, i8 noundef zeroext %17) #10
  %63 = tail call i32 @omap_8250_rx_dma(ptr noundef %1) #10
  br label %64

64:                                               ; preds = %61, %58, %51, %37, %34, %30
  %65 = phi i8 [ %17, %30 ], [ %17, %34 ], [ %17, %37 ], [ %62, %61 ], [ %17, %58 ], [ %17, %51 ]
  %66 = tail call i32 @serial8250_modem_status(ptr noundef %1) #10
  %67 = and i8 %65, 32
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %99, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %5, align 4
  %71 = getelementptr inbounds %struct.uart_8250_dma, ptr %70, i32 0, i32 19
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %99, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.tty_port, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.tty_struct, ptr %78, i32 0, i32 19, i32 1
  %82 = load i8, ptr %81, align 4, !range !17
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %80, %74
  %85 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 35
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.uart_state, ptr %76, i32 0, i32 2, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.uart_state, ptr %76, i32 0, i32 2, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88, %84, %80
  store i8 0, ptr %71, align 1
  br label %98

95:                                               ; preds = %88
  %96 = tail call i32 @omap_8250_tx_dma(ptr noundef %1) #10
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95, %94
  tail call void @serial8250_tx_chars(ptr noundef %1) #10
  br label %99

99:                                               ; preds = %98, %95, %69, %64
  %100 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 48
  %101 = load i8, ptr %100, align 4
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %104 = load i16, ptr %1, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  br label %113

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 47
  %108 = load i32, ptr %107, align 4
  store i32 0, ptr %107, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %109 = load i16, ptr %1, align 4
  %110 = add i16 %109, 1
  store i16 %110, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  %111 = icmp eq i32 %108, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  tail call void @handle_sysrq(i32 noundef %108) #10
  br label %113

113:                                              ; preds = %112, %106, %103, %10
  tail call void @serial8250_rpm_put(ptr noundef %1) #10
  br label %164

114:                                              ; preds = %2
  %115 = tail call i32 %9(ptr noundef %1, i32 noundef 5) #10
  %116 = load ptr, ptr %8, align 4
  %117 = tail call i32 %116(ptr noundef %1, i32 noundef 2) #10
  %118 = tail call i32 @serial8250_handle_irq(ptr noundef %1, i32 noundef %117) #10
  %119 = getelementptr inbounds %struct.omap8250_priv, ptr %4, i32 0, i32 1
  %120 = load i8, ptr %119, align 4
  %121 = and i8 %120, 64
  %122 = icmp ne i8 %121, 0
  %123 = and i32 %117, 12
  %124 = icmp eq i32 %123, 12
  %125 = and i1 %124, %122
  br i1 %125, label %126, label %133

126:                                              ; preds = %114
  %127 = load ptr, ptr %8, align 4
  %128 = tail call i32 %127(ptr noundef %1, i32 noundef 25) #10
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load ptr, ptr %8, align 4
  %132 = tail call i32 %131(ptr noundef %1, i32 noundef 0) #10
  br label %133

133:                                              ; preds = %130, %126, %114
  %134 = and i32 %115, 2
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %161, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.uart_8250_port, ptr %1, i32 0, i32 27
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %161, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %8, align 4
  %142 = tail call i32 %141(ptr noundef %1, i32 noundef 1) #10
  %143 = trunc i32 %142 to i8
  %144 = getelementptr inbounds %struct.uart_8250_port, ptr %1, i32 0, i32 9
  store i8 %143, ptr %144, align 2
  %145 = and i32 %142, 5
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 39
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.uart_ops, ptr %149, i32 0, i32 8
  %151 = load ptr, ptr %150, align 4
  tail call void %151(ptr noundef %1) #10
  br label %155

152:                                              ; preds = %140
  %153 = getelementptr inbounds %struct.uart_8250_port, ptr %1, i32 0, i32 26
  %154 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %153) #10
  br label %155

155:                                              ; preds = %152, %147
  %156 = load i32, ptr %137, align 4
  %157 = tail call i32 @__msecs_to_jiffies(i32 noundef %156) #10
  %158 = getelementptr inbounds %struct.uart_8250_port, ptr %1, i32 0, i32 26
  %159 = load ptr, ptr @system_wq, align 4
  %160 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %159, ptr noundef %158, i32 noundef %157) #10
  br label %161

161:                                              ; preds = %155, %136, %133
  tail call void @serial8250_rpm_put(ptr noundef %1) #10
  %162 = icmp ne i32 %118, 0
  %163 = zext i1 %162 to i32
  br label %164

164:                                              ; preds = %161, %113
  %165 = phi i32 [ 1, %113 ], [ %163, %161 ]
  ret i32 %165
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_rpm_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_handle_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_rpm_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_modem_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_tx_chars(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_8250_rx_dma_flush(ptr noundef %0) unnamed_addr #5 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.omap8250_priv, ptr %4, i32 0, i32 20
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  %9 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 20
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #10
  br label %42

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 49
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 %20(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %2) #10
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %41

23:                                               ; preds = %13
  %24 = load ptr, ptr %14, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 45
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = call i32 %27(ptr noundef %24) #10
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i1 [ %31, %29 ], [ true, %23 ]
  %34 = load i1, ptr @omap_8250_rx_dma_flush.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !19

37:                                               ; preds = %32
  store i1 true, ptr @omap_8250_rx_dma_flush.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 916, i32 noundef 9, ptr noundef null) #10
  br label %38

38:                                               ; preds = %37, %32
  br i1 %33, label %39, label %41

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.omap8250_priv, ptr %4, i32 0, i32 21
  store i8 1, ptr %40, align 4
  br label %41

41:                                               ; preds = %39, %38, %13
  call fastcc void @__dma_rx_do_complete(ptr noundef %0)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #10
  br label %42

42:                                               ; preds = %41, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dma_rx_do_complete(ptr noundef %0) unnamed_addr #5 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 20
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %84, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  store i8 0, ptr %11, align 2
  %17 = getelementptr inbounds %struct.omap8250_priv, ptr %8, i32 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 32
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %0, i32 noundef 27) #10
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef %0, i32 noundef 27, i32 noundef 4) #10
  br label %27

27:                                               ; preds = %21, %14
  %28 = load ptr, ptr %10, align 4
  %29 = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 49
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %10, i32 noundef %16, ptr noundef nonnull %2) #10
  %32 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 16
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 %33, %35
  %37 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %36, %38
  %40 = icmp ult i32 %39, %33
  br i1 %40, label %41, label %71

41:                                               ; preds = %27
  %42 = load ptr, ptr %10, align 4
  %43 = getelementptr inbounds %struct.dma_device, ptr %42, i32 0, i32 47
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = call i32 %44(ptr noundef %10) #10
  %48 = load i32, ptr %37, align 4
  br label %49

49:                                               ; preds = %46, %41
  %50 = phi i32 [ %38, %41 ], [ %48, %46 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %10, align 4
  %54 = getelementptr inbounds %struct.dma_device, ptr %53, i32 0, i32 49
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 %55(ptr noundef %10, i32 noundef %16, ptr noundef null) #10
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %61, %52
  %59 = phi i32 [ %62, %61 ], [ 25, %52 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = add nsw i32 %59, -1
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !21
  %63 = load ptr, ptr %10, align 4
  %64 = getelementptr inbounds %struct.dma_device, ptr %63, i32 0, i32 49
  %65 = load ptr, ptr %64, align 4
  %66 = call i32 %65(ptr noundef %10, i32 noundef %16, ptr noundef null) #10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %58

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %70 = load ptr, ptr %69, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.18) #11
  br label %71

71:                                               ; preds = %68, %61, %52, %49, %27
  %72 = icmp eq i32 %39, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.uart_8250_dma, ptr %4, i32 0, i32 15
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %6, ptr noundef %75, i8 noundef zeroext 0, i32 noundef %39) #10
  %77 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, %76
  store i32 %79, ptr %77, align 4
  %80 = sub i32 %39, %76
  %81 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 10
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %80, %82
  store i32 %83, ptr %81, align 4
  br label %84

84:                                               ; preds = %73, %71, %1
  call void @tty_flip_buffer_push(ptr noundef %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @serial8250_rx_chars(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_release_dma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_8250_dma_tx_complete(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %12, i32 noundef %14, i32 noundef 4096, i32 noundef 1) #10
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #10
  %16 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 18
  store i8 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = and i32 %21, 4095
  store i32 %22, ptr %19, align 4
  %23 = load i32, ptr %17, align 4
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %23
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.omap8250_priv, ptr %7, i32 0, i32 8
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  store i8 0, ptr %27, align 1
  tail call fastcc void @omap8250_restore_regs(ptr noundef %0)
  br label %31

31:                                               ; preds = %30, %1
  %32 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %19, align 4
  %35 = sub i32 %33, %34
  %36 = and i32 %35, 3840
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  tail call void @uart_write_wakeup(ptr noundef %0) #10
  %39 = load i32, ptr %32, align 4
  %40 = load i32, ptr %19, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = phi i32 [ %40, %38 ], [ %34, %31 ]
  %43 = phi i32 [ %39, %38 ], [ %33, %31 ]
  %44 = icmp eq i32 %43, %42
  br i1 %44, label %61, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds %struct.tty_port, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.tty_struct, ptr %48, i32 0, i32 19, i32 1
  %52 = load i8, ptr %51, align 4, !range !17
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50, %45
  %55 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = tail call i32 @omap_8250_tx_dma(ptr noundef %0)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %77, label %66

61:                                               ; preds = %54, %50, %41
  %62 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 32768
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %61, %58
  %67 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 19
  store i8 1, ptr %67, align 1
  %68 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %69 = load i8, ptr %68, align 2
  %70 = and i8 %69, 2
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = or i8 %69, 2
  store i8 %73, ptr %68, align 2
  %74 = zext i8 %73 to i32
  %75 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  tail call void %76(ptr noundef %0, i32 noundef 1, i32 noundef %74) #10
  br label %77

77:                                               ; preds = %72, %66, %61, %58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %15) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__dma_rx_complete(ptr noundef %0) #5 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #10
  %8 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 49
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %9, i32 noundef %11, ptr noundef nonnull %2) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  call fastcc void @__dma_rx_do_complete(ptr noundef %0)
  %18 = getelementptr inbounds %struct.omap8250_priv, ptr %4, i32 0, i32 22
  %19 = load i8, ptr %18, align 1, !range !17
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %23 = load i8, ptr %22, align 2
  %24 = or i8 %23, 5
  store i8 %24, ptr %22, align 2
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  call void %27(ptr noundef %0, i32 noundef 1, i32 noundef %25) #10
  %28 = getelementptr inbounds %struct.omap8250_priv, ptr %4, i32 0, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, 16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = call i32 @omap_8250_rx_dma(ptr noundef %0)
  br label %34

34:                                               ; preds = %32, %21, %17, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @omap8250_prepare(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 12
  store i8 1, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @omap8250_complete(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 12
  store i8 0, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap8250_suspend(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @serial8250_get_port(i32 noundef %4) #10
  %6 = load i32, ptr %3, align 4
  tail call void @serial8250_suspend_port(i32 noundef %6) #10
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #10
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 5
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  br label %22

20:                                               ; preds = %12, %1
  %21 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 5
  store i8 0, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ %19, %16 ], [ 0, %20 ]
  %24 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %5, i32 noundef 23, i32 noundef %23) #10
  %26 = tail call i64 @ktime_get_mono_fast_ns() #10
  %27 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %26, ptr %27, align 8
  %28 = tail call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 13) #10
  %29 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 18
  %30 = tail call zeroext i1 @flush_work(ptr noundef %29) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap8250_resume(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  tail call void @serial8250_resume_port(i32 noundef %4) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap8250_runtime_suspend(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %74, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 4
  %7 = tail call ptr @serial8250_get_port(i32 noundef %6) #10
  %8 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 12
  %9 = load i8, ptr %8, align 4, !range !17
  %10 = icmp ne i8 %9, 0
  %11 = load i8, ptr @console_suspend_enabled, align 1
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %25

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 32
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.console, ptr %16, i32 0, i32 9
  %20 = load i16, ptr %19, align 2
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 41
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %21
  br i1 %24, label %74, label %25

25:                                               ; preds = %18, %14, %5
  %26 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %60, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %2, align 8
  %32 = load i32, ptr %31, align 4
  %33 = tail call ptr @serial8250_get_port(i32 noundef %32) #10
  %34 = getelementptr inbounds %struct.uart_port, ptr %33, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  tail call void %35(ptr noundef %33, i32 noundef 16, i32 noundef 2) #10
  %36 = load ptr, ptr %34, align 4
  tail call void %36(ptr noundef %33, i32 noundef 16, i32 noundef 3) #10
  %37 = getelementptr inbounds %struct.uart_port, ptr %33, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %33, i32 noundef 21) #10
  %40 = or i32 %39, 2
  %41 = load ptr, ptr %34, align 4
  tail call void %41(ptr noundef %33, i32 noundef 21, i32 noundef %40) #10
  br label %42

42:                                               ; preds = %42, %30
  %43 = phi i32 [ 100, %30 ], [ %47, %42 ]
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #10
  %45 = load ptr, ptr %37, align 4
  %46 = tail call i32 %45(ptr noundef %33, i32 noundef 22) #10
  %47 = add nsw i32 %43, -1
  %48 = icmp ne i32 %47, 0
  %49 = and i32 %46, 1
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %42, label %52

52:                                               ; preds = %42
  br i1 %48, label %54, label %53

53:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.24) #11
  br label %74

54:                                               ; preds = %52
  tail call fastcc void @omap8250_update_mdr1(ptr noundef %7, ptr noundef nonnull %3)
  %55 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 5
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  tail call void %59(ptr noundef %7, i32 noundef 23, i32 noundef %57) #10
  br label %60

60:                                               ; preds = %54, %25
  %61 = getelementptr inbounds %struct.uart_8250_port, ptr %7, i32 0, i32 19
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.uart_8250_dma, ptr %62, i32 0, i32 7
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  tail call fastcc void @omap_8250_rx_dma_flush(ptr noundef %7)
  br label %69

69:                                               ; preds = %68, %64, %60
  %70 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 15
  store i32 2000000000, ptr %70, align 4
  %71 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 18
  %72 = load ptr, ptr @system_wq, align 4
  %73 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %72, ptr noundef %71) #10
  br label %74

74:                                               ; preds = %69, %53, %18, %1
  %75 = phi i32 [ 0, %69 ], [ 0, %1 ], [ -16, %18 ], [ -110, %53 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap8250_runtime_resume(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 4
  %7 = tail call ptr @serial8250_get_port(i32 noundef %6) #10
  %8 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %7, i32 noundef 16) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call fastcc void @omap8250_restore_regs(ptr noundef %7)
  br label %13

13:                                               ; preds = %12, %5
  %14 = getelementptr inbounds %struct.uart_8250_port, ptr %7, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.uart_8250_dma, ptr %15, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = tail call i32 @omap_8250_rx_dma(ptr noundef %7)
  br label %28

28:                                               ; preds = %26, %21, %17, %13
  %29 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 16
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 15
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 18
  %33 = load ptr, ptr @system_wq, align 4
  %34 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %33, ptr noundef %32) #10
  br label %35

35:                                               ; preds = %28, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = !{i64 3681653}
!10 = !{i64 2153606356}
!11 = !{i64 2148922701}
!12 = !{i64 2148918525}
!13 = !{i64 2148918600, i64 2148918627, i64 2148918674, i64 2148918696, i64 2148918724, i64 2148918744}
!14 = !{i64 379633}
!15 = !{i64 2148946845}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i8 0, i8 2}
!18 = !{i64 2148945704}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2153627794}
!21 = !{i64 2153627636}
