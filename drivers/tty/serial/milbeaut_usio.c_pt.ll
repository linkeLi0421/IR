; ModuleID = '/llk/IR/drivers/tty/serial/milbeaut_usio.c_pt.bc'
source_filename = "../drivers/tty/serial/milbeaut_usio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
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
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.32 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.33 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__initcall__kmod_milbeaut_usio__210_461_mlb_usio_console_initcon = internal global ptr @mlb_usio_console_init, section ".con_initcall.init", align 4
@__UNIQUE_ID___earlycon_mlb_usio211 = internal constant %struct.earlycon_id { [15 x i8] c"mlb_usio\00\00\00\00\00\00\00", i8 0, [128 x i8] c"socionext,milbeaut-usio-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlb_usio_early_console_setup }, section "__earlycon_table", align 4
@mlb_usio_driver = internal global %struct.platform_driver { ptr @mlb_usio_probe, ptr @mlb_usio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mlb_usio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@mlb_usio_uart_driver = internal global %struct.uart_driver { ptr null, ptr @.str.1, ptr @.str.9, i32 0, i32 0, i32 4, ptr @mlb_usio_console, ptr null, ptr null }, align 4
@__initcall__kmod_milbeaut_usio__212_606_mlb_usio_init6 = internal global ptr @mlb_usio_init, section ".initcall6.init", align 4
@__exitcall_mlb_usio_exit = internal global ptr @mlb_usio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author213 = internal constant [31 x i8] c"milbeaut_usio.author=SOCIONEXT\00", section ".modinfo", align 1
@__UNIQUE_ID_description214 = internal constant [52 x i8] c"milbeaut_usio.description=MILBEAUT_USIO/UART Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file215 = internal constant [52 x i8] c"milbeaut_usio.file=drivers/tty/serial/milbeaut_usio\00", section ".modinfo", align 1
@__UNIQUE_ID_license216 = internal constant [26 x i8] c"milbeaut_usio.license=GPL\00", section ".modinfo", align 1
@mlb_usio_console = internal global %struct.console { [16 x i8] c"ttyUSI\00\00\00\00\00\00\00\00\00\00", ptr @mlb_usio_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @mlb_usio_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @mlb_usio_uart_driver, ptr null }, align 4
@mlb_usio_ports = internal global [4 x %struct.uart_port] zeroinitializer, align 4
@.str = private unnamed_addr constant [18 x i8] c"auto-flow-control\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"mlb-usio-uart\00", align 1
@mlb_usio_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,milbeaut-usio-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Missing clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Clock enable failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Missing regs\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@mlb_usio_irq = internal unnamed_addr global [4 x [2 x i32]] zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@mlb_usio_ops = internal constant %struct.uart_ops { ptr @mlb_usio_tx_empty, ptr @mlb_usio_set_mctrl, ptr @mlb_usio_get_mctrl, ptr @mlb_usio_stop_tx, ptr @mlb_usio_start_tx, ptr null, ptr null, ptr null, ptr @mlb_usio_stop_rx, ptr @mlb_usio_enable_ms, ptr @mlb_usio_break_ctl, ptr @mlb_usio_startup, ptr @mlb_usio_shutdown, ptr null, ptr @mlb_usio_set_termios, ptr null, ptr null, ptr @mlb_usio_type, ptr null, ptr null, ptr @mlb_usio_config_port, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Adding port failed: %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.9 = private unnamed_addr constant [7 x i8] c"ttyUSI\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"\013%s: uart registration failed: %d\0A\00", align 1
@__func__.mlb_usio_init = private unnamed_addr constant [14 x i8] c"mlb_usio_init\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"\013%s: drv registration failed: %d\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___earlycon_mlb_usio211, ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_description214, ptr @__UNIQUE_ID_file215, ptr @__UNIQUE_ID_license216, ptr @__exitcall_mlb_usio_exit, ptr @__initcall__kmod_milbeaut_usio__210_461_mlb_usio_console_initcon, ptr @__initcall__kmod_milbeaut_usio__212_606_mlb_usio_init6, ptr @mlb_usio_exit], section "llvm.metadata"
@switch.table.mlb_usio_set_termios = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 0], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mlb_usio_console_init() #0 section ".init.text" {
  tail call void @register_console(ptr noundef nonnull @mlb_usio_console) #9
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @mlb_usio_early_console_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 1
  store ptr @mlb_usio_early_console_write, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -19, %2 ]
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mlb_usio_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mlb_usio_driver) #9
  tail call void @uart_unregister_driver(ptr noundef nonnull @mlb_usio_uart_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mlb_usio_init() #0 section ".init.text" {
  %1 = tail call i32 @uart_register_driver(ptr noundef nonnull @mlb_usio_uart_driver) #9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.mlb_usio_init, i32 noundef %1) #10
  br label %10

5:                                                ; preds = %0
  %6 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mlb_usio_driver, ptr noundef null) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  tail call void @uart_unregister_driver(ptr noundef nonnull @mlb_usio_uart_driver) #9
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.mlb_usio_init, i32 noundef %6) #10
  br label %10

