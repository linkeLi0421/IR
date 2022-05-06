; ModuleID = '/llk/IR/drivers/gpio/gpio-omap.c_pt.bc'
source_filename = "../drivers/gpio/gpio-omap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.omap_gpio_platform_data = type { i32, i32, i32, i8, i8, i8, i32, ptr, ptr }
%struct.omap_gpio_reg_offs = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8 }
%struct.gpio_bank = type { ptr, ptr, i32, i32, i32, %struct.gpio_regs, i32, i32, i32, %struct.raw_spinlock, %struct.raw_spinlock, %struct.gpio_chip, ptr, %struct.notifier_block, i8, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr }
%struct.gpio_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_omap__211_1576_omap_gpio_drv_reg2 = internal global ptr @omap_gpio_drv_reg, section ".initcall2.init", align 4
@omap_gpio_driver = internal global %struct.platform_driver { ptr @omap_gpio_probe, ptr @omap_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_omap_gpio_exit = internal global ptr @omap_gpio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description212 = internal constant [39 x i8] c"gpio_omap.description=omap gpio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias213 = internal constant [35 x i8] c"gpio_omap.alias=platform:gpio-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [38 x i8] c"gpio_omap.file=drivers/gpio/gpio-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [25 x i8] c"gpio_omap.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"omap_gpio\00", align 1
@omap_gpio_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2_pdata }, %struct.of_device_id zeroinitializer], align 4
@gpio_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_gpio_suspend, ptr @omap_gpio_resume, ptr @omap_gpio_suspend, ptr @omap_gpio_resume, ptr @omap_gpio_suspend, ptr @omap_gpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_gpio_runtime_suspend, ptr @omap_gpio_runtime_resume, ptr null }, align 4
@dummy_irq_chip = external dso_local local_unnamed_addr global %struct.irq_chip, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"can't get irq resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ti,gpio-always-on\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dbclk\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Could not get gpio dbck. Disable debounce\0A\00", align 1
@omap_mpuio_device = internal global %struct.platform_device { ptr @.str.5, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @omap_mpuio_driver, i64 20), ptr null, ptr null, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, align 8
@omap_mpuio_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_mpuio_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"mpuio\00", align 1
@omap_mpuio_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_mpuio_suspend_noirq, ptr @omap_mpuio_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@omap_gpio_chip_init.gpio = internal unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"gpio-%d-%d\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Could not register gpio chip\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"Could not set line %u debounce to %u microseconds (%d)\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"drivers/gpio/gpio-omap.c\00", align 1
@omap_gpio_irq_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"gpio irq%i while runtime suspended?\0A\00", align 1
@omap_gpio_show_rev.called = internal unnamed_addr global i1 false, align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"\016OMAP GPIO hardware version %d.%d\0A\00", align 1
@omap4_pdata = internal constant %struct.omap_gpio_platform_data { i32 0, i32 32, i32 0, i8 1, i8 0, i8 0, i32 0, ptr @omap4_gpio_regs, ptr null }, align 4
@omap3_pdata = internal constant %struct.omap_gpio_platform_data { i32 0, i32 32, i32 0, i8 1, i8 0, i8 0, i32 0, ptr @omap2_gpio_regs, ptr null }, align 4
@omap2_pdata = internal constant %struct.omap_gpio_platform_data { i32 0, i32 32, i32 0, i8 0, i8 0, i8 0, i32 0, ptr @omap2_gpio_regs, ptr null }, align 4
@omap4_gpio_regs = internal constant %struct.omap_gpio_reg_offs { i16 0, i16 16, i16 308, i16 312, i16 316, i16 404, i16 400, i16 44, i16 48, i16 36, i16 40, i16 52, i16 56, i16 52, i16 60, i16 340, i16 336, i16 304, i16 68, i16 320, i16 324, i16 328, i16 332, i16 0, i16 0, i16 0, i16 0, i8 0 }, align 2
@omap2_gpio_regs = internal constant %struct.omap_gpio_reg_offs { i16 0, i16 16, i16 52, i16 56, i16 60, i16 148, i16 144, i16 24, i16 40, i16 0, i16 0, i16 28, i16 44, i16 100, i16 96, i16 84, i16 80, i16 48, i16 32, i16 64, i16 68, i16 72, i16 76, i16 0, i16 0, i16 0, i16 0, i8 0 }, align 2
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias213, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_omap_gpio_exit, ptr @__initcall__kmod_gpio_omap__211_1576_omap_gpio_drv_reg2, ptr @omap_gpio_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap_gpio_drv_reg() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_gpio_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap_gpio_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @device_get_match_data(ptr noundef %2) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %305, label %11

11:                                               ; preds = %7, %1
  %12 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 456, i32 noundef 3520) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %305, label %15

15:                                               ; preds = %11
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 136, i32 noundef 3520) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %305, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.irq_chip, ptr %16, i32 0, i32 2
  store ptr @omap_gpio_irq_startup, ptr %19, align 4
  %20 = getelementptr inbounds %struct.irq_chip, ptr %16, i32 0, i32 3
  store ptr @omap_gpio_irq_shutdown, ptr %20, align 4
  %21 = load ptr, ptr getelementptr inbounds (%struct.irq_chip, ptr @dummy_irq_chip, i32 0, i32 6), align 4
  %22 = getelementptr inbounds %struct.irq_chip, ptr %16, i32 0, i32 6
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.irq_chip, ptr %16, i32 0, i32 7
  store ptr @omap_gpio_mask_irq, ptr %23, align 4
  %24 = getelementptr inbounds %struct.irq_chip, ptr %16, i32 0, i32 9
  store ptr @omap_gpio_unmask_irq, ptr %24, align 4
  %25 = getelementptr inbounds %struct.irq_chip, ptr %16, i32 0, i32 13
  store ptr @omap_gpio_irq_type, ptr %25, align 4
  %26 = getelementptr inbounds %struct.irq_chip, ptr %16, i32 0, i32 14
  store ptr @omap_gpio_wake_enable, ptr %26, align 4
  %27 = getelementptr inbounds %struct.irq_chip, ptr %16, i32 0, i32 15
  store ptr @omap_gpio_irq_bus_lock, ptr %27, align 4
  %28 = getelementptr inbounds %struct.irq_chip, ptr %16, i32 0, i32 16
  store ptr @gpio_irq_bus_sync_unlock, ptr %28, align 4
  %29 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load ptr, ptr %2, align 4
  br label %34

34:                                               ; preds = %32, %18
  %35 = phi ptr [ %33, %32 ], [ %30, %18 ]
  %36 = getelementptr inbounds %struct.irq_chip, ptr %16, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.irq_chip, ptr %16, i32 0, i32 33
  store i32 4, ptr %37, align 4
  store ptr %2, ptr %16, align 4
  %38 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %39 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = icmp slt i32 %38, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = icmp eq i32 %38, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  store i32 -6, ptr %39, align 4
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ -6, %43 ], [ %38, %41 ]
  %46 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %45, ptr noundef nonnull @.str.1) #5
  br label %305

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 2
  store ptr %2, ptr %48, align 4
  %49 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 4
  store ptr null, ptr %49, align 4
  %50 = getelementptr inbounds %struct.omap_gpio_platform_data, ptr %12, i32 0, i32 3
  %51 = load i8, ptr %50, align 4, !range !8
  %52 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 20
  store i8 %51, ptr %52, align 2
  %53 = getelementptr inbounds %struct.omap_gpio_platform_data, ptr %12, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 23
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.omap_gpio_platform_data, ptr %12, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 24
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.omap_gpio_platform_data, ptr %12, i32 0, i32 5
  %60 = load i8, ptr %59, align 2, !range !8
  %61 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 19
  store i8 %60, ptr %61, align 1
  %62 = getelementptr inbounds %struct.omap_gpio_platform_data, ptr %12, i32 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 3
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.omap_gpio_platform_data, ptr %12, i32 0, i32 7
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 1
  store ptr %66, ptr %67, align 4
  %68 = icmp eq ptr %4, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %47
  %70 = tail call ptr @of_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.2, ptr noundef null) #5
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 21
  store i8 1, ptr %73, align 1
  br label %83

74:                                               ; preds = %47
  %75 = getelementptr inbounds %struct.omap_gpio_platform_data, ptr %12, i32 0, i32 4
  %76 = load i8, ptr %75, align 1, !range !8
  %77 = icmp eq i8 %76, 0
  %78 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 21
  store i8 %76, ptr %78, align 1
  br i1 %77, label %83, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.omap_gpio_platform_data, ptr %12, i32 0, i32 8
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 27
  store ptr %81, ptr %82, align 4
  br label %83

