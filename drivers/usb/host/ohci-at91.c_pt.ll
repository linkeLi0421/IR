; ModuleID = '/llk/IR/drivers/usb/host/ohci-at91.c_pt.bc'
source_filename = "../drivers/usb/host/ohci-at91.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ohci_driver_overrides = type { ptr, i32, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.at91_usbh_data = type { [3 x ptr], [3 x ptr], i8, i8, [3 x i8], [3 x i8] }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.65, i32 }
%union.anon.65 = type { ptr }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.66 }>
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { [4 x i8], [4 x i8] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ohci_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ohci_roothub_regs, [16 x i8] }
%struct.ohci_roothub_regs = type { i32, i32, i32, [15 x i32] }
%struct.ohci_at91_priv = type { ptr, ptr, ptr, i8, i8, ptr }

@__initcall__kmod_ohci_at91__231_696_ohci_at91_init6 = internal global ptr @ohci_at91_init, section ".initcall6.init", align 4
@ohci_hcd_at91_driver = internal global %struct.platform_driver { ptr @ohci_hcd_at91_drv_probe, ptr @ohci_hcd_at91_drv_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_ohci_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ohci_hcd_at91_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ohci_at91_cleanup = internal global ptr @ohci_at91_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description232 = internal constant [40 x i8] c"ohci_at91.description=OHCI Atmel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [42 x i8] c"ohci_at91.file=drivers/usb/host/ohci-at91\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [22 x i8] c"ohci_at91.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias235 = internal constant [35 x i8] c"ohci_at91.alias=platform:at91_ohci\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [25 x i8] c"\016%s: OHCI Atmel driver\0A\00", align 1
@hcd_name = internal constant [11 x i8] c"ohci-atmel\00", align 1
@ohci_at91_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@ohci_at91_drv_overrides = internal constant %struct.ohci_driver_overrides { ptr null, i32 20, ptr null }, section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"at91_ohci\00", align 1
@at91_ohci_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ohci_hcd_at91_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ohci_hcd_at91_drv_suspend, ptr @ohci_hcd_at91_drv_resume, ptr @ohci_hcd_at91_drv_suspend, ptr @ohci_hcd_at91_drv_resume, ptr @ohci_hcd_at91_drv_suspend, ptr @ohci_hcd_at91_drv_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"num-ports\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"atmel,vbus\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"unable to claim gpio \22vbus\22: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"atmel,oc\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"unable to claim gpio \22overcurrent\22: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"ohci_overcurrent\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"failed to request gpio \22overcurrent\22 IRQ\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"overcurrent interrupt from unknown GPIO\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"at91\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"ohci_clk\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"failed to get ohci_clk\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"uhpck\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"failed to get uhpck\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"failed to get hclk\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"atmel,sama5d2-sfr\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"microchip,sam9x60-sfr\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_ohci_at91_cleanup, ptr @__initcall__kmod_ohci_at91__231_696_ohci_at91_init6, ptr @ohci_at91_cleanup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ohci_at91_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #6
  tail call void @ohci_init_driver(ptr noundef nonnull @ohci_at91_hc_driver, ptr noundef nonnull @ohci_at91_drv_overrides) #5
  store ptr @ohci_at91_hub_status_data, ptr getelementptr inbounds (%struct.hc_driver, ptr @ohci_at91_hc_driver, i32 0, i32 18), align 4
  store ptr @ohci_at91_hub_control, ptr getelementptr inbounds (%struct.hc_driver, ptr @ohci_at91_hc_driver, i32 0, i32 19), align 4
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ohci_hcd_at91_driver, ptr noundef null) #5
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ -19, %0 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ohci_at91_cleanup() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ohci_hcd_at91_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ohci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_at91_hub_status_data(ptr noundef %0, ptr noundef %1) #3 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @ohci_hub_status_data(ptr noundef %0, ptr noundef %1) #5
  %7 = getelementptr %struct.at91_usbh_data, ptr %5, i32 0, i32 5, i32 0
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %6, 0
  %12 = select i1 %11, i32 1, i32 %6
  %13 = load i8, ptr %1, align 1
  %14 = or i8 %13, 2
  store i8 %14, ptr %1, align 1
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i32 [ %12, %10 ], [ %6, %2 ]
  %17 = getelementptr %struct.at91_usbh_data, ptr %5, i32 0, i32 5, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = icmp eq i32 %16, 0
  %22 = select i1 %21, i32 1, i32 %16
  %23 = load i8, ptr %1, align 1
  %24 = or i8 %23, 4
  store i8 %24, ptr %1, align 1
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i32 [ %22, %20 ], [ %16, %15 ]
  %27 = getelementptr %struct.at91_usbh_data, ptr %5, i32 0, i32 5, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = icmp eq i32 %26, 0
  %32 = select i1 %31, i32 1, i32 %26
  %33 = load i8, ptr %1, align 1
  %34 = or i8 %33, 8
  store i8 %34, ptr %1, align 1
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i32 [ %32, %30 ], [ %26, %25 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_at91_hub_control(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef %4, i16 noundef zeroext %5) #3 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = add i16 %3, -1
  switch i16 %1, label %66 [
    i16 8963, label %13
    i16 8961, label %34
  ]

13:                                               ; preds = %6
  switch i16 %2, label %66 [
    i16 8, label %14
    i16 2, label %20
  ]

14:                                               ; preds = %13
  %15 = icmp ult i16 %12, 3
  br i1 %15, label %16, label %106

16:                                               ; preds = %14
  %17 = zext i16 %12 to i32
  %18 = getelementptr [3 x ptr], ptr %11, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef 1) #5
  br label %106

