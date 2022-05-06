; ModuleID = '/llk/IR/drivers/usb/phy/phy-ab8500-usb.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-ab8500-usb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }
%struct.ab8500_usb = type { %struct.usb_phy, ptr, ptr, i32, %struct.work_struct, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i8, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_ab8500_usb__252_1003_ab8500_usb_init4 = internal global ptr @ab8500_usb_init, section ".initcall4.init", align 4
@ab8500_usb_driver = internal global %struct.platform_driver { ptr @ab8500_usb_probe, ptr @ab8500_usb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ab8500_usb_devtype, i8 0 }, align 4
@__exitcall_ab8500_usb_exit = internal global ptr @ab8500_usb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author253 = internal constant [37 x i8] c"phy_ab8500_usb.author=ST-Ericsson AB\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [64 x i8] c"phy_ab8500_usb.description=AB8500 family usb transceiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [51 x i8] c"phy_ab8500_usb.file=drivers/usb/phy/phy-ab8500-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [27 x i8] c"phy_ab8500_usb.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"abx5x0-usb\00", align 1
@ab8500_usb_devtype = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"ab8500-usb\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unsupported AB8500 chip rev=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ab8500\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sysclk\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Could not get sysclk.\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Can't register transceiver\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"revision 0x%2x driver initialized\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"could not set pins to sleep state\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"Failed to set the Vintcore to %duV, ret=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Failed to set optimum mode (ret=%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"v-ape\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Could not get v-ape supply\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"vddulpivio18\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Could not get vddulpivio18 supply\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"musb_1v8\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Could not get musb_1v8 supply\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"USB_LINK_STATUS\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"usb-link-status\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"request_irq failed for link status irq\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"ID_WAKEUP_F\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"usb-id-fall\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"request_irq failed for ID fall irq\0A\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"VBUS_DET_F\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"usb-vbus-fall\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"request_irq failed for Vbus fall irq\0A\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"Failed to enable bank12 access err=%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"Failed to set PHY_TUNE1 register err=%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"Failed to set PHY_TUNE2 register err=%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"Failed to set PHY_TUNE3 register err=%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"Failed to switch bank12 access err=%d\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"could not get/set default pinstate\0A\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"can't prepare/enable clock\0A\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"Failed to enable v-ape\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Failed to get v_ulpi voltage\0A\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"Failed to set the Vintcore to 1.3V, ret=%d\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"Failed to enable vddulpivio18\0A\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"Vintcore is not set to 1.3V volt=%d\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"Failed to enable musb_1v8\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_ab8500_usb_exit, ptr @__initcall__kmod_phy_ab8500_usb__252_1003_ab8500_usb_init4, ptr @ab8500_usb_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ab8500_usb_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_usb_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ab8500_usb_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ab8500_usb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_usb_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @abx500_get_chip_id(ptr noundef %2) #6
  %8 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 7
  %13 = load i8, ptr %12, align 4
  %14 = icmp ugt i8 %13, 17
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %7) #7
  br label %139

16:                                               ; preds = %11, %1
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 264, i32 noundef 3520) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %139, label %19

19:                                               ; preds = %16
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %139, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ab8500_usb, ptr %17, i32 0, i32 1
  store ptr %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ab8500_usb, ptr %17, i32 0, i32 2
  store ptr %6, ptr %24, align 4
  store ptr %2, ptr %17, align 4
  %25 = getelementptr inbounds %struct.usb_phy, ptr %17, i32 0, i32 5
  store ptr %20, ptr %25, align 4
  %26 = getelementptr inbounds %struct.usb_phy, ptr %17, i32 0, i32 1
  store ptr @.str.2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.usb_phy, ptr %17, i32 0, i32 26
  store ptr @ab8500_usb_set_suspend, ptr %27, align 4
  %28 = getelementptr inbounds %struct.usb_otg, ptr %20, i32 0, i32 5
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.usb_otg, ptr %20, i32 0, i32 2
  store ptr %17, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_otg, ptr %20, i32 0, i32 6
  store ptr @ab8500_usb_set_host, ptr %30, align 4
  %31 = getelementptr inbounds %struct.usb_otg, ptr %20, i32 0, i32 7
  store ptr @ab8500_usb_set_peripheral, ptr %31, align 4
  %32 = load i32, ptr %8, align 4
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %34, label %48

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.ab8500_usb, ptr %17, i32 0, i32 15
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 23
  store i32 %37, ptr %35, align 4
  %38 = load i32, ptr %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 7
  %42 = load i8, ptr %41, align 4
  %43 = icmp ugt i8 %42, 32
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ab8500_usb, ptr %17, i32 0, i32 15
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, -17
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %44, %40, %34, %22
  %49 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %17, ptr %49, align 8
  %50 = getelementptr inbounds %struct.ab8500_usb, ptr %17, i32 0, i32 4
  store i32 -32, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ab8500_usb, ptr %17, i32 0, i32 4, i32 1
  store volatile ptr %51, ptr %51, align 4
  %52 = getelementptr inbounds %struct.ab8500_usb, ptr %17, i32 0, i32 4, i32 1, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.ab8500_usb, ptr %17, i32 0, i32 4, i32 2
  store ptr @ab8500_usb_phy_disable_work, ptr %53, align 4
  %54 = tail call ptr @devm_regulator_get(ptr noundef %2, ptr noundef nonnull @.str.11) #6
  %55 = getelementptr inbounds %struct.ab8500_usb, ptr %17, i32 0, i32 7
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  %57 = load ptr, ptr %23, align 4
  br i1 %56, label %58, label %59

58:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.12) #7
  br label %71

59:                                               ; preds = %48
  %60 = tail call ptr @devm_regulator_get(ptr noundef %57, ptr noundef nonnull @.str.13) #6
  %61 = getelementptr inbounds %struct.ab8500_usb, ptr %17, i32 0, i32 9
  store ptr %60, ptr %61, align 4
  %62 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  %63 = load ptr, ptr %23, align 4
  br i1 %62, label %64, label %65

64:                                               ; preds = %59
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.14) #7
  br label %71

65:                                               ; preds = %59
  %66 = tail call ptr @devm_regulator_get(ptr noundef %63, ptr noundef nonnull @.str.15) #6
  %67 = getelementptr inbounds %struct.ab8500_usb, ptr %17, i32 0, i32 8
  store ptr %66, ptr %67, align 4
  %68 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.16) #7
  br label %71

71:                                               ; preds = %69, %64, %58
  %72 = phi ptr [ %67, %69 ], [ %61, %64 ], [ %55, %58 ]
  %73 = load ptr, ptr %72, align 4
  %74 = ptrtoint ptr %73 to i32
  %75 = icmp eq ptr %73, null
  br i1 %75, label %76, label %139

76:                                               ; preds = %71, %65
  %77 = load ptr, ptr %23, align 4
  %78 = tail call ptr @devm_clk_get(ptr noundef %77, ptr noundef nonnull @.str.3) #6
  %79 = getelementptr inbounds %struct.ab8500_usb, ptr %17, i32 0, i32 6
  store ptr %78, ptr %79, align 4
  %80 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.4) #7
  %83 = load ptr, ptr %79, align 4
  %84 = ptrtoint ptr %83 to i32
  br label %139

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.ab8500_usb, ptr %17, i32 0, i32 15
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.17) #6
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %139, label %93

93:                                               ; preds = %90
  %94 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %91, ptr noundef null, ptr noundef nonnull @ab8500_usb_link_status_irq, i32 noundef 24704, ptr noundef nonnull @.str.18, ptr noundef nonnull %17) #6
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %120, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %86, align 4
  br label %98

98:                                               ; preds = %96, %85
  %99 = phi i32 [ %97, %96 ], [ %87, %85 ]
  %100 = and i32 %99, 2
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.20) #6
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %139, label %105

105:                                              ; preds = %102
  %106 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %103, ptr noundef null, ptr noundef nonnull @ab8500_usb_disconnect_irq, i32 noundef 24704, ptr noundef nonnull @.str.21, ptr noundef nonnull %17) #6
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %105
  %109 = load i32, ptr %86, align 4
  br label %110

110:                                              ; preds = %108, %98
  %111 = phi i32 [ %109, %108 ], [ %99, %98 ]
  %112 = and i32 %111, 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %110
  %115 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.23) #6
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %139, label %117

117:                                              ; preds = %114
  %118 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %115, ptr noundef null, ptr noundef nonnull @ab8500_usb_disconnect_irq, i32 noundef 24704, ptr noundef nonnull @.str.24, ptr noundef nonnull %17) #6
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117, %105, %93
  %121 = phi ptr [ @.str.19, %93 ], [ @.str.22, %105 ], [ @.str.25, %117 ]
  %122 = phi i32 [ %94, %93 ], [ %106, %105 ], [ %118, %117 ]
  %123 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull %121) #7
  br label %139

