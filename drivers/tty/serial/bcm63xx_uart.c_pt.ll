; ModuleID = '/llk/IR/drivers/tty/serial/bcm63xx_uart.c_pt.bc'
source_filename = "../drivers/tty/serial/bcm63xx_uart.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
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
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.34, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.34 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.32, %struct.anon.33, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.32 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.33 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }

@__initcall__kmod_bcm63xx_uart__210_765_bcm63xx_console_initcon = internal global ptr @bcm63xx_console_init, section ".con_initcall.init", align 4
@__UNIQUE_ID___earlycon_bcm63xx_uart211 = internal constant %struct.earlycon_id { [15 x i8] c"bcm63xx_uart\00\00\00", i8 0, [128 x i8] c"brcm,bcm6345-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_early_console_setup }, section "__earlycon_table", align 4
@bcm_uart_platform_driver = internal global %struct.platform_driver { ptr @bcm_uart_probe, ptr @bcm_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm63xx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@bcm_uart_driver = internal global %struct.uart_driver { ptr null, ptr @.str, ptr @.str.4, i32 4, i32 64, i32 2, ptr @bcm63xx_console, ptr null, ptr null }, align 4
@__initcall__kmod_bcm63xx_uart__212_917_bcm_uart_init6 = internal global ptr @bcm_uart_init, section ".initcall6.init", align 4
@__exitcall_bcm_uart_exit = internal global ptr @bcm_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author213 = internal constant [53 x i8] c"bcm63xx_uart.author=Maxime Bizon <mbizon@freebox.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description214 = internal constant [62 x i8] c"bcm63xx_uart.description=Broadcom 63xx integrated uart driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file215 = internal constant [50 x i8] c"bcm63xx_uart.file=drivers/tty/serial/bcm63xx_uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license216 = internal constant [25 x i8] c"bcm63xx_uart.license=GPL\00", section ".modinfo", align 1
@bcm63xx_console = internal global %struct.console { [16 x i8] c"ttyS\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @bcm_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @bcm_uart_driver, ptr null }, align 4
@ports = internal global [2 x %struct.uart_port] zeroinitializer, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [13 x i8] c"bcm63xx_uart\00", align 1
@bcm63xx_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6345-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"refclk\00", align 1
@bcm_uart_ops = internal constant %struct.uart_ops { ptr @bcm_uart_tx_empty, ptr @bcm_uart_set_mctrl, ptr @bcm_uart_get_mctrl, ptr @bcm_uart_stop_tx, ptr @bcm_uart_start_tx, ptr null, ptr null, ptr null, ptr @bcm_uart_stop_rx, ptr @bcm_uart_enable_ms, ptr @bcm_uart_break_ctl, ptr @bcm_uart_startup, ptr @bcm_uart_shutdown, ptr null, ptr @bcm_uart_set_termios, ptr null, ptr null, ptr @bcm_uart_type, ptr @bcm_uart_release_port, ptr @bcm_uart_request_port, ptr @bcm_uart_config_port, ptr @bcm_uart_verify_port, ptr null }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.4 = private unnamed_addr constant [5 x i8] c"ttyS\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___earlycon_bcm63xx_uart211, ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_description214, ptr @__UNIQUE_ID_file215, ptr @__UNIQUE_ID_license216, ptr @__exitcall_bcm_uart_exit, ptr @__initcall__kmod_bcm63xx_uart__210_765_bcm63xx_console_initcon, ptr @__initcall__kmod_bcm63xx_uart__212_917_bcm_uart_init6, ptr @bcm_uart_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm63xx_console_init() #0 section ".init.text" {
  tail call void @register_console(ptr noundef nonnull @bcm63xx_console) #9
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @bcm_early_console_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 1
  store ptr @bcm_early_write, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -19, %2 ]
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm_uart_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_uart_platform_driver) #9
  tail call void @uart_unregister_driver(ptr noundef nonnull @bcm_uart_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm_uart_init() #0 section ".init.text" {
  %1 = tail call i32 @uart_register_driver(ptr noundef nonnull @bcm_uart_driver) #9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_uart_platform_driver, ptr noundef null) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @uart_unregister_driver(ptr noundef nonnull @bcm_uart_driver) #9
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %6
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !8
  %9 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %6, i32 46
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %79

12:                                               ; preds = %3
  %13 = load i32, ptr @oops_in_progress, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @_raw_spin_trylock(ptr noundef %7) #9
  %17 = icmp eq i32 %16, 0
  tail call void @uart_console_write(ptr noundef %7, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @bcm_console_putchar) #9
  %18 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %6, i32 2
  br label %19

19:                                               ; preds = %26, %15
  %20 = phi i32 [ 9999, %15 ], [ %28, %26 ]
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr i8, ptr %21, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !9
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #9
  %28 = add nsw i32 %20, -1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %19

30:                                               ; preds = %26, %19
  %31 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %6, i32 33
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 8388608
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %42, %30
  %36 = phi i32 [ %44, %42 ], [ 999999, %30 ]
  %37 = load ptr, ptr %18, align 4
  %38 = getelementptr i8, ptr %37, i32 12
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !9
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #9
  %44 = add nsw i32 %36, -1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %35

46:                                               ; preds = %42, %35, %30
  br i1 %17, label %108, label %76

47:                                               ; preds = %12
  tail call void @_raw_spin_lock(ptr noundef %7) #9
  tail call void @uart_console_write(ptr noundef %7, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @bcm_console_putchar) #9
  %48 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %6, i32 2
  br label %49

49:                                               ; preds = %56, %47
  %50 = phi i32 [ 9999, %47 ], [ %58, %56 ]
  %51 = load ptr, ptr %48, align 4
  %52 = getelementptr i8, ptr %51, i32 16
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !9
  %54 = and i32 %53, 32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748) #9
  %58 = add nsw i32 %50, -1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %49

60:                                               ; preds = %56, %49
  %61 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %6, i32 33
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 8388608
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %72, %60
  %66 = phi i32 [ %74, %72 ], [ 999999, %60 ]
  %67 = load ptr, ptr %48, align 4
  %68 = getelementptr i8, ptr %67, i32 12
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #9, !srcloc !9
  %70 = and i32 %69, 2
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748) #9
  %74 = add nsw i32 %66, -1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %65