20:                                               ; preds = %13
  %21 = icmp ult i16 %12, 3
  br i1 %21, label %22, label %66

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 26
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %66, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  store i32 0, ptr %8, align 4, !annotation !8
  %27 = call i32 @regmap_read(ptr noundef nonnull %24, i32 noundef 16, ptr noundef nonnull %8) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, ptr %8, align 4
  %31 = or i32 %30, 1792
  store i32 %31, ptr %8, align 4
  %32 = call i32 @regmap_write(ptr noundef nonnull %24, i32 noundef 16, i32 noundef %31) #5
  br label %33

33:                                               ; preds = %29, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  br label %106

34:                                               ; preds = %6
  switch i16 %2, label %66 [
    i16 19, label %35
    i16 3, label %41
    i16 8, label %46
    i16 2, label %52
  ]

35:                                               ; preds = %34
  %36 = icmp ult i16 %12, 3
  br i1 %36, label %37, label %106

37:                                               ; preds = %35
  %38 = zext i16 %12 to i32
  %39 = getelementptr %struct.at91_usbh_data, ptr %11, i32 0, i32 5, i32 %38
  store i8 0, ptr %39, align 1
  %40 = getelementptr %struct.at91_usbh_data, ptr %11, i32 0, i32 4, i32 %38
  store i8 0, ptr %40, align 1
  br label %106

41:                                               ; preds = %34
  %42 = icmp ult i16 %12, 3
  br i1 %42, label %43, label %106

43:                                               ; preds = %41
  %44 = zext i16 %12 to i32
  %45 = getelementptr %struct.at91_usbh_data, ptr %11, i32 0, i32 4, i32 %44
  store i8 0, ptr %45, align 1
  br label %106

46:                                               ; preds = %34
  %47 = icmp ult i16 %12, 3
  br i1 %47, label %48, label %66

48:                                               ; preds = %46
  %49 = zext i16 %12 to i32
  %50 = getelementptr [3 x ptr], ptr %11, i32 0, i32 %49
  %51 = load ptr, ptr %50, align 4
  tail call void @gpiod_set_value(ptr noundef %51, i32 noundef 0) #5
  br label %106

52:                                               ; preds = %34
  %53 = icmp ult i16 %12, 3
  br i1 %53, label %54, label %66

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 26
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 0, ptr %7, align 4, !annotation !8
  %59 = call i32 @regmap_read(ptr noundef nonnull %56, i32 noundef 16, ptr noundef nonnull %7) #5
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, ptr %7, align 4
  %63 = and i32 %62, -1793
  store i32 %63, ptr %7, align 4
  %64 = call i32 @regmap_write(ptr noundef nonnull %56, i32 noundef 16, i32 noundef %63) #5
  br label %65