83:                                               ; preds = %79, %74, %72, %69
  %84 = load ptr, ptr %67, align 4
  %85 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %84, i32 0, i32 5
  %86 = load i16, ptr %85, align 2
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %84, i32 0, i32 6
  %90 = load i16, ptr %89, align 2
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %83
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi ptr [ @omap_set_gpio_dataout_mask, %92 ], [ @omap_set_gpio_dataout_reg, %88 ]
  %95 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 26
  store ptr %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 9
  store i32 0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 10
  store i32 0, ptr %97, align 4
  %98 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  store ptr %98, ptr %13, align 4
  %99 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = ptrtoint ptr %98 to i32
  br label %305

102:                                              ; preds = %93
  %103 = load i8, ptr %52, align 2, !range !8
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %102
  %106 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  %107 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 12
  store ptr %106, ptr %107, align 4
  %108 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  store i8 0, ptr %52, align 2
  br label %112

110:                                              ; preds = %105
  %111 = tail call i32 @clk_prepare(ptr noundef %106) #5
  br label %112

112:                                              ; preds = %110, %109, %102
  %113 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %113, align 8
  tail call void @pm_runtime_enable(ptr noundef %2) #5
  %114 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #5
  %115 = load i8, ptr %61, align 1, !range !8
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load ptr, ptr %13, align 4
  %119 = load i32, ptr %58, align 4
  %120 = icmp eq i32 %119, 16
  %121 = select i1 %120, i32 65535, i32 -1
  %122 = load ptr, ptr %67, align 4
  %123 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %122, i32 0, i32 11
  %124 = load i16, ptr %123, align 2
  %125 = zext i16 %124 to i32
  %126 = getelementptr i8, ptr %118, i32 %125
  br label %145

127:                                              ; preds = %112
  store ptr %13, ptr getelementptr inbounds (%struct.platform_device, ptr @omap_mpuio_device, i32 0, i32 3, i32 8), align 8
  %128 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_mpuio_driver, ptr noundef null) #5
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = tail call i32 @platform_device_register(ptr noundef nonnull @omap_mpuio_device) #5
  br label %132

132:                                              ; preds = %130, %127
  %133 = load i8, ptr %61, align 1
  %134 = icmp eq i8 %133, 0
  %135 = load ptr, ptr %13, align 4
  %136 = load i32, ptr %58, align 4
  %137 = icmp eq i32 %136, 16
  %138 = select i1 %137, i32 65535, i32 -1
  %139 = load ptr, ptr %67, align 4
  %140 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %139, i32 0, i32 11
  %141 = load i16, ptr %140, align 2
  %142 = zext i16 %141 to i32
  %143 = getelementptr i8, ptr %135, i32 %142
  br i1 %134, label %145, label %144

144:                                              ; preds = %132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %138) #5, !srcloc !9
  br label %194

145:                                              ; preds = %132, %117
  %146 = phi ptr [ %126, %117 ], [ %143, %132 ]
  %147 = phi ptr [ %122, %117 ], [ %139, %132 ]
  %148 = phi i32 [ %121, %117 ], [ %138, %132 ]
  %149 = phi ptr [ %118, %117 ], [ %135, %132 ]
  %150 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %147, i32 0, i32 27
  %151 = load i8, ptr %150, align 2, !range !8
  %152 = icmp eq i8 %151, 0
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #5, !srcloc !10
  %154 = or i32 %153, %148
  %155 = xor i32 %148, -1
  %156 = and i32 %153, %155
  %157 = select i1 %152, i32 %156, i32 %154
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %157) #5, !srcloc !9
  %158 = load ptr, ptr %67, align 4
  %159 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %158, i32 0, i32 7
  %160 = load i16, ptr %159, align 2
  %161 = zext i16 %160 to i32
  %162 = getelementptr i8, ptr %149, i32 %161
  %163 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %158, i32 0, i32 27
  %164 = load i8, ptr %163, align 2, !range !8
  %165 = icmp eq i8 %164, 0
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #5, !srcloc !10
  %167 = or i32 %166, %148
  %168 = and i32 %166, %155
  %169 = select i1 %165, i32 %167, i32 %168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %169) #5, !srcloc !9
  %170 = load ptr, ptr %67, align 4
  %171 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %170, i32 0, i32 16
  %172 = load i16, ptr %171, align 2
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %145
  %175 = zext i16 %172 to i32
  %176 = getelementptr i8, ptr %149, i32 %175
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 0) #5, !srcloc !9
  %177 = load ptr, ptr %67, align 4
  br label %178

178:                                              ; preds = %174, %145
  %179 = phi ptr [ %177, %174 ], [ %170, %145 ]
  %180 = load ptr, ptr %13, align 4
  %181 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %179, i32 0, i32 2
  %182 = load i16, ptr %181, align 2
  %183 = zext i16 %182 to i32
  %184 = getelementptr i8, ptr %180, i32 %183
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %184) #5, !srcloc !10
  %186 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 5, i32 5
  store i32 %185, ptr %186, align 4
  %187 = load ptr, ptr %67, align 4
  %188 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %187, i32 0, i32 17
  %189 = load i16, ptr %188, align 2
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %178
  %192 = zext i16 %189 to i32
  %193 = getelementptr i8, ptr %149, i32 %192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 0) #5, !srcloc !9
  br label %194

194:                                              ; preds = %191, %178, %144
  %195 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11
  %196 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 5
  store ptr @omap_gpio_request, ptr %196, align 4
  %197 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 6
  store ptr @omap_gpio_free, ptr %197, align 4
  %198 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 7
  store ptr @omap_gpio_get_direction, ptr %198, align 4
  %199 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 8
  store ptr @omap_gpio_input, ptr %199, align 4
  %200 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 10
  store ptr @omap_gpio_get, ptr %200, align 4
  %201 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 11
  store ptr @omap_gpio_get_multiple, ptr %201, align 4
  %202 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 9
  store ptr @omap_gpio_output, ptr %202, align 4
  %203 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 14
  store ptr @omap_gpio_set_config, ptr %203, align 4
  %204 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 12
  store ptr @omap_gpio_set, ptr %204, align 4
  %205 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 13
  store ptr @omap_gpio_set_multiple, ptr %205, align 4
  %206 = load i8, ptr %61, align 1, !range !8
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %219, label %208

208:                                              ; preds = %194
  store ptr @.str.5, ptr %195, align 4
  %209 = load ptr, ptr %67, align 4
  %210 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %209, i32 0, i32 18
  %211 = load i16, ptr %210, align 2
  %212 = icmp eq i16 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %208
  store ptr getelementptr inbounds (%struct.platform_device, ptr @omap_mpuio_device, i32 0, i32 3), ptr %48, align 4
  br label %214

214:                                              ; preds = %213, %208
  %215 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 19
  store i32 192, ptr %215, align 4
  %216 = load i32, ptr %58, align 4
  %217 = trunc i32 %216 to i16
  %218 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 20
  store i16 %217, ptr %218, align 4
  br label %237

219:                                              ; preds = %194
  %220 = load ptr, ptr %48, align 4
  %221 = load i32, ptr @omap_gpio_chip_init.gpio, align 4
  %222 = load i32, ptr %58, align 4
  %223 = add i32 %221, -1
  %224 = add i32 %223, %222
  %225 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %220, i32 noundef 3264, ptr noundef nonnull @.str.6, i32 noundef %221, i32 noundef %224) #5
  %226 = icmp eq ptr %225, null
  br i1 %226, label %277, label %227

227:                                              ; preds = %219
  store ptr %225, ptr %195, align 4
  %228 = load i32, ptr @omap_gpio_chip_init.gpio, align 4
  %229 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 19
  store i32 %228, ptr %229, align 4
  %230 = load i8, ptr %61, align 1, !range !8
  %231 = icmp eq i8 %230, 0
  %232 = load i32, ptr %58, align 4
  %233 = trunc i32 %232 to i16
  %234 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 20
  store i16 %233, ptr %234, align 4
  br i1 %231, label %243, label %235

235:                                              ; preds = %227
  %236 = load ptr, ptr %67, align 4
  br label %237

237:                                              ; preds = %235, %214
  %238 = phi ptr [ %236, %235 ], [ %209, %214 ]
  %239 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %238, i32 0, i32 18
  %240 = load i16, ptr %239, align 2
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  store ptr null, ptr %26, align 4
  br label %243

243:                                              ; preds = %242, %237, %227
  %244 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 37
  store ptr %16, ptr %244, align 4
  %245 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 37, i32 9
  store ptr @handle_bad_irq, ptr %245, align 4
  %246 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 37, i32 10
  store i32 0, ptr %246, align 4
  %247 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 37, i32 15
  store i32 1, ptr %247, align 4
  %248 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 37, i32 16
  store ptr %39, ptr %248, align 4
  %249 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 11, i32 37, i32 23
  store i32 0, ptr %249, align 4
  %250 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %195, ptr noundef nonnull %13, ptr noundef null, ptr noundef null) #5
  %251 = icmp eq i32 %250, 0
  %252 = load ptr, ptr %48, align 4
  br i1 %251, label %255, label %253

