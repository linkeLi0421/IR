; ModuleID = '/llk/IR/drivers/tty/serial/digicolor-usart.c_pt.bc'
source_filename = "../drivers/tty/serial/digicolor-usart.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.digicolor_port = type { %struct.uart_port, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.32, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.32 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.33, %struct.anon.34, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.33 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.34 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__initcall__kmod_digicolor_usart__210_550_digicolor_uart_init6 = internal global ptr @digicolor_uart_init, section ".initcall6.init", align 4
@digicolor_uart_platform = internal global %struct.platform_driver { ptr @digicolor_uart_probe, ptr @digicolor_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @digicolor_uart_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@digicolor_uart = internal global %struct.uart_driver { ptr null, ptr @.str, ptr @.str.4, i32 0, i32 0, i32 3, ptr null, ptr null, ptr null }, align 4
@__exitcall_digicolor_uart_exit = internal global ptr @digicolor_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [56 x i8] c"digicolor_usart.author=Baruch Siach <baruch@tkos.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [67 x i8] c"digicolor_usart.description=Conexant Digicolor USART serial driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [56 x i8] c"digicolor_usart.file=drivers/tty/serial/digicolor-usart\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [28 x i8] c"digicolor_usart.license=GPL\00", section ".modinfo", align 1
@digicolor_console = internal global %struct.console { [16 x i8] c"ttyS\00\00\00\00\00\00\00\00\00\00\00\00", ptr @digicolor_uart_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @digicolor_uart_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr null, ptr null }, align 4
@digicolor_ports = internal unnamed_addr global [3 x ptr] zeroinitializer, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [16 x i8] c"digicolor-usart\00", align 1
@digicolor_uart_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cnxt,cx92755-usart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Missing device tree node\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@digicolor_uart_ops = internal constant %struct.uart_ops { ptr @digicolor_uart_tx_empty, ptr @digicolor_uart_set_mctrl, ptr @digicolor_uart_get_mctrl, ptr @digicolor_uart_stop_tx, ptr @digicolor_uart_start_tx, ptr null, ptr null, ptr null, ptr @digicolor_uart_stop_rx, ptr null, ptr @digicolor_uart_break_ctl, ptr @digicolor_uart_startup, ptr @digicolor_uart_shutdown, ptr null, ptr @digicolor_uart_set_termios, ptr null, ptr null, ptr @digicolor_uart_type, ptr @digicolor_uart_release_port, ptr @digicolor_uart_request_port, ptr @digicolor_uart_config_port, ptr null, ptr null }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"DIGICOLOR USART\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ttyS\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_digicolor_uart_exit, ptr @__initcall__kmod_digicolor_usart__210_550_digicolor_uart_init6, ptr @digicolor_uart_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @digicolor_uart_init() #0 section ".init.text" {
  store ptr @digicolor_console, ptr getelementptr inbounds (%struct.uart_driver, ptr @digicolor_uart, i32 0, i32 6), align 4
  store ptr @digicolor_uart, ptr getelementptr inbounds (%struct.console, ptr @digicolor_console, i32 0, i32 13), align 4
  %1 = tail call i32 @uart_register_driver(ptr noundef nonnull @digicolor_uart) #8
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @digicolor_uart_platform, ptr noundef null) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @uart_unregister_driver(ptr noundef nonnull @digicolor_uart) #8
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @digicolor_uart_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @digicolor_uart_platform) #8
  tail call void @uart_unregister_driver(ptr noundef nonnull @digicolor_uart) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digicolor_uart_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr [3 x ptr], ptr @digicolor_ports, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @oops_in_progress, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !8
  %13 = tail call i32 @_raw_spin_trylock(ptr noundef %8) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %18

15:                                               ; preds = %3
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #8
  br label %18

17:                                               ; preds = %11
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #8, !srcloc !9
  tail call void @uart_console_write(ptr noundef %8, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @digicolor_uart_console_putchar) #8
  br label %20

18:                                               ; preds = %15, %11
  %19 = phi i32 [ %12, %11 ], [ %16, %15 ]
  tail call void @uart_console_write(ptr noundef %8, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @digicolor_uart_console_putchar) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %19) #8
  br label %20

20:                                               ; preds = %18, %17
  %21 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 2
  br label %22

22:                                               ; preds = %22, %20
  %23 = load ptr, ptr %21, align 4
  %24 = getelementptr i8, ptr %23, i32 2
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #8, !srcloc !10
  %26 = and i8 %25, 64
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %22, label %28