124:                                              ; preds = %117, %110
  %125 = tail call i32 @usb_add_phy(ptr noundef nonnull %17, i32 noundef 1) #6
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #7
  br label %139

128:                                              ; preds = %124
  %129 = load ptr, ptr %24, align 4
  %130 = getelementptr inbounds %struct.ab8500, ptr %129, i32 0, i32 6
  %131 = load i32, ptr %130, align 4
  switch i32 %131, label %138 [
    i32 0, label %132
    i32 1, label %137
  ]

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.ab8500, ptr %129, i32 0, i32 7
  %134 = load i8, ptr %133, align 4
  %135 = icmp ugt i8 %134, 32
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  tail call fastcc void @ab8500_usb_set_ab8500_tuning_values(ptr noundef nonnull %17)
  br label %138

137:                                              ; preds = %128
  tail call fastcc void @ab8500_usb_set_ab8505_tuning_values(ptr noundef nonnull %17)
  br label %138

138:                                              ; preds = %137, %136, %132, %128
  tail call fastcc void @ab8500_usb_wd_workaround(ptr noundef nonnull %17)
  tail call fastcc void @ab8500_usb_restart_phy(ptr noundef nonnull %17)
  tail call fastcc void @abx500_usb_link_status_update(ptr noundef nonnull %17)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %7) #7
  br label %139

139:                                              ; preds = %138, %127, %120, %114, %102, %90, %81, %71, %19, %16, %15
  %140 = phi i32 [ -19, %15 ], [ %84, %81 ], [ %125, %127 ], [ 0, %138 ], [ -12, %16 ], [ -12, %19 ], [ %74, %71 ], [ %122, %120 ], [ %115, %114 ], [ %103, %102 ], [ %91, %90 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_usb_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ab8500_usb, ptr %3, i32 0, i32 4
  %5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %4) #6
  tail call void @usb_remove_phy(ptr noundef %3) #6
  %6 = getelementptr inbounds %struct.ab8500_usb, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %11 [
    i32 2, label %9
    i32 1, label %8
  ]

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %1
  %10 = phi i1 [ false, %8 ], [ true, %1 ]
  tail call fastcc void @ab8500_usb_phy_disable(ptr noundef %3, i1 noundef zeroext %10)
  br label %11

11:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_chip_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ab8500_usb_set_suspend(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_usb_set_host(ptr noundef readonly %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_phy, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_otg, ptr %8, i32 0, i32 3
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ab8500_usb, ptr %6, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = icmp ne ptr %1, null
  %14 = or i1 %13, %12
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  store i32 0, ptr %10, align 4
  %16 = getelementptr inbounds %struct.ab8500_usb, ptr %6, i32 0, i32 4
  %17 = load ptr, ptr @system_wq, align 4
  %18 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %17, ptr noundef %16) #6
  br label %19

19:                                               ; preds = %15, %4, %2
  %20 = phi i32 [ -19, %2 ], [ 0, %15 ], [ 0, %4 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_usb_set_peripheral(ptr noundef readonly %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_phy, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_otg, ptr %8, i32 0, i32 4
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ab8500_usb, ptr %6, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = icmp ne ptr %1, null
  %14 = or i1 %13, %12
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  store i32 0, ptr %10, align 4
  %16 = getelementptr inbounds %struct.ab8500_usb, ptr %6, i32 0, i32 4
  %17 = load ptr, ptr @system_wq, align 4
  %18 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %17, ptr noundef %16) #6
  br label %19

19:                                               ; preds = %15, %4, %2
  %20 = phi i32 [ -19, %2 ], [ 0, %15 ], [ 0, %4 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ab8500_usb_phy_disable_work(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -204
  %3 = getelementptr i8, ptr %0, i32 -184
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_otg, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  tail call fastcc void @ab8500_usb_phy_disable(ptr noundef %2, i1 noundef zeroext true)
  %9 = load ptr, ptr %3, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi ptr [ %9, %8 ], [ %4, %1 ]
  %12 = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call fastcc void @ab8500_usb_phy_disable(ptr noundef %2, i1 noundef zeroext false)
  br label %16

16:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ab8500_usb_set_ab8500_tuning_values(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @abx500_set_register_interruptible(ptr noundef %3, i8 noundef zeroext 17, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.26, i32 noundef %4) #7
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 @abx500_set_register_interruptible(ptr noundef %9, i8 noundef zeroext 18, i8 noundef zeroext 5, i8 noundef zeroext -56) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.27, i32 noundef %10) #7
  br label %14

14:                                               ; preds = %12, %8
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 @abx500_set_register_interruptible(ptr noundef %15, i8 noundef zeroext 18, i8 noundef zeroext 6, i8 noundef zeroext 0) #6
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.28, i32 noundef %16) #7
  br label %20

20:                                               ; preds = %18, %14
  %21 = load ptr, ptr %2, align 4
  %22 = tail call i32 @abx500_set_register_interruptible(ptr noundef %21, i8 noundef zeroext 18, i8 noundef zeroext 7, i8 noundef zeroext 120) #6
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.29, i32 noundef %22) #7
  br label %26

26:                                               ; preds = %24, %20
  %27 = load ptr, ptr %2, align 4
  %28 = tail call i32 @abx500_set_register_interruptible(ptr noundef %27, i8 noundef zeroext 17, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.30, i32 noundef %28) #7
  br label %32

32:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ab8500_usb_set_ab8505_tuning_values(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %3, i8 noundef zeroext 17, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.26, i32 noundef %4) #7
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %9, i8 noundef zeroext 18, i8 noundef zeroext 5, i8 noundef zeroext -56, i8 noundef zeroext -56) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.27, i32 noundef %10) #7
  br label %14