10:                                               ; preds = %8, %5, %3
  %11 = phi i32 [ %1, %3 ], [ %6, %8 ], [ 0, %5 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mlb_usio_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %6
  tail call void @uart_console_write(ptr noundef %7, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @mlb_usio_console_putchar) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mlb_usio_console_setup(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 115200, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 110, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 110, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 8, ptr %6, align 4
  %7 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 2
  %9 = icmp sgt i16 %8, 3
  br i1 %9, label %35, label %10

10:                                               ; preds = %2
  %11 = sext i16 %8 to i32
  %12 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %11
  %13 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %11, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %10
  %17 = icmp eq ptr %1, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5) #9
  br label %19

19:                                               ; preds = %18, %16
  %20 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %11, i32 45
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = call ptr @of_find_property(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef null) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, ptr %5, align 4
  br label %29

28:                                               ; preds = %19
  store i32 114, ptr %5, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 114, %28 ]
  %31 = load i32, ptr %3, align 4
  %32 = load i32, ptr %4, align 4
  %33 = load i32, ptr %6, align 4
  %34 = call i32 @uart_set_options(ptr noundef %12, ptr noundef %0, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %30) #9
  br label %35

35:                                               ; preds = %29, %10, %2
  %36 = phi i32 [ %34, %29 ], [ -19, %2 ], [ -19, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mlb_usio_console_putchar(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 3
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !11
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 3
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %9, label %15

15:                                               ; preds = %9, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %16 = trunc i32 %1 to i16
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %16) #9, !srcloc !13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mlb_usio_early_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.earlycon_device, ptr %5, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @mlb_usio_console_putchar) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mlb_usio_probe(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #10
  %7 = ptrtoint ptr %4 to i32
  br label %59

8:                                                ; preds = %1
  %9 = tail call i32 @clk_prepare(ptr noundef %4) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = tail call i32 @clk_enable(ptr noundef %4) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %4) #9
  br label %15

15:                                               ; preds = %14, %8
  %16 = phi i32 [ %12, %14 ], [ %9, %8 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %16) #10
  br label %59

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %21 = load i32, ptr %2, align 4
  %22 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %21, i32 59
  store ptr %4, ptr %22, align 4
  %23 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #10
  br label %57

26:                                               ; preds = %17
  %27 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %21
  %28 = load i32, ptr %23, align 4
  %29 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 1, %28
  %32 = add i32 %31, %30
  %33 = call ptr @devm_ioremap(ptr noundef %3, i32 noundef %28, i32 noundef %32) #9
  %34 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %21, i32 2
  store ptr %33, ptr %34, align 4
  %35 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.6) #9
  %36 = load i32, ptr %2, align 4
  %37 = getelementptr [4 x [2 x i32]], ptr @mlb_usio_irq, i32 0, i32 %36
  store i32 %35, ptr %37, align 4
  %38 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.7) #9
  %39 = load i32, ptr %2, align 4
  %40 = getelementptr [4 x [2 x i32]], ptr @mlb_usio_irq, i32 0, i32 %39, i32 1
  store i32 %38, ptr %40, align 4
  %41 = getelementptr [4 x [2 x i32]], ptr @mlb_usio_irq, i32 0, i32 %39
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %21, i32 20
  store i32 %42, ptr %43, align 4
  %44 = call i32 @clk_get_rate(ptr noundef %4) #9
  %45 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %21, i32 22
  store i32 %44, ptr %45, align 4
  %46 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %21, i32 23
  store i32 128, ptr %46, align 4
  %47 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %21, i32 48
  store i8 1, ptr %47, align 4
  %48 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %21, i32 26
  store i8 3, ptr %48, align 2
  %49 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %21, i32 33
  store i32 268435488, ptr %49, align 4
  %50 = load i32, ptr %2, align 4
  %51 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %21, i32 41
  store i32 %50, ptr %51, align 4
  %52 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %21, i32 39
  store ptr @mlb_usio_ops, ptr %52, align 4
  %53 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %21, i32 45
  store ptr %3, ptr %53, align 4
  %54 = call i32 @uart_add_one_port(ptr noundef nonnull @mlb_usio_uart_driver, ptr noundef %27) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %54) #10
  br label %57

