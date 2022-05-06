; ModuleID = '/llk/IR/drivers/tty/serial/vt8500_serial.c_pt.bc'
source_filename = "../drivers/tty/serial/vt8500_serial.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.vt8500_port = type { %struct.uart_port, [16 x i8], ptr, i32, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
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
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.33 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.34 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__initcall__kmod_vt8500_serial__210_744_vt8500_serial_init6 = internal global ptr @vt8500_serial_init, section ".initcall6.init", align 4
@vt8500_uart_driver = internal global %struct.uart_driver { ptr null, ptr @.str, ptr @.str.1, i32 0, i32 0, i32 6, ptr @vt8500_console, ptr null, ptr null }, align 4
@vt8500_platform_driver = internal global %struct.platform_driver { ptr @vt8500_serial_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @wmt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"vt8500_serial\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ttyWMT\00", align 1
@vt8500_console = internal global %struct.console { [16 x i8] c"ttyWMT\00\00\00\00\00\00\00\00\00\00", ptr @vt8500_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @vt8500_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @vt8500_uart_driver, ptr null }, align 4
@vt8500_uart_ports = internal unnamed_addr global [6 x ptr] zeroinitializer, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wmt_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,vt8500-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vt8500_flags }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wm,wm8880-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wm8880_flags }, %struct.of_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@vt8500_ports_in_use = internal global [1 x i32] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@vt8500_uart_pops = internal constant %struct.uart_ops { ptr @vt8500_tx_empty, ptr @vt8500_set_mctrl, ptr @vt8500_get_mctrl, ptr @vt8500_stop_tx, ptr @vt8500_start_tx, ptr null, ptr null, ptr null, ptr @vt8500_stop_rx, ptr @vt8500_enable_ms, ptr @vt8500_break_ctl, ptr @vt8500_startup, ptr @vt8500_shutdown, ptr null, ptr @vt8500_set_termios, ptr null, ptr null, ptr @vt8500_type, ptr @vt8500_release_port, ptr @vt8500_request_port, ptr @vt8500_config_port, ptr @vt8500_verify_port, ptr null }, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"VT8500 UART%d\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"vt8500_serial%d\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@vt8500_flags = internal global i32 0, align 4
@wm8880_flags = internal global i32 2, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_vt8500_serial__210_744_vt8500_serial_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vt8500_serial_init() #0 section ".init.text" {
  %1 = tail call i32 @uart_register_driver(ptr noundef nonnull @vt8500_uart_driver) #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7, !prof !8

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vt8500_platform_driver, ptr noundef null) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %3
  tail call void @uart_unregister_driver(ptr noundef nonnull @vt8500_uart_driver) #10
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt8500_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = icmp slt i16 %5, 0
  %8 = load i32, ptr getelementptr inbounds (%struct.uart_driver, ptr @vt8500_uart_driver, i32 0, i32 5), align 4
  %9 = icmp sle i32 %8, %6
  %10 = select i1 %7, i1 true, i1 %9, !prof !9
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/vt8500_serial.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #10, !srcloc !10
  unreachable

12:                                               ; preds = %3
  %13 = getelementptr [6 x ptr], ptr @vt8500_uart_ports, i32 0, i32 %6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.uart_port, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %19 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 20) #10, !srcloc !14
  tail call void @uart_console_write(ptr noundef %14, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @vt8500_console_putchar) #10
  br label %20

20:                                               ; preds = %27, %12
  %21 = phi i32 [ 10000, %12 ], [ %25, %27 ]
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr i8, ptr %22, i32 36
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %25 = add nsw i32 %21, -1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #10
  %29 = and i32 %24, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %20

31:                                               ; preds = %27, %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %32 = load ptr, ptr %15, align 4
  %33 = getelementptr i8, ptr %32, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 20) #10, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vt8500_console_setup(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 9600, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 110, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 110, ptr %6, align 4
  %7 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 2
  %9 = sext i16 %8 to i32
  %10 = load i32, ptr getelementptr inbounds (%struct.uart_driver, ptr @vt8500_uart_driver, i32 0, i32 5), align 4
  %11 = icmp sle i32 %10, %9
  %12 = icmp slt i16 %8, 0
  %13 = or i1 %12, %11
  br i1 %13, label %31, label %14, !prof !9