253:                                              ; preds = %243
  %254 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %252, i32 noundef %250, ptr noundef nonnull @.str.7) #5
  br label %274

255:                                              ; preds = %243
  %256 = load i32, ptr %39, align 4
  %257 = getelementptr inbounds %struct.device, ptr %252, i32 0, i32 3
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = load ptr, ptr %252, align 4
  br label %262

262:                                              ; preds = %260, %255
  %263 = phi ptr [ %261, %260 ], [ %258, %255 ]
  %264 = tail call i32 @devm_request_threaded_irq(ptr noundef %252, i32 noundef %256, ptr noundef nonnull @omap_gpio_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %263, ptr noundef nonnull %13) #5
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %262
  tail call void @gpiochip_remove(ptr noundef %195) #5
  br label %267

267:                                              ; preds = %266, %262
  %268 = load i8, ptr %61, align 1, !range !8
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %267
  %271 = load i32, ptr %58, align 4
  %272 = load i32, ptr @omap_gpio_chip_init.gpio, align 4
  %273 = add i32 %272, %271
  store i32 %273, ptr @omap_gpio_chip_init.gpio, align 4
  br label %274

274:                                              ; preds = %270, %267, %253
  %275 = phi i32 [ %254, %253 ], [ %264, %270 ], [ %264, %267 ]
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %285, label %277

277:                                              ; preds = %274, %219
  %278 = phi i32 [ %275, %274 ], [ -12, %219 ]
  %279 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #5
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #5
  %280 = load i8, ptr %52, align 2, !range !8
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %305, label %282

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 12
  %284 = load ptr, ptr %283, align 4
  tail call void @clk_unprepare(ptr noundef %284) #5
  br label %305

285:                                              ; preds = %274
  %286 = load i1, ptr @omap_gpio_show_rev.called, align 1
  br i1 %286, label %301, label %287

287:                                              ; preds = %285
  %288 = load ptr, ptr %67, align 4
  %289 = load i16, ptr %288, align 2
  %290 = icmp eq i16 %289, -1
  br i1 %290, label %301, label %291

291:                                              ; preds = %287
  %292 = zext i16 %289 to i32
  %293 = load ptr, ptr %13, align 4
  %294 = getelementptr i8, ptr %293, i32 %292
  %295 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %294) #5, !srcloc !11
  %296 = zext i16 %295 to i32
  %297 = lshr i32 %296, 4
  %298 = and i32 %297, 15
  %299 = and i32 %296, 15
  %300 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %298, i32 noundef %299) #6
  store i1 true, ptr @omap_gpio_show_rev.called, align 1
  br label %301

301:                                              ; preds = %291, %287, %285
  %302 = getelementptr inbounds %struct.gpio_bank, ptr %13, i32 0, i32 13
  store ptr @gpio_omap_cpu_notifier, ptr %302, align 4
  %303 = tail call i32 @cpu_pm_register_notifier(ptr noundef %302) #5
  %304 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #5
  br label %305

305:                                              ; preds = %301, %282, %277, %100, %44, %15, %11, %7
  %306 = phi i32 [ %46, %44 ], [ %101, %100 ], [ 0, %301 ], [ -22, %7 ], [ -12, %11 ], [ -12, %15 ], [ %278, %282 ], [ %278, %277 ]
  ret i32 %306
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 13
  %5 = tail call i32 @cpu_pm_unregister_notifier(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 11
  tail call void @gpiochip_remove(ptr noundef %6) #5
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %7, i1 noundef zeroext true) #5
  %8 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 20
  %9 = load i8, ptr %8, align 2, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_unprepare(ptr noundef %13) #5
  br label %14

14:                                               ; preds = %11, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_irq_startup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 9
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #5
  %9 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 15
  %10 = load i32, ptr %9, align 4
  %11 = shl nuw i32 1, %6
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %17, i32 0, i32 2
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %15, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !10
  %23 = or i32 %22, %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %23) #5, !srcloc !9
  %24 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 5, i32 5
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %14, %1
  %26 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %27, i32 0, i32 26
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %4, align 4
  %33 = zext i16 %29 to i32
  %34 = getelementptr i8, ptr %32, i32 %33
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !10
  %36 = or i32 %35, %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %36) #5, !srcloc !9
  %37 = load ptr, ptr %26, align 4
  br label %38

38:                                               ; preds = %31, %25
  %39 = phi ptr [ %37, %31 ], [ %27, %25 ]
  %40 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %39, i32 0, i32 17
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = icmp eq i16 %41, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %38
  %45 = load i32, ptr %9, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 16
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load ptr, ptr %4, align 4
  %53 = getelementptr i8, ptr %52, i32 %42
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #5, !srcloc !10
  %55 = and i32 %54, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %55) #5, !srcloc !9
  %56 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 5, i32 4
  store i32 %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %51, %47, %44, %38
  %58 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 16
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, %11
  store i32 %60, ptr %58, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #5
  tail call void @omap_gpio_unmask_irq(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_gpio_irq_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 9
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #5
  %9 = shl nuw i32 1, %6
  %10 = xor i32 %9, -1
  %11 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %10
  store i32 %13, ptr %11, align 4
  %14 = tail call fastcc i32 @omap_set_gpio_triggering(ptr noundef %4, i32 noundef %6, i32 noundef 0)
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %17, i32 0, i32 7
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %15, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %9) #5, !srcloc !9
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %22, i32 0, i32 8
  %24 = load i16, ptr %23, align 2
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load ptr, ptr %4, align 4
  %28 = zext i16 %24 to i32
  %29 = getelementptr i8, ptr %27, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %9) #5, !srcloc !9
  br label %30

30:                                               ; preds = %26, %1
  %31 = phi ptr [ %29, %26 ], [ %21, %1 ]
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #5, !srcloc !10
  %33 = load ptr, ptr %4, align 4
  %34 = load ptr, ptr %16, align 4
  %35 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %34, i32 0, i32 13
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %34, i32 0, i32 14
  %40 = load i16, ptr %39, align 2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 5, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, %10
  store i32 %45, ptr %43, align 4
  %46 = zext i16 %40 to i32
  %47 = getelementptr i8, ptr %33, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %9) #5, !srcloc !9
  br label %61

48:                                               ; preds = %38, %30
  %49 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %34, i32 0, i32 11
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = getelementptr i8, ptr %33, i32 %51
  %53 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %34, i32 0, i32 27
  %54 = load i8, ptr %53, align 2, !range !8
  %55 = icmp eq i8 %54, 0
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #5, !srcloc !10
  %57 = or i32 %56, %9
  %58 = and i32 %56, %10
  %59 = select i1 %55, i32 %58, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %59) #5, !srcloc !9
  %60 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 5, i32 1
  store i32 %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %48, %42
  %62 = load ptr, ptr %16, align 4
  %63 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %62, i32 0, i32 18
  %64 = load i16, ptr %63, align 2
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %62, i32 0, i32 24
  %68 = load i16, ptr %67, align 2
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, %9
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70, %66
  %76 = load ptr, ptr %4, align 4
  %77 = zext i16 %64 to i32
  %78 = getelementptr i8, ptr %76, i32 %77
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #5, !srcloc !10
  %80 = and i32 %79, %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %80) #5, !srcloc !9
  %81 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 5, i32 3
  store i32 %80, ptr %81, align 4
  br label %82

82:                                               ; preds = %75, %70, %61
  %83 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 15
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, %9
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %120

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 20
  %89 = load i8, ptr %88, align 2, !range !8
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %120, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 17
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, %9
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %120, label %96

96:                                               ; preds = %91
  %97 = and i32 %93, %10
  store i32 %97, ptr %92, align 4
  %98 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 5, i32 12
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, %10
  store i32 %100, ptr %98, align 4
  %101 = load ptr, ptr %4, align 4
  %102 = load ptr, ptr %16, align 4
  %103 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %102, i32 0, i32 16
  %104 = load i16, ptr %103, align 2
  %105 = zext i16 %104 to i32
  %106 = getelementptr i8, ptr %101, i32 %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %100) #5, !srcloc !9
  %107 = load i32, ptr %92, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %96
  %110 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 5, i32 11
  store i32 0, ptr %110, align 4
  %111 = load ptr, ptr %4, align 4
  %112 = load ptr, ptr %16, align 4
  %113 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %112, i32 0, i32 15
  %114 = load i16, ptr %113, align 2
  %115 = zext i16 %114 to i32
  %116 = getelementptr i8, ptr %111, i32 %115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 0) #5, !srcloc !9
  %117 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 12
  %118 = load ptr, ptr %117, align 4
  tail call void @clk_disable(ptr noundef %118) #5
  %119 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 18
  store i8 0, ptr %119, align 4
  br label %120