65:                                               ; preds = %61, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  br label %106

66:                                               ; preds = %54, %52, %46, %34, %22, %20, %13, %6
  %67 = zext i16 %12 to i32
  %68 = tail call i32 @ohci_hub_control(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef %4, i16 noundef zeroext %5) #5
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %66
  switch i16 %1, label %106 [
    i16 -24570, label %71
    i16 -23808, label %82
  ]

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 3
  %73 = load i16, ptr %72, align 1
  %74 = and i16 %73, -4
  %75 = or i16 %74, 1
  store i16 %75, ptr %72, align 1
  %76 = getelementptr inbounds %struct.at91_usbh_data, ptr %11, i32 0, i32 3
  %77 = load i8, ptr %76, align 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %106, label %79

79:                                               ; preds = %71
  %80 = and i16 %75, -27
  %81 = or i16 %80, 8
  store i16 %81, ptr %72, align 1
  br label %106

82:                                               ; preds = %70
  %83 = icmp ult i16 %12, 3
  br i1 %83, label %84, label %106

84:                                               ; preds = %82
  %85 = getelementptr [3 x ptr], ptr %11, i32 0, i32 %67
  %86 = load ptr, ptr %85, align 4
  %87 = tail call i32 @gpiod_get_value(ptr noundef %86) #5
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, ptr %4, align 4
  %91 = and i32 %90, -257
  store i32 %91, ptr %4, align 4
  br label %92

92:                                               ; preds = %89, %84
  %93 = getelementptr %struct.at91_usbh_data, ptr %11, i32 0, i32 5, i32 %67
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i32, ptr %4, align 4
  %98 = or i32 %97, 524288
  store i32 %98, ptr %4, align 4
  br label %99

99:                                               ; preds = %96, %92
  %100 = getelementptr %struct.at91_usbh_data, ptr %11, i32 0, i32 4, i32 %67
  %101 = load i8, ptr %100, align 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i32, ptr %4, align 4
  %105 = or i32 %104, 8
  store i32 %105, ptr %4, align 4
  br label %106

106:                                              ; preds = %103, %99, %82, %79, %71, %70, %66, %65, %48, %43, %41, %37, %35, %33, %16, %14
  %107 = phi i32 [ 0, %65 ], [ 0, %33 ], [ 0, %79 ], [ 0, %71 ], [ %68, %66 ], [ 0, %70 ], [ 0, %103 ], [ 0, %99 ], [ 0, %82 ], [ -22, %43 ], [ -22, %41 ], [ -22, %37 ], [ -22, %35 ], [ -22, %14 ], [ 0, %16 ], [ 0, %48 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_hub_status_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_hub_control(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_hcd_at91_drv_probe(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %6, ptr %7, align 4
  %8 = tail call i32 @dma_set_mask(ptr noundef %3, i64 noundef 4294967295) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %177

10:                                               ; preds = %1
  %11 = tail call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef 4294967295) #5
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 32, i32 noundef 3520) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %177, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  store ptr %12, ptr %15, align 4
  %16 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.at91_usbh_data, ptr %12, i32 0, i32 2
  %20 = load i8, ptr %19, align 4
  br label %25

21:                                               ; preds = %14
  %22 = load i32, ptr %2, align 4
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.at91_usbh_data, ptr %12, i32 0, i32 2
  store i8 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i8 [ %20, %18 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.at91_usbh_data, ptr %12, i32 0, i32 2
  %28 = icmp eq i8 %26, 0
  br i1 %28, label %102, label %29

29:                                               ; preds = %25
  %30 = call ptr @devm_gpiod_get_index_optional(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 7) #5
  store ptr %30, ptr %12, align 4
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = ptrtoint ptr %30 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %33) #6
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i8, ptr %27, align 4
  %36 = icmp ugt i8 %35, 1
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = call ptr @devm_gpiod_get_index_optional(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 7) #5
  %39 = getelementptr [3 x ptr], ptr %12, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = ptrtoint ptr %38 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %42) #6
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i8, ptr %27, align 4
  %45 = icmp ugt i8 %44, 2
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = call ptr @devm_gpiod_get_index_optional(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 7) #5
  %48 = getelementptr [3 x ptr], ptr %12, i32 0, i32 2
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = ptrtoint ptr %47 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %51) #6
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i8, ptr %27, align 4
  br label %54