14:                                               ; preds = %2
  %15 = getelementptr [6 x ptr], ptr @vt8500_uart_ports, i32 0, i32 %9
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %14
  %19 = icmp eq ptr %1, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #10
  %21 = load i32, ptr %3, align 4
  %22 = load i32, ptr %5, align 4
  %23 = load i32, ptr %4, align 4
  %24 = load i32, ptr %6, align 4
  br label %25

25:                                               ; preds = %20, %18
  %26 = phi i32 [ %24, %20 ], [ 110, %18 ]
  %27 = phi i32 [ %23, %20 ], [ 8, %18 ]
  %28 = phi i32 [ %22, %20 ], [ 110, %18 ]
  %29 = phi i32 [ %21, %20 ], [ 9600, %18 ]
  %30 = call i32 @uart_set_options(ptr noundef nonnull %16, ptr noundef %0, i32 noundef %29, i32 noundef %28, i32 noundef %27, i32 noundef %26) #10
  br label %31

31:                                               ; preds = %25, %14, %2
  %32 = phi i32 [ %30, %25 ], [ -6, %2 ], [ -19, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt8500_console_putchar(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  br label %4

4:                                                ; preds = %11, %2
  %5 = phi i32 [ 10000, %2 ], [ %9, %11 ]
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %9 = add nsw i32 %5, -1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #10
  %13 = and i32 %8, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %4

15:                                               ; preds = %11, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  %16 = trunc i32 %1 to i8
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %17, i32 4096
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %16) #10, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_serial_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_device_get_match_data(ptr noundef %2) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %74, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %74, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %74, label %13

13:                                               ; preds = %10
  %14 = icmp eq ptr %4, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = tail call i32 @of_alias_get_id(ptr noundef nonnull %4, ptr noundef nonnull @.str.2) #10
  %17 = icmp ugt i32 %16, 5
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %13
  %19 = tail call i32 @_find_first_zero_bit_le(ptr noundef nonnull @vt8500_ports_in_use, i32 noundef 6) #10
  %20 = icmp sgt i32 %19, 5
  br i1 %20, label %74, label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %19, %18 ], [ %16, %15 ]
  %23 = tail call i32 @_test_and_set_bit(i32 noundef %22, ptr noundef nonnull @vt8500_ports_in_use) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %21
  %26 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 352, i32 noundef 3520) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %74, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %8) #10
  %30 = getelementptr inbounds %struct.uart_port, ptr %26, i32 0, i32 2
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = ptrtoint ptr %29 to i32
  br label %74

34:                                               ; preds = %28
  %35 = load ptr, ptr %3, align 8
  %36 = tail call ptr @of_clk_get(ptr noundef %35, i32 noundef 0) #10
  %37 = getelementptr inbounds %struct.vt8500_port, ptr %26, i32 0, i32 2
  store ptr %36, ptr %37, align 4
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #11
  br label %74

40:                                               ; preds = %34
  %41 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %36)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #11
  br label %74

44:                                               ; preds = %40
  %45 = load i32, ptr %5, align 4
  %46 = getelementptr inbounds %struct.vt8500_port, ptr %26, i32 0, i32 5
  store i32 %45, ptr %46, align 4
  %47 = tail call i32 @clk_get_rate(ptr noundef %36) #10
  %48 = add i32 %47, 6000000
  %49 = udiv i32 %48, 12000000
  %50 = getelementptr inbounds %struct.vt8500_port, ptr %26, i32 0, i32 3
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.uart_port, ptr %26, i32 0, i32 38
  store i32 97, ptr %51, align 4
  %52 = getelementptr inbounds %struct.uart_port, ptr %26, i32 0, i32 26
  store i8 2, ptr %52, align 2
  %53 = load i32, ptr %8, align 4
  %54 = getelementptr inbounds %struct.uart_port, ptr %26, i32 0, i32 43
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.uart_port, ptr %26, i32 0, i32 20
  store i32 %11, ptr %55, align 4
  %56 = getelementptr inbounds %struct.uart_port, ptr %26, i32 0, i32 23
  store i32 16, ptr %56, align 4
  %57 = getelementptr inbounds %struct.uart_port, ptr %26, i32 0, i32 39
  store ptr @vt8500_uart_pops, ptr %57, align 4
  %58 = getelementptr inbounds %struct.uart_port, ptr %26, i32 0, i32 41
  store i32 %22, ptr %58, align 4
  %59 = getelementptr inbounds %struct.uart_port, ptr %26, i32 0, i32 45
  store ptr %2, ptr %59, align 4
  %60 = getelementptr inbounds %struct.uart_port, ptr %26, i32 0, i32 33
  store i32 -1879048192, ptr %60, align 4
  %61 = getelementptr inbounds %struct.uart_port, ptr %26, i32 0, i32 48
  store i8 1, ptr %61, align 4
  %62 = tail call i32 @clk_get_rate(ptr noundef %36) #10
  %63 = shl i32 %62, 4
  %64 = udiv i32 %63, %49
  %65 = udiv i32 %64, 13
  %66 = getelementptr inbounds %struct.uart_port, ptr %26, i32 0, i32 22
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.vt8500_port, ptr %26, i32 0, i32 1
  %68 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %67, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %69)
  %71 = getelementptr [6 x ptr], ptr @vt8500_uart_ports, i32 0, i32 %22
  store ptr %26, ptr %71, align 4
  %72 = tail call i32 @uart_add_one_port(ptr noundef nonnull @vt8500_uart_driver, ptr noundef nonnull %26) #10
  %73 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %26, ptr %73, align 8
  br label %74