76:                                               ; preds = %72, %65, %60, %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %77 = load i16, ptr %7, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %108

79:                                               ; preds = %3
  tail call void @uart_console_write(ptr noundef %7, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @bcm_console_putchar) #9
  %80 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %6, i32 2
  br label %81

81:                                               ; preds = %88, %79
  %82 = phi i32 [ 9999, %79 ], [ %90, %88 ]
  %83 = load ptr, ptr %80, align 4
  %84 = getelementptr i8, ptr %83, i32 16
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #9, !srcloc !9
  %86 = and i32 %85, 32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748) #9
  %90 = add nsw i32 %82, -1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %81

92:                                               ; preds = %88, %81
  %93 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %6, i32 33
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 8388608
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %104, %92
  %98 = phi i32 [ %106, %104 ], [ 999999, %92 ]
  %99 = load ptr, ptr %80, align 4
  %100 = getelementptr i8, ptr %99, i32 12
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #9, !srcloc !9
  %102 = and i32 %101, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 214748) #9
  %106 = add nsw i32 %98, -1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %97

108:                                              ; preds = %104, %97, %92, %76, %46
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #9, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_console_setup(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 9600, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 110, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 110, ptr %6, align 4
  %7 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 2
  %9 = icmp ugt i16 %8, 1
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = zext i16 %8 to i32
  %12 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %11
  %13 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %11, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  %17 = icmp eq ptr %1, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #9
  %19 = load i32, ptr %3, align 4
  %20 = load i32, ptr %5, align 4
  %21 = load i32, ptr %4, align 4
  %22 = load i32, ptr %6, align 4
  br label %23

23:                                               ; preds = %18, %16
  %24 = phi i32 [ %22, %18 ], [ 110, %16 ]
  %25 = phi i32 [ %21, %18 ], [ 8, %16 ]
  %26 = phi i32 [ %20, %18 ], [ 110, %16 ]
  %27 = phi i32 [ %19, %18 ], [ 9600, %16 ]
  %28 = call i32 @uart_set_options(ptr noundef %12, ptr noundef %0, i32 noundef %27, i32 noundef %26, i32 noundef %25, i32 noundef %24) #9
  br label %29

