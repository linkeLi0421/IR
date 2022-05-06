; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_uniphier.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_uniphier.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.uniphier8250_priv = type { i32, ptr, %struct.spinlock }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }

@__UNIQUE_ID___earlycon_uniphier226 = internal constant %struct.earlycon_id { [15 x i8] c"uniphier\00\00\00\00\00\00\00", i8 0, [128 x i8] c"socionext,uniphier-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_early_console_setup }, section "__earlycon_table", align 4
@__initcall__kmod_8250_uniphier__227_303_uniphier_uart_platform_driver_init6 = internal global ptr @uniphier_uart_platform_driver_init, section ".initcall6.init", align 4
@uniphier_uart_platform_driver = internal global %struct.platform_driver { ptr @uniphier_uart_probe, ptr @uniphier_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_uart_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_uart_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_uniphier_uart_platform_driver_exit = internal global ptr @uniphier_uart_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [69 x i8] c"8250_uniphier.author=Masahiro Yamada <yamada.masahiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [47 x i8] c"8250_uniphier.description=UniPhier UART driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [57 x i8] c"8250_uniphier.file=drivers/tty/serial/8250/8250_uniphier\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [26 x i8] c"8250_uniphier.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"uniphier-uart\00", align 1
@uniphier_uart_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@uniphier_uart_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @uniphier_uart_suspend, ptr @uniphier_uart_resume, ptr @uniphier_uart_suspend, ptr @uniphier_uart_resume, ptr @uniphier_uart_suspend, ptr @uniphier_uart_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get memory resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to get alias id\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"auto-flow-control\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to register 8250 port\0A\00", align 1
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___earlycon_uniphier226, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_uniphier_uart_platform_driver_exit, ptr @__initcall__kmod_8250_uniphier__227_303_uniphier_uart_platform_driver_init6, ptr @uniphier_uart_platform_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_early_console_setup(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 26
  store i8 3, ptr %7, align 2
  %8 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 25
  store i8 2, ptr %8, align 1
  %9 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 3
  store i32 0, ptr %9, align 4
  %10 = tail call i32 @early_serial8250_setup(ptr noundef %0, ptr noundef %1) #6
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ -19, %2 ]
  ret i32 %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_uart_platform_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_uart_platform_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @uniphier_uart_platform_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_uart_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @early_serial8250_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_uart_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.uart_8250_port, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 460, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(460) %2, i8 0, i32 460, i1 false), !annotation !8
  %4 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %77

7:                                                ; preds = %1
  %8 = load i32, ptr %4, align 4
  %9 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 1, %8
  %12 = add i32 %11, %10
  %13 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %8, i32 noundef %12) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %77, label %15

15:                                               ; preds = %7
  %16 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %77, label %18

18:                                               ; preds = %15
  %19 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %77, label %21

21:                                               ; preds = %18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(460) %2, i8 0, i32 460, i1 false)
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @of_alias_get_id(ptr noundef %23, ptr noundef nonnull @.str.2) #6
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  br label %77

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 41
  store i32 %24, ptr %28, align 4
  %29 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #6
  %30 = getelementptr inbounds %struct.uniphier8250_priv, ptr %19, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  %33 = ptrtoint ptr %29 to i32
  br label %77

34:                                               ; preds = %27
  %35 = tail call i32 @clk_prepare(ptr noundef %29) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %34
  %38 = tail call i32 @clk_enable(ptr noundef %29) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @clk_unprepare(ptr noundef %29) #6
  br label %77

41:                                               ; preds = %37
  %42 = tail call i32 @clk_get_rate(ptr noundef %29) #6
  %43 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 22
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.uniphier8250_priv, ptr %19, i32 0, i32 2
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 45
  store ptr %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 59
  store ptr %19, ptr %46, align 4
  %47 = load i32, ptr %4, align 4
  %48 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %47, ptr %48, align 4
  %49 = load i32, ptr %9, align 4
  %50 = load i32, ptr %4, align 4
  %51 = add i32 %49, 1
  %52 = sub i32 %51, %50
  %53 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 44
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %13, ptr %54, align 4
  %55 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 20
  store i32 %16, ptr %55, align 4
  %56 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 4, ptr %56, align 4
  %57 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 3, ptr %57, align 2
  %58 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 23
  store i32 64, ptr %58, align 4
  %59 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 2, ptr %59, align 1
  %60 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  store i32 671088640, ptr %60, align 4
  %61 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 3
  store i32 256, ptr %61, align 4
  %62 = load ptr, ptr %22, align 8
  %63 = tail call ptr @of_find_property(ptr noundef %62, ptr noundef nonnull @.str.5, ptr noundef null) #6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %41
  store i32 2304, ptr %61, align 4
  br label %66