28:                                               ; preds = %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digicolor_uart_console_setup(ptr noundef %0, ptr noundef %1) #3 {
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
  %9 = icmp ugt i16 %8, 2
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = zext i16 %8 to i32
  %12 = getelementptr [3 x ptr], ptr @digicolor_ports, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %1, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  %18 = load i32, ptr %3, align 4
  %19 = load i32, ptr %5, align 4
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %6, align 4
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi i32 [ %21, %17 ], [ 110, %15 ]
  %24 = phi i32 [ %20, %17 ], [ 8, %15 ]
  %25 = phi i32 [ %19, %17 ], [ 110, %15 ]
  %26 = phi i32 [ %18, %17 ], [ 115200, %15 ]
  %27 = call i32 @uart_set_options(ptr noundef nonnull %13, ptr noundef %0, i32 noundef %26, i32 noundef %25, i32 noundef %24, i32 noundef %23) #8
  br label %28

28:                                               ; preds = %22, %10, %2
  %29 = phi i32 [ %27, %22 ], [ -22, %2 ], [ -19, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digicolor_uart_console_putchar(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 10
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #8, !srcloc !10
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !12
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 10
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #8, !srcloc !10
  %13 = and i8 %12, 16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %2
  %16 = trunc i32 %1 to i8
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %16) #8, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digicolor_uart_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #9
  br label %59

7:                                                ; preds = %1
  %8 = tail call i32 @of_alias_get_id(ptr noundef nonnull %4, ptr noundef nonnull @.str.2) #8
  %9 = icmp ugt i32 %8, 2
  br i1 %9, label %59, label %10

10:                                               ; preds = %7
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 364, i32 noundef 3520) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %59, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #8
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = ptrtoint ptr %14 to i32
  br label %59

18:                                               ; preds = %13
  %19 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 43
  store i32 %20, ptr %21, align 4
  %22 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %19) #8
  %23 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = ptrtoint ptr %22 to i32
  br label %59

27:                                               ; preds = %18
  %28 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %59, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 20
  store i32 %28, ptr %31, align 4
  %32 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 26
  store i8 2, ptr %32, align 2
  %33 = tail call i32 @clk_get_rate(ptr noundef %14) #8
  %34 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 22
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 23
  store i32 16, ptr %35, align 4
  %36 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 45
  store ptr %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 39
  store ptr @digicolor_uart_ops, ptr %37, align 4
  %38 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 41
  store i32 %8, ptr %38, align 4
  %39 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 38
  store i32 110, ptr %39, align 4
  store i32 0, ptr %11, align 4
  %40 = getelementptr [3 x ptr], ptr @digicolor_ports, i32 0, i32 %8
  store ptr %11, ptr %40, align 4
  %41 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %41, align 8
  %42 = getelementptr inbounds %struct.digicolor_port, ptr %11, i32 0, i32 1
  store i32 -32, ptr %42, align 4
  %43 = getelementptr inbounds %struct.digicolor_port, ptr %11, i32 0, i32 1, i32 0, i32 1
  store volatile ptr %43, ptr %43, align 4
  %44 = getelementptr inbounds %struct.digicolor_port, ptr %11, i32 0, i32 1, i32 0, i32 1, i32 1
  store ptr %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.digicolor_port, ptr %11, i32 0, i32 1, i32 0, i32 2
  store ptr @digicolor_rx_poll, ptr %45, align 4
  %46 = getelementptr inbounds %struct.digicolor_port, ptr %11, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %46, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #8
  %47 = load i32, ptr %31, align 4
  %48 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %30
  %52 = load ptr, ptr %2, align 4
  br label %53

53:                                               ; preds = %51, %30
  %54 = phi ptr [ %52, %51 ], [ %49, %30 ]
  %55 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %47, ptr noundef nonnull @digicolor_uart_int, ptr noundef null, i32 noundef 0, ptr noundef %54, ptr noundef nonnull %11) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = tail call i32 @uart_add_one_port(ptr noundef nonnull @digicolor_uart, ptr noundef nonnull %11) #8
  br label %59

59:                                               ; preds = %57, %53, %27, %25, %16, %10, %7, %6
  %60 = phi i32 [ %17, %16 ], [ %26, %25 ], [ %58, %57 ], [ -6, %6 ], [ -22, %7 ], [ -12, %10 ], [ %28, %27 ], [ %55, %53 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digicolor_uart_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @digicolor_uart, ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digicolor_rx_poll(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -312
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 10
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #8, !srcloc !10
  %6 = and i8 %5, 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 29
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 2) #8, !srcloc !13
  br label %11

11:                                               ; preds = %8, %1
  %12 = load ptr, ptr @system_wq, align 4
  %13 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %12, ptr noundef %0, i32 noundef 10) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digicolor_uart_int(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 31
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #8, !srcloc !10
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 3) #8, !srcloc !13
  %9 = zext i8 %6 to i32
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %77, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 10
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #8, !srcloc !10
  %17 = and i8 %16, 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 4
  %21 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 8
  %22 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 6
  %23 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 7
  %24 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 28
  %25 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 29
  br label %26