74:                                               ; preds = %44, %43, %39, %32, %25, %21, %18, %10, %7, %1
  %75 = phi i32 [ %33, %32 ], [ -22, %39 ], [ %41, %43 ], [ 0, %44 ], [ -22, %1 ], [ -19, %7 ], [ %11, %10 ], [ -19, %18 ], [ -16, %21 ], [ -12, %25 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #10
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

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
define internal i32 @vt8500_tx_empty(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 36
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt8500_set_mctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %7 = and i32 %6, -65
  %8 = shl i32 %1, 4
  %9 = and i32 %8, 64
  %10 = or i32 %7, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #10, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_get_mctrl(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 28
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %6 = shl i32 %5, 1
  %7 = and i32 %6, 32
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt8500_stop_tx(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.vt8500_port, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -77
  store i32 %4, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #10, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt8500_start_tx(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.vt8500_port, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -77
  store i32 %4, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #10, !srcloc !14
  tail call fastcc void @handle_tx(ptr noundef %0)
  %8 = load i32, ptr %2, align 4
  %9 = or i32 %8, 76
  store i32 %9, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #10, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt8500_stop_rx(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.vt8500_port, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -2993
  store i32 %4, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #10, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt8500_enable_ms(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.vt8500_port, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 1024
  store i32 %4, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #10, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt8500_break_ctl(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %9 = or i32 %8, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #10, !srcloc !14
  br label %12

12:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_startup(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.vt8500_port, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %4)
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @vt8500_irq, ptr noundef null, i32 noundef 4, ptr noundef %2, ptr noundef %0) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14, !prof !8

10:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 3) #10, !srcloc !14
  br label %14

14:                                               ; preds = %10, %1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt8500_shutdown(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.vt8500_port, ptr %0, i32 0, i32 4
  store i32 0, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 2176) #10, !srcloc !14
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt8500_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #10
  %5 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 900, i32 noundef 921600) #10
  %6 = getelementptr inbounds %struct.vt8500_port, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @uart_get_divisor(ptr noundef %0, i32 noundef %5) #10
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %21, %3
  %18 = phi i32 [ %19, %21 ], [ 1000, %3 ]
  %19 = add nsw i32 %18, -1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !18
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr i8, ptr %22, i32 28
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %17

27:                                               ; preds = %21, %17, %3
  %28 = lshr i32 %10, 4
  %29 = add i32 %8, 1023
  %30 = and i32 %29, 1023
  %31 = add nuw nsw i32 %30, 1
  %32 = udiv i32 %28, %31
  %33 = shl i32 %7, 16
  %34 = add i32 %33, 983040
  %35 = and i32 %34, 983040
  %36 = or i32 %35, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %37 = load ptr, ptr %11, align 4
  %38 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #10, !srcloc !14
  %39 = freeze i32 %32
  %40 = udiv i32 %39, 1000000
  %41 = mul i32 %40, 1000000
  %42 = sub i32 %39, %41
  %43 = shl nuw nsw i32 %40, 12
  %44 = shl nuw i32 %42, 12
  %45 = udiv i32 %44, 1000000
  %46 = add nuw nsw i32 %45, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %47 = load ptr, ptr %11, align 4
  %48 = getelementptr i8, ptr %47, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #10, !srcloc !14
  %49 = tail call i32 @tty_termios_baud_rate(ptr noundef %1) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %27
  tail call void @tty_termios_encode_baud_rate(ptr noundef %1, i32 noundef %32, i32 noundef %32) #10
  br label %52

