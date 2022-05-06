; ModuleID = '/llk/IR/drivers/tty/serial/owl-uart.c_pt.bc'
source_filename = "../drivers/tty/serial/owl-uart.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.owl_uart_info = type { i32 }
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
%struct.owl_uart_port = type { %struct.uart_port, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.34, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.34 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.32, %struct.anon.33, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.32 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.33 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }

@__initcall__kmod_owl_uart__210_622_owl_uart_console_initcon = internal global ptr @owl_uart_console_init, section ".con_initcall.init", align 4
@__UNIQUE_ID___earlycon_owl211 = internal constant %struct.earlycon_id { [15 x i8] c"owl\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"actions,owl-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @owl_uart_early_console_setup }, section "__earlycon_table", align 4
@owl_uart_platform_driver = internal global %struct.platform_driver { ptr @owl_uart_probe, ptr @owl_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @owl_uart_dt_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@owl_uart_driver = internal global %struct.uart_driver { ptr null, ptr @.str, ptr @.str.8, i32 0, i32 0, i32 7, ptr @owl_uart_console, ptr null, ptr null }, align 4
@__initcall__kmod_owl_uart__212_792_owl_uart_init6 = internal global ptr @owl_uart_init, section ".initcall6.init", align 4
@__exitcall_owl_uart_exit = internal global ptr @owl_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file213 = internal constant [42 x i8] c"owl_uart.file=drivers/tty/serial/owl-uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [21 x i8] c"owl_uart.license=GPL\00", section ".modinfo", align 1
@owl_uart_console = internal global %struct.console { [16 x i8] c"ttyOWL\00\00\00\00\00\00\00\00\00\00", ptr @owl_uart_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @owl_uart_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @owl_uart_driver, ptr null }, align 4
@owl_uart_ports = internal unnamed_addr global [7 x ptr] zeroinitializer, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [9 x i8] c"owl-uart\00", align 1
@owl_uart_dt_matches = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s500-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @owl_s500_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s900-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @owl_s900_info }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"id %d out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"could not get mem\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"port %d already allocated\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"could not get clk\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"could not enable clk\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"clock rate is zero\0A\00", align 1
@owl_uart_ops = internal constant %struct.uart_ops { ptr @owl_uart_tx_empty, ptr @owl_uart_set_mctrl, ptr @owl_uart_get_mctrl, ptr @owl_uart_stop_tx, ptr @owl_uart_start_tx, ptr null, ptr null, ptr null, ptr @owl_uart_stop_rx, ptr null, ptr null, ptr @owl_uart_startup, ptr @owl_uart_shutdown, ptr null, ptr @owl_uart_set_termios, ptr null, ptr null, ptr @owl_uart_type, ptr @owl_uart_release_port, ptr @owl_uart_request_port, ptr @owl_uart_config_port, ptr @owl_uart_verify_port, ptr null }, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@owl_s500_info = internal constant %struct.owl_uart_info { i32 16 }, align 4
@owl_s900_info = internal constant %struct.owl_uart_info { i32 32 }, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"ttyOWL\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___earlycon_owl211, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_owl_uart_exit, ptr @__initcall__kmod_owl_uart__210_622_owl_uart_console_initcon, ptr @__initcall__kmod_owl_uart__212_792_owl_uart_init6, ptr @owl_uart_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @owl_uart_console_init() #0 section ".init.text" {
  tail call void @register_console(ptr noundef nonnull @owl_uart_console) #7
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @owl_uart_early_console_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 1
  store ptr @owl_uart_early_console_write, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -19, %2 ]
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @owl_uart_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @owl_uart_platform_driver) #7
  tail call void @uart_unregister_driver(ptr noundef nonnull @owl_uart_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @owl_uart_init() #0 section ".init.text" {
  %1 = tail call i32 @uart_register_driver(ptr noundef nonnull @owl_uart_driver) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @owl_uart_platform_driver, ptr noundef null) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @uart_unregister_driver(ptr noundef nonnull @owl_uart_driver) #7
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_uart_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr [7 x ptr], ptr @owl_uart_ports, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call fastcc void @owl_uart_port_write(ptr noundef nonnull %8, ptr noundef %1, i32 noundef %2)
  br label %11

11:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_uart_console_setup(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 115200, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 110, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 110, ptr %6, align 4
  %7 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 2
  %9 = icmp ugt i16 %8, 6
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = zext i16 %8 to i32
  %12 = getelementptr [7 x ptr], ptr @owl_uart_ports, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.uart_port, ptr %13, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = icmp eq ptr %1, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #7
  %22 = load i32, ptr %3, align 4
  %23 = load i32, ptr %5, align 4
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %6, align 4
  br label %26

26:                                               ; preds = %21, %19
  %27 = phi i32 [ %25, %21 ], [ 110, %19 ]
  %28 = phi i32 [ %24, %21 ], [ 8, %19 ]
  %29 = phi i32 [ %23, %21 ], [ 110, %19 ]
  %30 = phi i32 [ %22, %21 ], [ 115200, %19 ]
  %31 = call i32 @uart_set_options(ptr noundef nonnull %13, ptr noundef %0, i32 noundef %30, i32 noundef %29, i32 noundef %28, i32 noundef %27) #7
  br label %32

32:                                               ; preds = %26, %15, %10, %2
  %33 = phi i32 [ %31, %26 ], [ -22, %2 ], [ -19, %15 ], [ -19, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @owl_uart_port_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !8
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = load i32, ptr @oops_in_progress, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @_raw_spin_trylock(ptr noundef %0) #7
  br label %14

13:                                               ; preds = %8
  tail call void @_raw_spin_lock(ptr noundef %0) #7
  br label %14

14:                                               ; preds = %13, %11, %3
  %15 = phi i32 [ %12, %11 ], [ 1, %13 ], [ 0, %3 ]
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %19 = and i32 %18, -802817
  %20 = or i32 %19, 16384
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %21 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #7, !srcloc !12
  tail call void @uart_console_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @owl_console_putchar) #7
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr i8, ptr %22, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %25 = and i32 %24, 129024
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %27, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !14
  %28 = load ptr, ptr %16, align 4
  %29 = getelementptr i8, ptr %28, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %31 = and i32 %30, 129024
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %27

33:                                               ; preds = %27, %14
  %34 = load ptr, ptr %16, align 4
  %35 = getelementptr i8, ptr %34, i32 12
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %37 = or i32 %36, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %38 = load ptr, ptr %16, align 4
  %39 = getelementptr i8, ptr %38, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %40 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %18) #7, !srcloc !12
  %41 = icmp eq i32 %15, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  %43 = load i16, ptr %0, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  br label %45

45:                                               ; preds = %42, %33
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #7, !srcloc !19
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_console_putchar(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %11, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !21
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %11

17:                                               ; preds = %11, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %1) #7, !srcloc !12
  br label %20

20:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_uart_early_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.earlycon_device, ptr %5, i32 0, i32 1
  tail call fastcc void @owl_uart_port_write(ptr noundef %6, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_uart_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @of_alias_get_id(ptr noundef nonnull %4, ptr noundef nonnull @.str.1) #7
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = tail call ptr @of_match_node(ptr noundef nonnull @owl_uart_dt_matches, ptr noundef %9) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %6, %1
  %16 = phi ptr [ %14, %12 ], [ null, %6 ], [ null, %1 ]
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, 6
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %18) #8
  br label %83

21:                                               ; preds = %15
  %22 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #8
  br label %83

25:                                               ; preds = %21
  %26 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %83, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %17, align 4
  %30 = getelementptr [7 x ptr], ptr @owl_uart_ports, i32 0, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %29) #8
  br label %83

34:                                               ; preds = %28
  %35 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 324, i32 noundef 3520) #7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %83, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #7
  %39 = getelementptr inbounds %struct.owl_uart_port, ptr %35, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #8
  %42 = ptrtoint ptr %38 to i32
  br label %83

43:                                               ; preds = %37
  %44 = tail call i32 @clk_prepare(ptr noundef %38) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = tail call i32 @clk_enable(ptr noundef %38) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  tail call void @clk_unprepare(ptr noundef %38) #7
  br label %50

