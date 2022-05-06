; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_dw.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_dw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
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
%struct.dw8250_port_data = type { i32, %struct.uart_8250_dma, i8 }
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dw8250_data = type { %struct.dw8250_port_data, i8, i32, i32, ptr, ptr, %struct.notifier_block, %struct.work_struct, ptr, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_8250_dw__227_734_dw8250_platform_driver_init6 = internal global ptr @dw8250_platform_driver_init, section ".initcall6.init", align 4
@dw8250_platform_driver = internal global %struct.platform_driver { ptr @dw8250_probe, ptr @dw8250_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw8250_of_match, ptr @dw8250_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw8250_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_dw8250_platform_driver_exit = internal global ptr @dw8250_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [26 x i8] c"8250_dw.author=Jamie Iles\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [45 x i8] c"8250_dw.file=drivers/tty/serial/8250/8250_dw\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [20 x i8] c"8250_dw.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [64 x i8] c"8250_dw.description=Synopsys DesignWare 8250 serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [35 x i8] c"8250_dw.alias=platform:dw-apb-uart\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"dw-apb-uart\00", align 1
@dw8250_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-apb-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cavium,octeon-3860-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-38x-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rzn1-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"starfive,jh7100-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@dw8250_acpi_match = internal constant [13 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"INT33C4\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"INT33C5\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"INT3434\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"INT3435\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"80860F0A\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"8086228A\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"APMC0D08\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"AMD0020\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"AMDI0020\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"AMDI0022\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"BRCM2032\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"HISI0031\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 4
@dw8250_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @dw8250_suspend, ptr @dw8250_resume, ptr @dw8250_suspend, ptr @dw8250_resume, ptr @dw8250_suspend, ptr @dw8250_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw8250_runtime_suspend, ptr @dw8250_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"no registers defined\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"snps,uart-16550-compatible\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"reg-shift\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"reg-io-width\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"dcd-override\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"dsr-override\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"cts-override\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ri-override\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"baudclk\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"could not enable optional baudclk: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"clock rate not defined\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"apb_pclk\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"could not enable apb_pclk\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Failed to set the clock notifier\0A\00", align 1
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"marvell,armada-38x-uart\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"starfive,jh7100-uart\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"lpss_priv\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_dw8250_platform_driver_exit, ptr @__initcall__kmod_8250_dw__227_734_dw8250_platform_driver_init6, ptr @dw8250_platform_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dw8250_platform_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw8250_platform_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dw8250_platform_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw8250_platform_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw8250_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.uart_8250_port, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 460, ptr nonnull %2) #9
  %4 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(460) %4, i8 0, i32 456, i1 false)
  %5 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #10
  br label %231

9:                                                ; preds = %1
  %10 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %231, label %12

12:                                               ; preds = %9
  store i32 0, ptr %2, align 4
  %13 = load i32, ptr %5, align 4
  %14 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 20
  store i32 %10, ptr %15, align 4
  %16 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 15
  store ptr @dw8250_handle_irq, ptr %16, align 4
  %17 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 16
  store ptr @dw8250_do_pm, ptr %17, align 4
  %18 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  store i32 553648128, ptr %19, align 4
  %20 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 45
  store ptr %6, ptr %20, align 4
  %21 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %21, align 2
  %22 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 3
  store ptr @dw8250_serial_in, ptr %22, align 4
  %23 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 4
  store ptr @dw8250_serial_out, ptr %23, align 4
  %24 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 6
  store ptr @dw8250_set_ldisc, ptr %24, align 4
  %25 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 5
  store ptr @dw8250_set_termios, ptr %25, align 4
  %26 = load i32, ptr %5, align 4
  %27 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 1, %26
  %30 = add i32 %29, %28
  %31 = tail call ptr @devm_ioremap(ptr noundef %6, i32 noundef %26, i32 noundef %30) #9
  %32 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %231, label %34

34:                                               ; preds = %12
  %35 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 228, i32 noundef 3520) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %231, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.dw8250_port_data, ptr %35, i32 0, i32 1
  %39 = getelementptr inbounds %struct.dw8250_port_data, ptr %35, i32 0, i32 1, i32 2
  store ptr @dw8250_fallback_dma_filter, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 1
  store i8 31, ptr %40, align 4
  %41 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 59
  store ptr %35, ptr %41, align 4
  %42 = tail call zeroext i1 @device_property_present(ptr noundef %6, ptr noundef nonnull @.str.2) #9
  %43 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 9
  %44 = load i8, ptr %43, align 4
  %45 = select i1 %42, i8 2, i8 0
  %46 = and i8 %44, -3
  %47 = or i8 %46, %45
  store i8 %47, ptr %43, align 4
  %48 = call i32 @device_property_read_u32_array(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load i32, ptr %3, align 4
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 %52, ptr %53, align 1
  br label %54

54:                                               ; preds = %50, %37
  %55 = call i32 @device_property_read_u32_array(ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1) #9
  %56 = icmp eq i32 %55, 0
  %57 = load i32, ptr %3, align 4
  %58 = icmp eq i32 %57, 4
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i8 3, ptr %21, align 2
  store ptr @dw8250_serial_in32, ptr %22, align 4
  store ptr @dw8250_serial_out32, ptr %23, align 4
  br label %61

61:                                               ; preds = %60, %54
  %62 = call zeroext i1 @device_property_present(ptr noundef %6, ptr noundef nonnull @.str.5) #9
  br i1 %62, label %63, label %70

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %65, 128
  store i32 %66, ptr %64, align 4
  %67 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = or i32 %68, 8
  store i32 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %63, %61
  %71 = call zeroext i1 @device_property_present(ptr noundef %6, ptr noundef nonnull @.str.6) #9
  br i1 %71, label %72, label %79

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = or i32 %74, 32
  store i32 %75, ptr %73, align 4
  %76 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = or i32 %77, 2
  store i32 %78, ptr %76, align 4
  br label %79

79:                                               ; preds = %72, %70
  %80 = call zeroext i1 @device_property_present(ptr noundef %6, ptr noundef nonnull @.str.7) #9
  br i1 %80, label %81, label %88

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = or i32 %83, 16
  store i32 %84, ptr %82, align 4
  %85 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = or i32 %86, 1
  store i32 %87, ptr %85, align 4
  br label %88

88:                                               ; preds = %81, %79
  %89 = call zeroext i1 @device_property_present(ptr noundef %6, ptr noundef nonnull @.str.8) #9
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %92, 68
  store i32 %93, ptr %91, align 4
  br label %94

94:                                               ; preds = %90, %88
  %95 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 22
  %96 = call i32 @device_property_read_u32_array(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef %95, i32 noundef 1) #9
  %97 = call ptr @devm_clk_get_optional(ptr noundef %6, ptr noundef nonnull @.str.10) #9
  %98 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 4
  store ptr %97, ptr %98, align 4
  %99 = icmp eq ptr %97, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = call ptr @devm_clk_get_optional(ptr noundef %6, ptr noundef null) #9
  store ptr %101, ptr %98, align 4
  br label %102

102:                                              ; preds = %100, %94
  %103 = phi ptr [ %101, %100 ], [ %97, %94 ]
  %104 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = ptrtoint ptr %103 to i32
  br label %231

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 7
  store i32 -32, ptr %108, align 4
  %109 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 7, i32 1
  store volatile ptr %109, ptr %109, align 4
  %110 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 7, i32 1, i32 1
  store ptr %109, ptr %110, align 4
  %111 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 7, i32 2
  store ptr @dw8250_clk_work_cb, ptr %111, align 4
  %112 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 6
  store ptr @dw8250_clk_notifier_cb, ptr %112, align 4
  %113 = call i32 @clk_prepare(ptr noundef %103) #9
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = call i32 @clk_enable(ptr noundef %103) #9
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  call void @clk_unprepare(ptr noundef %103) #9
  br label %119

119:                                              ; preds = %118, %107
  %120 = phi i32 [ %116, %118 ], [ %113, %107 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.11, i32 noundef %120) #10
  br label %121

121:                                              ; preds = %119, %115
  %122 = load ptr, ptr %98, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = call i32 @clk_get_rate(ptr noundef nonnull %122) #9
  store i32 %125, ptr %95, align 4
  br label %128

126:                                              ; preds = %121
  %127 = load i32, ptr %95, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %127, %126 ], [ %125, %124 ]
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.12) #10
  br label %228

