; ModuleID = '/llk/IR/drivers/usb/host/ohci-exynos.c_pt.bc'
source_filename = "../drivers/usb/host/ohci-exynos.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ohci_driver_overrides = type { ptr, i32, ptr }
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
%struct.exynos_ohci_hcd = type { ptr, ptr, [3 x ptr], i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@exynos_ohci_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias254 = internal constant [27 x i8] c"alias=platform:exynos-ohci\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [40 x i8] c"author=Jingoo Han <jg1.han@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [26 x i8] c"\016%s: OHCI Exynos driver\0A\00", align 1
@hcd_name = internal constant [12 x i8] c"ohci-exynos\00", align 1
@exynos_ohci_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@exynos_overrides = internal constant %struct.ohci_driver_overrides { ptr null, i32 24, ptr null }, section ".init.rodata", align 4
@exynos_ohci_driver = internal global %struct.platform_driver { ptr @exynos_ohci_probe, ptr @exynos_ohci_remove, ptr @exynos_ohci_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_ohci_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_ohci_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [12 x i8] c"exynos-ohci\00", align 1
@exynos_ohci_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @exynos_ohci_suspend, ptr @exynos_ohci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Unable to create HCD\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"usbhost\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to get usbhost clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to enable USB phy\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed to add USB HCD\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"#phy-cells\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Failed to parse device tree\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Invalid number of PHYs\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Error retrieving usb2 phy: %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias254, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_license256], section "llvm.metadata"

@__mod_of__exynos_ohci_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @exynos_ohci_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #6
  tail call void @ohci_init_driver(ptr noundef nonnull @exynos_ohci_hc_driver, ptr noundef nonnull @exynos_overrides) #5
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_ohci_driver, ptr noundef nonnull @__this_module) #5
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ -19, %0 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_ohci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ohci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_ohci_probe(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %4, ptr %5, align 4
  %6 = tail call i32 @dma_set_mask(ptr noundef %3, i64 noundef 4294967295) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %128

8:                                                ; preds = %1
  %9 = tail call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef 4294967295) #5
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load ptr, ptr %3, align 4
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %11, %8 ]
  %17 = tail call ptr @usb_create_hcd(ptr noundef nonnull @exynos_ohci_hc_driver, ptr noundef %3, ptr noundef %16) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #6
  br label %128

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 2, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @of_count_phandle_with_args(ptr noundef %23, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %33, %20
  %27 = phi i32 [ %35, %33 ], [ 0, %20 ]
  %28 = load ptr, ptr %22, align 8
  %29 = tail call ptr @devm_of_phy_get_by_index(ptr noundef %3, ptr noundef %28, i32 noundef %27) #5
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = ptrtoint ptr %29 to i32
  br label %73

33:                                               ; preds = %26
  %34 = getelementptr %struct.exynos_ohci_hcd, ptr %21, i32 0, i32 2, i32 %27
  store ptr %29, ptr %34, align 4
  %35 = add nuw nsw i32 %27, 1
  %36 = icmp eq i32 %35, %24
  br i1 %36, label %70, label %26

37:                                               ; preds = %20
  store i32 0, ptr %2, align 4
  %38 = load ptr, ptr %22, align 8
  %39 = tail call ptr @of_get_next_available_child(ptr noundef %38, ptr noundef null) #5
  %40 = icmp eq ptr %39, null
  br i1 %40, label %61, label %41

41:                                               ; preds = %57, %37
  %42 = phi ptr [ %59, %57 ], [ %39, %37 ]
  %43 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %42, ptr noundef nonnull @.str.9, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = load i32, ptr %2, align 4
  %47 = icmp sgt i32 %46, 2
  br i1 %47, label %63, label %48

48:                                               ; preds = %45
  %49 = call ptr @devm_of_phy_get(ptr noundef %3, ptr noundef nonnull %42, ptr noundef null) #5
  %50 = load i32, ptr %2, align 4
  %51 = getelementptr %struct.exynos_ohci_hcd, ptr %21, i32 0, i32 2, i32 %50
  store ptr %49, ptr %51, align 4
  %52 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = ptrtoint ptr %49 to i32
  switch i32 %54, label %55 [
    i32 -517, label %66
    i32 -19, label %57
    i32 -38, label %57
  ]

55:                                               ; preds = %53
  %56 = ptrtoint ptr %49 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %56) #6
  call void @of_node_put(ptr noundef nonnull %42) #5
  br label %73

57:                                               ; preds = %53, %53, %48
  %58 = load ptr, ptr %22, align 8
  %59 = call ptr @of_get_next_available_child(ptr noundef %58, ptr noundef nonnull %42) #5
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %41

61:                                               ; preds = %57, %37
  %62 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 2, i32 26, i32 1
  store i8 1, ptr %62, align 4
  br label %70

63:                                               ; preds = %45, %41
  %64 = phi ptr [ @.str.10, %41 ], [ @.str.11, %45 ]
  %65 = phi i32 [ %43, %41 ], [ -22, %45 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %64) #6
  br label %68

66:                                               ; preds = %53
  %67 = ptrtoint ptr %49 to i32
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i32 [ %65, %63 ], [ %67, %66 ]
  call void @of_node_put(ptr noundef nonnull %42) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %126

70:                                               ; preds = %61, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %71 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.3) #5
  store ptr %71, ptr %21, align 4
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %75, label %78

