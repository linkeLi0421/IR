; ModuleID = '/llk/IR/drivers/usb/host/ehci-exynos.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-exynos.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.exynos_ehci_hcd = type { ptr, ptr, [3 x ptr], i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@exynos_ehci_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description254 = internal constant [31 x i8] c"description=EHCI Exynos driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias255 = internal constant [27 x i8] c"alias=platform:exynos-ehci\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [18 x i8] c"author=Jingoo Han\00", section ".modinfo", align 1
@__UNIQUE_ID_author257 = internal constant [22 x i8] c"author=Joonyoung Shim\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [26 x i8] c"\016%s: EHCI Exynos driver\0A\00", align 1
@hcd_name = internal constant [12 x i8] c"ehci-exynos\00", align 1
@exynos_ehci_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@exynos_overrides = internal constant %struct.ehci_driver_overrides { i32 24, ptr null, ptr null }, section ".init.rodata", align 4
@exynos_ehci_driver = internal global %struct.platform_driver { ptr @exynos_ehci_probe, ptr @exynos_ehci_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_ehci_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_ehci_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [12 x i8] c"exynos-ehci\00", align 1
@exynos_ehci_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @exynos_ehci_suspend, ptr @exynos_ehci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Unable to create HCD\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"usbhost\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to get usbhost clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to enable USB phy\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed to add USB HCD\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"samsung,vbus-gpio\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"ehci_vbus_gpio\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"can't request ehci vbus gpio %d\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"#phy-cells\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Failed to parse device tree\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Invalid number of PHYs\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Error retrieving usb2 phy: %d\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license258], section "llvm.metadata"

@__mod_of__exynos_ehci_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @exynos_ehci_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #6
  tail call void @ehci_init_driver(ptr noundef nonnull @exynos_ehci_hc_driver, ptr noundef nonnull @exynos_overrides) #5
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_ehci_driver, ptr noundef nonnull @__this_module) #5
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ -19, %0 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_ehci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ehci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_ehci_probe(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %4, ptr %5, align 4
  %6 = tail call i32 @dma_set_mask(ptr noundef %3, i64 noundef 4294967295) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %142

8:                                                ; preds = %1
  %9 = tail call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef 4294967295) #5
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %11, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef null) #5
  %15 = icmp ult i32 %14, 2048
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = tail call i32 @devm_gpio_request_one(ptr noundef %3, i32 noundef %14, i32 noundef 2, ptr noundef nonnull @.str.8) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %14) #6
  br label %20

20:                                               ; preds = %19, %16, %13, %8
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load ptr, ptr %3, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi ptr [ %25, %24 ], [ %22, %20 ]
  %28 = tail call ptr @usb_create_hcd(ptr noundef nonnull @exynos_ehci_hc_driver, ptr noundef %3, ptr noundef %27) #5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #6
  br label %142

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.usb_hcd, ptr %28, i32 2, i32 20, i32 3, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  %33 = load ptr, ptr %10, align 8
  %34 = tail call i32 @of_count_phandle_with_args(ptr noundef %33, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #5
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %43, %31
  %37 = phi i32 [ %45, %43 ], [ 0, %31 ]
  %38 = load ptr, ptr %10, align 8
  %39 = tail call ptr @devm_of_phy_get_by_index(ptr noundef %3, ptr noundef %38, i32 noundef %37) #5
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = ptrtoint ptr %39 to i32
  br label %83

43:                                               ; preds = %36
  %44 = getelementptr %struct.exynos_ehci_hcd, ptr %32, i32 0, i32 2, i32 %37
  store ptr %39, ptr %44, align 4
  %45 = add nuw nsw i32 %37, 1
  %46 = icmp eq i32 %45, %34
  br i1 %46, label %80, label %36

47:                                               ; preds = %31
  store i32 0, ptr %2, align 4
  %48 = load ptr, ptr %10, align 8
  %49 = tail call ptr @of_get_next_available_child(ptr noundef %48, ptr noundef null) #5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %71, label %51

51:                                               ; preds = %67, %47
  %52 = phi ptr [ %69, %67 ], [ %49, %47 ]
  %53 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %52, ptr noundef nonnull @.str.12, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load i32, ptr %2, align 4
  %57 = icmp sgt i32 %56, 2
  br i1 %57, label %73, label %58

58:                                               ; preds = %55
  %59 = call ptr @devm_of_phy_get(ptr noundef %3, ptr noundef nonnull %52, ptr noundef null) #5
  %60 = load i32, ptr %2, align 4
  %61 = getelementptr %struct.exynos_ehci_hcd, ptr %32, i32 0, i32 2, i32 %60
  store ptr %59, ptr %61, align 4
  %62 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = ptrtoint ptr %59 to i32
  switch i32 %64, label %65 [
    i32 -517, label %76
    i32 -19, label %67
    i32 -38, label %67
  ]

65:                                               ; preds = %63
  %66 = ptrtoint ptr %59 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef %66) #6
  call void @of_node_put(ptr noundef nonnull %52) #5
  br label %83