29:                                               ; preds = %23, %10, %2
  %30 = phi i32 [ %28, %23 ], [ -22, %2 ], [ -19, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_console_putchar(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  br label %4

4:                                                ; preds = %11, %2
  %5 = phi i32 [ 9999, %2 ], [ %13, %11 ]
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !9
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #9
  %13 = add nsw i32 %5, -1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %4

15:                                               ; preds = %11, %4
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 8388608
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %27, %15
  %21 = phi i32 [ %29, %27 ], [ 999999, %15 ]
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !9
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #9
  %29 = add nsw i32 %21, -1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %20

31:                                               ; preds = %27, %20, %15
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %1) #9, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_early_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.earlycon_device, ptr %5, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @bcm_console_putchar) #9
  %7 = getelementptr inbounds %struct.earlycon_device, ptr %5, i32 0, i32 1, i32 2
  br label %8

8:                                                ; preds = %15, %3
  %9 = phi i32 [ 9999, %3 ], [ %17, %15 ]
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !9
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #9
  %17 = add nsw i32 %9, -1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %8

19:                                               ; preds = %15, %8
  %20 = getelementptr inbounds %struct.earlycon_device, ptr %5, i32 0, i32 1, i32 33
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 8388608
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %31, %19
  %25 = phi i32 [ %33, %31 ], [ 999999, %19 ]
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr i8, ptr %26, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !9
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #9
  %33 = add nsw i32 %25, -1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %24

35:                                               ; preds = %31, %24, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_uart_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  br label %16

9:                                                ; preds = %1
  %10 = tail call i32 @of_alias_get_id(ptr noundef nonnull %4, ptr noundef nonnull @.str.1) #9
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = icmp slt i32 %10, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 8
  %15 = tail call i32 @of_alias_get_id(ptr noundef %14, ptr noundef nonnull @.str.2) #9
  store i32 %15, ptr %11, align 4
  br label %16

16:                                               ; preds = %13, %9, %6
  %17 = phi i32 [ %8, %6 ], [ %10, %9 ], [ %15, %13 ]
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %19 = icmp ugt i32 %17, 1
  br i1 %19, label %69, label %20

20:                                               ; preds = %16
  %21 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %17
  %22 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %17, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %69

25:                                               ; preds = %20
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(320) %21, i8 0, i32 320, i1 false)
  %26 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %69, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %26, align 4
  %30 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %17, i32 43
  store i32 %29, ptr %30, align 4
  %31 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %26) #9
  store ptr %31, ptr %22, align 4
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = ptrtoint ptr %31 to i32
  br label %69

35:                                               ; preds = %28
  %36 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %69, label %38

38:                                               ; preds = %35
  %39 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %17, i32 20
  store i32 %36, ptr %39, align 4
  %40 = tail call ptr @clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #9
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load ptr, ptr %3, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call ptr @of_clk_get(ptr noundef nonnull %43, i32 noundef 0) #9
  br label %47

47:                                               ; preds = %45, %42, %38
  %48 = phi ptr [ %46, %45 ], [ %40, %42 ], [ %40, %38 ]
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %69, label %50

50:                                               ; preds = %47
  %51 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %17, i32 26
  store i8 2, ptr %51, align 2
  %52 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %17, i32 39
  store ptr @bcm_uart_ops, ptr %52, align 4
  %53 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %17, i32 33
  store i32 268435456, ptr %53, align 4
  %54 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %17, i32 45
  store ptr %2, ptr %54, align 4
  %55 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %17, i32 23
  store i32 16, ptr %55, align 4
  %56 = tail call i32 @clk_get_rate(ptr noundef %48) #9
  %57 = lshr i32 %56, 1
  %58 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %17, i32 22
  store i32 %57, ptr %58, align 4
  %59 = load i32, ptr %18, align 4
  %60 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %17, i32 41
  store i32 %59, ptr %60, align 4
  %61 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %17, i32 48
  store i8 1, ptr %61, align 4
  tail call void @clk_put(ptr noundef %48) #9
  %62 = tail call i32 @uart_add_one_port(ptr noundef nonnull @bcm_uart_driver, ptr noundef %21) #9
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %50
  %65 = load i32, ptr %18, align 4
  %66 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %65, i32 2
  store ptr null, ptr %66, align 4
  br label %69

67:                                               ; preds = %50
  %68 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %21, ptr %68, align 8
  br label %69