14:                                               ; preds = %12, %8
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %15, i8 noundef zeroext 18, i8 noundef zeroext 6, i8 noundef zeroext 96, i8 noundef zeroext 96) #6
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.28, i32 noundef %16) #7
  br label %20

20:                                               ; preds = %18, %14
  %21 = load ptr, ptr %2, align 4
  %22 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %21, i8 noundef zeroext 18, i8 noundef zeroext 7, i8 noundef zeroext -4, i8 noundef zeroext -128) #6
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.29, i32 noundef %22) #7
  br label %26

26:                                               ; preds = %24, %20
  %27 = load ptr, ptr %2, align 4
  %28 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %27, i8 noundef zeroext 17, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.30, i32 noundef %28) #7
  br label %32

32:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ab8500_usb_wd_workaround(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @abx500_set_register_interruptible(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 21474800) #6
  %6 = load ptr, ptr %2, align 4
  %7 = tail call i32 @abx500_set_register_interruptible(ptr noundef %6, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 3) #6
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #6
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 @abx500_set_register_interruptible(ptr noundef %9, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ab8500_usb_restart_phy(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %3, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext 2, i8 noundef zeroext 2) #6
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 21474800) #6
  %6 = load ptr, ptr %2, align 4
  %7 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %6, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext 2, i8 noundef zeroext 0) #6
  %8 = load ptr, ptr %2, align 4
  %9 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %8, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 21474800) #6
  %11 = load ptr, ptr %2, align 4
  %12 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %11, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @abx500_usb_link_status_update(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ab8500, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %120 [
    i32 0, label %7
    i32 1, label %64
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @abx500_get_register_interruptible(ptr noundef %9, i8 noundef zeroext 5, i8 noundef zeroext -128, ptr noundef nonnull %2) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %120, label %12

12:                                               ; preds = %7
  %13 = load i8, ptr %2, align 1
  %14 = lshr i8 %13, 3
  %15 = and i8 %14, 15
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 13
  %20 = add nsw i32 %16, -1
  %21 = icmp ult i32 %20, 2
  %22 = and i1 %19, %21
  br i1 %22, label %120, label %23

23:                                               ; preds = %12
  %24 = icmp eq i32 %18, 8
  %25 = icmp eq i8 %15, 1
  %26 = and i1 %24, %25
  br i1 %26, label %120, label %27

27:                                               ; preds = %23
  store i32 %16, ptr %17, align 4
  switch i32 %16, label %120 [
    i32 9, label %28
    i32 0, label %28
    i32 15, label %28
    i32 10, label %35
    i32 11, label %35
    i32 12, label %35
    i32 1, label %35
    i32 2, label %35
    i32 3, label %35
    i32 4, label %35
    i32 5, label %35
    i32 6, label %35
    i32 8, label %43
    i32 13, label %44
    i32 7, label %59
  ]

28:                                               ; preds = %27, %27, %27
  %29 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 5
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  store i8 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 3
  store i32 0, ptr %32, align 4
  %33 = load ptr, ptr %30, align 4
  %34 = getelementptr inbounds %struct.usb_otg, ptr %33, i32 0, i32 5
  store i32 1, ptr %34, align 4
  call void @usb_phy_set_event(ptr noundef %0, i32 noundef 0) #6
  br label %120

35:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27
  %36 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %120

39:                                               ; preds = %35
  store i32 1, ptr %36, align 4
  call fastcc void @ab8500_usb_phy_enable(ptr noundef %0, i1 noundef zeroext false) #6
  %40 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 18
  %41 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 3
  %42 = call i32 @atomic_notifier_call_chain(ptr noundef %40, i32 noundef 8, ptr noundef %41) #6
  call void @usb_phy_set_event(ptr noundef %0, i32 noundef 4) #6
  br label %120

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43, %27
  %45 = phi i32 [ 2, %27 ], [ 5, %43 ]
  %46 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  store i32 2, ptr %46, align 4
  call fastcc void @ab8500_usb_phy_enable(ptr noundef %0, i1 noundef zeroext true) #6
  %50 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 18
  %51 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 3
  %52 = call i32 @atomic_notifier_call_chain(ptr noundef %50, i32 noundef 8, ptr noundef %51) #6
  br label %53

53:                                               ; preds = %49, %44
  %54 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  store i8 1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 18
  %57 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 3
  %58 = call i32 @atomic_notifier_call_chain(ptr noundef %56, i32 noundef %45, ptr noundef %57) #6
  br label %120

59:                                               ; preds = %27
  %60 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 5
  store i32 3, ptr %60, align 4
  %61 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 18
  %62 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 3
  %63 = call i32 @atomic_notifier_call_chain(ptr noundef %61, i32 noundef 3, ptr noundef %62) #6
  call void @usb_phy_set_event(ptr noundef %0, i32 noundef 3) #6
  br label %120

64:                                               ; preds = %1
  %65 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 @abx500_get_register_interruptible(ptr noundef %66, i8 noundef zeroext 5, i8 noundef zeroext -108, ptr noundef nonnull %2) #6
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %120, label %69

69:                                               ; preds = %64
  %70 = load i8, ptr %2, align 1
  %71 = lshr i8 %70, 3
  %72 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 11
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 8
  %75 = icmp eq i8 %71, 1
  %76 = and i1 %75, %74
  br i1 %76, label %120, label %77

77:                                               ; preds = %69
  %78 = zext i8 %71 to i32
  store i32 %78, ptr %72, align 4
  switch i32 %78, label %120 [
    i32 9, label %79
    i32 0, label %79
    i32 5, label %79
    i32 6, label %79
    i32 11, label %79
    i32 12, label %79
    i32 10, label %86
    i32 1, label %86
    i32 2, label %86
    i32 3, label %86
    i32 4, label %86
    i32 8, label %94
    i32 22, label %94
    i32 13, label %95
    i32 7, label %110
    i32 25, label %115
    i32 26, label %115
  ]

79:                                               ; preds = %77, %77, %77, %77, %77, %77
  %80 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 5
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  store i8 0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 3
  store i32 0, ptr %83, align 4
  %84 = load ptr, ptr %81, align 4
  %85 = getelementptr inbounds %struct.usb_otg, ptr %84, i32 0, i32 5
  store i32 1, ptr %85, align 4
  call void @usb_phy_set_event(ptr noundef %0, i32 noundef 0) #6
  br label %120

86:                                               ; preds = %77, %77, %77, %77, %77
  %87 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %86
  store i32 1, ptr %87, align 4
  call fastcc void @ab8500_usb_phy_enable(ptr noundef %0, i1 noundef zeroext false) #6
  %91 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 18
  %92 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 3
  %93 = call i32 @atomic_notifier_call_chain(ptr noundef %91, i32 noundef 8, ptr noundef %92) #6
  call void @usb_phy_set_event(ptr noundef %0, i32 noundef 4) #6
  br label %120

94:                                               ; preds = %77, %77
  br label %95

95:                                               ; preds = %94, %77
  %96 = phi i32 [ 2, %77 ], [ 5, %94 ]
  %97 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 5
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  store i32 2, ptr %97, align 4
  call fastcc void @ab8500_usb_phy_enable(ptr noundef %0, i1 noundef zeroext true) #6
  %101 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 18
  %102 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 3
  %103 = call i32 @atomic_notifier_call_chain(ptr noundef %101, i32 noundef 8, ptr noundef %102) #6
  br label %104

104:                                              ; preds = %100, %95
  %105 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 5
  %106 = load ptr, ptr %105, align 4
  store i8 1, ptr %106, align 4
  %107 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 18
  %108 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 3
  %109 = call i32 @atomic_notifier_call_chain(ptr noundef %107, i32 noundef %96, ptr noundef %108) #6
  br label %120

110:                                              ; preds = %77
  %111 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 5
  store i32 3, ptr %111, align 4
  %112 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 18
  %113 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 3
  %114 = call i32 @atomic_notifier_call_chain(ptr noundef %112, i32 noundef 3, ptr noundef %113) #6
  call void @usb_phy_set_event(ptr noundef %0, i32 noundef 3) #6
  br label %120

115:                                              ; preds = %77, %77
  %116 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 5
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 4, ptr %116, align 4
  call fastcc void @ab8500_usb_phy_enable(ptr noundef %0, i1 noundef zeroext false) #6
  br label %120

120:                                              ; preds = %119, %115, %110, %104, %90, %86, %79, %77, %69, %64, %59, %53, %39, %35, %28, %27, %23, %12, %7, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ab8500_usb_phy_disable(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = select i1 %1, i8 1, i8 2
  %4 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ab8500, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ab8500, ptr %5, i32 0, i32 7
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 32
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %15, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext %3, i8 noundef zeroext %3) #6
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 21474800) #6
  br label %18

18:                                               ; preds = %13, %9, %2
  %19 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %20, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext %3, i8 noundef zeroext 0) #6
  %22 = load ptr, ptr %19, align 4
  %23 = tail call i32 @abx500_set_register_interruptible(ptr noundef %22, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 21474800) #6
  %25 = load ptr, ptr %19, align 4
  %26 = tail call i32 @abx500_set_register_interruptible(ptr noundef %25, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 3) #6
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 21474800) #6
  %28 = load ptr, ptr %19, align 4
  %29 = tail call i32 @abx500_set_register_interruptible(ptr noundef %28, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  %30 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  tail call void @clk_disable(ptr noundef %31) #6
  tail call void @clk_unprepare(ptr noundef %31) #6
  %32 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @regulator_disable(ptr noundef %33) #6
  %35 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 9
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @regulator_disable(ptr noundef %36) #6
  %38 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 15
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %18
  %43 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load ptr, ptr %35, align 4
  %48 = tail call i32 @regulator_set_voltage(ptr noundef %47, i32 noundef %44, i32 noundef %44) #6
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load ptr, ptr %19, align 4
  %52 = load i32, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.9, i32 noundef %52, i32 noundef %48) #7
  br label %53