67:                                               ; preds = %63, %63, %58
  %68 = load ptr, ptr %10, align 8
  %69 = call ptr @of_get_next_available_child(ptr noundef %68, ptr noundef nonnull %52) #5
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %51

71:                                               ; preds = %67, %47
  %72 = getelementptr inbounds %struct.usb_hcd, ptr %28, i32 2, i32 21, i32 2
  store i8 1, ptr %72, align 4
  br label %80

73:                                               ; preds = %55, %51
  %74 = phi ptr [ @.str.13, %51 ], [ @.str.14, %55 ]
  %75 = phi i32 [ %53, %51 ], [ -22, %55 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %74) #6
  br label %78

76:                                               ; preds = %63
  %77 = ptrtoint ptr %59 to i32
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i32 [ %75, %73 ], [ %77, %76 ]
  call void @of_node_put(ptr noundef nonnull %52) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %140

80:                                               ; preds = %71, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %81 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.3) #5
  store ptr %81, ptr %32, align 4
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %85, label %88

83:                                               ; preds = %65, %41
  %84 = phi i32 [ %42, %41 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %140

85:                                               ; preds = %80
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #6
  %86 = load ptr, ptr %32, align 4
  %87 = ptrtoint ptr %86 to i32
  br label %140

88:                                               ; preds = %80
  %89 = call i32 @clk_prepare(ptr noundef %81) #5
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %140

91:                                               ; preds = %88
  %92 = call i32 @clk_enable(ptr noundef %81) #5
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  call void @clk_unprepare(ptr noundef %81) #5
  br label %140

95:                                               ; preds = %91
  %96 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %97 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %96) #5
  %98 = getelementptr inbounds %struct.usb_hcd, ptr %28, i32 0, i32 16
  store ptr %97, ptr %98, align 8
  %99 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = ptrtoint ptr %97 to i32
  br label %137

102:                                              ; preds = %95
  %103 = load i32, ptr %96, align 4
  %104 = getelementptr inbounds %struct.usb_hcd, ptr %28, i32 0, i32 17
  store i32 %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.resource, ptr %96, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = load i32, ptr %96, align 4
  %108 = add i32 %106, 1
  %109 = sub i32 %108, %107
  %110 = getelementptr inbounds %struct.usb_hcd, ptr %28, i32 0, i32 18
  store i32 %109, ptr %110, align 8
  %111 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %137, label %113

113:                                              ; preds = %102
  %114 = call fastcc i32 @exynos_ehci_phy_enable(ptr noundef %3)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #6
  br label %137

117:                                              ; preds = %113
  %118 = load ptr, ptr %98, align 8
  %119 = getelementptr inbounds %struct.usb_hcd, ptr %28, i32 1, i32 8
  store ptr %118, ptr %119, align 4
  %120 = load ptr, ptr %10, align 8
  %121 = getelementptr inbounds %struct.usb_hcd, ptr %28, i32 2, i32 20, i32 3, i32 5
  store ptr %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.usb_hcd, ptr %28, i32 2, i32 21, i32 2
  %123 = load i8, ptr %122, align 4, !range !8
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %117
  store ptr null, ptr %10, align 8
  br label %126