50:                                               ; preds = %49, %43
  %51 = phi i32 [ %47, %49 ], [ %44, %43 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #8
  br label %83

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 45
  store ptr %2, ptr %53, align 4
  %54 = load i32, ptr %17, align 4
  %55 = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 41
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 38
  store i32 36, ptr %56, align 4
  %57 = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 26
  store i8 2, ptr %57, align 2
  %58 = load i32, ptr %22, align 4
  %59 = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 43
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 20
  store i32 %26, ptr %60, align 4
  %61 = tail call i32 @clk_get_rate(ptr noundef %38) #7
  %62 = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 22
  store i32 %61, ptr %62, align 4
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  br label %83

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 33
  store i32 -1879040000, ptr %66, align 4
  %67 = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 24
  store i8 0, ptr %67, align 4
  %68 = icmp eq ptr %16, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load i32, ptr %16, align 4
  br label %71

71:                                               ; preds = %69, %65
  %72 = phi i32 [ %70, %69 ], [ 16, %65 ]
  %73 = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 23
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 39
  store ptr @owl_uart_ops, ptr %74, align 4
  %75 = load i32, ptr %17, align 4
  %76 = getelementptr [7 x ptr], ptr @owl_uart_ports, i32 0, i32 %75
  store ptr %35, ptr %76, align 4
  %77 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %35, ptr %77, align 8
  %78 = tail call i32 @uart_add_one_port(ptr noundef nonnull @owl_uart_driver, ptr noundef nonnull %35) #7
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %71
  %81 = load i32, ptr %17, align 4
  %82 = getelementptr [7 x ptr], ptr @owl_uart_ports, i32 0, i32 %81
  store ptr null, ptr %82, align 4
  br label %83

83:                                               ; preds = %80, %71, %64, %50, %41, %34, %33, %25, %24, %20
  %84 = phi i32 [ -22, %20 ], [ -16, %33 ], [ %42, %41 ], [ %51, %50 ], [ -22, %64 ], [ -19, %24 ], [ %26, %25 ], [ -12, %34 ], [ %78, %80 ], [ 0, %71 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_uart_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @owl_uart_driver, ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr [7 x ptr], ptr @owl_uart_ports, i32 0, i32 %6
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.owl_uart_port, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_uart_tx_empty(ptr noundef %0) #3 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %7 = lshr i32 %6, 10
  %8 = and i32 %7, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_uart_set_mctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %6 = and i32 %5, -1048577
  %7 = shl i32 %1, 5
  %8 = and i32 %7, 1048576
  %9 = or i32 %6, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %10 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #7, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_uart_get_mctrl(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 320, i32 324
  %11 = and i32 %7, 128
  %12 = icmp ne i32 %11, 0
  %13 = and i32 %4, 4096
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  %16 = or i32 %10, 32
  %17 = select i1 %15, i32 %16, i32 %10
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_uart_stop_tx(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %5 = and i32 %4, -655361
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #7, !srcloc !12
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %10 = or i32 %9, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_uart_start_tx(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 19, i32 1
  %9 = load i8, ptr %8, align 4, !range !22
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %19 = and i32 %18, -655361
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %20 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #7, !srcloc !12
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr i8, ptr %21, i32 12
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %24 = or i32 %23, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !12
  br label %39

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 12
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %32 = or i32 %31, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %33 = load ptr, ptr %28, align 4
  %34 = getelementptr i8, ptr %33, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #7, !srcloc !12
  %35 = load ptr, ptr %28, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %37 = or i32 %36, 524288
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %38 = load ptr, ptr %28, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %37) #7, !srcloc !12
  br label %39

39:                                               ; preds = %27, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_uart_stop_rx(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %5 = and i32 %4, -327681
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #7, !srcloc !12
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %10 = or i32 %9, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_uart_startup(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %3 = load i32, ptr %2, align 4
  %4 = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @owl_uart_irq, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str, ptr noundef %0) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %12 = or i32 %11, 31
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !12
  %15 = load ptr, ptr %8, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %17 = or i32 %16, 819200
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %18 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %7) #7
  br label %19

19:                                               ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_uart_shutdown(ptr noundef %0) #3 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %6 = and i32 %5, -1015809
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %7 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #7
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_uart_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %8 = and i32 %7, -4
  %9 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 48
  switch i32 %11, label %16 [
    i32 0, label %18
    i32 16, label %12
    i32 32, label %14
  ]

12:                                               ; preds = %3
  %13 = or i32 %8, 1
  br label %18

14:                                               ; preds = %3
  %15 = or i32 %8, 2
  br label %18

16:                                               ; preds = %3
  %17 = or i32 %7, 3
  br label %18

18:                                               ; preds = %16, %14, %12, %3
  %19 = phi i32 [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %8, %3 ]
  %20 = and i32 %19, -5
  %21 = lshr i32 %10, 4
  %22 = and i32 %21, 4
  %23 = or i32 %20, %22
  %24 = and i32 %23, -113
  %25 = and i32 %10, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %18
  %28 = and i32 %10, 1073741824
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %10, 512
  %31 = icmp eq i32 %30, 0
  br i1 %29, label %37, label %32

32:                                               ; preds = %27
  br i1 %31, label %35, label %33

33:                                               ; preds = %32
  %34 = or i32 %24, 80
  br label %42

35:                                               ; preds = %32
  %36 = or i32 %23, 112
  br label %42

37:                                               ; preds = %27
  br i1 %31, label %40, label %38

38:                                               ; preds = %37
  %39 = or i32 %24, 64
  br label %42

40:                                               ; preds = %37
  %41 = or i32 %24, 96
  br label %42

42:                                               ; preds = %40, %38, %35, %33, %18
  %43 = phi i32 [ %34, %33 ], [ %36, %35 ], [ %39, %38 ], [ %41, %40 ], [ %24, %18 ]
  %44 = and i32 %43, -4097
  %45 = lshr i32 %10, 19
  %46 = and i32 %45, 4096
  %47 = or i32 %44, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %48 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %47) #7, !srcloc !12
  %49 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 9600, i32 noundef 3200000) #7
  %50 = getelementptr inbounds %struct.owl_uart_port, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = shl i32 %49, 3
  %53 = tail call i32 @clk_set_rate(ptr noundef %51, i32 noundef %52) #7
  %54 = tail call i32 @tty_termios_baud_rate(ptr noundef %1) #7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %42
  tail call void @tty_termios_encode_baud_rate(ptr noundef %1, i32 noundef %49, i32 noundef %49) #7
  br label %57

57:                                               ; preds = %56, %42
  %58 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, 4
  store i32 %60, ptr %58, align 4
  %61 = load i32, ptr %1, align 4
  %62 = and i32 %61, 16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = or i32 %59, 20
  store i32 %65, ptr %58, align 4
  br label %66

66:                                               ; preds = %64, %57
  %67 = load i32, ptr %9, align 4
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %67, i32 noundef %49) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @owl_uart_type(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 36
  %5 = select i1 %4, ptr @.str, ptr null
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_uart_release_port(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = tail call ptr @platform_get_resource(ptr noundef %4, i32 noundef 512, i32 noundef 0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %5, align 4
  %18 = add i32 %16, 1
  %19 = sub i32 %18, %17
  tail call void @__devm_release_region(ptr noundef %12, ptr noundef nonnull @iomem_resource, i32 noundef %14, i32 noundef %19) #7
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void @devm_iounmap(ptr noundef %20, ptr noundef %22) #7
  store ptr null, ptr %21, align 4
  br label %23

23:                                               ; preds = %11, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_uart_request_port(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = tail call ptr @platform_get_resource(ptr noundef %4, i32 noundef 512, i32 noundef 0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %5, align 4
  %14 = add i32 %12, 1
  %15 = sub i32 %14, %13
  %16 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = load ptr, ptr %8, align 4
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi ptr [ %20, %19 ], [ %17, %7 ]
  %23 = tail call ptr @__devm_request_region(ptr noundef %8, ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef %15, ptr noundef %22) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %2, align 4
  %31 = load i32, ptr %9, align 4
  %32 = load i32, ptr %11, align 4
  %33 = load i32, ptr %5, align 4
  %34 = add i32 %32, 1
  %35 = sub i32 %34, %33
  %36 = tail call ptr @devm_ioremap(ptr noundef %30, i32 noundef %31, i32 noundef %35) #7
  %37 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  store ptr %36, ptr %37, align 4
  %38 = icmp eq ptr %36, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29, %25
  br label %40

40:                                               ; preds = %39, %29, %21, %1
  %41 = phi i32 [ 0, %39 ], [ -6, %1 ], [ -16, %21 ], [ -16, %29 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_uart_config_port(ptr nocapture noundef %0, i32 noundef %1) #3 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 36, ptr %6, align 4
  %7 = tail call i32 @owl_uart_request_port(ptr noundef %0)
  br label %8

8:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @owl_uart_verify_port(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 36
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  %12 = select i1 %11, i32 0, i32 -22
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ -22, %2 ], [ %12, %6 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_uart_irq(i32 noundef %0, ptr noundef %1) #3 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %4 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %100, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %13 = and i32 %12, -16385
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %14 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #7, !srcloc !12
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %18 = and i32 %17, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %97

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 7
  %22 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 9
  %23 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 6
  %24 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 28
  %25 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 4
  %26 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 29
  %27 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  br label %28

28:                                               ; preds = %91, %20
  %29 = phi i32 [ %17, %20 ], [ %94, %91 ]
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %21, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %21, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = and i32 %29, 16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %22, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %22, align 4
  %41 = load i32, ptr %23, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %23, align 4
  %43 = load i32, ptr %24, align 4
  %44 = and i32 %43, %29
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i8 0, i8 3
  br label %51

48:                                               ; preds = %35
  %49 = load i32, ptr %25, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %25, align 4
  br label %51

51:                                               ; preds = %48, %38
  %52 = phi i32 [ %29, %48 ], [ %44, %38 ]
  %53 = phi i8 [ 0, %48 ], [ %47, %38 ]
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %57 = load i32, ptr %26, align 4
  %58 = and i32 %57, %52
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %51
  %61 = load ptr, ptr %27, align 4
  %62 = trunc i32 %56 to i8
  %63 = getelementptr inbounds %struct.tty_bufhead, ptr %61, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  %69 = icmp ne i8 %53, 0
  %70 = and i1 %69, %68
  br i1 %70, label %89, label %71

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = icmp eq i32 %67, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 6
  %81 = getelementptr i8, ptr %80, i32 %73
  %82 = getelementptr i8, ptr %81, i32 %75
  store i8 %53, ptr %82, align 1
  %83 = load i32, ptr %72, align 4
  br label %84

84:                                               ; preds = %79, %77
  %85 = phi i32 [ %83, %79 ], [ %73, %77 ]
  %86 = add i32 %85, 1
  store i32 %86, ptr %72, align 4
  %87 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 6
  %88 = getelementptr i8, ptr %87, i32 %85
  store i8 %62, ptr %88, align 1
  br label %91

89:                                               ; preds = %71, %60
  %90 = tail call i32 @__tty_insert_flip_char(ptr noundef %61, i8 noundef zeroext %62, i8 noundef zeroext %53) #7
  br label %91

91:                                               ; preds = %89, %84, %51
  %92 = load ptr, ptr %4, align 4
  %93 = getelementptr i8, ptr %92, i32 12
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %95 = and i32 %94, 32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %28, label %97

97:                                               ; preds = %91, %10
  %98 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %99 = load ptr, ptr %98, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %99) #7
  br label %100

100:                                              ; preds = %97, %2
  %101 = and i32 %7, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %198, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.uart_state, ptr %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.tty_port, ptr %105, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.tty_struct, ptr %108, i32 0, i32 19, i32 1
  %112 = load i8, ptr %111, align 4, !range !22
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %198

114:                                              ; preds = %110, %103
  %115 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 35
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %198

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 24
  %120 = load i8, ptr %119, align 4
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %142, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %4, align 4
  %124 = getelementptr i8, ptr %123, i32 12
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %126 = and i32 %125, 64
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %128, %122
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !23
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !24
  %129 = load ptr, ptr %4, align 4
  %130 = getelementptr i8, ptr %129, i32 12
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %132 = and i32 %131, 64
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %128, label %134

134:                                              ; preds = %128, %122
  %135 = load i8, ptr %119, align 4
  %136 = zext i8 %135 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %137 = load ptr, ptr %4, align 4
  %138 = getelementptr i8, ptr %137, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #7, !srcloc !12
  %139 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 5
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, 1
  store i32 %141, ptr %139, align 4
  store i8 0, ptr %119, align 4
  br label %142

142:                                              ; preds = %134, %118
  %143 = getelementptr inbounds %struct.uart_state, ptr %105, i32 0, i32 2, i32 1
  %144 = load ptr, ptr %4, align 4
  %145 = getelementptr i8, ptr %144, i32 12
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %147 = and i32 %146, 64
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %173

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.uart_state, ptr %105, i32 0, i32 2, i32 2
  %151 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 5
  br label %152

152:                                              ; preds = %156, %149
  %153 = load i32, ptr %143, align 4
  %154 = load i32, ptr %150, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %173, label %156

156:                                              ; preds = %152
  %157 = load ptr, ptr %106, align 4
  %158 = getelementptr i8, ptr %157, i32 %154
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %161 = load ptr, ptr %4, align 4
  %162 = getelementptr i8, ptr %161, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #7, !srcloc !12
  %163 = load i32, ptr %150, align 4
  %164 = add i32 %163, 1
  %165 = and i32 %164, 4095
  store i32 %165, ptr %150, align 4
  %166 = load i32, ptr %151, align 4
  %167 = add i32 %166, 1
  store i32 %167, ptr %151, align 4
  %168 = load ptr, ptr %4, align 4
  %169 = getelementptr i8, ptr %168, i32 12
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %171 = and i32 %170, 64
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %152, label %173

173:                                              ; preds = %156, %152, %142
  %174 = load i32, ptr %143, align 4
  %175 = getelementptr inbounds %struct.uart_state, ptr %105, i32 0, i32 2, i32 2
  %176 = load i32, ptr %175, align 4
  %177 = sub i32 %174, %176
  %178 = and i32 %177, 3840
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  tail call void @uart_write_wakeup(ptr noundef %1) #7
  %181 = load i32, ptr %143, align 4
  %182 = load i32, ptr %175, align 4
  br label %183

183:                                              ; preds = %180, %173
  %184 = phi i32 [ %182, %180 ], [ %176, %173 ]
  %185 = phi i32 [ %181, %180 ], [ %174, %173 ]
  %186 = icmp eq i32 %185, %184
  br i1 %186, label %187, label %198

187:                                              ; preds = %183
  %188 = load ptr, ptr %4, align 4
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %190 = and i32 %189, -655361
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %191 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 %190) #7, !srcloc !12
  %192 = load ptr, ptr %4, align 4
  %193 = getelementptr i8, ptr %192, i32 12
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %195 = or i32 %194, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %196 = load ptr, ptr %4, align 4
  %197 = getelementptr i8, ptr %196, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %195) #7, !srcloc !12
  br label %198

198:                                              ; preds = %187, %183, %114, %110, %100
  %199 = load ptr, ptr %4, align 4
  %200 = getelementptr i8, ptr %199, i32 12
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %200) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %202 = or i32 %201, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %203 = load ptr, ptr %4, align 4
  %204 = getelementptr i8, ptr %203, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %202) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %3) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

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
declare dso_local void @__devm_release_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 352747, i64 352808}
!9 = !{i64 2501159}
!10 = !{i64 2152640482}
!11 = !{i64 2152639842}
!12 = !{i64 2500741}
!13 = !{i64 2152654480}
!14 = !{i64 2152654322}
!15 = !{i64 2148896060}
!16 = !{i64 2148891884}
!17 = !{i64 2148891959, i64 2148891986, i64 2148892033, i64 2148892055, i64 2148892083, i64 2148892103}
!18 = !{i64 2148919063}
!19 = !{i64 355764}
!20 = !{i64 2152652976}
!21 = !{i64 2152652818}
!22 = !{i8 0, i8 2}
!23 = !{i64 2152642474}
!24 = !{i64 2152642316}
