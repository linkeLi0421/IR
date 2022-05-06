; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_tegra.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.tegra_uart = type { ptr, ptr, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }

@__initcall__kmod_8250_tegra__226_195_tegra_uart_driver_init6 = internal global ptr @tegra_uart_driver_init, section ".initcall6.init", align 4
@tegra_uart_driver = internal global %struct.platform_driver { ptr @tegra_uart_probe, ptr @tegra_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_uart_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_uart_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_uart_driver_exit = internal global ptr @tegra_uart_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author227 = internal constant [51 x i8] c"8250_tegra.author=Jeff Brasen <jbrasen@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [48 x i8] c"8250_tegra.description=NVIDIA Tegra 8250 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [51 x i8] c"8250_tegra.file=drivers/tty/serial/8250/8250_tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [26 x i8] c"8250_tegra.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"tegra-uart\00", align 1
@tegra_uart_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@tegra_uart_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_uart_suspend, ptr @tegra_uart_resume, ptr @tegra_uart_suspend, ptr @tegra_uart_resume, ptr @tegra_uart_suspend, ptr @tegra_uart_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to get clock!\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_tegra_uart_driver_exit, ptr @__initcall__kmod_8250_tegra__226_195_tegra_uart_driver_init6, ptr @tegra_uart_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_uart_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_uart_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_uart_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_uart_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_uart_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.uart_8250_port, align 4
  call void @llvm.lifetime.start.p0(i64 460, ptr nonnull %2) #6
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %81, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(460) %2, i8 0, i64 460, i1 false)
  store i32 956301312, ptr %7, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 3, ptr %8, align 2
  %9 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 2, ptr %9, align 1
  %10 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 20, ptr %10, align 4
  %11 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 21
  store i32 128, ptr %11, align 4
  %12 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 45
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 17
  store ptr @tegra_uart_handle_break, ptr %13, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @of_alias_get_id(ptr noundef %15, ptr noundef nonnull @.str.1) #6
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 41
  store i32 %16, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %6
  %21 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %81, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 20
  store i32 %21, ptr %24, align 4
  %25 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %81, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %25, align 4
  %29 = getelementptr inbounds %struct.resource, ptr %25, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 1, %28
  %32 = add i32 %31, %30
  %33 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %28, i32 noundef %32) #6
  %34 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %81, label %36

36:                                               ; preds = %27
  %37 = load i32, ptr %25, align 4
  %38 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %29, align 4
  %40 = load i32, ptr %25, align 4
  %41 = add i32 %39, 1
  %42 = sub i32 %41, %40
  %43 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 44
  store i32 %42, ptr %43, align 4
  %44 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %45 = getelementptr inbounds %struct.tegra_uart, ptr %4, i32 0, i32 1
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = ptrtoint ptr %44 to i32
  br label %81

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 22
  %51 = call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef %50, i32 noundef 1) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %49
  %54 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #6
  store ptr %54, ptr %4, align 4
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  br label %81

57:                                               ; preds = %53
  %58 = call i32 @clk_prepare(ptr noundef %54) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = call i32 @clk_enable(ptr noundef %54) #6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  call void @clk_unprepare(ptr noundef %54) #6
  br label %64

64:                                               ; preds = %63, %57
  %65 = phi i32 [ %58, %57 ], [ %61, %63 ]
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %64, %60
  %68 = call i32 @clk_get_rate(ptr noundef %54) #6
  store i32 %68, ptr %50, align 4
  br label %69

69:                                               ; preds = %67, %49
  %70 = call i32 @reset_control_deassert(ptr noundef %44) #6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %2) #6
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %76, align 8
  %77 = getelementptr inbounds %struct.tegra_uart, ptr %4, i32 0, i32 2
  store i32 %73, ptr %77, align 4
  br label %81

78:                                               ; preds = %72, %69
  %79 = phi i32 [ %70, %69 ], [ %73, %72 ]
  %80 = load ptr, ptr %4, align 4
  call void @clk_disable(ptr noundef %80) #6
  call void @clk_unprepare(ptr noundef %80) #6
  br label %81

81:                                               ; preds = %78, %75, %64, %56, %47, %27, %23, %20, %1
  %82 = phi i32 [ %48, %47 ], [ -19, %56 ], [ %79, %78 ], [ 0, %75 ], [ -12, %1 ], [ %21, %20 ], [ -19, %23 ], [ -12, %27 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 460, ptr nonnull %2) #6
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_uart_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_uart, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  tail call void @serial8250_unregister_port(i32 noundef %5) #6
  %6 = getelementptr inbounds %struct.tegra_uart, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @reset_control_assert(ptr noundef %7) #6
  %9 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_uart_handle_break(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 5) #6
  %5 = and i32 %4, 158
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %13, %1
  %8 = phi i32 [ %11, %13 ], [ 10000, %1 ]
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 %9(ptr noundef %0, i32 noundef 0) #6
  %11 = add nsw i32 %8, -1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #6
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 %15(ptr noundef %0, i32 noundef 5) #6
  %17 = and i32 %16, 158
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %13, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_uart_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_uart, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @serial8250_get_port(i32 noundef %5) #6
  %7 = load i32, ptr %4, align 4
  tail call void @serial8250_suspend_port(i32 noundef %7) #6
  %8 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 32
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.console, ptr %9, i32 0, i32 9
  %13 = load i16, ptr %12, align 2
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 41
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %14
  %18 = load i8, ptr @console_suspend_enabled, align 1
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %23, label %21

21:                                               ; preds = %11, %1
  %22 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %22) #6
  tail call void @clk_unprepare(ptr noundef %22) #6
  br label %23

23:                                               ; preds = %21, %11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_uart_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_uart, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @serial8250_get_port(i32 noundef %5) #6
  %7 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.console, ptr %8, i32 0, i32 9
  %12 = load i16, ptr %11, align 2
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 41
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %13
  %17 = load i8, ptr @console_suspend_enabled, align 1
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %28, label %20

20:                                               ; preds = %10, %1
  %21 = load ptr, ptr %3, align 4
  %22 = tail call i32 @clk_prepare(ptr noundef %21) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = tail call i32 @clk_enable(ptr noundef %21) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @clk_unprepare(ptr noundef %21) #6
  br label %28

28:                                               ; preds = %27, %24, %20, %10
  %29 = load i32, ptr %4, align 4
  tail call void @serial8250_resume_port(i32 noundef %29) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