53:                                               ; preds = %50, %46, %42
  %54 = load ptr, ptr %35, align 4
  %55 = tail call i32 @regulator_set_load(ptr noundef %54, i32 noundef 0) #6
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.10, i32 noundef %55) #7
  br label %59

59:                                               ; preds = %57, %53, %18
  %60 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 @regulator_disable(ptr noundef %61) #6
  %63 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 12
  %64 = load ptr, ptr %63, align 4
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %78, label %66

66:                                               ; preds = %59
  %67 = tail call ptr @pinctrl_lookup_state(ptr noundef %64, ptr noundef nonnull @.str.7) #6
  %68 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 13
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %63, align 4
  %72 = tail call i32 @pinctrl_select_state(ptr noundef %71, ptr noundef %67) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.8) #7
  br label %76

76:                                               ; preds = %74, %70, %66
  %77 = load ptr, ptr %63, align 4
  tail call void @pinctrl_put(ptr noundef %77) #6
  br label %78

78:                                               ; preds = %76, %59
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_usb_link_status_irq(i32 noundef %0, ptr noundef %1) #2 {
  tail call fastcc void @abx500_usb_link_status_update(ptr noundef %1)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_usb_disconnect_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ab8500_usb, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %19 [
    i32 2, label %5
    i32 1, label %11
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  store i8 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ab8500_usb, ptr %1, i32 0, i32 3
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 18
  %10 = tail call i32 @atomic_notifier_call_chain(ptr noundef %9, i32 noundef 0, ptr noundef %8) #6
  br label %22

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 18
  %13 = getelementptr inbounds %struct.ab8500_usb, ptr %1, i32 0, i32 3
  %14 = tail call i32 @atomic_notifier_call_chain(ptr noundef %12, i32 noundef 0, ptr noundef %13) #6
  tail call fastcc void @ab8500_usb_phy_disable(ptr noundef %1, i1 noundef zeroext false)
  %15 = tail call i32 @atomic_notifier_call_chain(ptr noundef %12, i32 noundef 9, ptr noundef %13) #6
  store i32 0, ptr %3, align 4
  %16 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  store i8 0, ptr %17, align 4
  store i32 0, ptr %13, align 4
  %18 = load i32, ptr %3, align 4
  br label %19

19:                                               ; preds = %11, %2
  %20 = phi i32 [ %18, %11 ], [ %4, %2 ]
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %5
  %23 = phi i1 [ true, %5 ], [ false, %19 ]
  tail call fastcc void @ab8500_usb_phy_disable(ptr noundef %1, i1 noundef zeroext %23)
  store i32 0, ptr %3, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %20, %19 ], [ 0, %22 ]
  %26 = getelementptr inbounds %struct.ab8500_usb, ptr %1, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ab8500, ptr %27, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.ab8500, ptr %27, i32 0, i32 7
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 32
  %35 = icmp eq i32 %25, 3
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ab8500_usb, ptr %1, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %39, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext 2, i8 noundef zeroext 2) #6
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 21474800) #6
  %42 = getelementptr inbounds %struct.ab8500_usb, ptr %1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %43, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext 2, i8 noundef zeroext 0) #6
  br label %45