54:                                               ; preds = %52, %43, %34
  %55 = phi i8 [ %53, %52 ], [ %44, %43 ], [ %35, %34 ]
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %102, label %57

57:                                               ; preds = %54
  %58 = call ptr @devm_gpiod_get_index_optional(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 1) #5
  %59 = getelementptr %struct.at91_usbh_data, ptr %12, i32 0, i32 1, i32 0
  store ptr %58, ptr %59, align 4
  %60 = icmp eq ptr %58, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %65

63:                                               ; preds = %61
  %64 = ptrtoint ptr %58 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %64) #6
  br label %70

65:                                               ; preds = %61
  %66 = call i32 @gpiod_to_irq(ptr noundef nonnull %58) #5
  %67 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %66, ptr noundef nonnull @ohci_hcd_at91_overcurrent_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef %0) #5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.8) #6
  br label %70

70:                                               ; preds = %69, %65, %63, %57
  %71 = load i8, ptr %27, align 4
  %72 = icmp ugt i8 %71, 1
  br i1 %72, label %73, label %102

73:                                               ; preds = %70
  %74 = call ptr @devm_gpiod_get_index_optional(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 1) #5
  %75 = getelementptr %struct.at91_usbh_data, ptr %12, i32 0, i32 1, i32 1
  store ptr %74, ptr %75, align 4
  %76 = icmp eq ptr %74, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %84, label %79

79:                                               ; preds = %77
  %80 = call i32 @gpiod_to_irq(ptr noundef nonnull %74) #5
  %81 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %80, ptr noundef nonnull @ohci_hcd_at91_overcurrent_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef %0) #5
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.8) #6
  br label %86

84:                                               ; preds = %77
  %85 = ptrtoint ptr %74 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %85) #6
  br label %86

86:                                               ; preds = %84, %83, %79, %73
  %87 = load i8, ptr %27, align 4
  %88 = icmp ugt i8 %87, 2
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = call ptr @devm_gpiod_get_index_optional(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef 2, i32 noundef 1) #5
  %91 = getelementptr %struct.at91_usbh_data, ptr %12, i32 0, i32 1, i32 2
  store ptr %90, ptr %91, align 4
  %92 = icmp eq ptr %90, null
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %100, label %95

95:                                               ; preds = %93
  %96 = call i32 @gpiod_to_irq(ptr noundef nonnull %90) #5
  %97 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %96, ptr noundef nonnull @ohci_hcd_at91_overcurrent_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef %0) #5
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.8) #6
  br label %102

100:                                              ; preds = %93
  %101 = ptrtoint ptr %90 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %101) #6
  br label %102

102:                                              ; preds = %100, %99, %95, %89, %86, %70, %54, %25
  %103 = call i32 @device_init_wakeup(ptr noundef %3, i1 noundef zeroext true) #5
  %104 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %177, label %106

106:                                              ; preds = %102
  %107 = call ptr @usb_create_hcd(ptr noundef nonnull @ohci_at91_hc_driver, ptr noundef %3, ptr noundef nonnull @.str.10) #5
  %108 = icmp eq ptr %107, null
  br i1 %108, label %177, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.usb_hcd, ptr %107, i32 2, i32 22
  %111 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %112 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %111) #5
  %113 = getelementptr inbounds %struct.usb_hcd, ptr %107, i32 0, i32 16
  store ptr %112, ptr %113, align 8
  %114 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = ptrtoint ptr %112 to i32
  br label %175

