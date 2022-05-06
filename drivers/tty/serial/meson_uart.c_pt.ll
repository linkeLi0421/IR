; ModuleID = '/llk/IR/drivers/tty/serial/meson_uart.c_pt.bc'
source_filename = "../drivers/tty/serial/meson_uart.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
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
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.34, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.34 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.32, %struct.anon.33, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.32 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.33 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }

@__UNIQUE_ID___earlycon_meson210 = internal constant %struct.earlycon_id { [15 x i8] c"meson\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"amlogic,meson-ao-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_serial_early_console_setup }, section "__earlycon_table", align 4
@meson_uart_platform_driver = internal global %struct.platform_driver { ptr @meson_uart_probe, ptr @meson_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_uart_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@meson_uart_driver = internal global %struct.uart_driver { ptr null, ptr @.str, ptr @.str.9, i32 0, i32 0, i32 12, ptr @meson_serial_console, ptr null, ptr null }, align 4
@__initcall__kmod_meson_uart__211_823_meson_uart_init6 = internal global ptr @meson_uart_init, section ".initcall6.init", align 4
@__exitcall_meson_uart_exit = internal global ptr @meson_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author212 = internal constant [50 x i8] c"meson_uart.author=Carlo Caione <carlo@caione.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [56 x i8] c"meson_uart.description=Amlogic Meson serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [46 x i8] c"meson_uart.file=drivers/tty/serial/meson_uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [26 x i8] c"meson_uart.license=GPL v2\00", section ".modinfo", align 1
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [11 x i8] c"meson_uart\00", align 1
@meson_uart_dt_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson6-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gx-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@meson_ports = internal unnamed_addr global [12 x ptr] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"fifo-size\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"port %d already allocated\0A\00", align 1
@meson_uart_ops = internal constant %struct.uart_ops { ptr @meson_uart_tx_empty, ptr @meson_uart_set_mctrl, ptr @meson_uart_get_mctrl, ptr @meson_uart_stop_tx, ptr @meson_uart_start_tx, ptr null, ptr null, ptr null, ptr @meson_uart_stop_rx, ptr null, ptr null, ptr @meson_uart_startup, ptr @meson_uart_shutdown, ptr null, ptr @meson_uart_set_termios, ptr null, ptr null, ptr @meson_uart_type, ptr @meson_uart_release_port, ptr @meson_uart_request_port, ptr @meson_uart_config_port, ptr @meson_uart_verify_port, ptr null }, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"xtal\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"baud\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"couldn't enable clk\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"Memory region busy\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"ttyAML\00", align 1
@meson_serial_console = internal global %struct.console { [16 x i8] c"ttyAML\00\00\00\00\00\00\00\00\00\00", ptr @meson_serial_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @meson_serial_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @meson_uart_driver, ptr null }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___earlycon_meson210, ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_meson_uart_exit, ptr @__initcall__kmod_meson_uart__211_823_meson_uart_init6, ptr @meson_uart_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @meson_serial_early_console_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %9 = or i32 %8, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !11
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.console, ptr %12, i32 0, i32 1
  store ptr @meson_serial_early_console_write, ptr %13, align 4
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 0, %6 ], [ -19, %2 ]
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @meson_uart_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_uart_platform_driver) #8
  tail call void @uart_unregister_driver(ptr noundef nonnull @meson_uart_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @meson_uart_init() #0 section ".init.text" {
  tail call void @register_console(ptr noundef nonnull @meson_serial_console) #8
  %1 = tail call i32 @uart_register_driver(ptr noundef nonnull @meson_uart_driver) #8
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_uart_platform_driver, ptr noundef null) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @uart_unregister_driver(ptr noundef nonnull @meson_uart_driver) #8
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_serial_early_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.earlycon_device, ptr %5, i32 0, i32 1
  tail call fastcc void @meson_serial_port_write(ptr noundef %6, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @meson_serial_port_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !12
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = load i32, ptr @oops_in_progress, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @_raw_spin_trylock(ptr noundef %0) #8
  %13 = icmp eq i32 %12, 0
  br label %15

14:                                               ; preds = %8
  tail call void @_raw_spin_lock(ptr noundef %0) #8
  br label %15

15:                                               ; preds = %14, %11, %3
  %16 = phi i1 [ %13, %11 ], [ false, %14 ], [ true, %3 ]
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %21 = and i32 %20, -402653185
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #8, !srcloc !11
  tail call void @uart_console_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @meson_console_putchar) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %20) #8, !srcloc !11
  br i1 %16, label %29, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %27 = load i16, ptr %0, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  br label %29