132:                                              ; preds = %128
  %133 = call ptr @devm_clk_get_optional(ptr noundef %6, ptr noundef nonnull @.str.13) #9
  %134 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 5
  store ptr %133, ptr %134, align 4
  %135 = icmp ugt ptr %133, inttoptr (i32 -4096 to ptr)
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = ptrtoint ptr %133 to i32
  br label %228

138:                                              ; preds = %132
  %139 = call i32 @clk_prepare(ptr noundef %133) #9
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = call i32 @clk_enable(ptr noundef %133) #9
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  call void @clk_unprepare(ptr noundef %133) #9
  br label %145

145:                                              ; preds = %144, %138
  %146 = phi i32 [ %142, %144 ], [ %139, %138 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.14) #10
  br label %228

147:                                              ; preds = %141
  %148 = call ptr @__devm_reset_control_get(ptr noundef %6, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %149 = getelementptr inbounds %struct.dw8250_data, ptr %35, i32 0, i32 8
  store ptr %148, ptr %149, align 4
  %150 = icmp ugt ptr %148, inttoptr (i32 -4096 to ptr)
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = ptrtoint ptr %148 to i32
  br label %225

153:                                              ; preds = %147
  %154 = call i32 @reset_control_deassert(ptr noundef %148) #9
  %155 = load ptr, ptr %20, align 4
  %156 = getelementptr inbounds %struct.device, ptr %155, i32 0, i32 25
  %157 = load ptr, ptr %156, align 8
  %158 = icmp eq ptr %157, null
  br i1 %158, label %175, label %159

159:                                              ; preds = %153
  %160 = call i32 @of_alias_get_id(ptr noundef nonnull %157, ptr noundef nonnull @.str.16) #9
  %161 = icmp sgt i32 %160, -1
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 41
  store i32 %160, ptr %163, align 4
  br label %164

164:                                              ; preds = %162, %159
  %165 = call zeroext i1 @of_device_is_big_endian(ptr noundef nonnull %157) #9
  br i1 %165, label %166, label %167

166:                                              ; preds = %164
  store i8 6, ptr %21, align 2
  store ptr @dw8250_serial_in32be, ptr %22, align 4
  store ptr @dw8250_serial_out32be, ptr %23, align 4
  br label %167

167:                                              ; preds = %166, %164
  %168 = call i32 @of_device_is_compatible(ptr noundef nonnull %157, ptr noundef nonnull @.str.17) #9
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  store ptr @dw8250_serial_out38x, ptr %23, align 4
  br label %171

171:                                              ; preds = %170, %167
  %172 = call i32 @of_device_is_compatible(ptr noundef nonnull %157, ptr noundef nonnull @.str.18) #9
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  store ptr @dw8250_do_set_termios, ptr %25, align 4
  br label %175

175:                                              ; preds = %174, %171, %153
  %176 = load ptr, ptr %20, align 4
  %177 = getelementptr i8, ptr %176, i32 -16
  %178 = call ptr @platform_get_resource_byname(ptr noundef %177, i32 noundef 512, ptr noundef nonnull @.str.20) #9
  %179 = icmp eq ptr %178, null
  br i1 %179, label %187, label %180

180:                                              ; preds = %175
  %181 = load ptr, ptr %20, align 4
  %182 = getelementptr inbounds %struct.device, ptr %181, i32 0, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.dw8250_port_data, ptr %35, i32 0, i32 1, i32 3
  store ptr %183, ptr %184, align 4
  %185 = load ptr, ptr %182, align 4
  %186 = getelementptr inbounds %struct.dw8250_port_data, ptr %35, i32 0, i32 1, i32 4
  store ptr %185, ptr %186, align 4
  store ptr @dw8250_idma_filter, ptr %39, align 4
  br label %187

187:                                              ; preds = %180, %175
  %188 = load i8, ptr %43, align 4
  %189 = and i8 %188, 2
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  store ptr null, ptr %16, align 4
  br label %192

192:                                              ; preds = %191, %187
  %193 = and i8 %188, 1
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  call void @dw8250_setup_port(ptr noundef nonnull %2) #9
  br label %196

196:                                              ; preds = %195, %192
  %197 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 23
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %196
  %201 = lshr i32 %198, 2
  %202 = getelementptr inbounds %struct.dw8250_port_data, ptr %35, i32 0, i32 1, i32 5, i32 5
  store i32 %201, ptr %202, align 4
  %203 = getelementptr inbounds %struct.dw8250_port_data, ptr %35, i32 0, i32 1, i32 6, i32 6
  store i32 %201, ptr %203, align 4
  %204 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 19
  store ptr %38, ptr %204, align 4
  br label %205

205:                                              ; preds = %200, %196
  %206 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %2) #9
  store i32 %206, ptr %35, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load ptr, ptr %149, align 4
  %210 = call i32 @reset_control_assert(ptr noundef %209) #9
  br label %225

