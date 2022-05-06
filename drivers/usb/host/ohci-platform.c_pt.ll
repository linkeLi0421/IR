; ModuleID = '/llk/IR/drivers/usb/host/ohci-platform.c_pt.bc'
source_filename = "../drivers/usb/host/ohci-platform.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ohci_driver_overrides = type { ptr, i32, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.usb_ohci_pdata = type { i8, i32, ptr, ptr, ptr }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.65, i32 }
%union.anon.65 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_ohci_platform__231_350_ohci_platform_init6 = internal global ptr @ohci_platform_init, section ".initcall6.init", align 4
@ohci_platform_driver = internal global %struct.platform_driver { ptr @ohci_platform_probe, ptr @ohci_platform_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ohci_platform_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ohci_platform_pm_ops, ptr null, ptr null }, ptr @ohci_platform_table, i8 0 }, align 4
@__exitcall_ohci_platform_cleanup = internal global ptr @ohci_platform_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description232 = internal constant [55 x i8] c"ohci_platform.description=OHCI generic platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [36 x i8] c"ohci_platform.author=Hauke Mehrtens\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [32 x i8] c"ohci_platform.author=Alan Stern\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [50 x i8] c"ohci_platform.file=drivers/usb/host/ohci-platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [26 x i8] c"ohci_platform.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [36 x i8] c"\016%s: OHCI generic platform driver\0A\00", align 1
@ohci_platform_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@platform_overrides = internal constant %struct.ohci_driver_overrides { ptr @.str.1, i32 16, ptr null }, section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Generic Platform OHCI controller\00", align 1
@.str.2 = private constant [14 x i8] c"ohci-platform\00", align 1
@ohci_platform_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"generic-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cavium,octeon-6335-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ohci-omap3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ohci_platform_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ohci_platform_suspend, ptr @ohci_platform_resume, ptr @ohci_platform_suspend, ptr @ohci_platform_resume, ptr @ohci_platform_suspend, ptr @ohci_platform_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ohci_platform_table = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"ohci-platform\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@ohci_platform_defaults = internal global %struct.usb_ohci_pdata { i8 0, i32 0, ptr @ohci_platform_power_on, ptr @ohci_platform_power_off, ptr @ohci_platform_power_off }, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"big-endian-regs\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"big-endian-desc\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"no-big-frame-no\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"remote-wakeup-connected\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"num-ports\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Error: CONFIG_USB_OHCI_BIG_ENDIAN_MMIO not set\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Error: CONFIG_USB_OHCI_BIG_ENDIAN_DESC not set\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_ohci_platform_cleanup, ptr @__initcall__kmod_ohci_platform__231_350_ohci_platform_init6, ptr @ohci_platform_cleanup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ohci_platform_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #5
  tail call void @ohci_init_driver(ptr noundef nonnull @ohci_platform_hc_driver, ptr noundef nonnull @platform_overrides) #4
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ohci_platform_driver, ptr noundef null) #4
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ -19, %0 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ohci_platform_cleanup() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ohci_platform_driver) #4
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_platform_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @usb_disabled() #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %210

7:                                                ; preds = %1
  %8 = icmp eq ptr %4, null
  %9 = select i1 %8, ptr @ohci_platform_defaults, ptr %4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %10, ptr %11, align 4
  %12 = tail call i32 @dma_set_mask(ptr noundef %2, i64 noundef 4294967295) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %210

14:                                               ; preds = %7
  %15 = tail call i32 @dma_set_coherent_mask(ptr noundef %2, i64 noundef 4294967295) #4
  %16 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %210, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load ptr, ptr %2, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ %20, %18 ]
  %26 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ohci_platform_hc_driver, ptr noundef %2, ptr noundef %25) #4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %210, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %26, ptr %29, align 8
  store ptr %9, ptr %3, align 4
  %30 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 2, i32 22
  %31 = icmp eq ptr %9, @ohci_platform_defaults
  br i1 %31, label %32, label %106

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %106, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @of_find_property(ptr noundef nonnull %34, ptr noundef nonnull @.str.3, ptr noundef null) #4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 2, i32 20, i32 3, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = or i32 %41, 16
  store i32 %42, ptr %40, align 8
  br label %43