117:                                              ; preds = %109
  %118 = load i32, ptr %111, align 4
  %119 = getelementptr inbounds %struct.usb_hcd, ptr %107, i32 0, i32 17
  store i32 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.resource, ptr %111, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = load i32, ptr %111, align 4
  %123 = add i32 %121, 1
  %124 = sub i32 %123, %122
  %125 = getelementptr inbounds %struct.usb_hcd, ptr %107, i32 0, i32 18
  store i32 %124, ptr %125, align 8
  %126 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.11) #5
  store ptr %126, ptr %110, align 4
  %127 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  br i1 %127, label %128, label %131

128:                                              ; preds = %117
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12) #6
  %129 = load ptr, ptr %110, align 4
  %130 = ptrtoint ptr %129 to i32
  br label %175

131:                                              ; preds = %117
  %132 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.13) #5
  %133 = getelementptr inbounds %struct.usb_hcd, ptr %107, i32 2, i32 23
  store ptr %132, ptr %133, align 4
  %134 = icmp ugt ptr %132, inttoptr (i32 -4096 to ptr)
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14) #6
  %136 = load ptr, ptr %133, align 4
  %137 = ptrtoint ptr %136 to i32
  br label %175

138:                                              ; preds = %131
  %139 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.15) #5
  %140 = getelementptr inbounds %struct.usb_hcd, ptr %107, i32 2, i32 24
  store ptr %139, ptr %140, align 4
  %141 = icmp ugt ptr %139, inttoptr (i32 -4096 to ptr)
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16) #6
  %143 = load ptr, ptr %140, align 4
  %144 = ptrtoint ptr %143 to i32
  br label %175

145:                                              ; preds = %138
  %146 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.17) #5
  %147 = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.18) #5
  %150 = icmp ugt ptr %149, inttoptr (i32 -4096 to ptr)
  %151 = select i1 %150, ptr null, ptr %149
  br label %152

152:                                              ; preds = %148, %145
  %153 = phi ptr [ %146, %145 ], [ %151, %148 ]
  %154 = getelementptr inbounds %struct.usb_hcd, ptr %107, i32 2, i32 26
  store ptr %153, ptr %154, align 4
  %155 = load ptr, ptr %107, align 8
  %156 = getelementptr inbounds %struct.device, ptr %155, i32 0, i32 7
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.at91_usbh_data, ptr %157, i32 0, i32 2
  %159 = load i8, ptr %158, align 4
  %160 = zext i8 %159 to i32
  %161 = getelementptr inbounds %struct.usb_hcd, ptr %107, i32 2, i32 4
  store i32 %160, ptr %161, align 4
  %162 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr inbounds %struct.usb_hcd, ptr %163, i32 0, i32 16
  %165 = load ptr, ptr %164, align 8
  %166 = getelementptr inbounds %struct.usb_hcd, ptr %163, i32 2, i32 22
  call fastcc void @at91_start_clock(ptr noundef %166) #5
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  %167 = getelementptr inbounds %struct.ohci_regs, ptr %165, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 0) #5, !srcloc !10
  %168 = getelementptr inbounds %struct.usb_hcd, ptr %107, i32 2, i32 20, i32 2
  store i32 512, ptr %168, align 8
  %169 = call i32 @usb_add_hcd(ptr noundef nonnull %107, i32 noundef %104, i32 noundef 128) #5
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %152
  %172 = load ptr, ptr %107, align 8
  %173 = call i32 @device_wakeup_enable(ptr noundef %172) #5
  br label %177

174:                                              ; preds = %152
  call fastcc void @at91_stop_hc(ptr noundef %0) #5
  br label %175

175:                                              ; preds = %174, %142, %135, %128, %115
  %176 = phi i32 [ %116, %115 ], [ %130, %128 ], [ %137, %135 ], [ %144, %142 ], [ %169, %174 ]
  call void @usb_put_hcd(ptr noundef nonnull %107) #5
  br label %177

