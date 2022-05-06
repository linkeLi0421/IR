; ModuleID = '/llk/IR/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ns2_phy_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ns2_phy_data = type { ptr, ptr, i32 }

@__initcall__kmod_phy_bcm_ns2_usbdrd__248_422_ns2_drd_phy_driver_init6 = internal global ptr @ns2_drd_phy_driver_init, section ".initcall6.init", align 4
@ns2_drd_phy_driver = internal global %struct.platform_driver { ptr @ns2_drd_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ns2_drd_phy_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ns2_drd_phy_driver_exit = internal global ptr @ns2_drd_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias249 = internal constant [50 x i8] c"phy_bcm_ns2_usbdrd.alias=platform:bcm-ns2-drd-phy\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [35 x i8] c"phy_bcm_ns2_usbdrd.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [60 x i8] c"phy_bcm_ns2_usbdrd.description=Broadcom NS2 USB2 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [64 x i8] c"phy_bcm_ns2_usbdrd.file=drivers/phy/broadcom/phy-bcm-ns2-usbdrd\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [34 x i8] c"phy_bcm_ns2_usbdrd.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"bcm-ns2-usbphy\00", align 1
@ns2_drd_phy_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ns2-drd-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"icfg\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"rst-ctrl\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"crmu-ctrl\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"usb2-strap\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"failed to get ID GPIO\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"failed to get VBUS GPIO\0A\00", align 1
@usb_extcon_cable = internal constant [3 x i32] [i32 1, i32 2, i32 0], align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"failed to allocate extcon device\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"failed to get ID IRQ\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"usb_id\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"failed to request handler for ID IRQ\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"usb_vbus\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"failed to request handler for VBUS IRQ\0A\00", align 1
@ops = internal constant %struct.phy_ops { ptr @ns2_drd_phy_init, ptr null, ptr @ns2_drd_phy_poweron, ptr @ns2_drd_phy_poweroff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"Failed to create usb drd phy\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Failed to register as phy provider\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Registered NS2 DRD Phy device\0A\00", align 1
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = private unnamed_addr constant [24 x i8] c"\013Invalid extcon event\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Phy PLL lock failed\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias249, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_ns2_drd_phy_driver_exit, ptr @__initcall__kmod_phy_bcm_ns2_usbdrd__248_422_ns2_drd_phy_driver_init6, ptr @ns2_drd_phy_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ns2_drd_phy_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ns2_drd_phy_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ns2_drd_phy_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ns2_drd_phy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ns2_drd_phy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 88, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %116, label %5

5:                                                ; preds = %1
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 12, i32 noundef 3520) #4
  %7 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 4
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %116, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.1) #4
  store ptr %10, ptr %3, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = ptrtoint ptr %10 to i32
  br label %116

14:                                               ; preds = %9
  %15 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.2) #4
  %16 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = ptrtoint ptr %15 to i32
  br label %116

20:                                               ; preds = %14
  %21 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.3) #4
  %22 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 2
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = ptrtoint ptr %21 to i32
  br label %116

26:                                               ; preds = %20
  %27 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.4) #4
  %28 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 3
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = ptrtoint ptr %27 to i32
  br label %116

32:                                               ; preds = %26
  %33 = tail call ptr @devm_gpiod_get(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 1) #4
  %34 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 7
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #5
  %37 = load ptr, ptr %34, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %116

39:                                               ; preds = %32
  %40 = tail call ptr @devm_gpiod_get(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 1) #4
  %41 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 6
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #5
  %44 = load ptr, ptr %41, align 4
  %45 = ptrtoint ptr %44 to i32
  br label %116

46:                                               ; preds = %39
  %47 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %2, ptr noundef nonnull @usb_extcon_cable) #4
  %48 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 5
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #5
  br label %116

51:                                               ; preds = %46
  %52 = tail call i32 @devm_extcon_dev_register(ptr noundef %2, ptr noundef %47) #4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #5
  br label %116

55:                                               ; preds = %51
  %56 = load ptr, ptr %34, align 4
  %57 = tail call i32 @gpiod_set_debounce(ptr noundef %56, i32 noundef 20000) #4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 10
  store i32 2, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 11
  store i32 -32, ptr %62, align 4
  %63 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 11, i32 0, i32 1
  store volatile ptr %63, ptr %63, align 4
  %64 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 11, i32 0, i32 1, i32 1
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 11, i32 0, i32 2
  store ptr @extcon_work, ptr %65, align 4
  %66 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %66, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #4
  %67 = load ptr, ptr %34, align 4
  %68 = tail call i32 @gpiod_to_irq(ptr noundef %67) #4
  %69 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 8
  store i32 %68, ptr %69, align 4
  %70 = icmp slt i32 %68, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #5
  %72 = load i32, ptr %69, align 4
  br label %116

73:                                               ; preds = %61
  %74 = load ptr, ptr %41, align 4
  %75 = tail call i32 @gpiod_to_irq(ptr noundef %74) #4
  %76 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 9
  store i32 %75, ptr %76, align 4
  %77 = icmp slt i32 %75, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #5
  %79 = load i32, ptr %76, align 4
  br label %116