69:                                               ; preds = %67, %64, %47, %35, %33, %25, %20, %16
  %70 = phi i32 [ %34, %33 ], [ %62, %64 ], [ 0, %67 ], [ -22, %16 ], [ -16, %20 ], [ -19, %25 ], [ %36, %35 ], [ -19, %47 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_uart_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @bcm_uart_driver, ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr [2 x %struct.uart_port], ptr @ports, i32 0, i32 %6, i32 2
  store ptr null, ptr %7, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_uart_tx_empty(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !9
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_uart_set_mctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !9
  %7 = and i32 %6, -4
  %8 = lshr i32 %1, 1
  %9 = and i32 %8, 3
  %10 = or i32 %9, %7
  %11 = xor i32 %10, 3
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #9, !srcloc !15
  %14 = load ptr, ptr %3, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !9
  %16 = and i32 %15, -1048577
  %17 = shl i32 %1, 5
  %18 = and i32 %17, 1048576
  %19 = or i32 %16, %18
  %20 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #9, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_uart_get_mctrl(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !9
  %6 = shl i32 %5, 7
  %7 = and i32 %6, 128
  %8 = shl i32 %5, 4
  %9 = and i32 %8, 32
  %10 = or i32 %9, %7
  %11 = and i32 %8, 64
  %12 = or i32 %10, %11
  %13 = shl i32 %5, 5
  %14 = and i32 %13, 256
  %15 = or i32 %12, %14
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_uart_stop_tx(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !9
  %5 = and i32 %4, -4194305
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #9, !srcloc !15
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !9
  %10 = and i32 %9, -2621441
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #9, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_uart_start_tx(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !9
  %6 = or i32 %5, 2621440
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !15
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !9
  %11 = or i32 %10, 4194304
  %12 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #9, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_uart_stop_rx(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !9
  %6 = and i32 %5, -92274689
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_uart_enable_ms(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !9
  %6 = or i32 %5, 65536
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_uart_break_ctl(ptr noundef %0, i32 noundef %1) #3 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !9
  %7 = icmp eq i32 %1, 0
  %8 = and i32 %6, -16385
  %9 = select i1 %7, i32 0, i32 16384
  %10 = or i32 %8, %9
  %11 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #9, !srcloc !15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_uart_startup(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !9
  %5 = and i32 %4, -14680065
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #9, !srcloc !15
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #9, !srcloc !15
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !9
  %11 = or i32 %10, 192
  %12 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #9, !srcloc !15
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !9
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !9
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr i8, ptr %19, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !9
  %22 = and i32 %21, -65281
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 1
  %26 = shl i32 %25, 8
  %27 = or i32 %26, %22
  %28 = shl i32 %25, 12
  %29 = or i32 %27, %28
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #9, !srcloc !15
  %32 = load ptr, ptr %2, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !9
  %34 = and i32 %33, -32
  %35 = or i32 %34, 1
  %36 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #9, !srcloc !15
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 394752) #9, !srcloc !15
  %39 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %1
  %47 = load ptr, ptr %42, align 4
  br label %48

48:                                               ; preds = %46, %1
  %49 = phi ptr [ %47, %46 ], [ %44, %1 ]
  %50 = tail call i32 @request_threaded_irq(i32 noundef %40, ptr noundef nonnull @bcm_uart_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %49, ptr noundef %0) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr i8, ptr %53, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 92274688) #9, !srcloc !15
  %55 = load ptr, ptr %2, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #9, !srcloc !9
  %57 = or i32 %56, 14680064
  %58 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %57) #9, !srcloc !15
  br label %59

59:                                               ; preds = %52, %48
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_uart_shutdown(ptr noundef %0) #3 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #9, !srcloc !15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #9
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !9
  %8 = and i32 %7, -14680065
  %9 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #9, !srcloc !15
  %10 = load ptr, ptr %3, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !9
  %12 = or i32 %11, 192
  %13 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #9, !srcloc !15
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !9
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @free_irq(i32 noundef %18, ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_uart_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !9
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %57

11:                                               ; preds = %3
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #9
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #9
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #9
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #9
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #9
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #9
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #9
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #9
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #9
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #9
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !9
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %11
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #9
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #9
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #9
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #9
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #9
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #9
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #9
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #9
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #9
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #9
  %38 = load ptr, ptr %5, align 4
  %39 = getelementptr i8, ptr %38, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !9
  %41 = and i32 %40, 32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %27
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #9
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #9
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #9
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #9
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #9
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #9
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #9
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #9
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #9
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #9
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr i8, ptr %54, i32 16
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #9, !srcloc !9
  br label %57

57:                                               ; preds = %43, %27, %11, %3
  %58 = load ptr, ptr %5, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #9, !srcloc !9
  %60 = and i32 %59, -14680065
  %61 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %60) #9, !srcloc !15
  %62 = load ptr, ptr %5, align 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #9, !srcloc !9
  %64 = or i32 %63, 192
  %65 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %64) #9, !srcloc !15
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr i8, ptr %66, i32 20
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #9, !srcloc !9
  %69 = load ptr, ptr %5, align 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !9
  %71 = and i32 %70, -12289
  %72 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 48
  switch i32 %74, label %79 [
    i32 0, label %81
    i32 16, label %75
    i32 32, label %77
  ]

