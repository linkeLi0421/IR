; ModuleID = '/llk/IR/drivers/tty/serial/st-asc.c_pt.bc'
source_filename = "../drivers/tty/serial/st-asc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asc_port = type { %struct.uart_port, ptr, ptr, ptr, [2 x ptr], i8 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.tty_buffer = type { %union.anon.32, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.32 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.33, %struct.anon.34, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.33 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.34 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@asc_serial_driver = internal global %struct.platform_driver { ptr @asc_serial_probe, ptr @asc_serial_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @asc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @asc_serial_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@asc_uart_driver = internal global %struct.uart_driver { ptr null, ptr @.str, ptr @.str.2, i32 0, i32 0, i32 8, ptr @asc_console, ptr null, ptr null }, align 4
@__initcall__kmod_st_asc__211_1000_asc_init6 = internal global ptr @asc_init, section ".initcall6.init", align 4
@__exitcall_asc_exit = internal global ptr @asc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias212 = internal constant [29 x i8] c"st_asc.alias=platform:st-asc\00", section ".modinfo", align 1
@__UNIQUE_ID_author213 = internal constant [47 x i8] c"st_asc.author=STMicroelectronics (R&D) Limited\00", section ".modinfo", align 1
@__UNIQUE_ID_description214 = internal constant [61 x i8] c"st_asc.description=STMicroelectronics ASC serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file215 = internal constant [38 x i8] c"st_asc.file=drivers/tty/serial/st-asc\00", section ".modinfo", align 1
@__UNIQUE_ID_license216 = internal constant [19 x i8] c"st_asc.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"st-asc\00", align 1
@asc_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,asc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@asc_serial_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @asc_serial_suspend, ptr @asc_serial_resume, ptr @asc_serial_suspend, ptr @asc_serial_resume, ptr @asc_serial_suspend, ptr @asc_serial_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ttyAS\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"drivers/tty/serial/st-asc.c\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"uart-has-rtscts\00", align 1
@asc_ports = internal global [8 x %struct.asc_port] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"st,force_m1\00", align 1
@asc_uart_ops = internal constant %struct.uart_ops { ptr @asc_tx_empty, ptr @asc_set_mctrl, ptr @asc_get_mctrl, ptr @asc_stop_tx, ptr @asc_start_tx, ptr null, ptr null, ptr null, ptr @asc_stop_rx, ptr null, ptr @asc_break_ctl, ptr @asc_startup, ptr @asc_shutdown, ptr null, ptr @asc_set_termios, ptr null, ptr @asc_pm, ptr @asc_type, ptr @asc_release_port, ptr @asc_request_port, ptr @asc_config_port, ptr @asc_verify_port, ptr null }, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to get Pinctrl: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Failed to look up Pinctrl state 'default': %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"no-hw-flowctrl\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"cannot allocate irq.\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.11 = private unnamed_addr constant [4 x i8] c"rts\00", align 1
@asc_console = internal global %struct.console { [16 x i8] c"ttyAS\00\00\00\00\00\00\00\00\00\00\00", ptr @asc_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @asc_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @asc_uart_driver, ptr null }, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@asc_init.banner = internal constant [45 x i8] c"\016STMicroelectronics ASC driver initialized\0A\00", section ".init.rodata", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias212, ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_description214, ptr @__UNIQUE_ID_file215, ptr @__UNIQUE_ID_license216, ptr @__exitcall_asc_exit, ptr @__initcall__kmod_st_asc__211_1000_asc_init6, ptr @asc_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @asc_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @asc_serial_driver) #9
  tail call void @uart_unregister_driver(ptr noundef nonnull @asc_uart_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @asc_init() #0 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @asc_init.banner) #10
  %2 = tail call i32 @uart_register_driver(ptr noundef nonnull @asc_uart_driver) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @asc_serial_driver, ptr noundef null) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @uart_unregister_driver(ptr noundef nonnull @asc_uart_driver) #9
  br label %8