43:                                               ; preds = %39, %36
  %44 = load ptr, ptr %33, align 8
  %45 = tail call ptr @of_find_property(ptr noundef %44, ptr noundef nonnull @.str.4, ptr noundef null) #4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 2, i32 20, i32 3, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = or i32 %49, 8
  store i32 %50, ptr %48, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = load ptr, ptr %33, align 8
  %53 = tail call ptr @of_find_property(ptr noundef %52, ptr noundef nonnull @.str.5, ptr noundef null) #4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 2, i32 20, i32 3, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = or i32 %57, 24
  store i32 %58, ptr %56, align 8
  br label %59

59:                                               ; preds = %55, %51
  %60 = load ptr, ptr %33, align 8
  %61 = tail call ptr @of_find_property(ptr noundef %60, ptr noundef nonnull @.str.6, ptr noundef null) #4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 2, i32 20, i32 3, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = or i32 %65, 128
  store i32 %66, ptr %64, align 8
  br label %67

67:                                               ; preds = %63, %59
  %68 = load ptr, ptr %33, align 8
  %69 = tail call ptr @of_find_property(ptr noundef %68, ptr noundef nonnull @.str.7, ptr noundef null) #4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 2, i32 20, i32 2
  store i32 512, ptr %72, align 8
  br label %73

73:                                               ; preds = %71, %67
  %74 = load ptr, ptr %33, align 8
  %75 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 2, i32 4
  %76 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %74, ptr noundef nonnull @.str.8, ptr noundef %75, i32 noundef 1, i32 noundef 0) #4
  %77 = load ptr, ptr %33, align 8
  %78 = tail call ptr @of_clk_get(ptr noundef %77, i32 noundef 0) #4
  store ptr %78, ptr %30, align 4
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %86

80:                                               ; preds = %91, %86, %73
  %81 = phi i32 [ 0, %73 ], [ 1, %86 ], [ 2, %91 ]
  %82 = phi ptr [ %78, %73 ], [ %88, %86 ], [ %93, %91 ]
  %83 = icmp eq ptr %82, inttoptr (i32 -517 to ptr)
  br i1 %83, label %189, label %84

84:                                               ; preds = %80
  %85 = getelementptr [3 x ptr], ptr %30, i32 0, i32 %81
  store ptr null, ptr %85, align 4
  br label %96

86:                                               ; preds = %73
  %87 = load ptr, ptr %33, align 8
  %88 = tail call ptr @of_clk_get(ptr noundef %87, i32 noundef 1) #4
  %89 = getelementptr %struct.usb_hcd, ptr %26, i32 2, i32 23
  store ptr %88, ptr %89, align 4
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %80, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %33, align 8
  %93 = tail call ptr @of_clk_get(ptr noundef %92, i32 noundef 2) #4
  %94 = getelementptr %struct.usb_hcd, ptr %26, i32 2, i32 24
  store ptr %93, ptr %94, align 4
  %95 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %80, label %96

96:                                               ; preds = %91, %84
  %97 = phi i32 [ %81, %84 ], [ 3, %91 ]
  %98 = tail call ptr @devm_reset_control_array_get(ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext true) #4
  %99 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 2, i32 25
  store ptr %98, ptr %99, align 4
  %100 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = ptrtoint ptr %98 to i32
  br label %189

103:                                              ; preds = %96
  %104 = tail call i32 @reset_control_deassert(ptr noundef %98) #4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %189

106:                                              ; preds = %103, %32, %28
  %107 = phi i32 [ %97, %103 ], [ 0, %32 ], [ 0, %28 ]
  %108 = load i8, ptr %9, align 4
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 2, i32 20, i32 3, i32 2
  %113 = load i32, ptr %112, align 8
  %114 = or i32 %113, 8
  store i32 %114, ptr %112, align 8
  %115 = load i8, ptr %9, align 4
  br label %116

116:                                              ; preds = %111, %106
  %117 = phi i8 [ %115, %111 ], [ %108, %106 ]
  %118 = and i8 %117, 2
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 2, i32 20, i32 3, i32 2
  %122 = load i32, ptr %121, align 8
  %123 = or i32 %122, 16
  store i32 %123, ptr %121, align 8
  %124 = load i8, ptr %9, align 4
  br label %125

125:                                              ; preds = %120, %116
  %126 = phi i8 [ %124, %120 ], [ %117, %116 ]
  %127 = and i8 %126, 4
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 2, i32 20, i32 3, i32 2
  %131 = load i32, ptr %130, align 8
  %132 = or i32 %131, 128
  store i32 %132, ptr %130, align 8
  br label %133

133:                                              ; preds = %129, %125
  %134 = getelementptr inbounds %struct.usb_ohci_pdata, ptr %9, i32 0, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 2, i32 4
  store i32 %135, ptr %138, align 4
  br label %139