80:                                               ; preds = %73
  %81 = load i32, ptr %69, align 4
  %82 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %81, ptr noundef nonnull @gpio_irq_handler, ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.12, ptr noundef nonnull %3) #4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13) #5
  br label %116

85:                                               ; preds = %80
  %86 = load i32, ptr %76, align 4
  %87 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %86, ptr noundef nonnull @gpio_irq_handler, ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.14, ptr noundef nonnull %3) #4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.15) #5
  br label %116

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %91, align 8
  %92 = load ptr, ptr %22, align 4
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %94 = and i32 %93, -278529
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %95 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %94) #4, !srcloc !11
  %96 = load ptr, ptr %7, align 4
  %97 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %98 = load ptr, ptr %97, align 8
  %99 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef %98, ptr noundef nonnull @ops) #4
  %100 = getelementptr inbounds %struct.ns2_phy_data, ptr %96, i32 0, i32 1
  store ptr %99, ptr %100, align 4
  %101 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %102, label %105

102:                                              ; preds = %90
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.16) #5
  %103 = load ptr, ptr %100, align 4
  %104 = ptrtoint ptr %103 to i32
  br label %116

105:                                              ; preds = %90
  store ptr %3, ptr %96, align 4
  %106 = getelementptr inbounds %struct.device, ptr %99, i32 0, i32 8
  store ptr %96, ptr %106, align 8
  %107 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #4
  %108 = icmp ugt ptr %107, inttoptr (i32 -4096 to ptr)
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.17) #5
  %110 = ptrtoint ptr %107 to i32
  br label %116

111:                                              ; preds = %105
  store ptr %3, ptr %91, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.18) #5
  %112 = load ptr, ptr @system_power_efficient_wq, align 4
  %113 = getelementptr inbounds %struct.ns2_phy_driver, ptr %3, i32 0, i32 10
  %114 = load i32, ptr %113, align 4
  %115 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %112, ptr noundef %62, i32 noundef %114) #4
  br label %116

116:                                              ; preds = %111, %109, %102, %89, %84, %78, %71, %54, %50, %43, %36, %30, %24, %18, %12, %5, %1
  %117 = phi i32 [ %13, %12 ], [ %19, %18 ], [ %25, %24 ], [ %31, %30 ], [ %38, %36 ], [ %45, %43 ], [ -12, %50 ], [ %52, %54 ], [ %72, %71 ], [ %79, %78 ], [ %82, %84 ], [ %87, %89 ], [ %104, %102 ], [ %110, %109 ], [ 0, %111 ], [ -12, %1 ], [ -12, %5 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_debounce(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @extcon_work(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -44
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %4) #4
  %6 = getelementptr i8, ptr %0, i32 -20
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %7) #4
  %9 = icmp eq i32 %5, 0
  %10 = icmp ne i32 %8, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 -24
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @extcon_set_state_sync(ptr noundef %14, i32 noundef 2, i1 noundef zeroext true) #4
  %16 = getelementptr i8, ptr %0, i32 -28
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ns2_phy_data, ptr %17, i32 0, i32 2
  store i32 1, ptr %18, align 4
  tail call fastcc void @connect_change(ptr noundef %2)
  br label %37

19:                                               ; preds = %1
  %20 = select i1 %9, i1 true, i1 %10
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = getelementptr i8, ptr %0, i32 -24
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @extcon_set_state_sync(ptr noundef %23, i32 noundef 2, i1 noundef zeroext false) #4
  %25 = load ptr, ptr %22, align 4
  %26 = tail call i32 @extcon_set_state_sync(ptr noundef %25, i32 noundef 1, i1 noundef zeroext false) #4
  br label %37

27:                                               ; preds = %19
  %28 = icmp ne i32 %5, 0
  %29 = select i1 %28, i1 %10, i1 false
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %0, i32 -24
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @extcon_set_state_sync(ptr noundef %32, i32 noundef 1, i1 noundef zeroext true) #4
  %34 = getelementptr i8, ptr %0, i32 -28
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ns2_phy_data, ptr %35, i32 0, i32 2
  store i32 0, ptr %36, align 4
  tail call fastcc void @connect_change(ptr noundef %2)
  br label %37

37:                                               ; preds = %30, %27, %21, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr @system_power_efficient_wq, align 4
  %4 = getelementptr inbounds %struct.ns2_phy_driver, ptr %1, i32 0, i32 11
  %5 = getelementptr inbounds %struct.ns2_phy_driver, ptr %1, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %4, i32 noundef %6) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @connect_change(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ns2_phy_driver, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ns2_phy_data, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr i8, ptr %6, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  switch i32 %5, label %40 [
    i32 0, label %9
    i32 1, label %22
  ]

9:                                                ; preds = %1
  %10 = and i32 %8, -61
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #4, !srcloc !11
  %13 = or i32 %10, 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #4, !srcloc !11
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr i8, ptr %16, i32 28
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !15
  %19 = or i32 %18, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr i8, ptr %20, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #4, !srcloc !11
  br label %42

22:                                               ; preds = %1
  %23 = and i32 %8, -61
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr i8, ptr %24, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #4, !srcloc !11
  %26 = or i32 %23, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr i8, ptr %27, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #4, !srcloc !11
  %29 = getelementptr inbounds %struct.ns2_phy_driver, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !19
  %32 = or i32 %31, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %33 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #4, !srcloc !11
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr i8, ptr %34, i32 28
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !21
  %37 = and i32 %36, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr i8, ptr %38, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #4, !srcloc !11
  br label %42

40:                                               ; preds = %1
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #5
  br label %42

42:                                               ; preds = %40, %22, %9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ns2_drd_phy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !23
  %8 = getelementptr inbounds %struct.ns2_phy_data, ptr %3, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  %11 = and i32 %7, -61
  %12 = select i1 %10, i32 12, i32 48
  %13 = or i32 %12, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ns2_drd_phy_poweron(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ns2_phy_data, ptr %3, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #4
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 28
  br i1 %7, label %10, label %49

10:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 2055) #4, !srcloc !11
  %11 = getelementptr inbounds %struct.ns2_phy_driver, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !25
  %14 = and i32 %13, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %15 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #4, !srcloc !11
  %16 = getelementptr inbounds %struct.ns2_phy_driver, ptr %4, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !27
  %19 = or i32 %18, 1310720
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %20 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #4, !srcloc !11
  %21 = load ptr, ptr %16, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !29
  %23 = or i32 %22, 49152
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %24 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #4, !srcloc !11
  %25 = tail call i64 @ktime_get() #4
  %26 = add i64 %25, 1000000
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 24
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !31
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %90

32:                                               ; preds = %35, %10
  %33 = tail call i64 @ktime_get() #4
  %34 = icmp sgt i64 %33, %26
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #4
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr i8, ptr %37, i32 24
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !31
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %32, label %90

42:                                               ; preds = %32
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr i8, ptr %43, i32 24
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !32
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %90

48:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20) #5
  br label %90

49:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 2051) #4, !srcloc !11
  %50 = getelementptr inbounds %struct.ns2_phy_driver, ptr %4, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !33
  %53 = or i32 %52, 262144
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %54 = load ptr, ptr %50, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %53) #4, !srcloc !11
  %55 = tail call i64 @ktime_get() #4
  %56 = add i64 %55, 1000000
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr i8, ptr %57, i32 24
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !31
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %65, %49
  %63 = tail call i64 @ktime_get() #4
  %64 = icmp sgt i64 %63, %56
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748) #4
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr i8, ptr %67, i32 24
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !31
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %62, label %79

72:                                               ; preds = %62
  %73 = load ptr, ptr %4, align 4
  %74 = getelementptr i8, ptr %73, i32 24
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !32
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20) #5
  br label %90

79:                                               ; preds = %72, %65, %49
  %80 = getelementptr inbounds %struct.ns2_phy_driver, ptr %4, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !35
  %83 = and i32 %82, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %84 = load ptr, ptr %80, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %83) #4, !srcloc !11
  %85 = getelementptr inbounds %struct.ns2_phy_driver, ptr %4, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !37
  %88 = or i32 %87, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %89 = load ptr, ptr %85, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %88) #4, !srcloc !11
  br label %90

90:                                               ; preds = %79, %78, %48, %42, %35, %10
  %91 = phi i32 [ -110, %48 ], [ -110, %78 ], [ 0, %79 ], [ 0, %10 ], [ 0, %42 ], [ 0, %35 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ns2_drd_phy_poweroff(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ns2_phy_driver, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !39
  %8 = and i32 %7, -262145
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #4, !srcloc !11
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !41
  %12 = and i32 %11, -1048577
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %13 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #4, !srcloc !11
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !43
  %17 = and i32 %16, -125
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{i64 3718692}
!9 = !{i64 2153803888}
!10 = !{i64 2153804246}
!11 = !{i64 3718274}
!12 = !{i64 2153789108}
!13 = !{i64 2153789646}
!14 = !{i64 2153790321}
!15 = !{i64 2153790829}
!16 = !{i64 2153791111}
!17 = !{i64 2153791788}
!18 = !{i64 2153792463}
!19 = !{i64 2153792954}
!20 = !{i64 2153793229}
!21 = !{i64 2153793733}
!22 = !{i64 2153794015}
!23 = !{i64 2153778431}
!24 = !{i64 2153779305}
!25 = !{i64 2153782789}
!26 = !{i64 2153783062}
!27 = !{i64 2153783546}
!28 = !{i64 2153783904}
!29 = !{i64 2153784387}
!30 = !{i64 2153784745}
!31 = !{i64 2153777095}
!32 = !{i64 2153777468}
!33 = !{i64 2153786194}
!34 = !{i64 2153786468}
!35 = !{i64 2153787569}
!36 = !{i64 2153787842}
!37 = !{i64 2153788329}
!38 = !{i64 2153788604}
!39 = !{i64 2153779793}
!40 = !{i64 2153780067}
!41 = !{i64 2153780550}
!42 = !{i64 2153780824}
!43 = !{i64 2153781327}
!44 = !{i64 2153781945}