8:                                                ; preds = %7, %4, %0
  %9 = phi i32 [ %2, %0 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asc_serial_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %92, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @of_alias_get_id(ptr noundef nonnull %3, ptr noundef nonnull @.str.1) #9
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 @of_alias_get_id(ptr noundef nonnull %3, ptr noundef nonnull @.str.2) #9
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %9, %8 ], [ %6, %5 ]
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 0) #9
  %13 = icmp ugt i32 %12, 7
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 787, i32 noundef 9, ptr noundef null) #9
  br label %92

15:                                               ; preds = %10
  %16 = tail call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.4, ptr noundef null) #9
  %17 = icmp ne ptr %16, null
  %18 = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %12
  %19 = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %12, i32 5
  %20 = zext i1 %17 to i8
  %21 = load i8, ptr %19, align 4
  %22 = and i8 %21, -2
  %23 = or i8 %22, %20
  store i8 %23, ptr %19, align 4
  %24 = tail call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.5, ptr noundef null) #9
  %25 = icmp eq ptr %24, null
  %26 = load i8, ptr %19, align 4
  %27 = select i1 %25, i8 0, i8 2
  %28 = and i8 %26, -3
  %29 = or i8 %28, %27
  store i8 %29, ptr %19, align 4
  %30 = getelementptr inbounds %struct.uart_port, ptr %18, i32 0, i32 41
  store i32 %12, ptr %30, align 4
  %31 = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %12, i32 1
  store ptr null, ptr %31, align 4
  %32 = icmp eq ptr %18, null
  br i1 %32, label %92, label %33

33:                                               ; preds = %15
  %34 = getelementptr inbounds %struct.uart_port, ptr %18, i32 0, i32 26
  store i8 2, ptr %34, align 2
  %35 = getelementptr inbounds %struct.uart_port, ptr %18, i32 0, i32 33
  store i32 268435456, ptr %35, align 4
  %36 = getelementptr inbounds %struct.uart_port, ptr %18, i32 0, i32 39
  store ptr @asc_uart_ops, ptr %36, align 4
  %37 = getelementptr inbounds %struct.uart_port, ptr %18, i32 0, i32 23
  store i32 16, ptr %37, align 4
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %39 = getelementptr inbounds %struct.uart_port, ptr %18, i32 0, i32 45
  store ptr %38, ptr %39, align 4
  %40 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %41 = getelementptr inbounds %struct.uart_port, ptr %18, i32 0, i32 20
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.uart_port, ptr %18, i32 0, i32 48
  store i8 1, ptr %42, align 4
  %43 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %44 = tail call ptr @devm_ioremap_resource(ptr noundef %38, ptr noundef %43) #9
  %45 = getelementptr inbounds %struct.uart_port, ptr %18, i32 0, i32 2
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = ptrtoint ptr %44 to i32
  br label %92

49:                                               ; preds = %33
  %50 = load i32, ptr %43, align 4
  %51 = getelementptr inbounds %struct.uart_port, ptr %18, i32 0, i32 43
  store i32 %50, ptr %51, align 4
  store i32 0, ptr %18, align 4
  %52 = tail call ptr @devm_clk_get(ptr noundef %38, ptr noundef null) #9
  %53 = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %12, i32 2
  store ptr %52, ptr %53, align 4
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %56, !prof !8

55:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 739, i32 noundef 9, ptr noundef null) #9
  br label %92

56:                                               ; preds = %49
  %57 = tail call i32 @clk_prepare(ptr noundef %52) #9
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = tail call i32 @clk_enable(ptr noundef %52) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  tail call void @clk_unprepare(ptr noundef %52) #9
  br label %63

63:                                               ; preds = %62, %59, %56
  %64 = load ptr, ptr %53, align 4
  %65 = tail call i32 @clk_get_rate(ptr noundef %64) #9
  %66 = getelementptr inbounds %struct.uart_port, ptr %18, i32 0, i32 22
  store i32 %65, ptr %66, align 4
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %68, label %69, !prof !8

68:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 744, i32 noundef 9, ptr noundef null) #9
  br label %69