75:                                               ; preds = %57
  %76 = or i32 %71, 4096
  br label %81

77:                                               ; preds = %57
  %78 = or i32 %71, 8192
  br label %81

79:                                               ; preds = %57
  %80 = or i32 %70, 12288
  br label %81

81:                                               ; preds = %79, %77, %75, %57
  %82 = phi i32 [ %80, %79 ], [ %78, %77 ], [ %76, %75 ], [ %71, %57 ]
  %83 = and i32 %73, 64
  %84 = icmp eq i32 %83, 0
  %85 = or i32 %82, 3840
  %86 = and i32 %82, -462593
  %87 = or i32 %86, 1792
  %88 = select i1 %84, i32 %87, i32 %85
  %89 = and i32 %88, -458753
  %90 = shl i32 %73, 9
  %91 = and i32 %90, 131072
  %92 = and i32 %73, 512
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i32 0, i32 327680
  %95 = or i32 %94, %91
  %96 = or i32 %95, %89
  %97 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %96) #9, !srcloc !15
  %98 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %99 = load i32, ptr %98, align 4
  %100 = lshr i32 %99, 4
  %101 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %100) #9
  %102 = tail call i32 @uart_get_divisor(ptr noundef %0, i32 noundef %101) #9
  %103 = add i32 %102, -1
  %104 = load ptr, ptr %5, align 4
  %105 = getelementptr i8, ptr %104, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #9, !srcloc !15
  %106 = load ptr, ptr %5, align 4
  %107 = getelementptr i8, ptr %106, i32 16
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #9, !srcloc !9
  %109 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 2048
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %81
  %114 = and i32 %108, -65537
  %115 = load i32, ptr %72, align 4
  %116 = and i32 %115, -2147481600
  %117 = icmp eq i32 %116, 2048
  br i1 %117, label %120, label %118

118:                                              ; preds = %113, %81
  %119 = or i32 %108, 65536
  br label %120

120:                                              ; preds = %118, %113
  %121 = phi i32 [ %119, %118 ], [ %114, %113 ]
  %122 = load ptr, ptr %5, align 4
  %123 = getelementptr i8, ptr %122, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #9, !srcloc !15
  %124 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 255, ptr %124, align 4
  %125 = load i32, ptr %1, align 4
  %126 = and i32 %125, 16
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 255, i32 1023
  store i32 %128, ptr %124, align 4
  %129 = load i32, ptr %1, align 4
  %130 = and i32 %129, 3
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %120
  %133 = or i32 %128, 1024
  store i32 %133, ptr %124, align 4
  br label %134

134:                                              ; preds = %132, %120
  %135 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 0, ptr %135, align 4
  %136 = load i32, ptr %1, align 4
  %137 = shl i32 %136, 7
  %138 = and i32 %137, 512
  store i32 %138, ptr %135, align 4
  %139 = load i32, ptr %1, align 4
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %134
  %143 = or i32 %138, 1024
  store i32 %143, ptr %135, align 4
  br label %144

144:                                              ; preds = %142, %134
  %145 = phi i32 [ %143, %142 ], [ %138, %134 ]
  %146 = load i32, ptr %72, align 4
  %147 = and i32 %146, 128
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = or i32 %145, 255
  store i32 %150, ptr %135, align 4
  %151 = load i32, ptr %72, align 4
  br label %152

152:                                              ; preds = %149, %144
  %153 = phi i32 [ %151, %149 ], [ %146, %144 ]
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %153, i32 noundef %101) #9
  %154 = load ptr, ptr %5, align 4
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #9, !srcloc !9
  %156 = or i32 %155, 14680064
  %157 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %156) #9, !srcloc !15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @bcm_uart_type(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 89
  %5 = select i1 %4, ptr @.str, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @bcm_uart_release_port(ptr nocapture noundef %0) #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcm_uart_request_port(ptr nocapture noundef readnone %0) #7 {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @bcm_uart_config_port(ptr nocapture noundef writeonly %0, i32 noundef %1) #8 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 89, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @bcm_uart_verify_port(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 89
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %14 = load i8, ptr %13, align 2
  %15 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 9
  %16 = load i8, ptr %15, align 2
  %17 = icmp eq i8 %14, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 14
  %22 = load ptr, ptr %21, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = icmp eq i32 %20, %23
  %25 = select i1 %24, i32 0, i32 -22
  br label %26