52:                                               ; preds = %51, %27
  %53 = load ptr, ptr %11, align 4
  %54 = getelementptr i8, ptr %53, i32 12
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %56 = and i32 %55, -49
  %57 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 256
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %52
  %62 = or i32 %56, 16
  %63 = and i32 %58, -1073741825
  store i32 %63, ptr %57, align 4
  %64 = and i32 %58, 512
  %65 = icmp eq i32 %64, 0
  %66 = or i32 %55, 48
  %67 = select i1 %65, i32 %62, i32 %66
  br label %68

68:                                               ; preds = %61, %52
  %69 = phi i32 [ %58, %52 ], [ %63, %61 ]
  %70 = phi i32 [ %56, %52 ], [ %67, %61 ]
  %71 = and i32 %70, -5
  %72 = and i32 %69, 48
  %73 = icmp eq i32 %72, 32
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = or i32 %70, 4
  %76 = or i32 %69, 48
  store i32 %76, ptr %57, align 4
  br label %77

77:                                               ; preds = %74, %68
  %78 = phi i32 [ %69, %68 ], [ %76, %74 ]
  %79 = phi i32 [ %71, %68 ], [ %75, %74 ]
  %80 = and i32 %79, -2057
  %81 = lshr i32 %78, 3
  %82 = and i32 %81, 8
  %83 = or i32 %82, %80
  %84 = getelementptr inbounds %struct.vt8500_port, ptr %0, i32 0, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = shl i32 %85, 10
  %87 = and i32 %86, 2048
  %88 = or i32 %83, %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %89 = load ptr, ptr %11, align 4
  %90 = getelementptr i8, ptr %89, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #10, !srcloc !14
  %91 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 0, ptr %91, align 4
  %92 = load i32, ptr %1, align 4
  %93 = and i32 %92, 4
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 0, i32 768
  store i32 %95, ptr %91, align 4
  %96 = load i32, ptr %57, align 4
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %96, i32 noundef %32) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %97 = load ptr, ptr %11, align 4
  %98 = getelementptr i8, ptr %97, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 2188) #10, !srcloc !14
  %99 = load ptr, ptr %11, align 4
  %100 = getelementptr i8, ptr %99, i32 32
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %102 = and i32 %101, 12
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %108, %77
  %105 = phi i32 [ %106, %108 ], [ 1000, %77 ]
  %106 = add nsw i32 %105, -1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !20
  %109 = load ptr, ptr %11, align 4
  %110 = getelementptr i8, ptr %109, i32 32
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %112 = and i32 %111, 12
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %104

114:                                              ; preds = %108, %104, %77
  %115 = getelementptr inbounds %struct.vt8500_port, ptr %0, i32 0, i32 4
  store i32 3068, ptr %115, align 4
  %116 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 2048
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i32, ptr %57, align 4
  %122 = and i32 %121, -2147481600
  %123 = icmp eq i32 %122, 2048
  br i1 %123, label %125, label %124

124:                                              ; preds = %120, %114
  store i32 4092, ptr %115, align 4
  br label %125

125:                                              ; preds = %124, %120
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %126 = load ptr, ptr %11, align 4
  %127 = getelementptr i8, ptr %126, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 2177) #10, !srcloc !14
  %128 = load i32, ptr %115, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %129 = load ptr, ptr %11, align 4
  %130 = getelementptr i8, ptr %129, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #10, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @vt8500_type(ptr noundef readnone %0) #7 {
  %2 = getelementptr inbounds %struct.vt8500_port, ptr %0, i32 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @vt8500_release_port(ptr nocapture noundef %0) #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @vt8500_request_port(ptr nocapture noundef readnone %0) #7 {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @vt8500_config_port(ptr nocapture noundef writeonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 97, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @vt8500_verify_port(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load i32, ptr %1, align 4
  switch i32 %3, label %11 [
    i32 97, label %4
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @handle_tx(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 24
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %9 = load i8, ptr %5, align 4
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 4096
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %9) #10, !srcloc !16
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  store i8 0, ptr %5, align 4
  br label %16

16:                                               ; preds = %8, %1
  %17 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %44, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.tty_port, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tty_struct, ptr %25, i32 0, i32 19, i32 1
  %29 = load i8, ptr %28, align 4, !range !22
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27, %22
  %32 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 36
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %40 = and i32 %39, 16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  br label %51

44:                                               ; preds = %31, %27, %16
  %45 = getelementptr inbounds %struct.vt8500_port, ptr %0, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, -77
  store i32 %47, ptr %45, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %48 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %47) #10, !srcloc !14
  br label %91