69:                                               ; preds = %68, %63
  %70 = load ptr, ptr %53, align 4
  tail call void @clk_disable(ptr noundef %70) #9
  tail call void @clk_unprepare(ptr noundef %70) #9
  %71 = tail call ptr @devm_pinctrl_get(ptr noundef %38) #9
  %72 = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %12, i32 3
  store ptr %71, ptr %72, align 4
  %73 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = ptrtoint ptr %71 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.6, i32 noundef %75) #10
  br label %92

76:                                               ; preds = %69
  %77 = tail call ptr @pinctrl_lookup_state(ptr noundef %71, ptr noundef nonnull @.str.7) #9
  %78 = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %12, i32 4
  store ptr %77, ptr %78, align 4
  %79 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = ptrtoint ptr %77 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.8, i32 noundef %81) #10
  br label %92

82:                                               ; preds = %76
  %83 = load ptr, ptr %72, align 4
  %84 = tail call ptr @pinctrl_lookup_state(ptr noundef %83, ptr noundef nonnull @.str.9) #9
  %85 = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %12, i32 4, i32 1
  %86 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  %87 = select i1 %86, ptr null, ptr %84
  store ptr %87, ptr %85, align 4
  %88 = tail call i32 @uart_add_one_port(ptr noundef nonnull @asc_uart_driver, ptr noundef nonnull %18) #9
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %18, ptr %91, align 8
  br label %92

92:                                               ; preds = %90, %82, %80, %74, %55, %47, %15, %14, %1
  %93 = phi i32 [ 0, %90 ], [ -19, %15 ], [ %88, %82 ], [ -22, %55 ], [ -19, %14 ], [ -19, %1 ], [ %48, %47 ], [ %75, %74 ], [ %81, %80 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asc_serial_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @asc_uart_driver, ptr noundef %3) #9
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asc_tx_empty(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !9
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asc_set_mctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.asc_port, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !9
  %11 = and i32 %10, 2048
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = load ptr, ptr %3, align 4
  %15 = and i32 %1, 4
  tail call void @gpiod_set_value(ptr noundef %14, i32 noundef %15) #9
  br label %16

16:                                               ; preds = %13, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @asc_get_mctrl(ptr nocapture noundef readnone %0) #5 {
  ret i32 352
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asc_stop_tx(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !9
  %6 = and i32 %5, -5
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !10
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asc_start_tx(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !9
  %14 = or i32 %13, 4
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #9, !srcloc !10
  br label %17

17:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asc_stop_rx(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !9
  %6 = and i32 %5, -2
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !10
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @asc_break_ctl(ptr nocapture noundef %0, i32 noundef %1) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asc_startup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @asc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %7, ptr noundef %0) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.10) #10
  br label %20

12:                                               ; preds = %1
  tail call fastcc void @asc_transmit_chars(ptr noundef %0)
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !9
  %17 = or i32 %16, 1
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !10
  br label %20

20:                                               ; preds = %12, %10
  %21 = phi i32 [ -19, %10 ], [ 0, %12 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asc_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !9
  %6 = and i32 %5, -5
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !10
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !9
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !9
  %15 = and i32 %14, -2
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #9, !srcloc !10
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !9
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr @free_irq(i32 noundef %22, ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asc_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.asc_port, ptr %0, i32 0, i32 5
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = xor i32 %6, -1
  %8 = shl i32 %7, 31
  %9 = xor i32 %8, -1073741825
  %10 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %9, %11
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.asc_port, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_get_rate(ptr noundef %14) #9
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  store i32 %15, ptr %16, align 4
  %17 = lshr i32 %15, 4
  %18 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %17) #9
  %19 = load i32, ptr %10, align 4
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !9
  %25 = and i32 %24, -129
  %26 = load ptr, ptr %21, align 4
  %27 = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #9, !srcloc !10
  %28 = load ptr, ptr %21, align 4
  %29 = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 1) #9, !srcloc !10
  %30 = load ptr, ptr %21, align 4
  %31 = getelementptr i8, ptr %30, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 1) #9, !srcloc !10
  %32 = and i32 %19, 48
  %33 = icmp eq i32 %32, 32
  %34 = and i32 %19, 256
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 1281, i32 1287
  %37 = select i1 %33, i32 1283, i32 %36
  %38 = and i32 %19, 64
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 8, i32 24
  %41 = lshr i32 %19, 4
  %42 = and i32 %41, 32
  %43 = or i32 %40, %42
  %44 = or i32 %43, %37
  %45 = icmp sgt i32 %19, -1
  br i1 %45, label %59, label %46

46:                                               ; preds = %3
  %47 = or i32 %44, 2048
  %48 = getelementptr inbounds %struct.asc_port, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %81, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %53 = load ptr, ptr %52, align 4
  tail call void @devm_gpiod_put(ptr noundef %53, ptr noundef nonnull %49) #9
  store ptr null, ptr %48, align 4
  %54 = getelementptr inbounds %struct.asc_port, ptr %0, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.asc_port, ptr %0, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @pinctrl_select_state(ptr noundef %55, ptr noundef %57) #9
  br label %81

59:                                               ; preds = %3
  %60 = getelementptr inbounds %struct.asc_port, ptr %0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = getelementptr %struct.asc_port, ptr %0, i32 0, i32 4, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %81, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.asc_port, ptr %0, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 @pinctrl_select_state(ptr noundef %69, ptr noundef nonnull %65) #9
  %71 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %72 = load ptr, ptr %71, align 4
  %73 = tail call ptr @devm_gpiod_get(ptr noundef %72, ptr noundef nonnull @.str.11, i32 noundef 3) #9
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %81, label %75

75:                                               ; preds = %67
  %76 = load ptr, ptr %71, align 4
  %77 = getelementptr inbounds %struct.device, ptr %76, i32 0, i32 25
  %78 = load ptr, ptr %77, align 8
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @gpiod_set_consumer_name(ptr noundef %73, ptr noundef %79) #9
  store ptr %73, ptr %60, align 4
  br label %81

81:                                               ; preds = %75, %67, %63, %59, %51, %46
  %82 = phi i32 [ %47, %51 ], [ %47, %46 ], [ %44, %59 ], [ %44, %67 ], [ %44, %75 ], [ %44, %63 ]
  %83 = icmp ult i32 %18, 19200
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i8, ptr %4, align 4
  %86 = and i8 %85, 2
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, ptr %16, align 4
  %90 = shl nuw nsw i32 %18, 4
  %91 = udiv i32 %89, %90
  %92 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %91) #9, !srcloc !10
  br label %110