26:                                               ; preds = %18, %12, %6, %2
  %27 = phi i32 [ -22, %2 ], [ -22, %6 ], [ -22, %12 ], [ %25, %18 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_uart_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !9
  %7 = and i32 %6, 1408
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %187, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 7
  %13 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 4
  %14 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 9
  %15 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 8
  %16 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 6
  %17 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 28
  %18 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 46
  %19 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 29
  %20 = getelementptr inbounds %struct.tty_bufhead, ptr %11, i32 0, i32 8
  %21 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 17
  %22 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 48
  %23 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %24 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %25 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 33
  br label %26

26:                                               ; preds = %183, %9
  %27 = phi i32 [ 32, %9 ], [ %184, %183 ]
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !9
  %31 = and i32 %30, 128
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %60, label %33, !prof !16

33:                                               ; preds = %26
  %34 = load ptr, ptr %3, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !9
  %36 = or i32 %35, 64
  %37 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %36) #9, !srcloc !15
  %38 = load i32, ptr %12, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %12, align 4
  %40 = load ptr, ptr %20, align 4
  %41 = getelementptr inbounds %struct.tty_buffer, ptr %40, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.tty_buffer, ptr %40, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.tty_buffer, ptr %40, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.tty_buffer, ptr %40, i32 0, i32 6
  %53 = getelementptr i8, ptr %52, i32 %47
  %54 = getelementptr i8, ptr %53, i32 %49
  store i8 4, ptr %54, align 1
  %55 = load i32, ptr %46, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %46, align 4
  %57 = getelementptr i8, ptr %52, i32 %55
  store i8 0, ptr %57, align 1
  br label %60

58:                                               ; preds = %45, %33
  %59 = tail call i32 @__tty_insert_flip_char(ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext 4) #9
  br label %60

60:                                               ; preds = %58, %51, %26
  %61 = and i32 %30, 2048
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %186, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %3, align 4
  %65 = getelementptr i8, ptr %64, i32 20
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #9, !srcloc !9
  %67 = load i32, ptr %13, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %13, align 4
  %69 = and i32 %66, 255
  %70 = and i32 %66, 1792
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %132, label %72, !prof !16

72:                                               ; preds = %63
  %73 = and i32 %66, 1024
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %108, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %14, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %14, align 4
  %78 = load ptr, ptr %10, align 4
  %79 = load ptr, ptr %21, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  tail call void %79(ptr noundef %1) #9
  br label %82

82:                                               ; preds = %81, %75
  %83 = load i8, ptr %22, align 4
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %23, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %98, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.console, ptr %86, i32 0, i32 9
  %90 = load i16, ptr %89, align 2
  %91 = sext i16 %90 to i32
  %92 = load i32, ptr %24, align 4
  %93 = icmp eq i32 %92, %91
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, ptr %18, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %94
  store i32 0, ptr %18, align 4
  br label %98

98:                                               ; preds = %97, %88, %85, %82
  %99 = load i32, ptr %25, align 4
  %100 = and i32 %99, 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.tty_port, ptr %78, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  tail call void @do_SAK(ptr noundef %104) #9
  br label %108

105:                                              ; preds = %94
  %106 = load volatile i32, ptr @jiffies, align 64
  %107 = add i32 %106, 500
  store i32 %107, ptr %18, align 4
  br label %183

108:                                              ; preds = %102, %98, %72
  %109 = and i32 %66, 512
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, ptr %15, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr %15, align 4
  br label %114

114:                                              ; preds = %111, %108
  %115 = and i32 %66, 256
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr %16, align 4
  %119 = add i32 %118, 1
  store i32 %119, ptr %16, align 4
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, ptr %17, align 4
  %122 = and i32 %121, %66
  %123 = lshr i32 %122, 10
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = and i32 %122, 256
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i8 %125, i8 2
  %129 = and i32 %122, 512
  %130 = icmp eq i32 %129, 0
  %131 = select i1 %130, i8 %128, i8 3
  br label %132