211:                                              ; preds = %205
  %212 = load ptr, ptr %98, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %222, label %214

214:                                              ; preds = %211
  %215 = call i32 @clk_notifier_register(ptr noundef nonnull %212, ptr noundef %112) #9
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %214
  %218 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %218, ptr noundef nonnull @.str.15) #10
  br label %222

219:                                              ; preds = %214
  %220 = load ptr, ptr @system_unbound_wq, align 4
  %221 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %220, ptr noundef %108) #9
  br label %222

222:                                              ; preds = %219, %217, %211
  %223 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %35, ptr %223, align 8
  %224 = call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 0) #9
  call void @pm_runtime_enable(ptr noundef %6) #9
  br label %231

225:                                              ; preds = %208, %151
  %226 = phi i32 [ %152, %151 ], [ %206, %208 ]
  %227 = load ptr, ptr %134, align 4
  call void @clk_disable(ptr noundef %227) #9
  call void @clk_unprepare(ptr noundef %227) #9
  br label %228

228:                                              ; preds = %225, %145, %136, %131
  %229 = phi i32 [ %137, %136 ], [ %146, %145 ], [ %226, %225 ], [ -22, %131 ]
  %230 = load ptr, ptr %98, align 4
  call void @clk_disable(ptr noundef %230) #9
  call void @clk_unprepare(ptr noundef %230) #9
  br label %231