57:                                               ; preds = %56, %25
  %58 = phi i32 [ -19, %25 ], [ %54, %56 ]
  call void @clk_disable(ptr noundef %4) #9
  call void @clk_unprepare(ptr noundef %4) #9
  br label %59

59:                                               ; preds = %57, %26, %15, %6
  %60 = phi i32 [ %7, %6 ], [ %16, %15 ], [ %58, %57 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mlb_usio_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %3
  %5 = getelementptr [4 x %struct.uart_port], ptr @mlb_usio_ports, i32 0, i32 %3, i32 59
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @mlb_usio_uart_driver, ptr noundef %4) #9
  tail call void @clk_disable(ptr noundef %6) #9
  tail call void @clk_unprepare(ptr noundef %6) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mlb_usio_tx_empty(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 3
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  %6 = and i8 %5, 1
  %7 = zext i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @mlb_usio_set_mctrl(ptr nocapture noundef %0, i32 noundef %1) #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mlb_usio_get_mctrl(ptr nocapture noundef readnone %0) #6 {
  ret i32 352
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mlb_usio_stop_tx(ptr nocapture noundef readonly %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #9, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  %6 = and i16 %5, -513
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %6) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 1
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !19
  %12 = and i8 %11, -5
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %12) #9, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mlb_usio_start_tx(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #9, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %6 = or i16 %5, 512
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %6) #9, !srcloc !13
  %9 = and i16 %5, 1024
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 1
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !24
  %15 = or i8 %14, 4
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 %15) #9, !srcloc !20
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr i8, ptr %18, i32 3
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %19) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  tail call fastcc void @mlb_usio_tx_chars(ptr noundef %0)
  br label %24

24:                                               ; preds = %23, %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mlb_usio_stop_rx(ptr nocapture noundef readonly %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !27
  %6 = and i8 %5, -17
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %6) #9, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mlb_usio_enable_ms(ptr nocapture noundef readonly %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !28
  tail call void @arm_heavy_mb() #9
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !29
  %6 = or i8 %5, 18
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %6) #9, !srcloc !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @mlb_usio_break_ctl(ptr nocapture noundef %0, i32 noundef %1) #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mlb_usio_startup(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [4 x [2 x i32]], ptr @mlb_usio_irq, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @mlb_usio_rx_irq, ptr noundef null, i32 noundef 0, ptr noundef %5, ptr noundef %0) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %1
  %13 = getelementptr [4 x [2 x i32]], ptr @mlb_usio_irq, i32 0, i32 %7, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @request_threaded_irq(i32 noundef %14, ptr noundef nonnull @mlb_usio_tx_irq, ptr noundef null, i32 noundef 0, ptr noundef %5, ptr noundef %0) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, ptr %8, align 4
  %19 = tail call ptr @free_irq(i32 noundef %18, ptr noundef %0) #9
  br label %53

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 2
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %23) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !30
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = tail call ptr @of_find_property(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef null) #9
  %29 = icmp eq ptr %28, null
  %30 = or i8 %24, -128
  %31 = select i1 %29, i8 %24, i8 %30
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !31
  tail call void @arm_heavy_mb() #9
  %33 = load ptr, ptr %21, align 4
  %34 = getelementptr i8, ptr %33, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 0) #9, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !32
  tail call void @arm_heavy_mb() #9
  %35 = load ptr, ptr %21, align 4
  %36 = getelementptr i8, ptr %35, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 %31) #9, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %37 = load ptr, ptr %21, align 4
  %38 = getelementptr i8, ptr %37, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 -128) #9, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %39 = load ptr, ptr %21, align 4
  %40 = getelementptr i8, ptr %39, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %40, i8 -128) #9, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !35
  tail call void @arm_heavy_mb() #9
  %41 = load ptr, ptr %21, align 4
  %42 = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %42, i16 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !36
  tail call void @arm_heavy_mb() #9
  %43 = load ptr, ptr %21, align 4
  %44 = getelementptr i8, ptr %43, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %44, i16 12) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  %45 = load ptr, ptr %21, align 4
  %46 = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %46, i16 2051) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !38
  tail call void @arm_heavy_mb() #9
  %47 = load ptr, ptr %21, align 4
  %48 = getelementptr i8, ptr %47, i32 14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %48, i16 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !39
  tail call void @arm_heavy_mb() #9
  %49 = load ptr, ptr %21, align 4
  %50 = getelementptr i8, ptr %49, i32 14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %50, i16 4096) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !40
  tail call void @arm_heavy_mb() #9
  %51 = load ptr, ptr %21, align 4
  %52 = getelementptr i8, ptr %51, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %52, i8 23) #9, !srcloc !20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %32) #9
  br label %53