51:                                               ; preds = %55, %42
  %52 = load i32, ptr %17, align 4
  %53 = load i32, ptr %19, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %72, label %55

55:                                               ; preds = %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !23
  tail call void @arm_heavy_mb() #10
  %56 = load ptr, ptr %4, align 4
  %57 = load i32, ptr %19, align 4
  %58 = getelementptr i8, ptr %56, i32 %57
  %59 = load i8, ptr %58, align 1
  %60 = load ptr, ptr %36, align 4
  %61 = getelementptr i8, ptr %60, i32 4096
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %61, i8 %59) #10, !srcloc !16
  %62 = load i32, ptr %19, align 4
  %63 = add i32 %62, 1
  %64 = and i32 %63, 4095
  store i32 %64, ptr %19, align 4
  %65 = load i32, ptr %43, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %43, align 4
  %67 = load ptr, ptr %36, align 4
  %68 = getelementptr i8, ptr %67, i32 36
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %70 = and i32 %69, 16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %51, label %72

72:                                               ; preds = %55, %51, %35
  %73 = load i32, ptr %17, align 4
  %74 = load i32, ptr %19, align 4
  %75 = sub i32 %73, %74
  %76 = and i32 %75, 3840
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  tail call void @uart_write_wakeup(ptr noundef %0) #10
  %79 = load i32, ptr %17, align 4
  %80 = load i32, ptr %19, align 4
  br label %81

81:                                               ; preds = %78, %72
  %82 = phi i32 [ %80, %78 ], [ %74, %72 ]
  %83 = phi i32 [ %79, %78 ], [ %73, %72 ]
  %84 = icmp eq i32 %83, %82
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.vt8500_port, ptr %0, i32 0, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, -77
  store i32 %88, ptr %86, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %89 = load ptr, ptr %36, align 4
  %90 = getelementptr i8, ptr %89, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #10, !srcloc !14
  br label %91

91:                                               ; preds = %85, %81, %44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_irq(i32 noundef %0, ptr noundef %1) #3 {
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #10, !srcloc !14
  %9 = and i32 %6, 2992
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %131, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %17 = and i32 %16, 128
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.tty_bufhead, ptr %13, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tty_buffer, ptr %24, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.tty_buffer, ptr %24, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.tty_buffer, ptr %24, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.tty_buffer, ptr %24, i32 0, i32 6
  %37 = getelementptr i8, ptr %36, i32 %31
  %38 = getelementptr i8, ptr %37, i32 %33
  store i8 4, ptr %38, align 1
  %39 = load i32, ptr %30, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %30, align 4
  %41 = getelementptr i8, ptr %36, i32 %39
  store i8 0, ptr %41, align 1
  br label %44

42:                                               ; preds = %29, %19
  %43 = tail call i32 @__tty_insert_flip_char(ptr noundef %13, i8 noundef zeroext 0, i8 noundef zeroext 4) #10
  br label %44

44:                                               ; preds = %42, %35, %11
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr i8, ptr %45, i32 36
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %48 = and i32 %47, 7936
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %130, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 28
  %52 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 6
  %53 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 8
  %54 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 4
  %55 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 46
  %56 = getelementptr inbounds %struct.tty_bufhead, ptr %13, i32 0, i32 8
  br label %57

57:                                               ; preds = %124, %50
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr i8, ptr %58, i32 4128
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %59) #10, !srcloc !24
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !25
  %61 = and i16 %60, 1023
  %62 = zext i16 %61 to i32
  %63 = load i32, ptr %51, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = and i32 %65, 512
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = and i32 %65, 256
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68, %57
  %72 = phi ptr [ %52, %57 ], [ %53, %68 ]
  %73 = phi i8 [ 2, %57 ], [ 3, %68 ]
  %74 = load i32, ptr %72, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %72, align 4
  br label %76