26:                                               ; preds = %68, %19
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %28) #8, !srcloc !10
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr i8, ptr %30, i32 2
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %31) #8, !srcloc !10
  %33 = load i32, ptr %20, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %20, align 4
  %35 = icmp eq i8 %32, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %26
  %37 = zext i8 %32 to i32
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = and i32 %37, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = and i32 %37, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43, %40, %36
  %47 = phi ptr [ %21, %36 ], [ %22, %40 ], [ %23, %43 ]
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, ptr %24, align 4
  %52 = and i32 %51, %37
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = and i32 %52, 2
  %57 = icmp eq i32 %56, 0
  %58 = and i32 %52, 4
  %59 = select i1 %57, i32 %58, i32 2
  br label %60

60:                                               ; preds = %55, %50, %26
  %61 = phi i32 [ 0, %26 ], [ 3, %50 ], [ %59, %55 ]
  %62 = phi i32 [ 0, %26 ], [ %52, %50 ], [ %52, %55 ]
  %63 = load i32, ptr %25, align 4
  %64 = and i32 %63, %62
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = zext i8 %29 to i32
  tail call void @uart_insert_char(ptr noundef %1, i32 noundef %62, i32 noundef 4, i32 noundef %67, i32 noundef %61) #8
  br label %68

68:                                               ; preds = %66, %60
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr i8, ptr %69, i32 10
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %70) #8, !srcloc !10
  %72 = and i8 %71, 4
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %26, label %74

74:                                               ; preds = %68, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %13) #8
  %75 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %76 = load ptr, ptr %75, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %76) #8
  br label %77

77:                                               ; preds = %74, %2
  %78 = and i32 %9, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %159, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.uart_state, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %3, align 4
  %85 = getelementptr i8, ptr %84, i32 10
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %85) #8, !srcloc !10
  %87 = and i8 %86, 16
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %159

89:                                               ; preds = %80
  %90 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %91 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 24
  %92 = load i8, ptr %91, align 4
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = load ptr, ptr %3, align 4
  %96 = getelementptr i8, ptr %95, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %96, i8 %92) #8, !srcloc !13
  %97 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 5
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %97, align 4
  store i8 0, ptr %91, align 4
  br label %158

100:                                              ; preds = %89
  %101 = getelementptr inbounds %struct.uart_state, ptr %82, i32 0, i32 2, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.uart_state, ptr %82, i32 0, i32 2, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %121, label %106

106:                                              ; preds = %100
  %107 = load ptr, ptr %81, align 4
  %108 = getelementptr inbounds %struct.tty_port, ptr %107, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.tty_struct, ptr %109, i32 0, i32 19, i32 1
  %113 = load i8, ptr %112, align 4, !range !14
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111, %106
  %116 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 35
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 5
  br label %128

121:                                              ; preds = %115, %111, %100
  %122 = load ptr, ptr %3, align 4
  %123 = getelementptr i8, ptr %122, i32 30
  %124 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %123) #8, !srcloc !10
  %125 = and i8 %124, -2
  %126 = load ptr, ptr %3, align 4
  %127 = getelementptr i8, ptr %126, i32 30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %127, i8 %125) #8, !srcloc !13
  br label %158

128:                                              ; preds = %132, %119
  %129 = phi i32 [ %104, %119 ], [ %150, %132 ]
  %130 = phi i32 [ %102, %119 ], [ %149, %132 ]
  %131 = icmp eq i32 %130, %129
  br i1 %131, label %151, label %132

132:                                              ; preds = %128
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %133 = load ptr, ptr %83, align 4
  %134 = load i32, ptr %103, align 4
  %135 = getelementptr i8, ptr %133, i32 %134
  %136 = load i8, ptr %135, align 1
  %137 = load ptr, ptr %3, align 4
  %138 = getelementptr i8, ptr %137, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %138, i8 %136) #8, !srcloc !13
  %139 = load i32, ptr %103, align 4
  %140 = add i32 %139, 1
  %141 = and i32 %140, 4095
  store i32 %141, ptr %103, align 4
  %142 = load i32, ptr %120, align 4
  %143 = add i32 %142, 1
  store i32 %143, ptr %120, align 4
  %144 = load ptr, ptr %3, align 4
  %145 = getelementptr i8, ptr %144, i32 10
  %146 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %145) #8, !srcloc !10
  %147 = and i8 %146, 16
  %148 = icmp eq i8 %147, 0
  %149 = load i32, ptr %101, align 4
  %150 = load i32, ptr %103, align 4
  br i1 %148, label %128, label %151