53:                                               ; preds = %20, %17, %1
  %54 = phi i32 [ %15, %17 ], [ 0, %20 ], [ %10, %1 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mlb_usio_shutdown(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr [4 x [2 x i32]], ptr @mlb_usio_irq, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %0) #9
  %7 = getelementptr [4 x [2 x i32]], ptr @mlb_usio_irq, i32 0, i32 %3, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mlb_usio_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 3
  %8 = getelementptr inbounds [4 x i32], ptr @switch.table.mlb_usio_set_termios, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %5, 256
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %5, 512
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 16, i32 24
  %15 = select i1 %11, i32 0, i32 %14
  %16 = or i32 %9, %15
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 25
  %20 = load ptr, ptr %19, align 8
  %21 = tail call ptr @of_find_property(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef null) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, ptr %4, align 4
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %3
  %27 = or i32 %16, 128
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i32 [ %27, %26 ], [ %16, %23 ]
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %31) #9
  %33 = icmp ugt i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, ptr %30, align 4
  %36 = udiv i32 %35, %32
  %37 = trunc i32 %36 to i16
  %38 = add i16 %37, -1
  br label %39

39:                                               ; preds = %34, %28
  %40 = phi i16 [ %38, %34 ], [ 0, %28 ]
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %42 = load i32, ptr %4, align 4
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %42, i32 noundef %32) #9
  %43 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 14, ptr %43, align 4
  %44 = load i32, ptr %1, align 4
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 14, i32 62
  store i32 %47, ptr %43, align 4
  %48 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 0, ptr %48, align 4
  %49 = load i32, ptr %1, align 4
  %50 = and i32 %49, 4
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 0, i32 48
  store i32 %52, ptr %48, align 4
  %53 = load i32, ptr %1, align 4
  %54 = and i32 %53, 5
  %55 = icmp eq i32 %54, 5
  br i1 %55, label %56, label %58

56:                                               ; preds = %39
  %57 = or i32 %52, 8
  store i32 %57, ptr %48, align 4
  br label %58

58:                                               ; preds = %56, %39
  %59 = phi i32 [ %57, %56 ], [ %52, %39 ]
  %60 = load i32, ptr %4, align 4
  %61 = and i32 %60, 128
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = or i32 %59, 4
  store i32 %64, ptr %48, align 4
  br label %65