93:                                               ; preds = %84, %81
  %94 = zext i32 %18 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = load i32, ptr %16, align 4
  %97 = lshr i32 %96, 4
  %98 = icmp ult i32 %18, 65536
  br i1 %98, label %99, label %102, !prof !11

99:                                               ; preds = %93
  %100 = trunc i64 %95 to i32
  %101 = udiv i32 %100, %97
  br label %106

102:                                              ; preds = %93
  %103 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %97, i64 %95) #11, !srcloc !12
  %104 = extractvalue { i64, i64 } %103, 1
  %105 = trunc i64 %104 to i32
  br label %106

106:                                              ; preds = %102, %99
  %107 = phi i32 [ %101, %99 ], [ %105, %102 ]
  %108 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %107) #9, !srcloc !10
  %109 = or i32 %82, 4096
  br label %110

110:                                              ; preds = %106, %88
  %111 = phi i32 [ %109, %106 ], [ %82, %88 ]
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %19, i32 noundef %18) #9
  %112 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 262144, ptr %112, align 4
  %113 = load i32, ptr %1, align 4
  %114 = and i32 %113, 16
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %115, i32 262144, i32 262912
  store i32 %116, ptr %112, align 4
  %117 = load i32, ptr %1, align 4
  %118 = and i32 %117, 11
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %110
  %121 = or i32 %116, 131072
  store i32 %121, ptr %112, align 4
  br label %122