120:                                              ; preds = %109, %96, %91, %87, %82
  %121 = load ptr, ptr %16, align 4
  %122 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %121, i32 0, i32 17
  %123 = load i16, ptr %122, align 2
  %124 = zext i16 %123 to i32
  %125 = icmp eq i16 %123, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %120
  %127 = load i32, ptr %83, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load i32, ptr %11, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load ptr, ptr %4, align 4
  %134 = getelementptr i8, ptr %133, i32 %124
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #5, !srcloc !10
  %136 = or i32 %135, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %136) #5, !srcloc !9
  %137 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 5, i32 4
  store i32 %136, ptr %137, align 4
  br label %138

138:                                              ; preds = %132, %129, %126, %120
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_gpio_mask_irq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 9
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #5
  %9 = tail call fastcc i32 @omap_set_gpio_triggering(ptr noundef %4, i32 noundef %6, i32 noundef 0)
  %10 = load ptr, ptr %4, align 4
  %11 = shl nuw i32 1, %6
  %12 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 13
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 14
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = xor i32 %11, -1
  %23 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 5, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, %22
  store i32 %25, ptr %23, align 4
  %26 = zext i16 %19 to i32
  %27 = getelementptr i8, ptr %10, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %11) #5, !srcloc !9
  br label %42

28:                                               ; preds = %17, %1
  %29 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 11
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = getelementptr i8, ptr %10, i32 %31
  %33 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 27
  %34 = load i8, ptr %33, align 2, !range !8
  %35 = icmp eq i8 %34, 0
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !10
  %37 = or i32 %36, %11
  %38 = xor i32 %11, -1
  %39 = and i32 %36, %38
  %40 = select i1 %35, i32 %39, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %40) #5, !srcloc !9
  %41 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 5, i32 1
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %28, %21
  %43 = load ptr, ptr %12, align 4
  %44 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %43, i32 0, i32 18
  %45 = load i16, ptr %44, align 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %43, i32 0, i32 24
  %49 = load i16, ptr %48, align 2
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, %11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51, %47
  %57 = load ptr, ptr %4, align 4
  %58 = zext i16 %45 to i32
  %59 = getelementptr i8, ptr %57, i32 %58
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #5, !srcloc !10
  %61 = xor i32 %11, -1
  %62 = and i32 %60, %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %62) #5, !srcloc !9
  %63 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 5, i32 3
  store i32 %62, ptr %63, align 4
  br label %64

64:                                               ; preds = %56, %51, %42
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_gpio_unmask_irq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 15
  %11 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 9
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #5
  %13 = load ptr, ptr %4, align 4
  %14 = shl nuw i32 1, %6
  %15 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %16, i32 0, i32 13
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %16, i32 0, i32 14
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 5, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, %14
  store i32 %27, ptr %25, align 4
  %28 = zext i16 %18 to i32
  %29 = getelementptr i8, ptr %13, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %14) #5, !srcloc !9
  br label %44

30:                                               ; preds = %20, %1
  %31 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %16, i32 0, i32 11
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr i8, ptr %13, i32 %33
  %35 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %16, i32 0, i32 27
  %36 = load i8, ptr %35, align 2, !range !8
  %37 = icmp eq i8 %36, 1
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !10
  %39 = or i32 %38, %14
  %40 = xor i32 %14, -1
  %41 = and i32 %38, %40
  %42 = select i1 %37, i32 %41, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %42) #5, !srcloc !9
  %43 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 5, i32 1
  store i32 %42, ptr %43, align 4
  br label %44

44:                                               ; preds = %30, %24
  %45 = load ptr, ptr %15, align 4
  %46 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %45, i32 0, i32 18
  %47 = load i16, ptr %46, align 2
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %45, i32 0, i32 24
  %51 = load i16, ptr %50, align 2
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, %14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53, %49
  %59 = load ptr, ptr %4, align 4
  %60 = zext i16 %47 to i32
  %61 = getelementptr i8, ptr %59, i32 %60
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #5, !srcloc !10
  %63 = or i32 %62, %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %63) #5, !srcloc !9
  %64 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 5, i32 3
  store i32 %63, ptr %64, align 4
  %65 = load ptr, ptr %15, align 4
  br label %66

66:                                               ; preds = %58, %53, %44
  %67 = phi ptr [ %45, %44 ], [ %45, %53 ], [ %65, %58 ]
  %68 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %67, i32 0, i32 19
  %69 = load i16, ptr %68, align 2
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %95, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %67, i32 0, i32 18
  %73 = load i16, ptr %72, align 2
  %74 = icmp eq i16 %73, 0
  %75 = and i32 %9, 12
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %74, i1 true, i1 %76
  br i1 %77, label %95, label %78

78:                                               ; preds = %71
  %79 = load ptr, ptr %4, align 4
  %80 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %67, i32 0, i32 7
  %81 = load i16, ptr %80, align 2
  %82 = zext i16 %81 to i32
  %83 = getelementptr i8, ptr %79, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %14) #5, !srcloc !9
  %84 = load ptr, ptr %15, align 4
  %85 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %84, i32 0, i32 8
  %86 = load i16, ptr %85, align 2
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %78
  %89 = load ptr, ptr %4, align 4
  %90 = zext i16 %86 to i32
  %91 = getelementptr i8, ptr %89, i32 %90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %14) #5, !srcloc !9
  br label %92

92:                                               ; preds = %88, %78
  %93 = phi ptr [ %91, %88 ], [ %83, %78 ]
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #5, !srcloc !10
  br label %97

95:                                               ; preds = %71, %66
  %96 = icmp eq i32 %10, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %95, %92
  %98 = tail call fastcc i32 @omap_set_gpio_triggering(ptr noundef %4, i32 noundef %6, i32 noundef %10)
  br label %99

99:                                               ; preds = %97, %95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_irq_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %1, 16
  br i1 %8, label %9, label %97

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gpio_bank, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %11, i32 0, i32 19
  %13 = load i16, ptr %12, align 2
  %14 = icmp ne i16 %13, 0
  %15 = and i32 %1, 12
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %16, %14
  br i1 %17, label %18, label %97

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.gpio_bank, ptr %5, i32 0, i32 9
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #5
  %21 = tail call fastcc i32 @omap_set_gpio_triggering(ptr noundef %5, i32 noundef %7, i32 noundef %1)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #5
  br label %97

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.gpio_bank, ptr %5, i32 0, i32 15
  %26 = load i32, ptr %25, align 4
  %27 = shl nuw i32 1, %7
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %72

30:                                               ; preds = %24
  %31 = load ptr, ptr %10, align 4
  %32 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %31, i32 0, i32 26
  %33 = load i16, ptr %32, align 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 4
  %37 = zext i16 %33 to i32
  %38 = getelementptr i8, ptr %36, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !10
  %40 = or i32 %39, %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %40) #5, !srcloc !9
  %41 = load ptr, ptr %10, align 4
  br label %42

42:                                               ; preds = %35, %30
  %43 = phi ptr [ %41, %35 ], [ %31, %30 ]
  %44 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %43, i32 0, i32 17
  %45 = load i16, ptr %44, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp eq i16 %45, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %42
  %49 = load i32, ptr %25, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.gpio_bank, ptr %5, i32 0, i32 16
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr i8, ptr %56, i32 %46
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #5, !srcloc !10
  %59 = and i32 %58, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %59) #5, !srcloc !9
  %60 = getelementptr inbounds %struct.gpio_bank, ptr %5, i32 0, i32 5, i32 4
  store i32 %59, ptr %60, align 4
  %61 = load ptr, ptr %10, align 4
  br label %62

62:                                               ; preds = %55, %51, %48, %42
  %63 = phi ptr [ %43, %42 ], [ %43, %48 ], [ %43, %51 ], [ %61, %55 ]
  %64 = load ptr, ptr %5, align 4
  %65 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %63, i32 0, i32 2
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = getelementptr i8, ptr %64, i32 %67
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #5, !srcloc !10
  %70 = or i32 %69, %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %70) #5, !srcloc !9
  %71 = getelementptr inbounds %struct.gpio_bank, ptr %5, i32 0, i32 5, i32 5
  store i32 %70, ptr %71, align 4
  br label %72

72:                                               ; preds = %62, %24
  %73 = getelementptr inbounds %struct.gpio_bank, ptr %5, i32 0, i32 16
  %74 = load i32, ptr %73, align 4
  %75 = or i32 %74, %27
  store i32 %75, ptr %73, align 4
  %76 = load ptr, ptr %5, align 4
  %77 = load ptr, ptr %10, align 4
  %78 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %77, i32 0, i32 2
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = getelementptr i8, ptr %76, i32 %80
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #5, !srcloc !10
  %83 = and i32 %82, %27
  %84 = icmp eq i32 %83, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #5
  br i1 %84, label %97, label %85

85:                                               ; preds = %72
  br i1 %16, label %90, label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.irq_desc, ptr %88, i32 0, i32 3
  store ptr @handle_level_irq, ptr %89, align 4
  br label %97

90:                                               ; preds = %85
  %91 = and i32 %1, 3
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.irq_desc, ptr %95, i32 0, i32 3
  store ptr @handle_simple_irq, ptr %96, align 4
  br label %97