231:                                              ; preds = %228, %222, %105, %34, %12, %9, %8
  %232 = phi i32 [ %106, %105 ], [ %229, %228 ], [ 0, %222 ], [ -22, %8 ], [ %10, %9 ], [ -12, %12 ], [ -12, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 460, ptr nonnull %2) #9
  ret i32 %232
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw8250_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #9
  %6 = getelementptr inbounds %struct.dw8250_data, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dw8250_data, ptr %3, i32 0, i32 6
  %11 = tail call i32 @clk_notifier_unregister(ptr noundef nonnull %7, ptr noundef %10) #9
  %12 = getelementptr inbounds %struct.dw8250_data, ptr %3, i32 0, i32 7
  %13 = tail call zeroext i1 @flush_work(ptr noundef %12) #9
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32, ptr %3, align 4
  tail call void @serial8250_unregister_port(i32 noundef %15) #9
  %16 = getelementptr inbounds %struct.dw8250_data, ptr %3, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @reset_control_assert(ptr noundef %17) #9
  %19 = getelementptr inbounds %struct.dw8250_data, ptr %3, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %20) #9
  tail call void @clk_unprepare(ptr noundef %20) #9
  %21 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %21) #9
  tail call void @clk_unprepare(ptr noundef %21) #9
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #9
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #9, !srcloc !10
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 0, i32 -1, ptr elementtype(i32) %22) #9, !srcloc !11
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  br label %27

27:                                               ; preds = %26, %14
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
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw8250_handle_irq(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef 2) #9
  %7 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = and i32 %6, 63
  %11 = icmp eq i32 %10, 12
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %15 = load ptr, ptr %4, align 4
  %16 = tail call i32 %15(ptr noundef %0, i32 noundef 5) #9
  %17 = and i32 %16, 17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load ptr, ptr %4, align 4
  %21 = tail call i32 %20(ptr noundef %0, i32 noundef 0) #9
  br label %22

22:                                               ; preds = %19, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %14) #9
  br label %23

23:                                               ; preds = %22, %1
  %24 = tail call i32 @serial8250_handle_irq(ptr noundef %0, i32 noundef %6) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = and i32 %6, 7
  %28 = icmp eq i32 %27, 7
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.dw8250_data, ptr %3, i32 0, i32 1
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i32
  %34 = tail call i32 %30(ptr noundef %0, i32 noundef %33) #9
  br label %35