122:                                              ; preds = %120, %110
  %123 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 0, ptr %123, align 4
  %124 = load i32, ptr %1, align 4
  %125 = and i32 %124, 4
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, i32 0, i32 768
  store i32 %127, ptr %123, align 4
  %128 = load i32, ptr %1, align 4
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %122
  %132 = or i32 %127, 131072
  store i32 %132, ptr %123, align 4
  %133 = load i32, ptr %1, align 4
  %134 = and i32 %133, 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %131
  %137 = or i32 %127, 393216
  store i32 %137, ptr %123, align 4
  br label %138

138:                                              ; preds = %136, %131, %122
  %139 = phi i32 [ %132, %131 ], [ %137, %136 ], [ %127, %122 ]
  %140 = load i32, ptr %10, align 4
  %141 = and i32 %140, 128
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = or i32 %139, 65536
  store i32 %144, ptr %123, align 4
  br label %145

145:                                              ; preds = %143, %138
  %146 = load ptr, ptr %21, align 4
  %147 = getelementptr i8, ptr %146, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 20) #9, !srcloc !10
  %148 = or i32 %111, 128
  %149 = load ptr, ptr %21, align 4
  %150 = getelementptr i8, ptr %149, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #9, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %20) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asc_pm(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  switch i32 %1, label %25 [
    i32 0, label %4
    i32 3, label %12
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.asc_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  %10 = tail call i32 @clk_enable(ptr noundef %6) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %23

12:                                               ; preds = %3
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !9
  %18 = and i32 %17, -129
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %13) #9
  %21 = getelementptr inbounds %struct.asc_port, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %22) #9
  br label %23

23:                                               ; preds = %12, %9
  %24 = phi ptr [ %22, %12 ], [ %6, %9 ]
  tail call void @clk_unprepare(ptr noundef %24) #9
  br label %25

25:                                               ; preds = %23, %9, %4, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @asc_type(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 105
  %5 = select i1 %4, ptr @.str, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @asc_release_port(ptr nocapture noundef %0) #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @asc_request_port(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @asc_config_port(ptr nocapture noundef writeonly %0, i32 noundef %1) #7 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 105, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @asc_verify_port(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asc_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !9
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %155, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !9
  %15 = and i32 %14, 7
  %16 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 20
  %17 = load i32, ptr %16, align 4
  %18 = tail call ptr @irq_get_irq_data(i32 noundef %17) #9
  %19 = getelementptr inbounds %struct.irq_data, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 16384
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.tty_port, ptr %11, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tty_struct, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %28, i32 noundef 0, i1 noundef zeroext false) #9
  br label %29

29:                                               ; preds = %24, %9
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr i8, ptr %30, i32 20
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !9
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %154, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 4
  %37 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 6
  %38 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 9
  %39 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 17
  %40 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 48
  %41 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %42 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %43 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 46
  %44 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 33
  %45 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 8
  %46 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 7
  %47 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 28
  br label %48

48:                                               ; preds = %148, %35
  %49 = phi i32 [ %32, %35 ], [ %151, %148 ]
  %50 = load ptr, ptr %3, align 4
  %51 = getelementptr i8, ptr %50, i32 8
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !9
  %53 = or i32 %52, 65536
  %54 = load i32, ptr %36, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %36, align 4
  %56 = and i32 %49, 32
  %57 = icmp eq i32 %56, 0
  %58 = and i32 %52, 512
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = and i32 %52, 256
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %128, label %64

64:                                               ; preds = %61
  switch i32 %15, label %65 [
    i32 7, label %128
    i32 1, label %128
  ]

65:                                               ; preds = %64, %48
  br i1 %59, label %104, label %66

66:                                               ; preds = %65
  %67 = icmp eq i32 %53, 66048
  br i1 %67, label %68, label %101

68:                                               ; preds = %66
  %69 = load i32, ptr %38, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %38, align 4
  %71 = load ptr, ptr %10, align 4
  %72 = load ptr, ptr %39, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  tail call void %72(ptr noundef %1) #9
  br label %75

75:                                               ; preds = %74, %68
  %76 = load i8, ptr %40, align 4
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %41, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.console, ptr %79, i32 0, i32 9
  %83 = load i16, ptr %82, align 2
  %84 = sext i16 %83 to i32
  %85 = load i32, ptr %42, align 4
  %86 = icmp eq i32 %85, %84
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32, ptr %43, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %87
  store i32 0, ptr %43, align 4
  br label %91

