; ModuleID = '/llk/IR/drivers/usb/host/ehci-omap.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-omap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.usbhs_omap_platform_data = type { i32, [3 x i32], [3 x i32], [3 x ptr], ptr, ptr, i8 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@__initcall__kmod_ehci_omap__254_297_ehci_omap_init6 = internal global ptr @ehci_omap_init, section ".initcall6.init", align 4
@ehci_hcd_omap_driver = internal global %struct.platform_driver { ptr @ehci_hcd_omap_probe, ptr @ehci_hcd_omap_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @hcd_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_ehci_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ehci_omap_cleanup = internal global ptr @ehci_omap_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias255 = internal constant [35 x i8] c"ehci_omap.alias=platform:ehci-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [41 x i8] c"ehci_omap.author=Texas Instruments, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_author257 = internal constant [55 x i8] c"ehci_omap.author=Felipe Balbi <felipe.balbi@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author258 = internal constant [47 x i8] c"ehci_omap.author=Roger Quadros <rogerq@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description259 = internal constant [55 x i8] c"ehci_omap.description=OMAP-EHCI Host Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file260 = internal constant [42 x i8] c"ehci_omap.file=drivers/usb/host/ehci-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [22 x i8] c"ehci_omap.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [40 x i8] c"\016%s: OMAP-EHCI Host Controller driver\0A\00", align 1
@hcd_name = internal constant [10 x i8] c"ehci-omap\00", align 1
@ehci_omap_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@ehci_omap_overrides = internal constant %struct.ehci_driver_overrides { i32 16, ptr null, ptr null }, section ".init.rodata", align 4
@omap_ehci_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ehci-omap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Missing parent device\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Missing platform data\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Failed to create HCD\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Can't get PHY for port %d: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to add hcd with err %d\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_file260, ptr @__UNIQUE_ID_license261, ptr @__exitcall_ehci_omap_cleanup, ptr @__initcall__kmod_ehci_omap__254_297_ehci_omap_init6, ptr @ehci_omap_cleanup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ehci_omap_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #5
  tail call void @ehci_init_driver(ptr noundef nonnull @ehci_omap_hc_driver, ptr noundef nonnull @ehci_omap_overrides) #4
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ehci_hcd_omap_driver, ptr noundef null) #4
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ -19, %0 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ehci_omap_cleanup() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ehci_hcd_omap_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ehci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_hcd_omap_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @usb_disabled() #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %164

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  br label %164

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %3, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi ptr [ %18, %16 ], [ %4, %12 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  br label %164

23:                                               ; preds = %19
  %24 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %164, label %26

26:                                               ; preds = %23
  %27 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %28 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %27) #4
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = ptrtoint ptr %28 to i32
  br label %164

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %33, ptr %34, align 4
  %35 = tail call i32 @dma_set_mask(ptr noundef %2, i64 noundef 4294967295) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %164

37:                                               ; preds = %32
  %38 = tail call i32 @dma_set_coherent_mask(ptr noundef %2, i64 noundef 4294967295) #4
  %39 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load ptr, ptr %2, align 4
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi ptr [ %43, %42 ], [ %40, %37 ]
  %46 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ehci_omap_hc_driver, ptr noundef %2, ptr noundef %45) #4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  br label %164

49:                                               ; preds = %44
  %50 = load i32, ptr %27, align 4
  %51 = getelementptr inbounds %struct.usb_hcd, ptr %46, i32 0, i32 17
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.resource, ptr %27, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %27, align 4
  %55 = add i32 %53, 1
  %56 = sub i32 %55, %54
  %57 = getelementptr inbounds %struct.usb_hcd, ptr %46, i32 0, i32 18
  store i32 %56, ptr %57, align 8
  %58 = getelementptr inbounds %struct.usb_hcd, ptr %46, i32 0, i32 16
  store ptr %28, ptr %58, align 8
  %59 = getelementptr inbounds %struct.usb_hcd, ptr %46, i32 1, i32 8
  store ptr %28, ptr %59, align 4
  %60 = getelementptr inbounds %struct.usb_hcd, ptr %46, i32 2, i32 20, i32 3, i32 4
  %61 = load i32, ptr %20, align 4
  %62 = getelementptr inbounds %struct.usb_hcd, ptr %46, i32 2, i32 21
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %46, ptr %63, align 8
  %64 = load i32, ptr %62, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %101

66:                                               ; preds = %97, %49
  %67 = phi i32 [ %98, %97 ], [ 0, %49 ]
  %68 = trunc i32 %67 to i8
  %69 = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %2, ptr noundef nonnull @.str.4, i8 noundef zeroext %68) #4
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = ptrtoint ptr %69 to i32
  switch i32 %72, label %73 [
    i32 -19, label %97
    i32 -517, label %141
  ]

73:                                               ; preds = %71
  %74 = ptrtoint ptr %69 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %67, i32 noundef %74) #5
  br label %143

75:                                               ; preds = %66
  %76 = getelementptr [3 x ptr], ptr %60, i32 0, i32 %67
  store ptr %69, ptr %76, align 4
  %77 = getelementptr %struct.usbhs_omap_platform_data, ptr %20, i32 0, i32 1, i32 %67
  %78 = load i32, ptr %77, align 4
  %79 = icmp ne i32 %78, 1
  %80 = icmp eq ptr %69, null
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %97, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.usb_phy, ptr %69, i32 0, i32 22
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = tail call i32 %84(ptr noundef nonnull %69) #4
  %88 = load ptr, ptr %76, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %97, label %90