29:                                               ; preds = %26, %15
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #8, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_console_putchar(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %11, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !23
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %15 = and i32 %14, 2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %11

17:                                               ; preds = %11, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %1) #8, !srcloc !11
  br label %19

19:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_uart_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 64, ptr %2, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  br label %13

10:                                               ; preds = %1
  %11 = tail call i32 @of_alias_get_id(ptr noundef nonnull %5, ptr noundef nonnull @.str.1) #8
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %9, %7 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %16 = icmp slt i32 %14, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @meson_ports, i32 0, i32 6), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %34, %31, %28, %25, %22, %17
  %21 = phi i32 [ 6, %17 ], [ 7, %22 ], [ 8, %25 ], [ 9, %28 ], [ 10, %31 ], [ 11, %34 ]
  store i32 %21, ptr %15, align 4
  br label %39

22:                                               ; preds = %17
  %23 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @meson_ports, i32 0, i32 7), align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %20, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @meson_ports, i32 0, i32 8), align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %20, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @meson_ports, i32 0, i32 9), align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %20, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @meson_ports, i32 0, i32 10), align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %20, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr getelementptr inbounds ([12 x ptr], ptr @meson_ports, i32 0, i32 11), align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %20, label %181

37:                                               ; preds = %13
  %38 = icmp ugt i32 %14, 11
  br i1 %38, label %181, label %39

39:                                               ; preds = %37, %20
  %40 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %181, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %181, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %4, align 8
  %47 = call i32 @of_property_read_variable_u32_array(ptr noundef %46, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %48 = load i32, ptr %15, align 4
  %49 = getelementptr [12 x ptr], ptr @meson_ports, i32 0, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %48) #9
  br label %181

53:                                               ; preds = %45
  %54 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 320, i32 noundef 3520) #8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %181, label %56

56:                                               ; preds = %53
  %57 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.4) #8
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %73, label %59

59:                                               ; preds = %56
  %60 = call i32 @clk_prepare(ptr noundef %57) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = call i32 @clk_enable(ptr noundef %57) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  call void @clk_unprepare(ptr noundef %57) #8
  br label %66

66:                                               ; preds = %65, %59
  %67 = phi i32 [ %63, %65 ], [ %60, %59 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #9
  %68 = inttoptr i32 %67 to ptr
  br label %73

69:                                               ; preds = %62
  %70 = call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %57) #8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  call void @clk_disable(ptr noundef %57) #8
  call void @clk_unprepare(ptr noundef %57) #8
  br label %73

73:                                               ; preds = %72, %69, %66, %56
  %74 = phi ptr [ %68, %66 ], [ %57, %56 ], [ %57, %69 ], [ %57, %72 ]
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %144, label %76

76:                                               ; preds = %73
  %77 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  %78 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %93, label %79

79:                                               ; preds = %76
  %80 = call i32 @clk_prepare(ptr noundef %77) #8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = call i32 @clk_enable(ptr noundef %77) #8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  call void @clk_unprepare(ptr noundef %77) #8
  br label %86

86:                                               ; preds = %85, %79
  %87 = phi i32 [ %83, %85 ], [ %80, %79 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #9
  %88 = inttoptr i32 %87 to ptr
  br label %93

89:                                               ; preds = %82
  %90 = call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %77) #8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  call void @clk_disable(ptr noundef %77) #8
  call void @clk_unprepare(ptr noundef %77) #8
  br label %93

93:                                               ; preds = %92, %89, %86, %76
  %94 = phi ptr [ %88, %86 ], [ %77, %76 ], [ %77, %89 ], [ %77, %92 ]
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %144, label %96

96:                                               ; preds = %93
  %97 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.6) #8
  %98 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %113, label %99

99:                                               ; preds = %96
  %100 = call i32 @clk_prepare(ptr noundef %97) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = call i32 @clk_enable(ptr noundef %97) #8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  call void @clk_unprepare(ptr noundef %97) #8
  br label %106

106:                                              ; preds = %105, %99
  %107 = phi i32 [ %103, %105 ], [ %100, %99 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #9
  %108 = inttoptr i32 %107 to ptr
  br label %113

109:                                              ; preds = %102
  %110 = call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %97) #8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  call void @clk_disable(ptr noundef %97) #8
  call void @clk_unprepare(ptr noundef %97) #8
  br label %113