45:                                               ; preds = %37, %31, %24
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ab8500_usb_phy_enable(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @pinctrl_get(ptr noundef %4) #6
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @pinctrl_lookup_state(ptr noundef %5, ptr noundef nonnull @.str.31) #6
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @pinctrl_put(ptr noundef %5) #6
  br label %16

11:                                               ; preds = %7
  %12 = tail call i32 @pinctrl_select_state(ptr noundef %5, ptr noundef %8) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  tail call void @pinctrl_put(ptr noundef %5) #6
  %15 = inttoptr i32 %12 to ptr
  br label %16

16:                                               ; preds = %14, %11, %10, %2
  %17 = phi ptr [ %8, %10 ], [ %15, %14 ], [ %5, %2 ], [ %5, %11 ]
  %18 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 12
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.32) #7
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @clk_prepare(ptr noundef %24) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = tail call i32 @clk_enable(ptr noundef %24) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  tail call void @clk_unprepare(ptr noundef %24) #6
  br label %31

31:                                               ; preds = %30, %22
  %32 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.33) #7
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @regulator_enable(ptr noundef %35) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.34) #7
  br label %40

40:                                               ; preds = %38, %33
  %41 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 15
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @regulator_get_voltage(ptr noundef %47) #6
  %49 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 10
  store i32 %48, ptr %49, align 4
  %50 = icmp slt i32 %48, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.35) #7
  br label %53