73:                                               ; preds = %55, %31
  %74 = phi i32 [ %32, %31 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %126

75:                                               ; preds = %70
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #6
  %76 = load ptr, ptr %21, align 4
  %77 = ptrtoint ptr %76 to i32
  br label %126

78:                                               ; preds = %70
  %79 = call i32 @clk_prepare(ptr noundef %71) #5
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %126

81:                                               ; preds = %78
  %82 = call i32 @clk_enable(ptr noundef %71) #5
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  call void @clk_unprepare(ptr noundef %71) #5
  br label %126

85:                                               ; preds = %81
  %86 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %87 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %86) #5
  %88 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 0, i32 16
  store ptr %87, ptr %88, align 8
  %89 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = ptrtoint ptr %87 to i32
  br label %123

92:                                               ; preds = %85
  %93 = load i32, ptr %86, align 4
  %94 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 0, i32 17
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.resource, ptr %86, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr %86, align 4
  %98 = add i32 %96, 1
  %99 = sub i32 %98, %97
  %100 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 0, i32 18
  store i32 %99, ptr %100, align 8
  %101 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %123, label %103

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %17, ptr %104, align 8
  %105 = call fastcc i32 @exynos_ohci_phy_enable(ptr noundef %3)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #6
  br label %123

108:                                              ; preds = %103
  %109 = load ptr, ptr %22, align 8
  %110 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 2, i32 23
  store ptr %109, ptr %110, align 4
  %111 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 2, i32 26, i32 1
  %112 = load i8, ptr %111, align 4, !range !8
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  store ptr null, ptr %22, align 8
  br label %115

115:                                              ; preds = %114, %108
  %116 = call i32 @usb_add_hcd(ptr noundef nonnull %17, i32 noundef %101, i32 noundef 128) #5
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #6
  call fastcc void @exynos_ohci_phy_disable(ptr noundef %3)
  %119 = load ptr, ptr %110, align 4
  store ptr %119, ptr %22, align 8
  br label %123

120:                                              ; preds = %115
  %121 = load ptr, ptr %17, align 8
  %122 = call i32 @device_wakeup_enable(ptr noundef %121) #5
  br label %128

123:                                              ; preds = %118, %107, %92, %90
  %124 = phi i32 [ %91, %90 ], [ %105, %107 ], [ %116, %118 ], [ %101, %92 ]
  %125 = load ptr, ptr %21, align 4
  call void @clk_disable(ptr noundef %125) #5
  call void @clk_unprepare(ptr noundef %125) #5
  br label %126

126:                                              ; preds = %123, %84, %78, %75, %73, %68
  %127 = phi i32 [ %74, %73 ], [ %77, %75 ], [ %124, %123 ], [ %69, %68 ], [ %82, %84 ], [ %79, %78 ]
  call void @usb_put_hcd(ptr noundef nonnull %17) #5
  br label %128

128:                                              ; preds = %126, %120, %19, %1
  %129 = phi i32 [ %127, %126 ], [ 0, %120 ], [ -12, %19 ], [ %6, %1 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_ohci_remove(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 23
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  store ptr %5, ptr %6, align 8
  tail call void @usb_remove_hcd(ptr noundef %3) #5
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 2, i32 24
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @phy_power_off(ptr noundef %9) #5
  br label %13

13:                                               ; preds = %11, %1
  %14 = getelementptr %struct.usb_hcd, ptr %7, i32 2, i32 25
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @phy_power_off(ptr noundef %15) #5
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr %struct.usb_hcd, ptr %7, i32 2, i32 26
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @phy_power_off(ptr noundef %21) #5
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 22
  %27 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %27) #5
  tail call void @clk_unprepare(ptr noundef %27) #5
  tail call void @usb_put_hcd(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_ohci_shutdown(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hc_driver, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void %7(ptr noundef %3) #5
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

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
define internal fastcc i32 @exynos_ohci_phy_enable(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 24
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
  %13 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 25
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
  %22 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 26
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
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos_ohci_phy_disable(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @phy_power_off(ptr noundef %5) #5
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 25
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @phy_power_off(ptr noundef %11) #5
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 26
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
define internal i32 @exynos_ohci_suspend(ptr nocapture noundef readonly %0) #3 {
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
  %14 = tail call i32 @ohci_suspend(ptr noundef %3, i1 noundef zeroext %13) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 22
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.usb_hcd, ptr %18, i32 2, i32 24
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = tail call i32 @phy_power_off(ptr noundef %20) #5
  br label %24

24:                                               ; preds = %22, %16
  %25 = getelementptr %struct.usb_hcd, ptr %18, i32 2, i32 25
  %26 = load ptr, ptr %25, align 4
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @phy_power_off(ptr noundef %26) #5
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr %struct.usb_hcd, ptr %18, i32 2, i32 26
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
define internal i32 @exynos_ohci_resume(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %13, i32 2, i32 24
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
  %23 = getelementptr %struct.usb_hcd, ptr %13, i32 2, i32 25
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
  %32 = getelementptr %struct.usb_hcd, ptr %13, i32 2, i32 26
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
  br label %71

69:                                               ; preds = %40
  %70 = tail call i32 @ohci_resume(ptr noundef %3, i1 noundef zeroext false) #5
  br label %71

71:                                               ; preds = %69, %67
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ohci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

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