65:                                               ; preds = %63, %58
  %66 = and i32 %5, 64
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i8 1, i8 9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !41
  tail call void @arm_heavy_mb() #9
  %69 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %71, i8 0) #9, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !42
  tail call void @arm_heavy_mb() #9
  %72 = load ptr, ptr %69, align 4
  %73 = getelementptr i8, ptr %72, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %73, i8 -128) #9, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !43
  tail call void @arm_heavy_mb() #9
  %74 = load ptr, ptr %69, align 4
  %75 = getelementptr i8, ptr %74, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %75, i8 -128) #9, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !44
  tail call void @arm_heavy_mb() #9
  %76 = load ptr, ptr %69, align 4
  %77 = getelementptr i8, ptr %76, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %77, i16 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !45
  tail call void @arm_heavy_mb() #9
  %78 = load ptr, ptr %69, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %78, i8 %68) #9, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !46
  tail call void @arm_heavy_mb() #9
  %79 = trunc i32 %29 to i8
  %80 = load ptr, ptr %69, align 4
  %81 = getelementptr i8, ptr %80, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %81, i8 %79) #9, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !47
  tail call void @arm_heavy_mb() #9
  %82 = load ptr, ptr %69, align 4
  %83 = getelementptr i8, ptr %82, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %83, i16 %40) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %84 = load ptr, ptr %69, align 4
  %85 = getelementptr i8, ptr %84, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %85, i16 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !49
  tail call void @arm_heavy_mb() #9
  %86 = load ptr, ptr %69, align 4
  %87 = getelementptr i8, ptr %86, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %87, i16 2063) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %88 = load ptr, ptr %69, align 4
  %89 = getelementptr i8, ptr %88, i32 14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %89, i16 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !51
  tail call void @arm_heavy_mb() #9
  %90 = load ptr, ptr %69, align 4
  %91 = getelementptr i8, ptr %90, i32 14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %91, i16 4096) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %92 = load ptr, ptr %69, align 4
  %93 = getelementptr i8, ptr %92, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %93, i8 23) #9, !srcloc !20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %41) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @mlb_usio_type(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 119
  %5 = select i1 %4, ptr @.str.1, ptr null
  ret ptr %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @mlb_usio_config_port(ptr nocapture noundef writeonly %0, i32 noundef %1) #8 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 119, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mlb_usio_tx_chars(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !53
  tail call void @arm_heavy_mb() #9
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 12
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #9, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !54
  %9 = and i16 %8, -513
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 %9) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !55
  tail call void @arm_heavy_mb() #9
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 1
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !56
  %15 = and i8 %14, -13
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %16, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 %15) #9, !srcloc !20
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 24
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !57
  tail call void @arm_heavy_mb() #9
  %22 = load i8, ptr %18, align 4
  %23 = zext i8 %22 to i16
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 %23) #9, !srcloc !13
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  store i8 0, ptr %18, align 4
  br label %129

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr inbounds %struct.tty_port, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.tty_struct, ptr %38, i32 0, i32 19, i32 1
  %42 = load i8, ptr %41, align 4, !range !58
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %35
  %45 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %44, %40, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr i8, ptr %49, i32 12
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %50) #9, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  %52 = and i16 %51, -513
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr i8, ptr %53, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %54, i16 %52) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %55 = load ptr, ptr %5, align 4
  %56 = getelementptr i8, ptr %55, i32 1
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %56) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !19
  %58 = and i8 %57, -5
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr i8, ptr %59, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %60, i8 %58) #9, !srcloc !20
  br label %129

61:                                               ; preds = %44
  %62 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %5, align 4
  %65 = getelementptr i8, ptr %64, i32 14
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %65) #9, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !59
  %67 = and i16 %66, 255
  %68 = zext i16 %67 to i32
  %69 = sub i32 %63, %68
  %70 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  br label %71

71:                                               ; preds = %71, %61
  %72 = phi i32 [ %69, %61 ], [ %88, %71 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !60
  tail call void @arm_heavy_mb() #9
  %73 = load ptr, ptr %4, align 4
  %74 = load i32, ptr %32, align 4
  %75 = getelementptr i8, ptr %73, i32 %74
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i16
  %78 = load ptr, ptr %5, align 4
  %79 = getelementptr i8, ptr %78, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %79, i16 %77) #9, !srcloc !13
  %80 = load i32, ptr %32, align 4
  %81 = add i32 %80, 1
  %82 = and i32 %81, 4095
  store i32 %82, ptr %32, align 4
  %83 = load i32, ptr %70, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %70, align 4
  %85 = load i32, ptr %30, align 4
  %86 = load i32, ptr %32, align 4
  %87 = icmp ne i32 %85, %86
  %88 = add i32 %72, -1
  %89 = icmp sgt i32 %88, 0
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %71, label %91