91:                                               ; preds = %90, %81, %78, %75
  %92 = load i32, ptr %44, align 4
  %93 = and i32 %92, 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.tty_port, ptr %71, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  tail call void @do_SAK(ptr noundef %97) #9
  br label %110

98:                                               ; preds = %87
  %99 = load volatile i32, ptr @jiffies, align 64
  %100 = add i32 %99, 500
  store i32 %100, ptr %43, align 4
  br label %148

101:                                              ; preds = %66
  %102 = load i32, ptr %37, align 4
  %103 = add i32 %102, 1
  store i32 %103, ptr %37, align 4
  br label %110

104:                                              ; preds = %65
  %105 = and i32 %52, 256
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr %45, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %45, align 4
  br label %110

110:                                              ; preds = %107, %104, %101, %95, %91
  %111 = phi i32 [ %53, %101 ], [ %53, %107 ], [ %53, %104 ], [ 197120, %95 ], [ 197120, %91 ]
  br i1 %57, label %116, label %112

112:                                              ; preds = %110
  %113 = load i32, ptr %46, align 4
  %114 = add i32 %113, 1
  store i32 %114, ptr %46, align 4
  %115 = or i32 %111, 262144
  br label %116

116:                                              ; preds = %112, %110
  %117 = phi i32 [ %115, %112 ], [ %111, %110 ]
  %118 = load i32, ptr %47, align 4
  %119 = and i32 %118, %117
  %120 = and i32 %119, 131072
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = and i32 %119, 256
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = lshr i32 %119, 8
  %127 = and i32 %126, 2
  br label %128

128:                                              ; preds = %125, %122, %116, %64, %64, %61
  %129 = phi i32 [ %53, %64 ], [ %53, %61 ], [ %53, %64 ], [ %119, %116 ], [ %119, %122 ], [ %119, %125 ]
  %130 = phi i32 [ 0, %64 ], [ 0, %61 ], [ 0, %64 ], [ 1, %116 ], [ 3, %122 ], [ %127, %125 ]
  %131 = and i32 %129, 255
  %132 = load i32, ptr %43, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %128
  %135 = icmp eq i32 %131, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %134
  %137 = load volatile i32, ptr @jiffies, align 64
  %138 = sub i32 %137, %132
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = tail call i32 @sysrq_mask() #9
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %1, i32 noundef %131) #9
  br i1 %144, label %148, label %145

145:                                              ; preds = %143, %136, %134
  store i32 0, ptr %43, align 4
  br label %147

146:                                              ; preds = %140
  tail call void @handle_sysrq(i32 noundef %131) #9
  store i32 0, ptr %43, align 4
  br label %148

147:                                              ; preds = %145, %128
  tail call void @uart_insert_char(ptr noundef %1, i32 noundef %129, i32 noundef 262144, i32 noundef %131, i32 noundef %130) #9
  br label %148

148:                                              ; preds = %147, %146, %143, %98
  %149 = load ptr, ptr %3, align 4
  %150 = getelementptr i8, ptr %149, i32 20
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #9, !srcloc !9
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %48

154:                                              ; preds = %148, %29
  tail call void @tty_flip_buffer_push(ptr noundef %11) #9
  br label %155

155:                                              ; preds = %154, %2
  %156 = and i32 %6, 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %165, label %158

158:                                              ; preds = %155
  %159 = load ptr, ptr %3, align 4
  %160 = getelementptr i8, ptr %159, i32 16
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #9, !srcloc !9
  %162 = and i32 %161, 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %158
  tail call fastcc void @asc_transmit_chars(ptr noundef %1)
  br label %165