97:                                               ; preds = %93, %90, %86, %72, %23, %9, %2
  %98 = phi i32 [ -22, %2 ], [ -22, %9 ], [ 0, %90 ], [ 0, %93 ], [ 0, %86 ], [ %21, %23 ], [ -22, %72 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_wake_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.gpio_bank, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef %1) #5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_gpio_irq_bus_lock(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 11, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_irq_bus_sync_unlock(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 11, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_set_gpio_dataout_reg(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = shl nuw i32 1, %1
  %6 = icmp eq i32 %2, 0
  %7 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  br i1 %6, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %8, i32 0, i32 5
  %11 = load i16, ptr %10, align 2
  %12 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, %5
  store i32 %14, ptr %12, align 4
  br label %22

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %8, i32 0, i32 6
  %17 = load i16, ptr %16, align 2
  %18 = xor i32 %5, -1
  %19 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, %18
  store i32 %21, ptr %19, align 4
  br label %22

22:                                               ; preds = %15, %9
  %23 = phi i16 [ %11, %9 ], [ %17, %15 ]
  %24 = zext i16 %23 to i32
  %25 = getelementptr i8, ptr %4, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %5) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_set_gpio_dataout_mask(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %6, i32 0, i32 4
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = shl nuw i32 1, %1
  %12 = icmp eq i32 %2, 0
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !10
  %14 = or i32 %13, %11
  %15 = xor i32 %11, -1
  %16 = and i32 %13, %15
  %17 = select i1 %12, i32 %16, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %17) #5, !srcloc !9
  %18 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 10
  store i32 %17, ptr %18, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_omap_cpu_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -400
  %5 = getelementptr i8, ptr %0, i32 -316
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %7 = getelementptr i8, ptr %0, i32 12
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %3
  switch i32 %1, label %42 [
    i32 3, label %12
    i32 4, label %41
    i32 5, label %41
  ]

12:                                               ; preds = %11
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %0, i32 40
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 -396
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %17, i32 0, i32 11
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %13, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !10
  %23 = load ptr, ptr %16, align 4
  %24 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %23, i32 0, i32 27
  %25 = load i8, ptr %24, align 2, !range !8
  %26 = sub nsw i8 0, %25
  %27 = sext i8 %26 to i32
  %28 = xor i32 %22, %27
  %29 = shl nsw i32 -1, %15
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %23, i32 0, i32 7
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %32, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !10
  %38 = and i32 %31, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %12
  tail call fastcc void @omap_gpio_idle(ptr noundef %4)
  br label %42

41:                                               ; preds = %11, %11
  tail call fastcc void @omap_gpio_unidle(ptr noundef %4)
  br label %42

42:                                               ; preds = %41, %40, %12, %11, %3
  %43 = phi i32 [ 1, %3 ], [ 1, %11 ], [ 1, %41 ], [ 1, %40 ], [ 32770, %12 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #5
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @omap_set_gpio_triggering(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %6, i32 0, i32 19
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %114, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %6, i32 0, i32 18
  %12 = load i16, ptr %11, align 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %114, label %14

14:                                               ; preds = %10
  %15 = shl nuw i32 1, %1
  %16 = zext i16 %8 to i32
  %17 = getelementptr i8, ptr %4, i32 %16
  %18 = and i32 %2, 8
  %19 = icmp eq i32 %18, 0
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !10
  %21 = or i32 %20, %15
  %22 = xor i32 %15, -1
  %23 = and i32 %20, %22
  %24 = select i1 %19, i32 %23, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %24) #5, !srcloc !9
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %25, i32 0, i32 20
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = getelementptr i8, ptr %4, i32 %28
  %30 = and i32 %2, 4
  %31 = icmp eq i32 %30, 0
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !10
  %33 = or i32 %32, %15
  %34 = and i32 %32, %22
  %35 = select i1 %31, i32 %34, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %35) #5, !srcloc !9
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %36, i32 0, i32 21
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = getelementptr i8, ptr %4, i32 %39
  %41 = and i32 %2, 5
  %42 = icmp eq i32 %41, 0
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !10
  %44 = or i32 %43, %15
  %45 = and i32 %43, %22
  %46 = select i1 %42, i32 %45, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %46) #5, !srcloc !9
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %47, i32 0, i32 22
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %4, i32 %50
  %52 = and i32 %2, 10
  %53 = icmp eq i32 %52, 0
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #5, !srcloc !10
  %55 = or i32 %54, %15
  %56 = and i32 %54, %22
  %57 = select i1 %53, i32 %56, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %57) #5, !srcloc !9
  %58 = load ptr, ptr %0, align 4
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %59, i32 0, i32 19
  %61 = load i16, ptr %60, align 2
  %62 = zext i16 %61 to i32
  %63 = getelementptr i8, ptr %58, i32 %62
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #5, !srcloc !10
  %65 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 6
  store i32 %64, ptr %65, align 4
  %66 = load ptr, ptr %0, align 4
  %67 = load ptr, ptr %5, align 4
  %68 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %67, i32 0, i32 20
  %69 = load i16, ptr %68, align 2
  %70 = zext i16 %69 to i32
  %71 = getelementptr i8, ptr %66, i32 %70
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #5, !srcloc !10
  %73 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 7
  store i32 %72, ptr %73, align 4
  %74 = load ptr, ptr %0, align 4
  %75 = load ptr, ptr %5, align 4
  %76 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %75, i32 0, i32 21
  %77 = load i16, ptr %76, align 2
  %78 = zext i16 %77 to i32
  %79 = getelementptr i8, ptr %74, i32 %78
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #5, !srcloc !10
  %81 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 8
  store i32 %80, ptr %81, align 4
  %82 = load ptr, ptr %0, align 4
  %83 = load ptr, ptr %5, align 4
  %84 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %83, i32 0, i32 22
  %85 = load i16, ptr %84, align 2
  %86 = zext i16 %85 to i32
  %87 = getelementptr i8, ptr %82, i32 %86
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #5, !srcloc !10
  %89 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 9
  store i32 %88, ptr %89, align 4
  %90 = load i32, ptr %65, align 4
  %91 = load i32, ptr %73, align 4
  %92 = or i32 %91, %90
  %93 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 7
  store i32 %92, ptr %93, align 4
  %94 = load ptr, ptr %5, align 4
  %95 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %94, i32 0, i32 23
  %96 = load i16, ptr %95, align 2
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %98, label %174

98:                                               ; preds = %14
  %99 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i32 %100, -1
  %103 = and i32 %102, %1
  %104 = icmp ne i32 %103, 0
  %105 = select i1 %101, i1 %104, i1 false
  br i1 %105, label %174, label %106

106:                                              ; preds = %98
  %107 = and i32 %2, 3
  %108 = icmp eq i32 %107, 0
  %109 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 4
  %110 = load i32, ptr %109, align 4
  %111 = or i32 %110, %15
  %112 = and i32 %110, %22
  %113 = select i1 %108, i32 %112, i32 %111
  store i32 %113, ptr %109, align 4
  br label %174

114:                                              ; preds = %10, %3
  %115 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %6, i32 0, i32 23
  %116 = load i16, ptr %115, align 2
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %144, label %118

118:                                              ; preds = %114
  %119 = zext i16 %116 to i32
  %120 = getelementptr i8, ptr %4, i32 %119
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #5, !srcloc !10
  %122 = and i32 %2, 15
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = shl nuw i32 1, %1
  %126 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 8
  %127 = load i32, ptr %126, align 4
  %128 = or i32 %127, %125
  store i32 %128, ptr %126, align 4
  br label %129

129:                                              ; preds = %124, %118
  %130 = and i32 %2, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = shl nuw i32 1, %1
  %134 = or i32 %121, %133
  br label %142

135:                                              ; preds = %129
  %136 = and i32 %2, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %174, label %138

138:                                              ; preds = %135
  %139 = shl nuw i32 1, %1
  %140 = xor i32 %139, -1
  %141 = and i32 %121, %140
  br label %142

142:                                              ; preds = %138, %132
  %143 = phi i32 [ %134, %132 ], [ %141, %138 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %143) #5, !srcloc !9
  br label %174

144:                                              ; preds = %114
  %145 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %6, i32 0, i32 24
  %146 = load i16, ptr %145, align 2
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %174, label %148

148:                                              ; preds = %144
  %149 = and i32 %1, 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %6, i32 0, i32 25
  %153 = load i16, ptr %152, align 2
  br label %154