139:                                              ; preds = %137, %133
  %140 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 2, i32 20, i32 3, i32 2
  %141 = load i32, ptr %140, align 8
  %142 = and i32 %141, 16
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #5
  br label %184

145:                                              ; preds = %139
  %146 = and i32 %141, 8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #5
  br label %184

149:                                              ; preds = %145
  %150 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #4
  tail call void @pm_runtime_enable(ptr noundef %2) #4
  %151 = getelementptr inbounds %struct.usb_ohci_pdata, ptr %9, i32 0, i32 2
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = tail call i32 %152(ptr noundef %0) #4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %184, label %157

157:                                              ; preds = %154, %149
  %158 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %159 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %158) #4
  %160 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 0, i32 16
  store ptr %159, ptr %160, align 8
  %161 = icmp ugt ptr %159, inttoptr (i32 -4096 to ptr)
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = ptrtoint ptr %159 to i32
  br label %178

164:                                              ; preds = %157
  %165 = load i32, ptr %158, align 4
  %166 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 0, i32 17
  store i32 %165, ptr %166, align 4
  %167 = getelementptr inbounds %struct.resource, ptr %158, i32 0, i32 1
  %168 = load i32, ptr %167, align 4
  %169 = load i32, ptr %158, align 4
  %170 = add i32 %168, 1
  %171 = sub i32 %170, %169
  %172 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 0, i32 18
  store i32 %171, ptr %172, align 8
  %173 = tail call i32 @usb_add_hcd(ptr noundef nonnull %26, i32 noundef %16, i32 noundef 128) #4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %164
  %176 = load ptr, ptr %26, align 8
  %177 = tail call i32 @device_wakeup_enable(ptr noundef %176) #4
  store ptr %26, ptr %29, align 8
  br label %210

178:                                              ; preds = %164, %162
  %179 = phi i32 [ %163, %162 ], [ %173, %164 ]
  %180 = getelementptr inbounds %struct.usb_ohci_pdata, ptr %9, i32 0, i32 3
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %178
  tail call void %181(ptr noundef %0) #4
  br label %184

184:                                              ; preds = %183, %178, %154, %148, %144
  %185 = phi i32 [ -22, %144 ], [ -22, %148 ], [ %155, %154 ], [ %179, %183 ], [ %179, %178 ]
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #4
  %186 = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 2, i32 25
  %187 = load ptr, ptr %186, align 4
  %188 = tail call i32 @reset_control_assert(ptr noundef %187) #4
  br label %189

189:                                              ; preds = %184, %103, %101, %80
  %190 = phi i32 [ -517, %80 ], [ %102, %101 ], [ %104, %103 ], [ %185, %184 ]
  %191 = phi i32 [ %81, %80 ], [ %97, %101 ], [ %97, %103 ], [ %107, %184 ]
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %207, label %193

193:                                              ; preds = %189
  %194 = add nsw i32 %191, -1
  %195 = getelementptr [3 x ptr], ptr %30, i32 0, i32 %194
  %196 = load ptr, ptr %195, align 4
  tail call void @clk_put(ptr noundef %196) #4
  %197 = icmp ugt i32 %191, 1
  br i1 %197, label %198, label %207

198:                                              ; preds = %193
  %199 = add nsw i32 %191, -2
  %200 = getelementptr [3 x ptr], ptr %30, i32 0, i32 %199
  %201 = load ptr, ptr %200, align 4
  tail call void @clk_put(ptr noundef %201) #4
  %202 = icmp ugt i32 %194, 1
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = add nsw i32 %191, -3
  %205 = getelementptr [3 x ptr], ptr %30, i32 0, i32 %204
  %206 = load ptr, ptr %205, align 4
  tail call void @clk_put(ptr noundef %206) #4
  br label %207

207:                                              ; preds = %203, %198, %193, %189
  br i1 %31, label %208, label %209

208:                                              ; preds = %207
  store ptr null, ptr %3, align 4
  br label %209

209:                                              ; preds = %208, %207
  tail call void @usb_put_hcd(ptr noundef nonnull %26) #4
  br label %210

210:                                              ; preds = %209, %175, %24, %14, %7, %1
  %211 = phi i32 [ %190, %209 ], [ 0, %175 ], [ -19, %1 ], [ %16, %14 ], [ -12, %24 ], [ %12, %7 ]
  ret i32 %211
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_platform_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 22
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #4
  tail call void @usb_remove_hcd(ptr noundef %3) #4
  %9 = getelementptr inbounds %struct.usb_ohci_pdata, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void %10(ptr noundef %0) #4
  br label %13