132:                                              ; preds = %120, %63
  %133 = phi i32 [ %66, %63 ], [ %122, %120 ]
  %134 = phi i8 [ 0, %63 ], [ %131, %120 ]
  %135 = load i32, ptr %18, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %150, label %137

137:                                              ; preds = %132
  %138 = icmp eq i32 %69, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %137
  %140 = load volatile i32, ptr @jiffies, align 64
  %141 = sub i32 %140, %135
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = tail call i32 @sysrq_mask() #9
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %1, i32 noundef %69) #9
  br i1 %147, label %183, label %148

148:                                              ; preds = %146, %139, %137
  store i32 0, ptr %18, align 4
  br label %150

149:                                              ; preds = %143
  tail call void @handle_sysrq(i32 noundef %69) #9
  store i32 0, ptr %18, align 4
  br label %183

150:                                              ; preds = %148, %132
  %151 = load i32, ptr %19, align 4
  %152 = and i32 %151, %133
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %183

154:                                              ; preds = %150
  %155 = trunc i32 %66 to i8
  %156 = load ptr, ptr %20, align 4
  %157 = getelementptr inbounds %struct.tty_buffer, ptr %156, i32 0, i32 5
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, 1
  %160 = icmp ne i32 %159, 0
  %161 = icmp ne i8 %134, 0
  %162 = and i1 %161, %160
  br i1 %162, label %181, label %163

163:                                              ; preds = %154
  %164 = getelementptr inbounds %struct.tty_buffer, ptr %156, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.tty_buffer, ptr %156, i32 0, i32 2
  %167 = load i32, ptr %166, align 4
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %181

169:                                              ; preds = %163
  %170 = icmp eq i32 %159, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.tty_buffer, ptr %156, i32 0, i32 6
  %173 = getelementptr i8, ptr %172, i32 %165
  %174 = getelementptr i8, ptr %173, i32 %167
  store i8 %134, ptr %174, align 1
  %175 = load i32, ptr %164, align 4
  br label %176

176:                                              ; preds = %171, %169
  %177 = phi i32 [ %175, %171 ], [ %165, %169 ]
  %178 = add i32 %177, 1
  store i32 %178, ptr %164, align 4
  %179 = getelementptr inbounds %struct.tty_buffer, ptr %156, i32 0, i32 6
  %180 = getelementptr i8, ptr %179, i32 %177
  store i8 %155, ptr %180, align 1
  br label %183

181:                                              ; preds = %163, %154
  %182 = tail call i32 @__tty_insert_flip_char(ptr noundef %11, i8 noundef zeroext %155, i8 noundef zeroext %134) #9
  br label %183

183:                                              ; preds = %181, %176, %150, %149, %146, %105
  %184 = add nsw i32 %27, -1
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %26

186:                                              ; preds = %183, %60
  tail call void @tty_flip_buffer_push(ptr noundef %11) #9
  br label %187

187:                                              ; preds = %186, %2
  %188 = and i32 %6, 40
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %286, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 24
  %192 = load i8, ptr %191, align 4
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %190
  %195 = zext i8 %192 to i32
  %196 = load ptr, ptr %3, align 4
  %197 = getelementptr i8, ptr %196, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %195) #9, !srcloc !15
  %198 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 5
  %199 = load i32, ptr %198, align 4
  %200 = add i32 %199, 1
  store i32 %200, ptr %198, align 4
  store i8 0, ptr %191, align 4
  br label %286

201:                                              ; preds = %190
  %202 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.tty_port, ptr %203, i32 0, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %211, label %207

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.tty_struct, ptr %205, i32 0, i32 19, i32 1
  %209 = load i8, ptr %208, align 4, !range !17
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %207, %201
  %212 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 35
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %226, label %215

215:                                              ; preds = %211, %207
  %216 = load ptr, ptr %3, align 4
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %216) #9, !srcloc !9
  %218 = and i32 %217, -4194305
  %219 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 %218) #9, !srcloc !15
  %220 = load ptr, ptr %3, align 4
  %221 = getelementptr i8, ptr %220, i32 16
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %221) #9, !srcloc !9
  %223 = and i32 %222, -2621441
  %224 = load ptr, ptr %3, align 4
  %225 = getelementptr i8, ptr %224, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %223) #9, !srcloc !15
  br label %286