154:                                              ; preds = %151, %148
  %155 = phi i16 [ %153, %151 ], [ %146, %148 ]
  %156 = zext i16 %155 to i32
  %157 = getelementptr i8, ptr %4, i32 %156
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #5, !srcloc !10
  %159 = shl i32 %1, 1
  %160 = and i32 %159, 14
  %161 = shl nuw nsw i32 3, %160
  %162 = xor i32 %161, -1
  %163 = and i32 %158, %162
  %164 = and i32 %2, 1
  %165 = icmp eq i32 %164, 0
  %166 = shl nuw nsw i32 2, %160
  %167 = select i1 %165, i32 0, i32 %166
  %168 = and i32 %2, 2
  %169 = icmp eq i32 %168, 0
  %170 = shl nuw nsw i32 1, %160
  %171 = select i1 %169, i32 0, i32 %170
  %172 = or i32 %171, %167
  %173 = or i32 %172, %163
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %173) #5, !srcloc !9
  br label %174

174:                                              ; preds = %154, %144, %142, %135, %106, %98, %14
  %175 = phi i32 [ -22, %135 ], [ 0, %142 ], [ 0, %154 ], [ 0, %144 ], [ 0, %14 ], [ 0, %98 ], [ 0, %106 ]
  ret i32 %175
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_mpuio_suspend_noirq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 23
  %6 = load i32, ptr %5, align 4
  %7 = sdiv i32 44, %6
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 9
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #5
  %11 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 5, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = xor i32 %13, 65535
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %14) #5, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_mpuio_resume_noirq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 23
  %6 = load i32, ptr %5, align 4
  %7 = sdiv i32 44, %6
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 9
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #5
  %11 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 5, i32 3
  %12 = load i32, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %12) #5, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_request(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #5
  %7 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 9
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #5
  %9 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %10, i32 0, i32 26
  %12 = load i16, ptr %11, align 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 4
  %16 = zext i16 %12 to i32
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !10
  %19 = shl nuw i32 1, %1
  %20 = or i32 %18, %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %20) #5, !srcloc !9
  %21 = load ptr, ptr %9, align 4
  br label %22

22:                                               ; preds = %14, %2
  %23 = phi ptr [ %21, %14 ], [ %10, %2 ]
  %24 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %23, i32 0, i32 17
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp eq i16 %25, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 15
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 16
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr i8, ptr %37, i32 %26
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !10
  %40 = and i32 %39, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %40) #5, !srcloc !9
  %41 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 5, i32 4
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %36, %32, %28, %22
  %43 = shl nuw i32 1, %1
  %44 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 15
  %45 = load i32, ptr %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, ptr %44, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_gpio_free(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 9
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  %6 = shl nuw i32 1, %1
  %7 = xor i32 %6, -1
  %8 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %2
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %18, i32 0, i32 2
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %16, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !10
  %24 = or i32 %23, %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %24) #5, !srcloc !9
  %25 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 5, i32 5
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 20
  %27 = load i8, ptr %26, align 2, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %58, label %29

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 17
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, %6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %29
  %35 = and i32 %31, %7
  store i32 %35, ptr %30, align 4
  %36 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 5, i32 12
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, %7
  store i32 %38, ptr %36, align 4
  %39 = load ptr, ptr %3, align 4
  %40 = load ptr, ptr %17, align 4
  %41 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %40, i32 0, i32 16
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr i8, ptr %39, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %38) #5, !srcloc !9
  %45 = load i32, ptr %30, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 5, i32 11
  store i32 0, ptr %48, align 4
  %49 = load ptr, ptr %3, align 4
  %50 = load ptr, ptr %17, align 4
  %51 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %50, i32 0, i32 15
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = getelementptr i8, ptr %49, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 0) #5, !srcloc !9
  %55 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 12
  %56 = load ptr, ptr %55, align 4
  tail call void @clk_disable(ptr noundef %56) #5
  %57 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 18
  store i8 0, ptr %57, align 4
  br label %58

58:                                               ; preds = %47, %34, %29, %15, %2
  %59 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %60, i32 0, i32 17
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = icmp eq i16 %62, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %58
  %66 = load i32, ptr %8, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32, ptr %11, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load ptr, ptr %3, align 4
  %73 = getelementptr i8, ptr %72, i32 %63
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #5, !srcloc !10
  %75 = or i32 %74, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %75) #5, !srcloc !9
  %76 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 5, i32 4
  store i32 %75, ptr %76, align 4
  br label %77

77:                                               ; preds = %71, %68, %65, %58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #5
  %78 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @__pm_runtime_idle(ptr noundef %79, i32 noundef 5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %6, i32 0, i32 2
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !10
  %12 = lshr i32 %11, %1
  %13 = and i32 %12, 1
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 9
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %8, i32 0, i32 2
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = shl nuw i32 1, %1
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !10
  %15 = or i32 %14, %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %15) #5, !srcloc !9
  %16 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 5, i32 5
  store i32 %15, ptr %16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %6, i32 0, i32 2
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !10
  %12 = shl nuw i32 1, %1
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr %3, align 4
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %16, i32 0, i32 3
  %19 = select i1 %14, ptr %17, ptr %18
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %15, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !10
  %24 = lshr i32 %23, %1
  %25 = and i32 %24, 1
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_get_multiple(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 2
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %5, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !10
  %13 = load i32, ptr %1, align 4
  %14 = and i32 %13, %12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %17, i32 0, i32 3
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %5, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !10
  %23 = and i32 %22, %14
  %24 = load i32, ptr %1, align 4
  br label %25

25:                                               ; preds = %16, %3
  %26 = phi i32 [ %24, %16 ], [ %13, %3 ]
  %27 = phi i32 [ %23, %16 ], [ 0, %3 ]
  %28 = xor i32 %12, -1
  %29 = and i32 %26, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %32, i32 0, i32 4
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %5, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !10
  %38 = and i32 %37, %29
  %39 = or i32 %38, %27
  br label %40

40:                                               ; preds = %31, %25
  %41 = phi i32 [ %39, %31 ], [ %27, %25 ]
  store i32 %41, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 9
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 26
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %4, i32 noundef %1, i32 noundef %2) #5
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %11, i32 0, i32 2
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %9, i32 %14
  %16 = shl nuw i32 1, %1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !10
  %18 = xor i32 %16, -1
  %19 = and i32 %17, %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %19) #5, !srcloc !9
  %20 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 5, i32 5
  store i32 %19, ptr %20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_set_config(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = and i32 %2, 255
  %5 = add nsw i32 %4, -1
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 31)
  switch i32 %6, label %76 [
    i32 0, label %7
    i32 2, label %7
    i32 1, label %7
    i32 5, label %9
  ]

7:                                                ; preds = %3, %3, %3
  %8 = tail call i32 @gpiochip_generic_config(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5
  br label %76

9:                                                ; preds = %3
  %10 = lshr i32 %2, 8
  %11 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %12 = getelementptr inbounds %struct.gpio_bank, ptr %11, i32 0, i32 9
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #5
  %14 = icmp ult i32 %2, 256
  %15 = getelementptr inbounds %struct.gpio_bank, ptr %11, i32 0, i32 20
  %16 = load i8, ptr %15, align 2, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %72, label %18

18:                                               ; preds = %9
  br i1 %14, label %24, label %19

19:                                               ; preds = %18
  %20 = add nuw nsw i32 %10, 30
  %21 = udiv i32 %20, 31
  %22 = add nsw i32 %21, -1
  %23 = icmp ult i32 %22, 256
  br i1 %23, label %24, label %72

24:                                               ; preds = %19, %18
  %25 = phi i32 [ %22, %19 ], [ 0, %18 ]
  %26 = shl nuw i32 1, %1
  %27 = getelementptr inbounds %struct.gpio_bank, ptr %11, i32 0, i32 12
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @clk_enable(ptr noundef %28) #5
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr inbounds %struct.gpio_bank, ptr %11, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %32, i32 0, i32 15
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %30, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %25) #5, !srcloc !9
  %37 = load ptr, ptr %11, align 4
  %38 = load ptr, ptr %31, align 4
  %39 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %38, i32 0, i32 16
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = getelementptr i8, ptr %37, i32 %41
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #5, !srcloc !10
  %44 = or i32 %43, %26
  %45 = xor i32 %26, -1
  %46 = and i32 %43, %45
  %47 = select i1 %14, i32 %46, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %47) #5, !srcloc !9
  %48 = getelementptr inbounds %struct.gpio_bank, ptr %11, i32 0, i32 17
  store i32 %47, ptr %48, align 4
  %49 = load ptr, ptr %27, align 4
  tail call void @clk_disable(ptr noundef %49) #5
  %50 = load i32, ptr %48, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %24
  %53 = getelementptr inbounds %struct.gpio_bank, ptr %11, i32 0, i32 18
  %54 = load i8, ptr %53, align 4, !range !8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load ptr, ptr %27, align 4
  %58 = tail call i32 @clk_enable(ptr noundef %57) #5
  store i8 1, ptr %53, align 4
  %59 = load i32, ptr %48, align 4
  %60 = load ptr, ptr %11, align 4
  %61 = load ptr, ptr %31, align 4
  %62 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %61, i32 0, i32 16
  %63 = load i16, ptr %62, align 2
  %64 = zext i16 %63 to i32
  %65 = getelementptr i8, ptr %60, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %59) #5, !srcloc !9
  %66 = load i32, ptr %48, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %56, %52
  %69 = getelementptr inbounds %struct.gpio_bank, ptr %11, i32 0, i32 5, i32 11
  store i32 %25, ptr %69, align 4
  %70 = getelementptr inbounds %struct.gpio_bank, ptr %11, i32 0, i32 5, i32 12
  store i32 %47, ptr %70, align 4
  br label %71