90:                                               ; preds = %86, %82
  %91 = phi ptr [ %88, %86 ], [ %69, %82 ]
  %92 = getelementptr inbounds %struct.usb_phy, ptr %91, i32 0, i32 26
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = tail call i32 %93(ptr noundef nonnull %91, i32 noundef 0) #4
  br label %97

97:                                               ; preds = %95, %90, %86, %75, %71
  %98 = add nuw nsw i32 %67, 1
  %99 = load i32, ptr %62, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %66, label %101

101:                                              ; preds = %97, %49
  tail call void @pm_runtime_enable(ptr noundef %2) #4
  %102 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #4
  %103 = getelementptr i8, ptr %28, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 32) #4, !srcloc !8
  %104 = tail call i32 @usb_add_hcd(ptr noundef nonnull %46, i32 noundef %24, i32 noundef 128) #4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %104) #5
  %107 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #4
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #4
  br label %143

108:                                              ; preds = %101
  %109 = load ptr, ptr %46, align 8
  %110 = tail call i32 @device_wakeup_enable(ptr noundef %109) #4
  %111 = load i32, ptr %62, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %164

113:                                              ; preds = %137, %108
  %114 = phi i32 [ %138, %137 ], [ 0, %108 ]
  %115 = getelementptr [3 x ptr], ptr %60, i32 0, i32 %114
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %137, label %118

118:                                              ; preds = %113
  %119 = getelementptr %struct.usbhs_omap_platform_data, ptr %20, i32 0, i32 1, i32 %114
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %137, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.usb_phy, ptr %116, i32 0, i32 22
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = tail call i32 %124(ptr noundef nonnull %116) #4
  %128 = load ptr, ptr %115, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %137, label %130

130:                                              ; preds = %126, %122
  %131 = phi ptr [ %128, %126 ], [ %116, %122 ]
  %132 = getelementptr inbounds %struct.usb_phy, ptr %131, i32 0, i32 26
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %130
  %136 = tail call i32 %133(ptr noundef nonnull %131, i32 noundef 0) #4
  br label %137

137:                                              ; preds = %135, %130, %126, %118, %113
  %138 = add nuw nsw i32 %114, 1
  %139 = load i32, ptr %62, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %113, label %164

141:                                              ; preds = %71
  %142 = ptrtoint ptr %69 to i32
  br label %143

143:                                              ; preds = %141, %106, %73
  %144 = phi i32 [ %104, %106 ], [ %74, %73 ], [ %142, %141 ]
  %145 = load i32, ptr %62, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %159, %143
  %148 = phi i32 [ %160, %159 ], [ %145, %143 ]
  %149 = phi i32 [ %161, %159 ], [ 0, %143 ]
  %150 = getelementptr [3 x ptr], ptr %60, i32 0, i32 %149
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %159, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.usb_phy, ptr %151, i32 0, i32 23
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  tail call void %155(ptr noundef nonnull %151) #4
  %158 = load i32, ptr %62, align 4
  br label %159

159:                                              ; preds = %157, %153, %147
  %160 = phi i32 [ %158, %157 ], [ %148, %153 ], [ %148, %147 ]
  %161 = add nuw nsw i32 %149, 1
  %162 = icmp slt i32 %161, %160
  br i1 %162, label %147, label %163

163:                                              ; preds = %159, %143
  tail call void @usb_put_hcd(ptr noundef nonnull %46) #4
  br label %164

164:                                              ; preds = %163, %137, %108, %48, %32, %30, %23, %22, %11, %1
  %165 = phi i32 [ %31, %30 ], [ %144, %163 ], [ -12, %48 ], [ -19, %22 ], [ -19, %11 ], [ -19, %1 ], [ %24, %23 ], [ %35, %32 ], [ 0, %108 ], [ 0, %137 ]
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_hcd_omap_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  tail call void @usb_remove_hcd(ptr noundef %3) #4
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %20, %1
  %9 = phi i32 [ %21, %20 ], [ %6, %1 ]
  %10 = phi i32 [ %22, %20 ], [ 0, %1 ]
  %11 = getelementptr [3 x ptr], ptr %4, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.usb_phy, ptr %12, i32 0, i32 23
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  tail call void %16(ptr noundef nonnull %12) #4
  %19 = load i32, ptr %5, align 4
  br label %20

20:                                               ; preds = %18, %14, %8
  %21 = phi i32 [ %19, %18 ], [ %9, %14 ], [ %9, %8 ]
  %22 = add nuw nsw i32 %10, 1
  %23 = icmp slt i32 %22, %21
  br i1 %23, label %8, label %24

24:                                               ; preds = %20, %1
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @usb_put_hcd(ptr noundef %3) #4
  %26 = tail call i32 @__pm_runtime_idle(ptr noundef %25, i32 noundef 4) #4
  tail call void @__pm_runtime_disable(ptr noundef %25, i1 noundef zeroext true) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2881391}