165:                                              ; preds = %164, %158, %155
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %166 = load i16, ptr %1, align 4
  %167 = add i16 %166, 1
  store i16 %167, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @asc_transmit_chars(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !9
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 1
  br label %19

15:                                               ; preds = %1
  %16 = lshr i32 %8, 9
  %17 = and i32 %16, 1
  %18 = xor i32 %17, 1
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %14, %11 ], [ %18, %15 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 24
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = zext i8 %24 to i32
  store i8 0, ptr %23, align 4
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #9, !srcloc !10
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i8, ptr %33, i32 20
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !9
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 1
  br label %46

42:                                               ; preds = %26
  %43 = lshr i32 %35, 9
  %44 = and i32 %43, 1
  %45 = xor i32 %44, 1
  br label %46

46:                                               ; preds = %42, %38, %22, %19
  %47 = phi i32 [ %20, %22 ], [ 0, %19 ], [ %41, %38 ], [ %45, %42 ]
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr inbounds %struct.tty_port, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.tty_struct, ptr %50, i32 0, i32 19, i32 1
  %54 = load i8, ptr %53, align 4, !range !17
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52, %46
  %57 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %56, %52
  %61 = load ptr, ptr %5, align 4
  %62 = getelementptr i8, ptr %61, i32 16
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #9, !srcloc !9
  %64 = and i32 %63, -5
  %65 = load ptr, ptr %5, align 4
  %66 = getelementptr i8, ptr %65, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #9, !srcloc !10
  %67 = load ptr, ptr %5, align 4
  %68 = getelementptr i8, ptr %67, i32 16
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #9, !srcloc !9
  br label %135

70:                                               ; preds = %56
  %71 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load ptr, ptr %5, align 4
  %78 = getelementptr i8, ptr %77, i32 16
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #9, !srcloc !9
  %80 = and i32 %79, -5
  %81 = load ptr, ptr %5, align 4
  %82 = getelementptr i8, ptr %81, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #9, !srcloc !10
  %83 = load ptr, ptr %5, align 4
  %84 = getelementptr i8, ptr %83, i32 16
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #9, !srcloc !9
  br label %135

86:                                               ; preds = %70
  %87 = icmp eq i32 %47, 0
  br i1 %87, label %135, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  br label %90

90:                                               ; preds = %107, %88
  %91 = phi i32 [ %110, %107 ], [ %74, %88 ]
  %92 = phi i32 [ %108, %107 ], [ %47, %88 ]
  %93 = load ptr, ptr %4, align 4
  %94 = getelementptr i8, ptr %93, i32 %91
  %95 = load i8, ptr %94, align 1
  %96 = add i32 %91, 1
  %97 = and i32 %96, 4095
  store i32 %97, ptr %73, align 4
  %98 = zext i8 %95 to i32
  %99 = load ptr, ptr %5, align 4
  %100 = getelementptr i8, ptr %99, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #9, !srcloc !10
  %101 = load i32, ptr %89, align 4
  %102 = add i32 %101, 1
  store i32 %102, ptr %89, align 4
  %103 = icmp sgt i32 %92, 1
  br i1 %103, label %107, label %104

104:                                              ; preds = %90
  %105 = load i32, ptr %71, align 4
  %106 = load i32, ptr %73, align 4
  br label %112

107:                                              ; preds = %90
  %108 = add nsw i32 %92, -1
  %109 = load i32, ptr %71, align 4
  %110 = load i32, ptr %73, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %90

112:                                              ; preds = %107, %104
  %113 = phi i32 [ %106, %104 ], [ %109, %107 ]
  %114 = phi i32 [ %105, %104 ], [ %109, %107 ]
  %115 = sub i32 %114, %113
  %116 = and i32 %115, 3840
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  tail call void @uart_write_wakeup(ptr noundef %0) #9
  %119 = load i32, ptr %71, align 4
  %120 = load i32, ptr %73, align 4
  br label %121

121:                                              ; preds = %118, %112
  %122 = phi i32 [ %120, %118 ], [ %113, %112 ]
  %123 = phi i32 [ %119, %118 ], [ %114, %112 ]
  %124 = icmp eq i32 %123, %122
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load ptr, ptr %5, align 4
  %127 = getelementptr i8, ptr %126, i32 16
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #9, !srcloc !9
  %129 = and i32 %128, -5
  %130 = load ptr, ptr %5, align 4
  %131 = getelementptr i8, ptr %130, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #9, !srcloc !10
  %132 = load ptr, ptr %5, align 4
  %133 = getelementptr i8, ptr %132, i32 16
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #9, !srcloc !9
  br label %135

135:                                              ; preds = %125, %121, %86, %76, %60
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asc_serial_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_suspend_port(ptr noundef nonnull @asc_uart_driver, ptr noundef %3) #9
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asc_serial_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @uart_resume_port(ptr noundef nonnull @asc_uart_driver, ptr noundef %3) #9
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asc_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %6
  %8 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 46
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load i32, ptr @oops_in_progress, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !18
  %16 = tail call i32 @_raw_spin_trylock(ptr noundef %7) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #9, !srcloc !19
  br label %21

19:                                               ; preds = %11
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  br label %21

21:                                               ; preds = %19, %18, %14, %3
  %22 = phi i1 [ true, %18 ], [ false, %14 ], [ true, %3 ], [ false, %19 ]
  %23 = phi i32 [ %15, %18 ], [ %15, %14 ], [ 0, %3 ], [ %20, %19 ]
  %24 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !9
  %28 = load ptr, ptr %24, align 4
  %29 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #9, !srcloc !10
  %30 = load ptr, ptr %24, align 4
  %31 = getelementptr i8, ptr %30, i32 16
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !9
  tail call void @uart_console_write(ptr noundef %7, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @asc_console_putchar) #9
  br label %33

33:                                               ; preds = %40, %21
  %34 = phi i32 [ 999999, %21 ], [ %42, %40 ]
  %35 = load ptr, ptr %24, align 4
  %36 = getelementptr i8, ptr %35, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !9
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #9
  %42 = add nsw i32 %34, -1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %33

44:                                               ; preds = %40, %33
  %45 = load ptr, ptr %24, align 4
  %46 = getelementptr i8, ptr %45, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %27) #9, !srcloc !10
  br i1 %22, label %48, label %47