71:                                               ; preds = %68, %56, %24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #5
  br label %76

72:                                               ; preds = %19, %9
  %73 = phi i32 [ -524, %9 ], [ -22, %19 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #5
  %74 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.8, i32 noundef %1, i32 noundef %10, i32 noundef %73) #6
  br label %76

76:                                               ; preds = %72, %71, %7, %3
  %77 = phi i32 [ -524, %3 ], [ %8, %7 ], [ 0, %71 ], [ %73, %72 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 9
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 26
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %4, i32 noundef %1, i32 noundef %2) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_gpio_set_multiple(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %7, i32 0, i32 4
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %5, i32 %10
  %12 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 9
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #5
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !10
  %15 = load i32, ptr %1, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = load i32, ptr %2, align 4
  %19 = and i32 %18, %15
  %20 = or i32 %19, %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %20) #5, !srcloc !9
  %21 = getelementptr inbounds %struct.gpio_bank, ptr %4, i32 0, i32 5, i32 10
  store i32 %20, ptr %21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %5, i32 0, i32 7
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %3, i32 %8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !12

11:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 568, i32 noundef 9, ptr noundef null) #5
  br label %89

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 11, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 18
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 15
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 7
  %22 = icmp ne i16 %21, 0
  %23 = load i1, ptr @omap_gpio_irq_handler.__already_done, align 1
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %26, label %25, !prof !13

25:                                               ; preds = %18
  store i1 true, ptr @omap_gpio_irq_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 572, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %0) #5
  br label %89

26:                                               ; preds = %18
  br i1 %22, label %27, label %89

27:                                               ; preds = %26, %12
  %28 = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 9
  %29 = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 24
  %30 = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 7
  %31 = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 10
  %32 = getelementptr inbounds %struct.gpio_bank, ptr %1, i32 0, i32 11, i32 37, i32 1
  br label %33

33:                                               ; preds = %78, %27
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #5
  %35 = load ptr, ptr %1, align 4
  %36 = load i32, ptr %29, align 4
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %37, i32 0, i32 11
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %35, i32 %40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #5, !srcloc !10
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %43, i32 0, i32 27
  %45 = load i8, ptr %44, align 2, !range !8
  %46 = sub nsw i8 0, %45
  %47 = sext i8 %46 to i32
  %48 = xor i32 %42, %47
  %49 = shl nsw i32 -1, %36
  %50 = xor i32 %49, -1
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #5, !srcloc !10
  %52 = and i32 %51, %50
  %53 = and i32 %52, %48
  %54 = load i32, ptr %30, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %33
  %59 = load ptr, ptr %1, align 4
  %60 = load ptr, ptr %4, align 4
  %61 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %60, i32 0, i32 7
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = getelementptr i8, ptr %59, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %56) #5, !srcloc !9
  %65 = load ptr, ptr %4, align 4
  %66 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %65, i32 0, i32 8
  %67 = load i16, ptr %66, align 2
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %58
  %70 = load ptr, ptr %1, align 4
  %71 = zext i16 %67 to i32
  %72 = getelementptr i8, ptr %70, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %56) #5, !srcloc !9
  br label %73

73:                                               ; preds = %69, %58
  %74 = phi ptr [ %72, %69 ], [ %64, %58 ]
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #5, !srcloc !10
  br label %76

76:                                               ; preds = %73, %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %34) #5
  %77 = icmp eq i32 %53, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %78, %76
  %79 = phi i32 [ %83, %78 ], [ %53, %76 ]
  %80 = tail call i32 @llvm.cttz.i32(i32 %79, i1 true) #5, !range !14
  %81 = shl nuw i32 1, %80
  %82 = xor i32 %81, -1
  %83 = and i32 %79, %82
  %84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %84) #5
  %85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %31) #5
  %86 = load ptr, ptr %32, align 4
  %87 = tail call i32 @generic_handle_domain_irq(ptr noundef %86, i32 noundef %80) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %85) #5
  %88 = icmp eq i32 %83, 0
  br i1 %88, label %33, label %78

89:                                               ; preds = %76, %26, %25, %11
  %90 = phi i32 [ 0, %26 ], [ 1, %11 ], [ 0, %25 ], [ 1, %76 ]
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_gpio_idle(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 11, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %6, i32 0, i32 3
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !10
  %12 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 6
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 21
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %17, i32 0, i32 1
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %4, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !10
  %23 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5
  store i32 %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %16, %1
  %25 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %65, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 9
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, %26
  %32 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %31, %34
  %36 = load i32, ptr %12, align 4
  %37 = or i32 %36, %35
  %38 = and i32 %33, %26
  %39 = xor i32 %38, -1
  %40 = or i32 %30, %39
  %41 = and i32 %37, %40
  store i32 %41, ptr %12, align 4
  %42 = load i8, ptr %13, align 1, !range !8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %28
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %45, i32 0, i32 22
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = getelementptr i8, ptr %4, i32 %48
  %50 = icmp eq i32 %26, -1
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #5, !srcloc !10
  %52 = or i32 %51, %26
  %53 = xor i32 %26, -1
  %54 = and i32 %51, %53
  %55 = select i1 %50, i32 %54, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %55) #5, !srcloc !9
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %56, i32 0, i32 21
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr i8, ptr %4, i32 %59
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #5, !srcloc !10
  %62 = or i32 %61, %26
  %63 = and i32 %61, %53
  %64 = select i1 %50, i32 %63, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %64) #5, !srcloc !9
  br label %65

65:                                               ; preds = %44, %28, %24
  %66 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 27
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = tail call i32 %67(ptr noundef %3) #5
  %71 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 25
  store i32 %70, ptr %71, align 4
  br label %72

72:                                               ; preds = %69, %65
  %73 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 17
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 18
  %78 = load i8, ptr %77, align 4, !range !8
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %0, align 4
  %82 = load ptr, ptr %5, align 4
  %83 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %82, i32 0, i32 16
  %84 = load i16, ptr %83, align 2
  %85 = zext i16 %84 to i32
  %86 = getelementptr i8, ptr %81, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 0) #5, !srcloc !9
  %87 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 12
  %88 = load ptr, ptr %87, align 4
  tail call void @clk_disable(ptr noundef %88) #5
  store i8 0, ptr %77, align 4
  br label %89

89:                                               ; preds = %80, %76, %72
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_gpio_unidle(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 11, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 21
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %87, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 22
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %87

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !10
  %20 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 17
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %14, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !10
  %26 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 4
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 2
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = getelementptr i8, ptr %14, i32 %29
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #5, !srcloc !10
  %32 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 5
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 18
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %14, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !10
  %38 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 3
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 19
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = getelementptr i8, ptr %14, i32 %41
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #5, !srcloc !10
  %44 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 6
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 20
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = getelementptr i8, ptr %14, i32 %47
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #5, !srcloc !10
  %50 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 7
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 21
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = getelementptr i8, ptr %14, i32 %53
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #5, !srcloc !10
  %56 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 8
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 22
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr i8, ptr %14, i32 %59
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #5, !srcloc !10
  %62 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 9
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 11
  %64 = load i16, ptr %63, align 2
  %65 = zext i16 %64 to i32
  %66 = getelementptr i8, ptr %14, i32 %65
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #5, !srcloc !10
  %68 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 1
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 12
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  %72 = getelementptr i8, ptr %14, i32 %71
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #5, !srcloc !10
  %74 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 2
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %13, i32 0, i32 4
  %76 = load i16, ptr %75, align 2
  %77 = zext i16 %76 to i32
  %78 = getelementptr i8, ptr %14, i32 %77
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #5, !srcloc !10
  %80 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 10
  store i32 %79, ptr %80, align 4
  store i8 1, ptr %8, align 4
  %81 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 27
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %11
  %85 = tail call i32 %82(ptr noundef %3) #5
  %86 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 25
  store i32 %85, ptr %86, align 4
  br label %87

87:                                               ; preds = %84, %11, %7, %1
  %88 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 17
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 18
  %93 = load i8, ptr %92, align 4, !range !8
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 12
  %97 = load ptr, ptr %96, align 4
  %98 = tail call i32 @clk_enable(ptr noundef %97) #5
  store i8 1, ptr %92, align 4
  %99 = load i32, ptr %88, align 4
  %100 = load ptr, ptr %0, align 4
  %101 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %102, i32 0, i32 16
  %104 = load i16, ptr %103, align 2
  %105 = zext i16 %104 to i32
  %106 = getelementptr i8, ptr %100, i32 %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %99) #5, !srcloc !9
  br label %107