66:                                               ; preds = %65, %41
  %67 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 3
  store ptr @uniphier_serial_in, ptr %67, align 4
  %68 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 4
  store ptr @uniphier_serial_out, ptr %68, align 4
  %69 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 21
  store ptr @uniphier_serial_dl_read, ptr %69, align 4
  %70 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 22
  store ptr @uniphier_serial_dl_write, ptr %70, align 4
  %71 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %2) #6
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #7
  %74 = load ptr, ptr %30, align 4
  call void @clk_disable(ptr noundef %74) #6
  call void @clk_unprepare(ptr noundef %74) #6
  br label %77

75:                                               ; preds = %66
  store i32 %71, ptr %19, align 4
  %76 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %19, ptr %76, align 8
  br label %77

77:                                               ; preds = %75, %73, %40, %34, %32, %26, %18, %15, %7, %6
  %78 = phi i32 [ %24, %26 ], [ %33, %32 ], [ %71, %73 ], [ 0, %75 ], [ -22, %6 ], [ -12, %7 ], [ %16, %15 ], [ -12, %18 ], [ %38, %40 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 460, ptr nonnull %2) #6
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_uart_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  tail call void @serial8250_unregister_port(i32 noundef %4) #6
  %5 = getelementptr inbounds %struct.uniphier8250_priv, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %6) #6
  tail call void @clk_unprepare(ptr noundef %6) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_serial_in(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  switch i32 %1, label %6 [
    i32 7, label %8
    i32 3, label %3
    i32 4, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2
  %5 = phi i32 [ 0, %2 ], [ 8, %3 ]
  br label %8

6:                                                ; preds = %2
  %7 = shl i32 %1, 2
  br label %8

8:                                                ; preds = %6, %4, %2
  %9 = phi i32 [ 0, %6 ], [ %5, %4 ], [ 8, %2 ]
  %10 = phi i32 [ %7, %6 ], [ 16, %4 ], [ 12, %2 ]
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %15 = lshr i32 %14, %9
  %16 = and i32 %15, 255
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_serial_out(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  switch i32 %1, label %10 [
    i32 7, label %4
    i32 2, label %15
    i32 3, label %5
    i32 4, label %7
  ]

4:                                                ; preds = %3
  br label %15

5:                                                ; preds = %3
  %6 = and i32 %2, -129
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ 0, %3 ], [ 8, %5 ]
  %9 = phi i32 [ %2, %3 ], [ %6, %5 ]
  br label %15

10:                                               ; preds = %3
  %11 = shl i32 %1, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %2) #6, !srcloc !12
  br label %34

15:                                               ; preds = %7, %4, %3
  %16 = phi i32 [ 8, %4 ], [ 0, %3 ], [ %8, %7 ]
  %17 = phi i32 [ %2, %4 ], [ %2, %3 ], [ %9, %7 ]
  %18 = phi i32 [ 12, %4 ], [ 12, %3 ], [ 16, %7 ]
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.uniphier8250_priv, ptr %20, i32 0, i32 2
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #6
  %23 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %18
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %27 = shl nuw nsw i32 255, %16
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = shl i32 %17, %16
  %31 = or i32 %29, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %32 = load ptr, ptr %23, align 4
  %33 = getelementptr i8, ptr %32, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #6, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #6
  br label %34

34:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_serial_dl_read(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 36
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_serial_dl_write(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %1) #6, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_uart_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @serial8250_get_port(i32 noundef %4) #6
  %6 = load i32, ptr %3, align 4
  tail call void @serial8250_suspend_port(i32 noundef %6) #6
  %7 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.console, ptr %8, i32 0, i32 9
  %12 = load i16, ptr %11, align 2
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 41
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %13
  %17 = load i8, ptr @console_suspend_enabled, align 1
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %23, label %20

20:                                               ; preds = %10, %1
  %21 = getelementptr inbounds %struct.uniphier8250_priv, ptr %3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %22) #6
  tail call void @clk_unprepare(ptr noundef %22) #6
  br label %23

23:                                               ; preds = %20, %10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_uart_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @serial8250_get_port(i32 noundef %4) #6
  %6 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 9
  %11 = load i16, ptr %10, align 2
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 41
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %12
  %16 = load i8, ptr @console_suspend_enabled, align 1
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %28, label %19

19:                                               ; preds = %9, %1
  %20 = getelementptr inbounds %struct.uniphier8250_priv, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @clk_prepare(ptr noundef %21) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = tail call i32 @clk_enable(ptr noundef %21) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @clk_unprepare(ptr noundef %21) #6
  br label %30

28:                                               ; preds = %24, %9
  %29 = load i32, ptr %3, align 4
  tail call void @serial8250_resume_port(i32 noundef %29) #6
  br label %30

30:                                               ; preds = %28, %27, %19
  %31 = phi i32 [ 0, %28 ], [ %25, %27 ], [ %22, %19 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #1

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
!8 = !{!"auto-init"}
!9 = !{i64 1732562}
!10 = !{i64 2153329374}
!11 = !{i64 2153329712}
!12 = !{i64 1732144}
!13 = !{i64 2153330567}
!14 = !{i64 2153330754}
!15 = !{i64 2153331295}
!16 = !{i64 2153331530}