76:                                               ; preds = %71, %68
  %77 = phi i1 [ false, %68 ], [ true, %71 ]
  %78 = phi i8 [ 0, %68 ], [ %73, %71 ]
  %79 = load i32, ptr %54, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %54, align 4
  %81 = load i32, ptr %55, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %76
  %84 = icmp eq i32 %65, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %83
  %86 = load volatile i32, ptr @jiffies, align 64
  %87 = sub i32 %86, %81
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = tail call i32 @sysrq_mask() #10
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %1, i32 noundef %65) #10
  br i1 %93, label %124, label %94

94:                                               ; preds = %92, %85, %83
  store i32 0, ptr %55, align 4
  br label %96

95:                                               ; preds = %89
  tail call void @handle_sysrq(i32 noundef %65) #10
  store i32 0, ptr %55, align 4
  br label %124

96:                                               ; preds = %94, %76
  %97 = trunc i32 %65 to i8
  %98 = load ptr, ptr %56, align 4
  %99 = getelementptr inbounds %struct.tty_buffer, ptr %98, i32 0, i32 5
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  %103 = and i1 %77, %102
  br i1 %103, label %122, label %104

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.tty_buffer, ptr %98, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.tty_buffer, ptr %98, i32 0, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = icmp slt i32 %106, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = icmp eq i32 %101, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.tty_buffer, ptr %98, i32 0, i32 6
  %114 = getelementptr i8, ptr %113, i32 %106
  %115 = getelementptr i8, ptr %114, i32 %108
  store i8 %78, ptr %115, align 1
  %116 = load i32, ptr %105, align 4
  br label %117

117:                                              ; preds = %112, %110
  %118 = phi i32 [ %116, %112 ], [ %106, %110 ]
  %119 = add i32 %118, 1
  store i32 %119, ptr %105, align 4
  %120 = getelementptr inbounds %struct.tty_buffer, ptr %98, i32 0, i32 6
  %121 = getelementptr i8, ptr %120, i32 %118
  store i8 %97, ptr %121, align 1
  br label %124

122:                                              ; preds = %104, %96
  %123 = tail call i32 @__tty_insert_flip_char(ptr noundef %13, i8 noundef zeroext %97, i8 noundef zeroext %78) #10
  br label %124

124:                                              ; preds = %122, %117, %95, %92
  %125 = load ptr, ptr %3, align 4
  %126 = getelementptr i8, ptr %125, i32 36
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %128 = and i32 %127, 7936
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %57

130:                                              ; preds = %124, %44
  tail call void @tty_flip_buffer_push(ptr noundef %13) #10
  br label %131

131:                                              ; preds = %130, %2
  %132 = and i32 %6, 76
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  tail call fastcc void @handle_tx(ptr noundef %1)
  br label %135

135:                                              ; preds = %134, %131
  %136 = and i32 %6, 1024
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, 1
  store i32 %141, ptr %139, align 4
  %142 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.tty_port, ptr %143, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %144, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %145

145:                                              ; preds = %138, %135
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !26
  %146 = load i16, ptr %1, align 4
  %147 = add i16 %146, 1
  store i16 %147, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_divisor(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152698590, i64 2152699089, i64 2152698627, i64 2152698683, i64 2152698717, i64 2152698741, i64 2152698782, i64 2152698803, i64 2152698831, i64 2152698865}
!11 = !{i64 2400490}
!12 = !{i64 2152678861}
!13 = !{i64 2152678221}
!14 = !{i64 2400072}
!15 = !{i64 2152698117}
!16 = !{i64 2399875}
!17 = !{i64 2152691048}
!18 = !{i64 2152690890}
!19 = !{i64 2152695665}
!20 = !{i64 2152695507}
!21 = !{i64 2152683151}
!22 = !{i8 0, i8 2}
!23 = !{i64 2152687585}
!24 = !{i64 2399652}
!25 = !{i64 2152682923}
!26 = !{i64 2149079875}
!27 = !{i64 2149075699}
!28 = !{i64 2149075774, i64 2149075801, i64 2149075848, i64 2149075870, i64 2149075898, i64 2149075918}
!29 = !{i64 2149102878}
