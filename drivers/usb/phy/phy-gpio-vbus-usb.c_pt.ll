; ModuleID = '/llk/IR/drivers/usb/phy/phy-gpio-vbus-usb.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-gpio-vbus-usb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.gpio_vbus_data = type { ptr, ptr, %struct.usb_phy, ptr, ptr, i32, i32, %struct.delayed_work, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__UNIQUE_ID_alias252 = internal constant [43 x i8] c"phy_gpio_vbus_usb.alias=platform:gpio-vbus\00", section ".modinfo", align 1
@__initcall__kmod_phy_gpio_vbus_usb__253_380_gpio_vbus_driver_init6 = internal global ptr @gpio_vbus_driver_init, section ".initcall6.init", align 4
@gpio_vbus_driver = internal global %struct.platform_driver { ptr @gpio_vbus_probe, ptr @gpio_vbus_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_vbus_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_gpio_vbus_driver_exit = internal global ptr @gpio_vbus_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description254 = internal constant [76 x i8] c"phy_gpio_vbus_usb.description=simple GPIO controlled OTG transceiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [39 x i8] c"phy_gpio_vbus_usb.author=Philipp Zabel\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [57 x i8] c"phy_gpio_vbus_usb.file=drivers/usb/phy/phy-gpio-vbus-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [30 x i8] c"phy_gpio_vbus_usb.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"gpio-vbus\00", align 1
@gpio_vbus_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @gpio_vbus_pm_suspend, ptr @gpio_vbus_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"can't request vbus gpio, err: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"vbus_detect\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"pullup\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"can't request pullup gpio, err: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"udc_pullup\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"can't request irq %i, err: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"vbus_draw\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"can't register transceiver, err: %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_gpio_vbus_driver_exit, ptr @__initcall__kmod_phy_gpio_vbus_usb__253_380_gpio_vbus_driver_init6, ptr @gpio_vbus_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gpio_vbus_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_vbus_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @gpio_vbus_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_vbus_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_vbus_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 268, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %66, label %5

5:                                                ; preds = %1
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #4
  %7 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 2
  %8 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 2, i32 5
  store ptr %6, ptr %8, align 4
  %9 = icmp eq ptr %6, null
  br i1 %9, label %66, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %11, align 8
  %12 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 3
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 2, i32 1
  store ptr @.str, ptr %13, align 4
  store ptr %2, ptr %7, align 4
  %14 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 2, i32 25
  store ptr @gpio_vbus_set_power, ptr %14, align 4
  %15 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 2, i32 26
  store ptr @gpio_vbus_set_suspend, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_otg, ptr %6, i32 0, i32 5
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.usb_otg, ptr %6, i32 0, i32 2
  store ptr %7, ptr %17, align 4
  %18 = getelementptr inbounds %struct.usb_otg, ptr %6, i32 0, i32 7
  store ptr @gpio_vbus_set_peripheral, ptr %18, align 4
  %19 = tail call ptr @devm_gpiod_get(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 1) #4
  store ptr %19, ptr %3, align 4
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = ptrtoint ptr %19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %22) #5
  br label %66

23:                                               ; preds = %10
  %24 = tail call i32 @gpiod_set_consumer_name(ptr noundef %19, ptr noundef nonnull @.str.3) #4
  %25 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 1024, i32 noundef 0) #4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %25, align 4
  %29 = getelementptr inbounds %struct.resource, ptr %25, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 15
  %32 = or i32 %31, 128
  br label %36

33:                                               ; preds = %23
  %34 = load ptr, ptr %3, align 4
  %35 = tail call i32 @gpiod_to_irq(ptr noundef %34) #4
  br label %36

36:                                               ; preds = %33, %27
  %37 = phi i32 [ %28, %27 ], [ %35, %33 ]
  %38 = phi i32 [ %32, %27 ], [ 131, %33 ]
  %39 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 9
  store i32 %37, ptr %39, align 4
  %40 = tail call ptr @devm_gpiod_get_optional(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 3) #4
  %41 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 1
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = ptrtoint ptr %40 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %44) #5
  br label %66