226:                                              ; preds = %211
  %227 = getelementptr inbounds %struct.uart_state, ptr %203, i32 0, i32 2
  %228 = getelementptr inbounds %struct.uart_state, ptr %203, i32 0, i32 2, i32 1
  %229 = load i32, ptr %228, align 4
  %230 = getelementptr inbounds %struct.uart_state, ptr %203, i32 0, i32 2, i32 2
  %231 = load i32, ptr %230, align 4
  %232 = icmp eq i32 %229, %231
  br i1 %232, label %279, label %233

233:                                              ; preds = %226
  %234 = load ptr, ptr %3, align 4
  %235 = getelementptr i8, ptr %234, i32 8
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %235) #9, !srcloc !9
  %237 = lshr i32 %236, 24
  %238 = and i32 %237, 31
  %239 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 23
  %240 = load i32, ptr %239, align 4
  %241 = sub i32 %240, %238
  %242 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 5
  br label %243

243:                                              ; preds = %249, %233
  %244 = phi i32 [ %241, %233 ], [ %250, %249 ]
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load i32, ptr %228, align 4
  %248 = load i32, ptr %230, align 4
  br label %266

249:                                              ; preds = %243
  %250 = add i32 %244, -1
  %251 = load ptr, ptr %227, align 4
  %252 = load i32, ptr %230, align 4
  %253 = getelementptr i8, ptr %251, i32 %252
  %254 = load i8, ptr %253, align 1
  %255 = zext i8 %254 to i32
  %256 = load ptr, ptr %3, align 4
  %257 = getelementptr i8, ptr %256, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 %255) #9, !srcloc !15
  %258 = load i32, ptr %230, align 4
  %259 = add i32 %258, 1
  %260 = and i32 %259, 4095
  store i32 %260, ptr %230, align 4
  %261 = load i32, ptr %242, align 4
  %262 = add i32 %261, 1
  store i32 %262, ptr %242, align 4
  %263 = load i32, ptr %228, align 4
  %264 = load i32, ptr %230, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %243

266:                                              ; preds = %249, %246
  %267 = phi i32 [ %248, %246 ], [ %263, %249 ]
  %268 = phi i32 [ %247, %246 ], [ %263, %249 ]
  %269 = sub i32 %268, %267
  %270 = and i32 %269, 3840
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %266
  tail call void @uart_write_wakeup(ptr noundef %1) #9
  %273 = load i32, ptr %228, align 4
  %274 = load i32, ptr %230, align 4
  br label %275

275:                                              ; preds = %272, %266
  %276 = phi i32 [ %274, %272 ], [ %267, %266 ]
  %277 = phi i32 [ %273, %272 ], [ %268, %266 ]
  %278 = icmp eq i32 %277, %276
  br i1 %278, label %279, label %286

279:                                              ; preds = %275, %226
  %280 = load ptr, ptr %3, align 4
  %281 = getelementptr i8, ptr %280, i32 16
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %281) #9, !srcloc !9
  %283 = and i32 %282, -2621441
  %284 = load ptr, ptr %3, align 4
  %285 = getelementptr i8, ptr %284, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %285, i32 %283) #9, !srcloc !15
  br label %286

286:                                              ; preds = %279, %275, %215, %194, %187
  %287 = and i32 %6, 65536
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %302, label %289

289:                                              ; preds = %286
  %290 = load ptr, ptr %3, align 4
  %291 = getelementptr i8, ptr %290, i32 12
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %291) #9, !srcloc !9
  %293 = and i32 %292, 32
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %289
  %296 = and i32 %292, 2
  tail call void @uart_handle_cts_change(ptr noundef %1, i32 noundef %296) #9
  br label %297

297:                                              ; preds = %295, %289
  %298 = and i32 %292, 64
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %297
  %301 = and i32 %292, 4
  tail call void @uart_handle_dcd_change(ptr noundef %1, i32 noundef %301) #9
  br label %302

302:                                              ; preds = %300, %297, %286
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %303 = load i16, ptr %1, align 4
  %304 = add i16 %303, 1
  store i16 %304, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_divisor(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }

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
!8 = !{i64 325406, i64 325467}
!9 = !{i64 4721723}
!10 = !{i64 2149242084}
!11 = !{i64 2149237908}
!12 = !{i64 2149237983, i64 2149238010, i64 2149238057, i64 2149238079, i64 2149238107, i64 2149238127}
!13 = !{i64 2149265087}
!14 = !{i64 328423}
!15 = !{i64 4721305}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i8 0, i8 2}