107:                                              ; preds = %95, %91, %87
  %108 = load i8, ptr %4, align 1, !range !8
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 27
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  tail call fastcc void @omap_gpio_restore_context(ptr noundef %0)
  br label %139

115:                                              ; preds = %110
  %116 = tail call i32 %112(ptr noundef %3) #5
  %117 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 25
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %235, label %120

120:                                              ; preds = %115
  tail call fastcc void @omap_gpio_restore_context(ptr noundef %0)
  br label %139

121:                                              ; preds = %107
  %122 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 9
  %123 = load i32, ptr %122, align 4
  %124 = load ptr, ptr %0, align 4
  %125 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %126, i32 0, i32 22
  %128 = load i16, ptr %127, align 2
  %129 = zext i16 %128 to i32
  %130 = getelementptr i8, ptr %124, i32 %129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %123) #5, !srcloc !9
  %131 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 8
  %132 = load i32, ptr %131, align 4
  %133 = load ptr, ptr %0, align 4
  %134 = load ptr, ptr %125, align 4
  %135 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %134, i32 0, i32 21
  %136 = load i16, ptr %135, align 2
  %137 = zext i16 %136 to i32
  %138 = getelementptr i8, ptr %133, i32 %137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %132) #5, !srcloc !9
  br label %139

139:                                              ; preds = %121, %120, %114
  %140 = load ptr, ptr %0, align 4
  %141 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %142, i32 0, i32 3
  %144 = load i16, ptr %143, align 2
  %145 = zext i16 %144 to i32
  %146 = getelementptr i8, ptr %140, i32 %145
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #5, !srcloc !10
  %148 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 6
  %149 = load i32, ptr %148, align 4
  %150 = xor i32 %149, %147
  %151 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 4
  %152 = load i32, ptr %151, align 4
  %153 = and i32 %150, %152
  %154 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 9
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, %149
  %157 = and i32 %156, %153
  %158 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 8
  %159 = load i32, ptr %158, align 4
  %160 = xor i32 %149, -1
  %161 = and i32 %153, %160
  %162 = and i32 %161, %159
  %163 = or i32 %159, %155
  %164 = xor i32 %163, -1
  %165 = and i32 %153, %164
  %166 = or i32 %162, %157
  %167 = or i32 %166, %165
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %235, label %169

169:                                              ; preds = %139
  %170 = load ptr, ptr %0, align 4
  %171 = load ptr, ptr %141, align 4
  %172 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %171, i32 0, i32 19
  %173 = load i16, ptr %172, align 2
  %174 = zext i16 %173 to i32
  %175 = getelementptr i8, ptr %170, i32 %174
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %175) #5, !srcloc !10
  %177 = load ptr, ptr %0, align 4
  %178 = load ptr, ptr %141, align 4
  %179 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %178, i32 0, i32 20
  %180 = load i16, ptr %179, align 2
  %181 = zext i16 %180 to i32
  %182 = getelementptr i8, ptr %177, i32 %181
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #5, !srcloc !10
  %184 = load ptr, ptr %141, align 4
  %185 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %184, i32 0, i32 9
  %186 = load i16, ptr %185, align 2
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %188, label %206

188:                                              ; preds = %169
  %189 = or i32 %176, %167
  %190 = load ptr, ptr %0, align 4
  %191 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %184, i32 0, i32 19
  %192 = load i16, ptr %191, align 2
  %193 = zext i16 %192 to i32
  %194 = getelementptr i8, ptr %190, i32 %193
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 %189) #5, !srcloc !9
  %195 = or i32 %183, %167
  %196 = load ptr, ptr %0, align 4
  %197 = load ptr, ptr %141, align 4
  %198 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %197, i32 0, i32 20
  %199 = load i16, ptr %198, align 2
  %200 = zext i16 %199 to i32
  %201 = getelementptr i8, ptr %196, i32 %200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %195) #5, !srcloc !9
  %202 = load ptr, ptr %141, align 4
  %203 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %202, i32 0, i32 9
  %204 = load i16, ptr %203, align 2
  %205 = icmp eq i16 %204, 0
  br i1 %205, label %222, label %206

206:                                              ; preds = %188, %169
  %207 = phi ptr [ %202, %188 ], [ %184, %169 ]
  %208 = or i32 %176, %153
  %209 = load ptr, ptr %0, align 4
  %210 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %207, i32 0, i32 19
  %211 = load i16, ptr %210, align 2
  %212 = zext i16 %211 to i32
  %213 = getelementptr i8, ptr %209, i32 %212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %208) #5, !srcloc !9
  %214 = or i32 %183, %153
  %215 = load ptr, ptr %0, align 4
  %216 = load ptr, ptr %141, align 4
  %217 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %216, i32 0, i32 20
  %218 = load i16, ptr %217, align 2
  %219 = zext i16 %218 to i32
  %220 = getelementptr i8, ptr %215, i32 %219
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %214) #5, !srcloc !9
  %221 = load ptr, ptr %141, align 4
  br label %222

222:                                              ; preds = %206, %188
  %223 = phi ptr [ %221, %206 ], [ %202, %188 ]
  %224 = load ptr, ptr %0, align 4
  %225 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %223, i32 0, i32 19
  %226 = load i16, ptr %225, align 2
  %227 = zext i16 %226 to i32
  %228 = getelementptr i8, ptr %224, i32 %227
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %176) #5, !srcloc !9
  %229 = load ptr, ptr %0, align 4
  %230 = load ptr, ptr %141, align 4
  %231 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %230, i32 0, i32 20
  %232 = load i16, ptr %231, align 2
  %233 = zext i16 %232 to i32
  %234 = getelementptr i8, ptr %229, i32 %233
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %183) #5, !srcloc !9
  br label %235

235:                                              ; preds = %222, %139, %115
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_gpio_restore_context(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %4, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %6) #5, !srcloc !9
  %11 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 18
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %4, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %12) #5, !srcloc !9
  %17 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 17
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %4, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %18) #5, !srcloc !9
  %23 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 19
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %4, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %24) #5, !srcloc !9
  %29 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 20
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr i8, ptr %4, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %30) #5, !srcloc !9
  %35 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 21
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = getelementptr i8, ptr %4, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %36) #5, !srcloc !9
  %41 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 22
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = getelementptr i8, ptr %4, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %42) #5, !srcloc !9
  %47 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 10
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 4
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = getelementptr i8, ptr %4, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %48) #5, !srcloc !9
  %53 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 2
  %56 = load i16, ptr %55, align 2
  %57 = zext i16 %56 to i32
  %58 = getelementptr i8, ptr %4, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %54) #5, !srcloc !9
  %59 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 17
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %1
  %63 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 11
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 15
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = getelementptr i8, ptr %4, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %64) #5, !srcloc !9
  %69 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 12
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 16
  %72 = load i16, ptr %71, align 2
  %73 = zext i16 %72 to i32
  %74 = getelementptr i8, ptr %4, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %70) #5, !srcloc !9
  br label %75

75:                                               ; preds = %62, %1
  %76 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 11
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = getelementptr i8, ptr %4, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %77) #5, !srcloc !9
  %82 = getelementptr inbounds %struct.gpio_bank, ptr %0, i32 0, i32 5, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.omap_gpio_reg_offs, ptr %3, i32 0, i32 12
  %85 = load i16, ptr %84, align 2
  %86 = zext i16 %85 to i32
  %87 = getelementptr i8, ptr %4, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %83) #5, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 14
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = or i8 %5, 2
  store i8 %9, ptr %4, align 4
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.gpio_bank, ptr %10, i32 0, i32 9
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #5
  tail call fastcc void @omap_gpio_idle(ptr noundef %10) #5
  %13 = getelementptr inbounds %struct.gpio_bank, ptr %10, i32 0, i32 14
  %14 = load i8, ptr %13, align 4
  %15 = or i8 %14, 1
  store i8 %15, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #5
  br label %16

16:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 14
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = and i8 %5, -3
  store i8 %9, ptr %4, align 4
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.gpio_bank, ptr %10, i32 0, i32 9
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #5
  tail call fastcc void @omap_gpio_unidle(ptr noundef %10) #5
  %13 = getelementptr inbounds %struct.gpio_bank, ptr %10, i32 0, i32 14
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, -2
  store i8 %15, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #5
  br label %16

16:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 9
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  tail call fastcc void @omap_gpio_idle(ptr noundef %3)
  %6 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 14
  %7 = load i8, ptr %6, align 4
  %8 = or i8 %7, 1
  store i8 %8, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_gpio_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 9
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  tail call fastcc void @omap_gpio_unidle(ptr noundef %3)
  %6 = getelementptr inbounds %struct.gpio_bank, ptr %3, i32 0, i32 14
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, -2
  store i8 %8, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 3499723}
!10 = !{i64 3500141}
!11 = !{i64 3499303}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i32 0, i32 33}