113:                                              ; preds = %112, %109, %106, %96
  %114 = phi ptr [ %108, %106 ], [ %97, %96 ], [ %97, %109 ], [ %97, %112 ]
  %115 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %144, label %116

116:                                              ; preds = %113
  %117 = call i32 @clk_get_rate(ptr noundef %114) #8
  %118 = getelementptr inbounds %struct.uart_port, ptr %54, i32 0, i32 22
  store i32 %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.uart_port, ptr %54, i32 0, i32 26
  store i8 2, ptr %119, align 2
  %120 = load i32, ptr %40, align 4
  %121 = getelementptr inbounds %struct.uart_port, ptr %54, i32 0, i32 43
  store i32 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.resource, ptr %40, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = load i32, ptr %40, align 4
  %125 = add i32 %123, 1
  %126 = sub i32 %125, %124
  %127 = getelementptr inbounds %struct.uart_port, ptr %54, i32 0, i32 44
  store i32 %126, ptr %127, align 4
  %128 = getelementptr inbounds %struct.uart_port, ptr %54, i32 0, i32 20
  store i32 %43, ptr %128, align 4
  %129 = getelementptr inbounds %struct.uart_port, ptr %54, i32 0, i32 33
  store i32 268443648, ptr %129, align 4
  %130 = getelementptr inbounds %struct.uart_port, ptr %54, i32 0, i32 48
  store i8 1, ptr %130, align 4
  %131 = getelementptr inbounds %struct.uart_port, ptr %54, i32 0, i32 45
  store ptr %3, ptr %131, align 4
  %132 = load i32, ptr %15, align 4
  %133 = getelementptr inbounds %struct.uart_port, ptr %54, i32 0, i32 41
  store i32 %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.uart_port, ptr %54, i32 0, i32 38
  store i32 109, ptr %134, align 4
  %135 = getelementptr inbounds %struct.uart_port, ptr %54, i32 0, i32 24
  store i8 0, ptr %135, align 4
  %136 = getelementptr inbounds %struct.uart_port, ptr %54, i32 0, i32 39
  store ptr @meson_uart_ops, ptr %136, align 4
  %137 = load i32, ptr %2, align 4
  %138 = getelementptr inbounds %struct.uart_port, ptr %54, i32 0, i32 23
  store i32 %137, ptr %138, align 4
  %139 = getelementptr [12 x ptr], ptr @meson_ports, i32 0, i32 %132
  store ptr %54, ptr %139, align 4
  %140 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %54, ptr %140, align 8
  %141 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %147, label %149

144:                                              ; preds = %113, %93, %73
  %145 = phi ptr [ %74, %73 ], [ %94, %93 ], [ %114, %113 ]
  %146 = ptrtoint ptr %145 to i32
  br label %181

147:                                              ; preds = %116
  %148 = load ptr, ptr %3, align 4
  br label %149

149:                                              ; preds = %147, %116
  %150 = phi ptr [ %148, %147 ], [ %142, %116 ]
  %151 = call ptr @__devm_request_region(ptr noundef %3, ptr noundef nonnull @iomem_resource, i32 noundef %120, i32 noundef %126, ptr noundef %150) #8
  %152 = icmp eq ptr %151, null
  %153 = load ptr, ptr %131, align 4
  br i1 %152, label %154, label %155

154:                                              ; preds = %149
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.8) #9
  br label %175

155:                                              ; preds = %149
  %156 = load i32, ptr %121, align 4
  %157 = load i32, ptr %127, align 4
  %158 = call ptr @devm_ioremap(ptr noundef %153, i32 noundef %156, i32 noundef %157) #8
  %159 = getelementptr inbounds %struct.uart_port, ptr %54, i32 0, i32 2
  store ptr %158, ptr %159, align 4
  %160 = icmp eq ptr %158, null
  br i1 %160, label %175, label %161