151:                                              ; preds = %132, %128
  %152 = phi i32 [ %150, %132 ], [ %129, %128 ]
  %153 = phi i32 [ %149, %132 ], [ %129, %128 ]
  %154 = sub i32 %153, %152
  %155 = and i32 %154, 3840
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  tail call void @uart_write_wakeup(ptr noundef %1) #8
  br label %158

158:                                              ; preds = %157, %151, %121, %94
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %90) #8
  br label %159

159:                                              ; preds = %158, %80, %77
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digicolor_uart_tx_empty(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 2
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #8, !srcloc !10
  %6 = lshr i8 %5, 6
  %7 = and i8 %6, 1
  %8 = zext i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @digicolor_uart_set_mctrl(ptr nocapture noundef %0, i32 noundef %1) #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @digicolor_uart_get_mctrl(ptr nocapture noundef readnone %0) #5 {
  ret i32 32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digicolor_uart_stop_tx(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 30
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #8, !srcloc !10
  %6 = and i8 %5, -2
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %6) #8, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digicolor_uart_start_tx(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 30
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #8, !srcloc !10
  %6 = or i8 %5, 1
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %6) #8, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digicolor_uart_stop_rx(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 30
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #8, !srcloc !10
  %6 = and i8 %5, -3
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %6) #8, !srcloc !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @digicolor_uart_break_ctl(ptr nocapture noundef %0, i32 noundef %1) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digicolor_uart_startup(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 1) #8, !srcloc !13
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr i8, ptr %4, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 4) #8, !srcloc !13
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 0) #8, !srcloc !13
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 -113) #8, !srcloc !13
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 8) #8, !srcloc !13
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 3) #8, !srcloc !13
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 3) #8, !srcloc !13
  %16 = getelementptr inbounds %struct.digicolor_port, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr @system_wq, align 4
  %18 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %17, ptr noundef %16, i32 noundef 10) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digicolor_uart_shutdown(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 0) #8, !srcloc !13
  %4 = getelementptr inbounds %struct.digicolor_port, ptr %0, i32 0, i32 1
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digicolor_uart_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -1073741825
  store i32 %6, ptr %4, align 4
  %7 = load i32, ptr %1, align 4
  %8 = and i32 %7, -4
  store i32 %8, ptr %1, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 20
  %12 = lshr i32 %10, 8
  %13 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %11, i32 noundef %12) #8
  %14 = tail call i32 @uart_get_divisor(ptr noundef %0, i32 noundef %13) #8
  %15 = load i32, ptr %4, align 4
  %16 = and i32 %15, 48
  %17 = icmp ne i32 %16, 32
  %18 = zext i1 %17 to i8
  %19 = trunc i32 %15 to i8
  %20 = lshr i8 %19, 5
  %21 = and i8 %20, 2
  %22 = or i8 %21, %18
  %23 = and i32 %15, 256
  %24 = icmp eq i32 %23, 0
  %25 = and i32 %15, 512
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i8 4, i8 20
  %28 = select i1 %24, i8 0, i8 %27
  %29 = or i8 %22, %28
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 4, ptr %30, align 4
  %31 = load i32, ptr %1, align 4
  %32 = and i32 %31, 16
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 4, i32 7
  store i32 %34, ptr %30, align 4
  %35 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 0, ptr %35, align 4
  %36 = load i32, ptr %4, align 4
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 7, i32 0
  store i32 %39, ptr %35, align 4
  %40 = add i32 %14, -1
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #8
  %42 = load i32, ptr %4, align 4
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %42, i32 noundef %13) #8
  %43 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %45, i8 %29) #8, !srcloc !13
  %46 = trunc i32 %40 to i8
  %47 = load ptr, ptr %43, align 4
  %48 = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %48, i8 %46) #8, !srcloc !13
  %49 = lshr i32 %40, 8
  %50 = trunc i32 %49 to i8
  %51 = load ptr, ptr %43, align 4
  %52 = getelementptr i8, ptr %51, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %52, i8 %50) #8, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %41) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @digicolor_uart_type(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 110
  %5 = select i1 %4, ptr @.str.3, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @digicolor_uart_release_port(ptr nocapture noundef %0) #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @digicolor_uart_request_port(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @digicolor_uart_config_port(ptr nocapture noundef writeonly %0, i32 noundef %1) #7 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 110, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_divisor(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 459738, i64 459799}
!9 = !{i64 462755}
!10 = !{i64 3496460}
!11 = !{i64 2152630469}
!12 = !{i64 2152630311}
!13 = !{i64 3496065}
!14 = !{i8 0, i8 2}
!15 = !{i64 2152623821}
