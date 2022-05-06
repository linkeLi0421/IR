; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_bcm2835aux.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_bcm2835aux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
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
%struct.bcm2835aux_data = type { ptr, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_8250_bcm2835aux__226_190_bcm2835aux_serial_driver_init6 = internal global ptr @bcm2835aux_serial_driver_init, section ".initcall6.init", align 4
@bcm2835aux_serial_driver = internal global %struct.platform_driver { ptr @bcm2835aux_serial_probe, ptr @bcm2835aux_serial_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm2835aux_serial_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm2835aux_serial_driver_exit = internal global ptr @bcm2835aux_serial_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID___earlycon_bcm2835aux227 = internal constant %struct.earlycon_id { [15 x i8] c"bcm2835aux\00\00\00\00\00", i8 0, [128 x i8] c"brcm,bcm2835-aux-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_bcm2835aux_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID_description228 = internal constant [57 x i8] c"8250_bcm2835aux.description=BCM2835 auxiliar UART driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [62 x i8] c"8250_bcm2835aux.author=Martin Sperl <kernel@martin.sperl.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [61 x i8] c"8250_bcm2835aux.file=drivers/tty/serial/8250/8250_bcm2835aux\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [31 x i8] c"8250_bcm2835aux.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"bcm2835-aux-uart\00", align 1
@bcm2835aux_serial_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-aux-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"could not get clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"memory resource not found\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"unable to enable uart clock - %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"unable to register 8250 port\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___earlycon_bcm2835aux227, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_bcm2835aux_serial_driver_exit, ptr @__initcall__kmod_8250_bcm2835aux__226_190_bcm2835aux_serial_driver_init6, ptr @bcm2835aux_serial_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm2835aux_serial_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835aux_serial_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm2835aux_serial_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835aux_serial_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_bcm2835aux_setup(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 26
  store i8 3, ptr %7, align 2
  %8 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 25
  store i8 2, ptr %8, align 1
  %9 = tail call i32 @early_serial8250_setup(ptr noundef %0, ptr noundef null) #6
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ -19, %2 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835aux_serial_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.uart_8250_port, align 4
  call void @llvm.lifetime.start.p0(i64 460, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(460) %2, i8 0, i32 460, i1 false)
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %69, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 3
  store i32 131328, ptr %7, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 45
  store ptr %3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 2, ptr %9, align 1
  %10 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %11, align 2
  %12 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 23
  store i32 8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  store i32 -1459617728, ptr %13, align 4
  %14 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 18
  store ptr @serial8250_em485_config, ptr %14, align 4
  %15 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 24
  store ptr @bcm2835aux_rs485_start_tx, ptr %15, align 4
  %16 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 25
  store ptr @bcm2835aux_rs485_stop_tx, ptr %16, align 4
  %17 = getelementptr inbounds %struct.bcm2835aux_data, ptr %4, i32 0, i32 2
  store i32 3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %18, align 8
  %19 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #6
  store ptr %19, ptr %4, align 4
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = ptrtoint ptr %19 to i32
  %23 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %22, ptr noundef nonnull @.str.1) #6
  br label %69

24:                                               ; preds = %6
  %25 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %69, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 20
  store i32 %25, ptr %28, align 4
  %29 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  br label %69

32:                                               ; preds = %27
  %33 = load i32, ptr %29, align 4
  %34 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.resource, ptr %29, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %29, align 4
  %38 = add i32 %36, 1
  %39 = sub i32 %38, %37
  %40 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 44
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %42 = load ptr, ptr %41, align 8
  %43 = tail call i32 @of_alias_get_id(ptr noundef %42, ptr noundef nonnull @.str.3) #6
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 41
  store i32 %43, ptr %46, align 4
  br label %47

47:                                               ; preds = %45, %32
  %48 = load ptr, ptr %4, align 4
  %49 = tail call i32 @clk_prepare(ptr noundef %48) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = tail call i32 @clk_enable(ptr noundef %48) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  tail call void @clk_unprepare(ptr noundef %48) #6
  br label %55

55:                                               ; preds = %54, %47
  %56 = phi i32 [ %52, %54 ], [ %49, %47 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %56) #7
  br label %69

57:                                               ; preds = %51
  %58 = load ptr, ptr %4, align 4
  %59 = tail call i32 @clk_get_rate(ptr noundef %58) #6
  %60 = shl i32 %59, 1
  %61 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 22
  store i32 %60, ptr %61, align 4
  %62 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %2) #6
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %62, ptr noundef nonnull @.str.5) #6
  %66 = load ptr, ptr %4, align 4
  call void @clk_disable(ptr noundef %66) #6
  call void @clk_unprepare(ptr noundef %66) #6
  br label %69

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.bcm2835aux_data, ptr %4, i32 0, i32 1
  store i32 %62, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %64, %55, %31, %24, %21, %1
  %70 = phi i32 [ %23, %21 ], [ %56, %55 ], [ %62, %64 ], [ 0, %67 ], [ -22, %31 ], [ -12, %1 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 460, ptr nonnull %2) #6
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835aux_serial_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm2835aux_data, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  tail call void @serial8250_unregister_port(i32 noundef %5) #6
  %6 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %6) #6
  tail call void @clk_unprepare(ptr noundef %6) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_em485_config(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835aux_rs485_start_tx(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.bcm2835aux_data, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -2
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0, i32 noundef 8, i32 noundef %13) #6
  %16 = load i32, ptr %2, align 4
  br label %17

17:                                               ; preds = %6, %1
  %18 = phi i32 [ %16, %6 ], [ %3, %1 ]
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  br i1 %20, label %28, label %23

23:                                               ; preds = %17
  tail call void %22(ptr noundef %0, i32 noundef 4, i32 noundef 0) #6
  %24 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  tail call void @mctrl_gpio_set(ptr noundef nonnull %25, i32 noundef 0) #6
  br label %33

28:                                               ; preds = %17
  tail call void %22(ptr noundef %0, i32 noundef 4, i32 noundef 2) #6
  %29 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @mctrl_gpio_set(ptr noundef nonnull %30, i32 noundef 4) #6
  br label %33

33:                                               ; preds = %32, %28, %27, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835aux_rs485_stop_tx(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  br i1 %5, label %13, label %8

8:                                                ; preds = %1
  tail call void %7(ptr noundef %0, i32 noundef 4, i32 noundef 0) #6
  %9 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  tail call void @mctrl_gpio_set(ptr noundef nonnull %10, i32 noundef 0) #6
  br label %18

13:                                               ; preds = %1
  tail call void %7(ptr noundef %0, i32 noundef 4, i32 noundef 2) #6
  %14 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @mctrl_gpio_set(ptr noundef nonnull %15, i32 noundef 4) #6
  br label %18

18:                                               ; preds = %17, %13, %12, %8
  %19 = load i32, ptr %2, align 4
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.bcm2835aux_data, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %0, i32 noundef 8, i32 noundef %29) #6
  br label %32

32:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @early_serial8250_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