177:                                              ; preds = %175, %171, %106, %102, %10, %1
  %178 = phi i32 [ -12, %10 ], [ %8, %1 ], [ %176, %175 ], [ 0, %171 ], [ %104, %102 ], [ -12, %106 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %178
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_hcd_at91_drv_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  tail call void @gpiod_set_value(ptr noundef %6, i32 noundef 0) #5
  %7 = getelementptr [3 x ptr], ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 0) #5
  %9 = getelementptr [3 x ptr], ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 0) #5
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %13 = tail call i32 @device_init_wakeup(ptr noundef %12, i1 noundef zeroext false) #5
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %15 = load ptr, ptr %14, align 8
  tail call void @usb_remove_hcd(ptr noundef %15) #5
  tail call fastcc void @at91_stop_hc(ptr noundef %0) #5
  tail call void @usb_put_hcd(ptr noundef %15) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_hcd_at91_overcurrent_irq(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.at91_usbh_data, ptr %5, i32 0, i32 1, i32 0
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @gpiod_to_irq(ptr noundef %7) #5
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = getelementptr %struct.at91_usbh_data, ptr %5, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @gpiod_to_irq(ptr noundef %12) #5
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = getelementptr %struct.at91_usbh_data, ptr %5, i32 0, i32 1, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @gpiod_to_irq(ptr noundef %17) #5
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #6
  br label %32

21:                                               ; preds = %15, %10, %2
  %22 = phi i32 [ 0, %2 ], [ 1, %10 ], [ 2, %15 ]
  %23 = getelementptr %struct.at91_usbh_data, ptr %5, i32 0, i32 1, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @gpiod_get_value(ptr noundef %24) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = getelementptr [3 x ptr], ptr %5, i32 0, i32 %22
  %29 = load ptr, ptr %28, align 4
  tail call void @gpiod_set_value(ptr noundef %29, i32 noundef 0) #5
  %30 = getelementptr %struct.at91_usbh_data, ptr %5, i32 0, i32 4, i32 %22
  store i8 1, ptr %30, align 1
  %31 = getelementptr %struct.at91_usbh_data, ptr %5, i32 0, i32 5, i32 %22
  store i8 1, ptr %31, align 1
  br label %32

32:                                               ; preds = %27, %21, %20
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at91_stop_hc(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @usb_hcd_platform_shutdown(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 25
  %5 = load i8, ptr %4, align 4, !range !11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 22
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 23
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #5
  tail call void @clk_unprepare(ptr noundef %10) #5
  %11 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 24
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #5
  tail call void @clk_unprepare(ptr noundef %13) #5
  store i8 0, ptr %4, align 4
  br label %14

14:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at91_start_clock(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ohci_at91_priv, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 4, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ohci_at91_priv, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef 48000000) #5
  %9 = getelementptr inbounds %struct.ohci_at91_priv, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = tail call i32 @clk_enable(ptr noundef %10) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #5
  br label %17

17:                                               ; preds = %16, %13, %5
  %18 = load ptr, ptr %0, align 4
  %19 = tail call i32 @clk_prepare(ptr noundef %18) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = tail call i32 @clk_enable(ptr noundef %18) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef %18) #5
  br label %25

25:                                               ; preds = %24, %21, %17
  %26 = load ptr, ptr %6, align 4
  %27 = tail call i32 @clk_prepare(ptr noundef %26) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = tail call i32 @clk_enable(ptr noundef %26) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @clk_unprepare(ptr noundef %26) #5
  br label %33

33:                                               ; preds = %32, %29, %25
  store i8 1, ptr %2, align 4
  br label %34

34:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_hcd_at91_drv_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 2, i32 22
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %1
  %16 = getelementptr inbounds %struct.ohci_at91_priv, ptr %6, i32 0, i32 4
  store i8 0, ptr %16, align 1
  br label %28

17:                                               ; preds = %11
  %18 = tail call i32 @at91_suspend_entering_slow_clock() #5
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.ohci_at91_priv, ptr %6, i32 0, i32 4
  %21 = zext i1 %19 to i8
  store i8 %21, ptr %20, align 1
  br i1 %19, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 15
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @irq_set_irq_wake(i32 noundef %24, i32 noundef 1) #5
  %26 = load i8, ptr %20, align 1, !range !11
  %27 = icmp ne i8 %26, 0
  br label %28

28:                                               ; preds = %22, %17, %15
  %29 = phi i1 [ false, %15 ], [ %27, %22 ], [ false, %17 ]
  %30 = phi ptr [ %16, %15 ], [ %20, %22 ], [ %20, %17 ]
  %31 = tail call i32 @ohci_suspend(ptr noundef %5, i1 noundef zeroext %29) #5
  %32 = icmp eq i32 %31, 0
  %33 = load i8, ptr %30, align 1, !range !11
  %34 = icmp eq i8 %33, 0
  br i1 %32, label %40, label %35

35:                                               ; preds = %28
  br i1 %34, label %79, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 15
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @irq_set_irq_wake(i32 noundef %38, i32 noundef 0) #5
  br label %79

40:                                               ; preds = %28
  br i1 %34, label %41, label %67

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 2, i32 3
  store i32 0, ptr %42, align 8
  %43 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ohci_regs, ptr %44, i32 0, i32 1
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  tail call void @msleep(i32 noundef 1) #5
  %47 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 2, i32 26
  %48 = load ptr, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %41
  %51 = call i32 @regmap_read(ptr noundef nonnull %48, i32 noundef 16, ptr noundef nonnull %3) #5
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, ptr %3, align 4
  %55 = or i32 %54, 1792
  store i32 %55, ptr %3, align 4
  %56 = call i32 @regmap_write(ptr noundef nonnull %48, i32 noundef 16, i32 noundef %55) #5
  br label %57

57:                                               ; preds = %53, %50, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %58 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 2, i32 25
  %59 = load i8, ptr %58, align 4, !range !11
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 2, i32 23
  %63 = load ptr, ptr %62, align 4
  call void @clk_disable(ptr noundef %63) #5
  call void @clk_unprepare(ptr noundef %63) #5
  %64 = load ptr, ptr %6, align 4
  call void @clk_disable(ptr noundef %64) #5
  call void @clk_unprepare(ptr noundef %64) #5
  %65 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 2, i32 24
  %66 = load ptr, ptr %65, align 4
  call void @clk_disable(ptr noundef %66) #5
  call void @clk_unprepare(ptr noundef %66) #5
  store i8 0, ptr %58, align 4
  br label %79

67:                                               ; preds = %40
  %68 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 2, i32 26
  %69 = load ptr, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = call i32 @regmap_read(ptr noundef nonnull %69, i32 noundef 16, ptr noundef nonnull %2) #5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, ptr %2, align 4
  %76 = or i32 %75, 1792
  store i32 %76, ptr %2, align 4
  %77 = call i32 @regmap_write(ptr noundef nonnull %69, i32 noundef 16, i32 noundef %76) #5
  br label %78

78:                                               ; preds = %74, %71, %67
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %79

79:                                               ; preds = %78, %61, %57, %36, %35
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_hcd_at91_drv_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 2, i32 22
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 2, i32 26
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = call i32 @regmap_read(ptr noundef nonnull %7, i32 noundef 16, ptr noundef nonnull %2) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, -1793
  store i32 %14, ptr %2, align 4
  %15 = call i32 @regmap_write(ptr noundef nonnull %7, i32 noundef 16, i32 noundef %14) #5
  br label %16

16:                                               ; preds = %12, %9, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %17 = getelementptr inbounds %struct.ohci_at91_priv, ptr %5, i32 0, i32 4
  %18 = load i8, ptr %17, align 1, !range !11
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = call i32 @irq_set_irq_wake(i32 noundef %22, i32 noundef 0) #5
  br label %25

24:                                               ; preds = %16
  call fastcc void @at91_start_clock(ptr noundef %5)
  br label %25

25:                                               ; preds = %24, %20
  %26 = call i32 @ohci_resume(ptr noundef %4, i1 noundef zeroext false) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @at91_suspend_entering_slow_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i64 2153364486}
!10 = !{i64 5000051}
!11 = !{i8 0, i8 2}
!12 = !{i64 5000469}
!13 = !{i64 2153358436}