91:                                               ; preds = %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !61
  tail call void @arm_heavy_mb() #9
  %92 = load ptr, ptr %5, align 4
  %93 = getelementptr i8, ptr %92, i32 12
  %94 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %93) #9, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !62
  %95 = and i16 %94, -1025
  %96 = load ptr, ptr %5, align 4
  %97 = getelementptr i8, ptr %96, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %97, i16 %95) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !63
  tail call void @arm_heavy_mb() #9
  %98 = load ptr, ptr %5, align 4
  %99 = getelementptr i8, ptr %98, i32 1
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %99) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !64
  %101 = or i8 %100, 4
  %102 = load ptr, ptr %5, align 4
  %103 = getelementptr i8, ptr %102, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %103, i8 %101) #9, !srcloc !20
  %104 = load i32, ptr %30, align 4
  %105 = load i32, ptr %32, align 4
  %106 = sub i32 %104, %105
  %107 = and i32 %106, 3840
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %91
  tail call void @uart_write_wakeup(ptr noundef %0) #9
  %110 = load i32, ptr %30, align 4
  %111 = load i32, ptr %32, align 4
  br label %112

112:                                              ; preds = %109, %91
  %113 = phi i32 [ %111, %109 ], [ %105, %91 ]
  %114 = phi i32 [ %110, %109 ], [ %104, %91 ]
  %115 = icmp eq i32 %114, %113
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %117 = load ptr, ptr %5, align 4
  %118 = getelementptr i8, ptr %117, i32 12
  %119 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %118) #9, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  %120 = and i16 %119, -513
  %121 = load ptr, ptr %5, align 4
  %122 = getelementptr i8, ptr %121, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %122, i16 %120) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %123 = load ptr, ptr %5, align 4
  %124 = getelementptr i8, ptr %123, i32 1
  %125 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %124) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !19
  %126 = and i8 %125, -5
  %127 = load ptr, ptr %5, align 4
  %128 = getelementptr i8, ptr %127, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %128, i8 %126) #9, !srcloc !20
  br label %129

129:                                              ; preds = %116, %112, %48, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mlb_usio_rx_irq(i32 noundef %0, ptr noundef %1) #3 {
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %6 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 8
  %7 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 7
  %8 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 28
  %9 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 4
  %10 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 46
  br label %11

11:                                               ; preds = %49, %2
  %12 = phi i32 [ 1, %2 ], [ %53, %49 ]
  %13 = phi i32 [ 0, %2 ], [ %52, %49 ]
  %14 = phi i8 [ 0, %2 ], [ %51, %49 ]
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 3
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !65
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %102, label %21

21:                                               ; preds = %11
  %22 = and i32 %18, 56
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr i8, ptr %25, i32 4
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %26) #9, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !66
  %28 = trunc i16 %27 to i8
  %29 = load i32, ptr %9, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %9, align 4
  %31 = and i16 %27, 255
  %32 = zext i16 %31 to i32
  %33 = load i32, ptr %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %24
  %36 = icmp eq i16 %31, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %35
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = sub i32 %38, %33
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = tail call i32 @sysrq_mask() #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %1, i32 noundef %32) #9
  br i1 %45, label %49, label %46

46:                                               ; preds = %44, %37, %35
  store i32 0, ptr %10, align 4
  br label %48

47:                                               ; preds = %41
  tail call void @handle_sysrq(i32 noundef %32) #9
  store i32 0, ptr %10, align 4
  br label %49

48:                                               ; preds = %46, %24
  tail call void @uart_insert_char(ptr noundef %1, i32 noundef %18, i32 noundef 8, i32 noundef %32, i32 noundef 0) #9
  br label %49

49:                                               ; preds = %84, %48, %47, %44
  %50 = phi i32 [ %95, %84 ], [ %12, %47 ], [ %12, %48 ], [ %12, %44 ]
  %51 = phi i8 [ %79, %84 ], [ %28, %47 ], [ %28, %48 ], [ %28, %44 ]
  %52 = phi i32 [ %80, %84 ], [ 0, %47 ], [ 0, %48 ], [ 0, %44 ]
  %53 = add i32 %50, -1
  %54 = icmp eq i32 %50, 0
  br i1 %54, label %102, label %11

55:                                               ; preds = %21
  %56 = and i32 %18, 32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %6, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = and i32 %18, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %7, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %7, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, ptr %8, align 4
  %69 = trunc i32 %68 to i8
  %70 = and i8 %17, %69
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 32
  %73 = icmp eq i32 %72, 0
  %74 = and i32 %71, 16
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i32 %13, i32 2
  %77 = and i32 %71, 48
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i8 %14, i8 0
  %80 = select i1 %73, i32 %76, i32 3
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %67
  %83 = zext i8 %79 to i32
  tail call void @uart_insert_char(ptr noundef %1, i32 noundef %71, i32 noundef 8, i32 noundef %83, i32 noundef %80) #9
  br label %84