47:                                               ; preds = %44
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %23) #9
  br label %48

48:                                               ; preds = %47, %44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asc_console_setup(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 115200, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 110, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 110, ptr %6, align 4
  %7 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 2
  %9 = icmp sgt i16 %8, 7
  br i1 %9, label %33, label %10

10:                                               ; preds = %2
  %11 = sext i16 %8 to i32
  %12 = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %11
  %13 = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 43
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = icmp eq ptr %1, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #9
  %23 = load i32, ptr %3, align 4
  %24 = load i32, ptr %5, align 4
  %25 = load i32, ptr %4, align 4
  %26 = load i32, ptr %6, align 4
  br label %27

27:                                               ; preds = %22, %20
  %28 = phi i32 [ %26, %22 ], [ 110, %20 ]
  %29 = phi i32 [ %25, %22 ], [ 8, %20 ]
  %30 = phi i32 [ %24, %22 ], [ 110, %20 ]
  %31 = phi i32 [ %23, %22 ], [ 115200, %20 ]
  %32 = call i32 @uart_set_options(ptr noundef %12, ptr noundef %0, i32 noundef %31, i32 noundef %30, i32 noundef %29, i32 noundef %28) #9
  br label %33

33:                                               ; preds = %27, %16, %10, %2
  %34 = phi i32 [ %32, %27 ], [ -19, %2 ], [ -6, %16 ], [ -6, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asc_console_putchar(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  br label %4

4:                                                ; preds = %11, %2
  %5 = phi i32 [ 999999, %2 ], [ %13, %11 ]
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !9
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #9
  %13 = add nsw i32 %5, -1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %4

15:                                               ; preds = %11, %4
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %1) #9, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 4391827}
!10 = !{i64 4391409}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2147912650, i64 2147912930, i64 2147913264, i64 2147913598}
!13 = !{i64 2148948773}
!14 = !{i64 2148944597}
!15 = !{i64 2148944672, i64 2148944699, i64 2148944746, i64 2148944768, i64 2148944796, i64 2148944816}
!16 = !{i64 2148971776}
!17 = !{i8 0, i8 2}
!18 = !{i64 469926, i64 469987}
!19 = !{i64 472943}