126:                                              ; preds = %125, %117
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  %127 = load ptr, ptr %98, align 8
  %128 = getelementptr i8, ptr %127, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 62914560) #5, !srcloc !10
  %129 = call i32 @usb_add_hcd(ptr noundef nonnull %28, i32 noundef %111, i32 noundef 128) #5
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %126
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #6
  call fastcc void @exynos_ehci_phy_disable(ptr noundef %3)
  %132 = load ptr, ptr %121, align 4
  store ptr %132, ptr %10, align 8
  br label %137

133:                                              ; preds = %126
  %134 = load ptr, ptr %28, align 8
  %135 = call i32 @device_wakeup_enable(ptr noundef %134) #5
  %136 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %28, ptr %136, align 8
  br label %142

137:                                              ; preds = %131, %116, %102, %100
  %138 = phi i32 [ %101, %100 ], [ %114, %116 ], [ %129, %131 ], [ %111, %102 ]
  %139 = load ptr, ptr %32, align 4
  call void @clk_disable(ptr noundef %139) #5
  call void @clk_unprepare(ptr noundef %139) #5
  br label %140

140:                                              ; preds = %137, %94, %88, %85, %83, %78
  %141 = phi i32 [ %84, %83 ], [ %87, %85 ], [ %138, %137 ], [ %79, %78 ], [ %92, %94 ], [ %89, %88 ]
  call void @usb_put_hcd(ptr noundef nonnull %28) #5
  br label %142

142:                                              ; preds = %140, %133, %30, %1
  %143 = phi i32 [ %141, %140 ], [ 0, %133 ], [ -12, %30 ], [ %6, %1 ]
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_ehci_remove(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  store ptr %5, ptr %6, align 8
  tail call void @usb_remove_hcd(ptr noundef %3) #5
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 2, i32 20, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @phy_power_off(ptr noundef %9) #5
  br label %13

13:                                               ; preds = %11, %1
  %14 = getelementptr %struct.usb_hcd, ptr %7, i32 2, i32 21
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @phy_power_off(ptr noundef %15) #5
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr %struct.usb_hcd, ptr %7, i32 2, i32 21, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @phy_power_off(ptr noundef %21) #5
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  %27 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %27) #5
  tail call void @clk_unprepare(ptr noundef %27) #5
  tail call void @usb_put_hcd(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @exynos_ehci_phy_enable(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @phy_power_on(ptr noundef %5) #5
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %7 ]
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 21
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @phy_power_on(ptr noundef %14) #5
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ 0, %12 ], [ %17, %16 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @phy_power_on(ptr noundef %23) #5
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ 0, %21 ], [ %26, %25 ]
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %27, %18, %9
  %31 = phi i32 [ %10, %9 ], [ %19, %18 ], [ %28, %27 ]
  %32 = phi i1 [ %11, %9 ], [ %20, %18 ], [ %29, %27 ]
  %33 = phi i1 [ false, %9 ], [ false, %18 ], [ true, %27 ]
  %34 = phi i32 [ 0, %9 ], [ 1, %18 ], [ 2, %27 ]
  br i1 %32, label %57, label %35

35:                                               ; preds = %30
  %36 = getelementptr [3 x ptr], ptr %4, i32 0, i32 %34
  %37 = load ptr, ptr %36, align 4
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @phy_power_off(ptr noundef %37) #5
  br label %41

41:                                               ; preds = %39, %35
  br i1 %11, label %42, label %57

42:                                               ; preds = %41
  %43 = add nsw i32 %34, -1
  %44 = getelementptr [3 x ptr], ptr %4, i32 0, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = tail call i32 @phy_power_off(ptr noundef %45) #5
  br label %49

49:                                               ; preds = %47, %42
  br i1 %33, label %50, label %57