45:                                               ; preds = %36
  %46 = icmp eq ptr %40, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %45
  %48 = tail call i32 @gpiod_set_consumer_name(ptr noundef nonnull %40, ptr noundef nonnull @.str.6) #4
  br label %49

49:                                               ; preds = %47, %45
  %50 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %37, ptr noundef nonnull @gpio_vbus_irq, ptr noundef null, i32 noundef %38, ptr noundef nonnull @.str.3, ptr noundef %0) #4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %37, i32 noundef %50) #5
  br label %66

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 7
  store i32 -32, ptr %54, align 4
  %55 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 7, i32 0, i32 1
  store volatile ptr %55, ptr %55, align 4
  %56 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 7, i32 0, i32 1, i32 1
  store ptr %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 7, i32 0, i32 2
  store ptr @gpio_vbus_work, ptr %57, align 4
  %58 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %58, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #4
  %59 = tail call ptr @devm_regulator_get(ptr noundef %2, ptr noundef nonnull @.str.8) #4
  %60 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 4
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  %62 = select i1 %61, ptr null, ptr %59
  store ptr %62, ptr %60, align 4
  %63 = tail call i32 @usb_add_phy(ptr noundef %7, i32 noundef 1) #4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %63) #5
  br label %66

66:                                               ; preds = %65, %53, %52, %43, %21, %5, %1
  %67 = phi i32 [ %22, %21 ], [ %44, %43 ], [ %50, %52 ], [ %63, %65 ], [ -12, %1 ], [ -12, %5 ], [ 0, %53 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_vbus_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @device_init_wakeup(ptr noundef %4, i1 noundef zeroext false) #4
  %6 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 7
  %7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %6) #4
  %8 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 2
  tail call void @usb_remove_phy(ptr noundef %8) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_vbus_set_power(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_otg, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 196
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 200
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = mul i32 %1, 1000
  %18 = tail call i32 @regulator_set_current_limit(ptr noundef nonnull %10, i32 noundef 0, i32 noundef %17) #4
  %19 = icmp eq i32 %14, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = tail call i32 @regulator_enable(ptr noundef nonnull %10) #4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %32, label %28

23:                                               ; preds = %12
  %24 = icmp eq i32 %14, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = tail call i32 @regulator_disable(ptr noundef nonnull %10) #4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ 1, %20 ], [ 0, %25 ]
  store i32 %29, ptr %13, align 4
  br label %30

30:                                               ; preds = %28, %23, %16
  %31 = getelementptr i8, ptr %0, i32 204
  store i32 %1, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %25, %20, %8, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_vbus_set_suspend(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 204
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ %6, %4 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_otg, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %38

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %0, i32 196
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %0, i32 200
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %8, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = mul i32 %8, 1000
  %24 = tail call i32 @regulator_set_current_limit(ptr noundef nonnull %16, i32 noundef 0, i32 noundef %23) #4
  %25 = icmp eq i32 %20, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = tail call i32 @regulator_enable(ptr noundef nonnull %16) #4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %38, label %34

29:                                               ; preds = %18
  %30 = icmp eq i32 %20, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %29
  %32 = tail call i32 @regulator_disable(ptr noundef nonnull %16) #4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31, %26
  %35 = phi i32 [ 1, %26 ], [ 0, %31 ]
  store i32 %35, ptr %19, align 4
  br label %36

36:                                               ; preds = %34, %29, %22
  %37 = getelementptr i8, ptr %0, i32 204
  store i32 %8, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %31, %26, %14, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_vbus_set_peripheral(ptr nocapture noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gpiod_set_value(ptr noundef nonnull %8, i32 noundef 0) #4
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr i8, ptr %4, i32 196
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %4, i32 200
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @regulator_disable(ptr noundef nonnull %13) #4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  store i32 0, ptr %16, align 4
  br label %23

23:                                               ; preds = %22, %15
  %24 = getelementptr i8, ptr %4, i32 204
  store i32 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %19, %11
  %26 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef %27) #4
  %29 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 5
  store i32 0, ptr %29, align 4
  store ptr null, ptr %26, align 4
  br label %46

30:                                               ; preds = %2
  %31 = getelementptr i8, ptr %4, i32 192
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 4
  store ptr %1, ptr %33, align 4
  %34 = getelementptr i8, ptr %4, i32 252
  store i32 0, ptr %34, align 4
  %35 = getelementptr i8, ptr %32, i32 64
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.gpio_vbus_data, ptr %36, i32 0, i32 2, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.usb_otg, ptr %38, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.gpio_vbus_data, ptr %36, i32 0, i32 7
  %44 = load ptr, ptr @system_wq, align 4
  %45 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %44, ptr noundef %43, i32 noundef 10) #4
  br label %46

46:                                               ; preds = %42, %30, %25
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_vbus_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gpio_vbus_data, ptr %4, i32 0, i32 2, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_otg, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.gpio_vbus_data, ptr %4, i32 0, i32 7
  %12 = load ptr, ptr @system_wq, align 4
  %13 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %12, ptr noundef %11, i32 noundef 10) #4
  br label %14