13:                                               ; preds = %12, %1
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 25
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @reset_control_assert(ptr noundef %15) #4
  %17 = load ptr, ptr %7, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %13
  tail call void @clk_put(ptr noundef nonnull %17) #4
  %20 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 23
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  tail call void @clk_put(ptr noundef nonnull %21) #4
  %24 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 24
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @clk_put(ptr noundef nonnull %25) #4
  br label %28

28:                                               ; preds = %27, %23, %19, %13
  tail call void @usb_put_hcd(ptr noundef %3) #4
  %29 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 4) #4
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #4
  %30 = icmp eq ptr %6, @ohci_platform_defaults
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store ptr null, ptr %5, align 4
  br label %32

32:                                               ; preds = %31, %28
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_platform_power_on(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @clk_prepare(ptr noundef nonnull %5) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %7
  %11 = tail call i32 @clk_enable(ptr noundef nonnull %5) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %17

13:                                               ; preds = %35, %25
  %14 = phi i32 [ 2, %35 ], [ 1, %25 ]
  %15 = phi ptr [ %30, %35 ], [ %20, %25 ]
  %16 = phi i32 [ %36, %35 ], [ %26, %25 ]
  tail call void @clk_unprepare(ptr noundef nonnull %15) #4
  br label %38

17:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef nonnull %5) #4
  br label %49

18:                                               ; preds = %10
  %19 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 23
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %49, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @clk_prepare(ptr noundef nonnull %20) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = tail call i32 @clk_enable(ptr noundef nonnull %20) #4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %13

28:                                               ; preds = %25
  %29 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 24
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %49, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @clk_prepare(ptr noundef nonnull %30) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = tail call i32 @clk_enable(ptr noundef nonnull %30) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %13

38:                                               ; preds = %32, %22, %13
  %39 = phi i32 [ %16, %13 ], [ %33, %32 ], [ %23, %22 ]
  %40 = phi i32 [ %14, %13 ], [ 2, %32 ], [ 1, %22 ]
  %41 = add nsw i32 %40, -1
  %42 = getelementptr [3 x ptr], ptr %4, i32 0, i32 %41
  %43 = load ptr, ptr %42, align 4
  tail call void @clk_disable(ptr noundef %43) #4
  tail call void @clk_unprepare(ptr noundef %43) #4
  %44 = icmp ugt i32 %40, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = add nsw i32 %40, -2
  %47 = getelementptr [3 x ptr], ptr %4, i32 0, i32 %46
  %48 = load ptr, ptr %47, align 4
  tail call void @clk_disable(ptr noundef %48) #4
  tail call void @clk_unprepare(ptr noundef %48) #4
  br label %49

49:                                               ; preds = %45, %38, %35, %28, %18, %17, %7, %1
  %50 = phi i32 [ %11, %17 ], [ 0, %35 ], [ 0, %28 ], [ 0, %18 ], [ 0, %1 ], [ %8, %7 ], [ %39, %45 ], [ %39, %38 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ohci_platform_power_off(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 22
  %5 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @clk_disable(ptr noundef nonnull %6) #4
  tail call void @clk_unprepare(ptr noundef nonnull %6) #4
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 23
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @clk_disable(ptr noundef nonnull %11) #4
  tail call void @clk_unprepare(ptr noundef nonnull %11) #4
  br label %14

14:                                               ; preds = %13, %9
  %15 = load ptr, ptr %4, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @clk_disable(ptr noundef nonnull %15) #4
  tail call void @clk_unprepare(ptr noundef nonnull %15) #4
  br label %18

18:                                               ; preds = %17, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_platform_suspend(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp ne ptr %13, null
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi i1 [ false, %1 ], [ %14, %11 ]
  %17 = tail call i32 @ohci_suspend(ptr noundef %3, i1 noundef zeroext %16) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.usb_ohci_pdata, ptr %5, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void %21(ptr noundef %6) #4
  br label %24

24:                                               ; preds = %23, %19, %15
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_platform_resume(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_ohci_pdata, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -16
  %11 = tail call i32 %7(ptr noundef %10) #4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %1
  %14 = tail call i32 @ohci_resume(ptr noundef %3, i1 noundef zeroext false) #4
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #4
  %15 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #4
  tail call void @pm_runtime_enable(ptr noundef %0) #4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i32 [ 0, %13 ], [ %11, %9 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

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