161:                                              ; preds = %155
  %162 = getelementptr i8, ptr %158, i32 8
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %164 = or i32 %163, 29360128
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  call void @arm_heavy_mb() #8
  %165 = load ptr, ptr %159, align 4
  %166 = getelementptr i8, ptr %165, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %164) #8, !srcloc !11
  %167 = and i32 %163, -29360129
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  call void @arm_heavy_mb() #8
  %168 = load ptr, ptr %159, align 4
  %169 = getelementptr i8, ptr %168, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %167) #8, !srcloc !11
  %170 = load ptr, ptr %131, align 4
  %171 = load ptr, ptr %159, align 4
  call void @devm_iounmap(ptr noundef %170, ptr noundef %171) #8
  store ptr null, ptr %159, align 4
  %172 = load ptr, ptr %131, align 4
  %173 = load i32, ptr %121, align 4
  %174 = load i32, ptr %127, align 4
  call void @__devm_release_region(ptr noundef %172, ptr noundef nonnull @iomem_resource, i32 noundef %173, i32 noundef %174) #8
  br label %175

175:                                              ; preds = %161, %155, %154
  %176 = call i32 @uart_add_one_port(ptr noundef nonnull @meson_uart_driver, ptr noundef nonnull %54) #8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i32, ptr %15, align 4
  %180 = getelementptr [12 x ptr], ptr @meson_ports, i32 0, i32 %179
  store ptr null, ptr %180, align 4
  br label %181