14:                                               ; preds = %10, %2
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_vbus_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -208
  %3 = getelementptr i8, ptr %0, i32 -188
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_otg, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %79, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -216
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @gpiod_get_value(ptr noundef %10) #4
  %12 = getelementptr i8, ptr %0, i32 44
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %79, label %15

15:                                               ; preds = %8
  store i32 %11, ptr %12, align 4
  %16 = icmp eq i32 %11, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.usb_otg, ptr %18, i32 0, i32 5
  store i32 3, ptr %19, align 4
  %20 = getelementptr i8, ptr %0, i32 -192
  store i32 1, ptr %20, align 4
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.usb_otg, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @usb_gadget_vbus_connect(ptr noundef %23) #4
  %25 = getelementptr i8, ptr %0, i32 -12
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %17
  %29 = getelementptr i8, ptr %0, i32 -8
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @regulator_set_current_limit(ptr noundef nonnull %26, i32 noundef 0, i32 noundef 100000) #4
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = tail call i32 @regulator_enable(ptr noundef nonnull %26) #4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  store i32 1, ptr %29, align 4
  br label %37

37:                                               ; preds = %36, %28
  %38 = getelementptr i8, ptr %0, i32 -4
  store i32 100, ptr %38, align 4
  br label %39

39:                                               ; preds = %37, %33, %17
  %40 = getelementptr i8, ptr %0, i32 -212
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %71, label %43

43:                                               ; preds = %39
  tail call void @gpiod_set_value(ptr noundef nonnull %41, i32 noundef 1) #4
  br label %71

44:                                               ; preds = %15
  %45 = getelementptr i8, ptr %0, i32 -212
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @gpiod_set_value(ptr noundef nonnull %46, i32 noundef 0) #4
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr i8, ptr %0, i32 -12
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %0, i32 -8
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = tail call i32 @regulator_disable(ptr noundef nonnull %51) #4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  store i32 0, ptr %54, align 4
  br label %61

61:                                               ; preds = %60, %53
  %62 = getelementptr i8, ptr %0, i32 -4
  store i32 0, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %57, %49
  %64 = load ptr, ptr %3, align 4
  %65 = getelementptr inbounds %struct.usb_otg, ptr %64, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef %66) #4
  %68 = load ptr, ptr %3, align 4
  %69 = getelementptr inbounds %struct.usb_otg, ptr %68, i32 0, i32 5
  store i32 1, ptr %69, align 4
  %70 = getelementptr i8, ptr %0, i32 -192
  store i32 0, ptr %70, align 4
  br label %71

71:                                               ; preds = %63, %43, %39
  %72 = phi i32 [ 0, %63 ], [ 1, %43 ], [ 1, %39 ]
  %73 = phi i32 [ 0, %63 ], [ 4, %43 ], [ 4, %39 ]
  %74 = getelementptr i8, ptr %0, i32 -72
  %75 = load ptr, ptr %3, align 4
  %76 = getelementptr inbounds %struct.usb_otg, ptr %75, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 @atomic_notifier_call_chain(ptr noundef %74, i32 noundef %72, ptr noundef %77) #4
  tail call void @usb_phy_set_event(ptr noundef %2, i32 noundef %73) #4
  br label %79

79:                                               ; preds = %71, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_vbus_pm_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #4
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_vbus_pm_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gpio_vbus_data, ptr %3, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #4
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