84:                                               ; preds = %82, %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %85 = load ptr, ptr %5, align 4
  %86 = getelementptr i8, ptr %85, i32 3
  %87 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %86) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !68
  %88 = or i8 %87, -128
  %89 = load ptr, ptr %5, align 4
  %90 = getelementptr i8, ptr %89, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %90, i8 %88) #9, !srcloc !20
  %91 = load ptr, ptr %5, align 4
  %92 = getelementptr i8, ptr %91, i32 14
  %93 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %92) #9, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !69
  %94 = lshr i16 %93, 8
  %95 = zext i16 %94 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !70
  tail call void @arm_heavy_mb() #9
  %96 = load ptr, ptr %5, align 4
  %97 = getelementptr i8, ptr %96, i32 12
  %98 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %97) #9, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !71
  %99 = or i16 %98, 2050
  %100 = load ptr, ptr %5, align 4
  %101 = getelementptr i8, ptr %100, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %101, i16 %99) #9, !srcloc !13
  br label %49

102:                                              ; preds = %49, %11
  tail call void @tty_flip_buffer_push(ptr noundef %4) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !72
  %103 = load i16, ptr %1, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !73
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !74
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mlb_usio_tx_irq(i32 noundef %0, ptr noundef %1) #3 {
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 3
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !76
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call fastcc void @mlb_usio_tx_chars(ptr noundef %1)
  br label %10

10:                                               ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !72
  %11 = load i16, ptr %1, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !73
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !74
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 2977052}
!9 = !{i64 2152682570}
!10 = !{i64 2152682898}
!11 = !{i64 2152682740}
!12 = !{i64 2152683086}
!13 = !{i64 2976234}
!14 = !{i64 2152668844}
!15 = !{i64 2152652918}
!16 = !{i64 2976434}
!17 = !{i64 2152653424}
!18 = !{i64 2152654089}
!19 = !{i64 2152654236}
!20 = !{i64 2976657}
!21 = !{i64 2152660670}
!22 = !{i64 2152660971}
!23 = !{i64 2152661874}
!24 = !{i64 2152662021}
!25 = !{i64 2152662289}
!26 = !{i64 2152663002}
!27 = !{i64 2152663149}
!28 = !{i64 2152663955}
!29 = !{i64 2152664102}
!30 = !{i64 2152670506}
!31 = !{i64 2152671127}
!32 = !{i64 2152671368}
!33 = !{i64 2152671717}
!34 = !{i64 2152672089}
!35 = !{i64 2152672355}
!36 = !{i64 2152672888}
!37 = !{i64 2152673648}
!38 = !{i64 2152674135}
!39 = !{i64 2152674551}
!40 = !{i64 2152675360}
!41 = !{i64 2152677345}
!42 = !{i64 2152677691}
!43 = !{i64 2152678063}
!44 = !{i64 2152678329}
!45 = !{i64 2152678642}
!46 = !{i64 2152678885}
!47 = !{i64 2152679129}
!48 = !{i64 2152679447}
!49 = !{i64 2152680319}
!50 = !{i64 2152680926}
!51 = !{i64 2152681342}
!52 = !{i64 2152682151}
!53 = !{i64 2152655117}
!54 = !{i64 2152655623}
!55 = !{i64 2152656411}
!56 = !{i64 2152656558}
!57 = !{i64 2152656860}
!58 = !{i8 0, i8 2}
!59 = !{i64 2152657388}
!60 = !{i64 2152657593}
!61 = !{i64 2152658688}
!62 = !{i64 2152659195}
!63 = !{i64 2152659859}
!64 = !{i64 2152660006}
!65 = !{i64 2152664400}
!66 = !{i64 2152665064}
!67 = !{i64 2152666275}
!68 = !{i64 2152666422}
!69 = !{i64 2152666825}
!70 = !{i64 2152667754}
!71 = !{i64 2152668289}
!72 = !{i64 2148893445}
!73 = !{i64 2148889269}
!74 = !{i64 2148889344, i64 2148889371, i64 2148889418, i64 2148889440, i64 2148889468, i64 2148889488}
!75 = !{i64 2148916448}
!76 = !{i64 2152668557}