181:                                              ; preds = %178, %175, %144, %53, %52, %42, %39, %37, %34
  %182 = phi i32 [ -16, %52 ], [ -22, %37 ], [ -19, %39 ], [ %43, %42 ], [ -12, %53 ], [ %146, %144 ], [ %176, %178 ], [ 0, %175 ], [ -22, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %182
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_uart_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @meson_uart_driver, ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr [12 x ptr], ptr @meson_ports, i32 0, i32 %6
  store ptr null, ptr %7, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_uart_request_port(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 44
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi ptr [ %12, %11 ], [ %9, %1 ]
  %15 = tail call ptr @__devm_request_region(ptr noundef %3, ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %7, ptr noundef %14) #8
  %16 = icmp eq ptr %15, null
  %17 = load ptr, ptr %2, align 4
  br i1 %16, label %18, label %19

18:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.8) #9
  br label %26

19:                                               ; preds = %13
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %6, align 4
  %22 = tail call ptr @devm_ioremap(ptr noundef %17, i32 noundef %20, i32 noundef %21) #8
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  %25 = select i1 %24, i32 -12, i32 0
  br label %26

26:                                               ; preds = %19, %18
  %27 = phi i32 [ -16, %18 ], [ %25, %19 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_uart_release_port(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @devm_iounmap(ptr noundef %3, ptr noundef %5) #8
  store ptr null, ptr %4, align 4
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 44
  %10 = load i32, ptr %9, align 4
  tail call void @__devm_release_region(ptr noundef %6, ptr noundef nonnull @iomem_resource, i32 noundef %8, i32 noundef %10) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_disable_unprepare(ptr noundef %0) #5 {
  tail call void @clk_disable(ptr noundef %0) #8
  tail call void @clk_unprepare(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_uart_tx_empty(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  %6 = and i32 %5, 37748736
  %7 = icmp eq i32 %6, 4194304
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @meson_uart_set_mctrl(ptr nocapture noundef %0, i32 noundef %1) #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @meson_uart_get_mctrl(ptr nocapture noundef readnone %0) #6 {
  ret i32 32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_uart_stop_tx(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !29
  %6 = and i32 %5, -268435457
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_uart_start_tx(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 19, i32 1
  %10 = load i8, ptr %9, align 4, !range !31
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  %22 = and i32 %21, 2097152
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 24
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %27 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  br label %36

28:                                               ; preds = %12, %8
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !29
  %33 = and i32 %32, -268435457
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %34 = load ptr, ptr %29, align 4
  %35 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #8, !srcloc !11
  br label %87

36:                                               ; preds = %45, %24
  %37 = load i8, ptr %25, align 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  %40 = load i8, ptr %25, align 4
  %41 = zext i8 %40 to i32
  %42 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #8, !srcloc !11
  %43 = load i32, ptr %26, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %26, align 4
  store i8 0, ptr %25, align 4
  br label %45

45:                                               ; preds = %55, %39
  %46 = load ptr, ptr %18, align 4
  %47 = getelementptr i8, ptr %46, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  %49 = and i32 %48, 2097152
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %36, label %66

51:                                               ; preds = %36
  %52 = load i32, ptr %17, align 4
  %53 = load i32, ptr %27, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %66, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr i8, ptr %56, i32 %53
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !34
  tail call void @arm_heavy_mb() #8
  %60 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %59) #8, !srcloc !11
  %61 = load i32, ptr %27, align 4
  %62 = add i32 %61, 1
  %63 = and i32 %62, 4095
  store i32 %63, ptr %27, align 4
  %64 = load i32, ptr %26, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %26, align 4
  br label %45

66:                                               ; preds = %51, %45, %16
  %67 = load i32, ptr %17, align 4
  %68 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %18, align 4
  %73 = getelementptr i8, ptr %72, i32 8
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !35
  %75 = or i32 %74, 268435456
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !36
  tail call void @arm_heavy_mb() #8
  %76 = load ptr, ptr %18, align 4
  %77 = getelementptr i8, ptr %76, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #8, !srcloc !11
  %78 = load i32, ptr %17, align 4
  %79 = load i32, ptr %68, align 4
  br label %80

80:                                               ; preds = %71, %66
  %81 = phi i32 [ %79, %71 ], [ %67, %66 ]
  %82 = phi i32 [ %78, %71 ], [ %67, %66 ]
  %83 = sub i32 %82, %81
  %84 = and i32 %83, 3840
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  tail call void @uart_write_wakeup(ptr noundef %0) #8
  br label %87

87:                                               ; preds = %86, %80, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_uart_stop_rx(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !37
  %6 = and i32 %5, -8193
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !38
  tail call void @arm_heavy_mb() #8
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_uart_startup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !39
  %6 = or i32 %5, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !40
  tail call void @arm_heavy_mb() #8
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #8, !srcloc !11
  %9 = and i32 %5, -16777217
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !11
  %12 = or i32 %9, 12288
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !11
  %15 = or i32 %9, 402665472
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #8, !srcloc !11
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 7
  %21 = and i32 %20, 65280
  %22 = or i32 %21, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !44
  tail call void @arm_heavy_mb() #8
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #8, !srcloc !11
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 53
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @request_threaded_irq(i32 noundef %26, ptr noundef nonnull @meson_uart_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %28, ptr noundef %0) #8
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_uart_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %3 = load i32, ptr %2, align 4
  %4 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %0) #8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !45
  %10 = and i32 %9, -402661377
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !46
  tail call void @arm_heavy_mb() #8
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_uart_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !47
  %12 = and i32 %11, -3145729
  %13 = lshr i32 %6, 4
  %14 = and i32 %13, 3
  switch i32 %14, label %21 [
    i32 3, label %22
    i32 2, label %15
    i32 1, label %17
    i32 0, label %19
  ]

15:                                               ; preds = %3
  %16 = or i32 %12, 1048576
  br label %22

17:                                               ; preds = %3
  %18 = or i32 %12, 2097152
  br label %22

19:                                               ; preds = %3
  %20 = or i32 %11, 3145728
  br label %22

21:                                               ; preds = %3
  unreachable

22:                                               ; preds = %19, %17, %15, %3
  %23 = phi i32 [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %12, %3 ]
  %24 = and i32 %23, -983041
  %25 = shl i32 %6, 11
  %26 = and i32 %25, 524288
  %27 = shl i32 %6, 9
  %28 = and i32 %27, 262144
  %29 = shl i32 %6, 10
  %30 = and i32 %29, 65536
  %31 = or i32 %28, %26
  %32 = or i32 %31, %30
  %33 = or i32 %32, %24
  %34 = and i32 %33, -163841
  %35 = or i32 %33, 32768
  %36 = icmp slt i32 %6, 0
  %37 = select i1 %36, i32 %34, i32 %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %38 = load ptr, ptr %8, align 4
  %39 = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #8, !srcloc !11
  %40 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 50, i32 noundef 4000000) #8
  %41 = load ptr, ptr %8, align 4
  %42 = getelementptr i8, ptr %41, i32 12
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  %44 = and i32 %43, 37748736
  %45 = icmp eq i32 %44, 4194304
  br i1 %45, label %52, label %46

46:                                               ; preds = %46, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !49
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !50
  %47 = load ptr, ptr %8, align 4
  %48 = getelementptr i8, ptr %47, i32 12
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  %50 = and i32 %49, 37748736
  %51 = icmp eq i32 %50, 4194304
  br i1 %51, label %52, label %46

52:                                               ; preds = %46, %22
  %53 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 24000000
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = udiv i32 8000000, %40
  %58 = add nsw i32 %57, -1
  %59 = or i32 %58, 16777216
  br label %67

60:                                               ; preds = %52
  %61 = mul i32 %54, 10
  %62 = shl i32 %40, 2
  %63 = udiv i32 %61, %62
  %64 = add i32 %63, 5
  %65 = udiv i32 %64, 10
  %66 = add nsw i32 %65, -1
  br label %67

67:                                               ; preds = %60, %56
  %68 = phi i32 [ %59, %56 ], [ %66, %60 ]
  %69 = or i32 %68, 8388608
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %70 = load ptr, ptr %8, align 4
  %71 = getelementptr i8, ptr %70, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #8, !srcloc !11
  %72 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %73 = and i32 %7, 16
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 262144, i32 458752
  store i32 %75, ptr %72, align 4
  %76 = and i32 %7, 4
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i32 0, i32 196608
  %79 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 %78, ptr %79, align 4
  %80 = load i32, ptr %5, align 4
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %80, i32 noundef %40) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @meson_uart_type(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 109
  %5 = select i1 %4, ptr @.str, ptr null
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_uart_config_port(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 109, ptr %6, align 4
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 44
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load ptr, ptr %8, align 4
  br label %18

18:                                               ; preds = %16, %5
  %19 = phi ptr [ %17, %16 ], [ %14, %5 ]
  %20 = tail call ptr @__devm_request_region(ptr noundef %8, ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef %12, ptr noundef %19) #8
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr %7, align 4
  br i1 %21, label %23, label %24

23:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.8) #9
  br label %29

24:                                               ; preds = %18
  %25 = load i32, ptr %9, align 4
  %26 = load i32, ptr %11, align 4
  %27 = tail call ptr @devm_ioremap(ptr noundef %22, i32 noundef %25, i32 noundef %26) #8
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  store ptr %27, ptr %28, align 4
  br label %29

29:                                               ; preds = %24, %23, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @meson_uart_verify_port(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 109
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %7, %9
  %11 = select i1 %10, i1 %5, i1 false
  %12 = select i1 %11, i32 0, i32 -22
  %13 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %14, 9600
  %16 = select i1 %15, i32 -22, i32 %12
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_uart_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  tail call void @_raw_spin_lock(ptr noundef %1) #8
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !52
  %7 = and i32 %6, 1048576
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %185

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 4
  %13 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 7
  %14 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 6
  %15 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 28
  %16 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 9
  %17 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 17
  %18 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 48
  %19 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %20 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %21 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 46
  %22 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 33
  %23 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 29
  %24 = getelementptr inbounds %struct.tty_bufhead, ptr %11, i32 0, i32 8
  br label %25

25:                                               ; preds = %178, %9
  %26 = load i32, ptr %12, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %12, align 4
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !53
  %31 = and i32 %30, 458752
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %61, label %33

33:                                               ; preds = %25
  %34 = and i32 %30, 262144
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = and i32 %30, 196608
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36, %33
  %40 = phi ptr [ %13, %33 ], [ %14, %36 ]
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr i8, ptr %44, i32 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !54
  %47 = or i32 %46, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr i8, ptr %48, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #8, !srcloc !11
  %50 = and i32 %46, -16777217
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !56
  tail call void @arm_heavy_mb() #8
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr i8, ptr %51, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #8, !srcloc !11
  %53 = load i32, ptr %15, align 4
  %54 = and i32 %53, %30
  %55 = and i32 %54, 131072
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %43
  %58 = and i32 %54, 65536
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i8 0, i8 3
  br label %61

61:                                               ; preds = %57, %43, %25
  %62 = phi i32 [ %30, %25 ], [ %54, %43 ], [ %54, %57 ]
  %63 = phi i8 [ 0, %25 ], [ 2, %43 ], [ %60, %57 ]
  %64 = load ptr, ptr %3, align 4
  %65 = getelementptr i8, ptr %64, i32 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !57
  %67 = and i32 %66, 255
  %68 = and i32 %30, 131072
  %69 = icmp ne i32 %68, 0
  %70 = icmp eq i32 %67, 0
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %105

72:                                               ; preds = %61
  %73 = load i32, ptr %16, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %16, align 4
  %75 = load ptr, ptr %10, align 4
  %76 = load ptr, ptr %17, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  tail call void %76(ptr noundef %1) #8
  br label %79

79:                                               ; preds = %78, %72
  %80 = load i8, ptr %18, align 4
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %19, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.console, ptr %83, i32 0, i32 9
  %87 = load i16, ptr %86, align 2
  %88 = sext i16 %87 to i32
  %89 = load i32, ptr %20, align 4
  %90 = icmp eq i32 %89, %88
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i32, ptr %21, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %91
  store i32 0, ptr %21, align 4
  br label %95

95:                                               ; preds = %94, %85, %82, %79
  %96 = load i32, ptr %22, align 4
  %97 = and i32 %96, 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.tty_port, ptr %75, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  tail call void @do_SAK(ptr noundef %101) #8
  br label %105

102:                                              ; preds = %91
  %103 = load volatile i32, ptr @jiffies, align 64
  %104 = add i32 %103, 500
  store i32 %104, ptr %21, align 4
  br label %178

105:                                              ; preds = %99, %95, %61
  %106 = phi i8 [ %63, %61 ], [ 1, %99 ], [ 1, %95 ]
  %107 = load i32, ptr %21, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %105
  br i1 %70, label %119, label %110

110:                                              ; preds = %109
  %111 = load volatile i32, ptr @jiffies, align 64
  %112 = sub i32 %111, %107
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = tail call i32 @sysrq_mask() #8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %1, i32 noundef %67) #8
  br i1 %118, label %178, label %119

119:                                              ; preds = %117, %110, %109
  store i32 0, ptr %21, align 4
  br label %121

120:                                              ; preds = %114
  tail call void @handle_sysrq(i32 noundef %67) #8
  store i32 0, ptr %21, align 4
  br label %178

121:                                              ; preds = %119, %105
  %122 = load i32, ptr %23, align 4
  %123 = and i32 %122, %62
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %154

125:                                              ; preds = %121
  %126 = trunc i32 %66 to i8
  %127 = load ptr, ptr %24, align 4
  %128 = getelementptr inbounds %struct.tty_buffer, ptr %127, i32 0, i32 5
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, 1
  %131 = icmp ne i32 %130, 0
  %132 = icmp ne i8 %106, 0
  %133 = and i1 %132, %131
  br i1 %133, label %152, label %134

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.tty_buffer, ptr %127, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds %struct.tty_buffer, ptr %127, i32 0, i32 2
  %138 = load i32, ptr %137, align 4
  %139 = icmp slt i32 %136, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %134
  %141 = icmp eq i32 %130, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.tty_buffer, ptr %127, i32 0, i32 6
  %144 = getelementptr i8, ptr %143, i32 %136
  %145 = getelementptr i8, ptr %144, i32 %138
  store i8 %106, ptr %145, align 1
  %146 = load i32, ptr %135, align 4
  br label %147

147:                                              ; preds = %142, %140
  %148 = phi i32 [ %146, %142 ], [ %136, %140 ]
  %149 = add i32 %148, 1
  store i32 %149, ptr %135, align 4
  %150 = getelementptr inbounds %struct.tty_buffer, ptr %127, i32 0, i32 6
  %151 = getelementptr i8, ptr %150, i32 %148
  store i8 %126, ptr %151, align 1
  br label %154

152:                                              ; preds = %134, %125
  %153 = tail call i32 @__tty_insert_flip_char(ptr noundef %11, i8 noundef zeroext %126, i8 noundef zeroext %106) #8
  br label %154

154:                                              ; preds = %152, %147, %121
  %155 = and i32 %62, 262144
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %178, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr %24, align 4
  %159 = getelementptr inbounds %struct.tty_buffer, ptr %158, i32 0, i32 5
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.tty_buffer, ptr %158, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.tty_buffer, ptr %158, i32 0, i32 2
  %167 = load i32, ptr %166, align 4
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.tty_buffer, ptr %158, i32 0, i32 6
  %171 = getelementptr i8, ptr %170, i32 %165
  %172 = getelementptr i8, ptr %171, i32 %167
  store i8 4, ptr %172, align 1
  %173 = load i32, ptr %164, align 4
  %174 = add i32 %173, 1
  store i32 %174, ptr %164, align 4
  %175 = getelementptr i8, ptr %170, i32 %173
  store i8 0, ptr %175, align 1
  br label %178

176:                                              ; preds = %163, %157
  %177 = tail call i32 @__tty_insert_flip_char(ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext 4) #8
  br label %178

178:                                              ; preds = %176, %169, %154, %120, %117, %102
  %179 = load ptr, ptr %3, align 4
  %180 = getelementptr i8, ptr %179, i32 12
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %180) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !58
  %182 = and i32 %181, 1048576
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %25, label %184

184:                                              ; preds = %178
  tail call void @tty_flip_buffer_push(ptr noundef %11) #8
  br label %185

185:                                              ; preds = %184, %2
  %186 = load ptr, ptr %3, align 4
  %187 = getelementptr i8, ptr %186, i32 12
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %187) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !59
  %189 = and i32 %188, 2097152
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = load ptr, ptr %3, align 4
  %193 = getelementptr i8, ptr %192, i32 8
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !60
  %195 = and i32 %194, 268435456
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %191
  tail call void @meson_uart_start_tx(ptr noundef %1)
  br label %198

198:                                              ; preds = %197, %191, %185
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %199 = load i16, ptr %1, align 4
  %200 = add i16 %199, 1
  store i16 %200, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__devm_release_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_serial_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr [12 x ptr], ptr @meson_ports, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call fastcc void @meson_serial_port_write(ptr noundef nonnull %8, ptr noundef %1, i32 noundef %2)
  br label %11

11:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_serial_console_setup(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 115200, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 110, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 110, ptr %6, align 4
  %7 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 2
  %9 = icmp ugt i16 %8, 11
  br i1 %9, label %37, label %10

10:                                               ; preds = %2
  %11 = zext i16 %8 to i32
  %12 = getelementptr [12 x ptr], ptr @meson_ports, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.uart_port, ptr %13, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %17, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %22 = or i32 %21, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %23 = load ptr, ptr %16, align 4
  %24 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #8, !srcloc !11
  %25 = icmp eq ptr %1, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  %27 = load i32, ptr %3, align 4
  %28 = load i32, ptr %5, align 4
  %29 = load i32, ptr %4, align 4
  %30 = load i32, ptr %6, align 4
  br label %31

31:                                               ; preds = %26, %19
  %32 = phi i32 [ %30, %26 ], [ 110, %19 ]
  %33 = phi i32 [ %29, %26 ], [ 8, %19 ]
  %34 = phi i32 [ %28, %26 ], [ 110, %19 ]
  %35 = phi i32 [ %27, %26 ], [ 115200, %19 ]
  %36 = call i32 @uart_set_options(ptr noundef nonnull %13, ptr noundef %0, i32 noundef %35, i32 noundef %34, i32 noundef %33, i32 noundef %32) #8
  br label %37

37:                                               ; preds = %31, %15, %10, %2
  %38 = phi i32 [ %36, %31 ], [ -22, %2 ], [ -19, %15 ], [ -19, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i64 2502163}
!9 = !{i64 2152658733}
!10 = !{i64 2152659010}
!11 = !{i64 2501745}
!12 = !{i64 353751, i64 353812}
!13 = !{i64 2152660780}
!14 = !{i64 2152661141}
!15 = !{i64 2152661466}
!16 = !{i64 2148897064}
!17 = !{i64 2148892888}
!18 = !{i64 2148892963, i64 2148892990, i64 2148893037, i64 2148893059, i64 2148893087, i64 2148893107}
!19 = !{i64 2148920067}
!20 = !{i64 356768}
!21 = !{i64 2152659490}
!22 = !{i64 2152659820}
!23 = !{i64 2152659662}
!24 = !{i64 2152660015}
!25 = !{i64 2152651024}
!26 = !{i64 2152651469}
!27 = !{i64 2152652046}
!28 = !{i64 2152640845}
!29 = !{i64 2152641450}
!30 = !{i64 2152641727}
!31 = !{i8 0, i8 2}
!32 = !{i64 2152644243}
!33 = !{i64 2152644529}
!34 = !{i64 2152644912}
!35 = !{i64 2152645501}
!36 = !{i64 2152645778}
!37 = !{i64 2152642207}
!38 = !{i64 2152642484}
!39 = !{i64 2152652526}
!40 = !{i64 2152652803}
!41 = !{i64 2152653212}
!42 = !{i64 2152653705}
!43 = !{i64 2152654198}
!44 = !{i64 2152654577}
!45 = !{i64 2152643318}
!46 = !{i64 2152643763}
!47 = !{i64 2152656153}
!48 = !{i64 2152657031}
!49 = !{i64 2152654955}
!50 = !{i64 2152654797}
!51 = !{i64 2152655319}
!52 = !{i64 2152649712}
!53 = !{i64 2152646480}
!54 = !{i64 2152647416}
!55 = !{i64 2152647694}
!56 = !{i64 2152648106}
!57 = !{i64 2152648760}
!58 = !{i64 2152649280}
!59 = !{i64 2152650144}
!60 = !{i64 2152650576}