53:                                               ; preds = %51, %45
  %54 = load ptr, ptr %46, align 4
  %55 = tail call i32 @regulator_set_voltage(ptr noundef %54, i32 noundef 1300000, i32 noundef 1350000) #6
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.36, i32 noundef %55) #7
  br label %59

59:                                               ; preds = %57, %53
  %60 = load ptr, ptr %46, align 4
  %61 = tail call i32 @regulator_set_load(ptr noundef %60, i32 noundef 28000) #6
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.10, i32 noundef %61) #7
  br label %65

65:                                               ; preds = %63, %59, %40
  %66 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 9
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 @regulator_enable(ptr noundef %67) #6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.37) #7
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i32, ptr %41, align 4
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %66, align 4
  %78 = tail call i32 @regulator_get_voltage(ptr noundef %77) #6
  switch i32 %78, label %79 [
    i32 1350000, label %81
    i32 1300000, label %81
  ]

79:                                               ; preds = %76
  %80 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.38, i32 noundef %78) #7
  br label %81

81:                                               ; preds = %79, %76, %76, %72
  %82 = getelementptr inbounds %struct.ab8500_usb, ptr %0, i32 0, i32 8
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 @regulator_enable(ptr noundef %83) #6
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.39) #7
  br label %88

88:                                               ; preds = %86, %81
  %89 = select i1 %1, i8 1, i8 2
  %90 = load ptr, ptr %3, align 4
  %91 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %90, i8 noundef zeroext 5, i8 noundef zeroext -118, i8 noundef zeroext %89, i8 noundef zeroext %89) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