35:                                               ; preds = %29, %26, %23
  %36 = phi i32 [ 1, %29 ], [ 1, %23 ], [ 0, %26 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw8250_do_pm(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  tail call void @serial8250_do_pm(ptr noundef %0, i32 noundef 0, i32 noundef %2) #9
  br label %13

9:                                                ; preds = %3
  tail call void @serial8250_do_pm(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 4) #9
  br label %13

13:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw8250_serial_in(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl i32 %1, %7
  %9 = getelementptr i8, ptr %4, i32 %8
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #9, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %1, 6
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dw8250_data, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %11
  %19 = getelementptr inbounds %struct.dw8250_data, ptr %15, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %18, %21
  br label %23

23:                                               ; preds = %13, %2
  %24 = phi i32 [ %22, %13 ], [ %11, %2 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw8250_serial_out(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %6 = trunc i32 %2 to i8
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl i32 %1, %11
  %13 = getelementptr i8, ptr %8, i32 %12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %6) #9, !srcloc !16
  %14 = icmp eq i32 %1, 3
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.dw8250_data, ptr %5, i32 0, i32 9
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call fastcc void @dw8250_check_lcr(ptr noundef %0, i32 noundef %2)
  br label %21

21:                                               ; preds = %20, %15, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw8250_set_ldisc(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0, i32 noundef 4) #9
  %6 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 65536
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 4
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 11
  %14 = and i32 %5, -65
  %15 = select i1 %13, i32 64, i32 0
  %16 = or i32 %15, %14
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %0, i32 noundef 4, i32 noundef %16) #9
  br label %19

19:                                               ; preds = %10, %2
  tail call void @serial8250_do_set_ldisc(ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw8250_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call i32 @tty_termios_baud_rate(ptr noundef %1) #9
  %5 = shl i32 %4, 4
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dw8250_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  %10 = load ptr, ptr %8, align 4
  %11 = tail call i32 @clk_round_rate(ptr noundef %10, i32 noundef %5) #9
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load ptr, ptr %8, align 4
  %15 = tail call i32 @clk_set_rate(ptr noundef %14, i32 noundef %5) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  store i32 %11, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %13, %3
  %20 = load ptr, ptr %8, align 4
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = tail call i32 @clk_enable(ptr noundef %20) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #9
  br label %27

27:                                               ; preds = %26, %23, %19
  tail call void @dw8250_do_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dw8250_fallback_dma_filter(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #6 {
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw8250_serial_in32(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl i32 %1, %7
  %9 = getelementptr i8, ptr %4, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !18
  %11 = icmp eq i32 %1, 6
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dw8250_data, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, %10
  %18 = getelementptr inbounds %struct.dw8250_data, ptr %14, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %17, %20
  br label %22

22:                                               ; preds = %12, %2
  %23 = phi i32 [ %21, %12 ], [ %10, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw8250_serial_out32(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl i32 %1, %10
  %12 = getelementptr i8, ptr %7, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %2) #9, !srcloc !20
  %13 = icmp eq i32 %1, 3
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.dw8250_data, ptr %5, i32 0, i32 9
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call fastcc void @dw8250_check_lcr(ptr noundef %0, i32 noundef %2)
  br label %20

20:                                               ; preds = %19, %14, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw8250_clk_work_cb(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_get_rate(ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -204
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @serial8250_get_port(i32 noundef %8) #9
  tail call void @serial8250_update_uartclk(ptr noundef %9, i32 noundef %4) #9
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw8250_clk_notifier_cb(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = icmp eq i32 %1, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = load ptr, ptr @system_unbound_wq, align 4
  %7 = getelementptr i8, ptr %0, i32 12
  %8 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %6, ptr noundef %7) #9
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ 1, %5 ], [ 0, %3 ]
  ret i32 %10
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw8250_setup_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_handle_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_pm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw8250_check_lcr(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl i32 3, %7
  %9 = getelementptr i8, ptr %4, i32 %8
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %12 = tail call i32 @llvm.bswap.i32(i32 %1)
  %13 = trunc i32 %1 to i8
  br label %14

14:                                               ; preds = %26, %2
  %15 = phi i32 [ 999, %2 ], [ %27, %26 ]
  %16 = load ptr, ptr %10, align 4
  %17 = tail call i32 %16(ptr noundef %0, i32 noundef 3) #9
  %18 = xor i32 %17, %1
  %19 = and i32 %18, -33
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %14
  tail call void @serial8250_clear_and_reinit_fifos(ptr noundef %0) #9
  %22 = load ptr, ptr %10, align 4
  %23 = tail call i32 %22(ptr noundef %0, i32 noundef 0) #9
  %24 = load i8, ptr %11, align 2
  switch i8 %24, label %30 [
    i8 3, label %25
    i8 6, label %29
  ]

25:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %1) #9, !srcloc !20
  br label %26

26:                                               ; preds = %30, %29, %25
  %27 = add nsw i32 %15, -1
  %28 = icmp eq i32 %15, 0
  br i1 %28, label %31, label %14

29:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %12) #9, !srcloc !20
  br label %26

30:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %13) #9, !srcloc !16
  br label %26

31:                                               ; preds = %26, %14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_clear_and_reinit_fifos(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_set_ldisc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw8250_do_set_termios(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_update_uartclk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw8250_serial_in32be(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl i32 %1, %7
  %9 = getelementptr i8, ptr %4, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !17
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !24
  %12 = icmp eq i32 %1, 6
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dw8250_data, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %11
  %19 = getelementptr inbounds %struct.dw8250_data, ptr %15, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %18, %21
  br label %23

23:                                               ; preds = %13, %2
  %24 = phi i32 [ %22, %13 ], [ %11, %2 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw8250_serial_out32be(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %2)
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl i32 %1, %11
  %13 = getelementptr i8, ptr %8, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %6) #9, !srcloc !20
  %14 = icmp eq i32 %1, 3
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.dw8250_data, ptr %5, i32 0, i32 9
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call fastcc void @dw8250_check_lcr(ptr noundef %0, i32 noundef %2)
  br label %21

21:                                               ; preds = %20, %15, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw8250_serial_out38x(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 3
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  br label %10

10:                                               ; preds = %24, %7
  %11 = phi i32 [ 19999, %7 ], [ %25, %24 ]
  %12 = load ptr, ptr %8, align 4
  %13 = load i8, ptr %9, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 5, %14
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #9, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !26
  %18 = and i8 %17, 64
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %10
  %21 = icmp ult i32 %11, 19000
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #9
  br label %24

24:                                               ; preds = %22, %20
  %25 = add nsw i32 %11, -1
  %26 = icmp eq i32 %11, 0
  br i1 %26, label %27, label %10

27:                                               ; preds = %24, %10, %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  %28 = trunc i32 %2 to i8
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %1, %33
  %35 = getelementptr i8, ptr %30, i32 %34
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 %28) #9, !srcloc !16
  br i1 %6, label %36, label %42

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.dw8250_data, ptr %5, i32 0, i32 9
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, 2
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  tail call fastcc void @dw8250_check_lcr(ptr noundef %0, i32 noundef %2)
  br label %42

42:                                               ; preds = %41, %36, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dw8250_idma_filter(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #8 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %1
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw8250_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  tail call void @serial8250_suspend_port(i32 noundef %4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw8250_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  tail call void @serial8250_resume_port(i32 noundef %4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw8250_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw8250_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.dw8250_data, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw8250_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw8250_data, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = getelementptr inbounds %struct.dw8250_data, ptr %3, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_prepare(ptr noundef %14) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = tail call i32 @clk_enable(ptr noundef %14) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef %14) #9
  br label %21

21:                                               ; preds = %20, %17, %12
  ret i32 0
}

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
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{i64 2147908257}
!10 = !{i64 406567, i64 2147896538, i64 2147896564, i64 2147896611, i64 2147896633, i64 2147896661, i64 2147896681}
!11 = !{i64 393136, i64 393161, i64 393183, i64 393199, i64 393211, i64 393231, i64 393255, i64 393271, i64 393283}
!12 = !{i64 2147908383}
!13 = !{i64 3631097}
!14 = !{i64 2153974001}
!15 = !{i64 2153973682}
!16 = !{i64 3630702}
!17 = !{i64 3631317}
!18 = !{i64 2153974752}
!19 = !{i64 2153974207}
!20 = !{i64 3630899}
!21 = !{i64 2153971731}
!22 = !{i64 2153972078}
!23 = !{i64 2153972368}
!24 = !{i64 2153975552}
!25 = !{i64 2153974985}
!26 = !{i64 2153972649}
!27 = !{i64 2153973398}