50:                                               ; preds = %49
  %51 = add nsw i32 %34, -2
  %52 = getelementptr [3 x ptr], ptr %4, i32 0, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = tail call i32 @phy_power_off(ptr noundef %53) #5
  br label %57

57:                                               ; preds = %55, %50, %49, %41, %30
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos_ehci_phy_disable(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @phy_power_off(ptr noundef %5) #5
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 21
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @phy_power_off(ptr noundef %11) #5
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @phy_power_off(ptr noundef %17) #5
  br label %21

21:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get_by_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_ehci_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %10, null
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ false, %1 ], [ %11, %8 ]
  %14 = tail call i32 @ehci_suspend(ptr noundef %3, i1 noundef zeroext %13) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.usb_hcd, ptr %18, i32 2, i32 20, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = tail call i32 @phy_power_off(ptr noundef %20) #5
  br label %24

24:                                               ; preds = %22, %16
  %25 = getelementptr %struct.usb_hcd, ptr %18, i32 2, i32 21
  %26 = load ptr, ptr %25, align 4
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @phy_power_off(ptr noundef %26) #5
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr %struct.usb_hcd, ptr %18, i32 2, i32 21, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @phy_power_off(ptr noundef %32) #5
  br label %36

36:                                               ; preds = %34, %30
  %37 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %37) #5
  tail call void @clk_unprepare(ptr noundef %37) #5
  br label %38

38:                                               ; preds = %36, %12
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_ehci_resume(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %74

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %74

12:                                               ; preds = %8
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %13, i32 2, i32 20, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @phy_power_on(ptr noundef %15) #5
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ 0, %12 ], [ %18, %17 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = getelementptr %struct.usb_hcd, ptr %13, i32 2, i32 21
  %24 = load ptr, ptr %23, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @phy_power_on(ptr noundef %24) #5
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ 0, %22 ], [ %27, %26 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = getelementptr %struct.usb_hcd, ptr %13, i32 2, i32 21, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @phy_power_on(ptr noundef %33) #5
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ 0, %31 ], [ %36, %35 ]
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %37, %28, %19
  %41 = phi i32 [ %20, %19 ], [ %29, %28 ], [ %38, %37 ]
  %42 = phi i1 [ %21, %19 ], [ %30, %28 ], [ %39, %37 ]
  %43 = phi i1 [ false, %19 ], [ false, %28 ], [ true, %37 ]
  %44 = phi i32 [ 0, %19 ], [ 1, %28 ], [ 2, %37 ]
  br i1 %42, label %69, label %45

45:                                               ; preds = %40
  %46 = getelementptr [3 x ptr], ptr %14, i32 0, i32 %44
  %47 = load ptr, ptr %46, align 4
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @phy_power_off(ptr noundef %47) #5
  br label %51

51:                                               ; preds = %49, %45
  br i1 %21, label %52, label %67

52:                                               ; preds = %51
  %53 = add nsw i32 %44, -1
  %54 = getelementptr [3 x ptr], ptr %14, i32 0, i32 %53
  %55 = load ptr, ptr %54, align 4
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = tail call i32 @phy_power_off(ptr noundef %55) #5
  br label %59

59:                                               ; preds = %57, %52
  br i1 %43, label %60, label %67

60:                                               ; preds = %59
  %61 = add nsw i32 %44, -2
  %62 = getelementptr [3 x ptr], ptr %14, i32 0, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = tail call i32 @phy_power_off(ptr noundef %63) #5
  br label %67

67:                                               ; preds = %65, %60, %59, %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5) #6
  %68 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %68) #5
  tail call void @clk_unprepare(ptr noundef %68) #5
  br label %74

69:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %70 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 16
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr i8, ptr %71, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 62914560) #5, !srcloc !10
  %73 = tail call i32 @ehci_resume(ptr noundef %3, i1 noundef zeroext false) #5
  br label %74

74:                                               ; preds = %69, %67, %11, %1
  %75 = phi i32 [ %41, %67 ], [ 0, %69 ], [ %9, %11 ], [ %6, %1 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2154007986}
!10 = !{i64 4990664}
!11 = !{i64 2154009921}
