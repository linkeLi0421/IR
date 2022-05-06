; ModuleID = '/llk/IR/drivers/usb/host/ehci-st.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-st.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ehci_pdata = type { i32, i8, ptr, ptr, ptr, ptr }
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
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_ehci_st__254_354_ehci_platform_init6 = internal global ptr @ehci_platform_init, section ".initcall6.init", align 4
@ehci_platform_driver = internal global %struct.platform_driver { ptr @st_ehci_platform_probe, ptr @st_ehci_platform_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_ehci_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_ehci_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ehci_platform_cleanup = internal global ptr @ehci_platform_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description255 = internal constant [51 x i8] c"ehci_st.description=EHCI STMicroelectronics driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [56 x i8] c"ehci_st.author=Peter Griffin <peter.griffin@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file257 = internal constant [38 x i8] c"ehci_st.file=drivers/usb/host/ehci-st\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [20 x i8] c"ehci_st.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [38 x i8] c"\016%s: EHCI STMicroelectronics driver\0A\00", align 1
@hcd_name = internal constant [8 x i8] c"ehci-st\00", align 1
@ehci_platform_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@platform_overrides = internal constant %struct.ehci_driver_overrides { i32 28, ptr @st_ehci_platform_reset, ptr null }, section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"st-ehci\00", align 1
@st_ehci_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st-ehci-300x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@st_ehci_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @st_ehci_suspend, ptr @st_ehci_resume, ptr @st_ehci_suspend, ptr @st_ehci_resume, ptr @st_ehci_suspend, ptr @st_ehci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ehci_platform_defaults = internal global %struct.usb_ehci_pdata { i32 0, i8 0, ptr @st_ehci_platform_power_on, ptr @st_ehci_platform_power_off, ptr @st_ehci_platform_power_off, ptr null }, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"no memory resource provided\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"clk48\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"48MHz clk not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"softreset\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_license258, ptr @__exitcall_ehci_platform_cleanup, ptr @__initcall__kmod_ehci_st__254_354_ehci_platform_init6, ptr @ehci_platform_cleanup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ehci_platform_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #5
  tail call void @ehci_init_driver(ptr noundef nonnull @ehci_platform_hc_driver, ptr noundef nonnull @platform_overrides) #4
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ehci_platform_driver, ptr noundef null) #4
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ -19, %0 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ehci_platform_cleanup() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ehci_platform_driver) #4
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
define internal i32 @st_ehci_platform_reset(ptr noundef %0) #3 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 8388736) #4, !srcloc !9
  %8 = load ptr, ptr %5, align 8
  %9 = load i32, ptr %4, align 4
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8
  store ptr %10, ptr %11, align 4
  %12 = tail call i32 @ehci_setup(ptr noundef %0) #4
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_ehci_platform_probe(ptr noundef %0) #3 {
  %2 = tail call i32 @usb_disabled() #4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %118

4:                                                ; preds = %1
  %5 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %118, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br i1 %9, label %11, label %12

11:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2) #5
  br label %118

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load ptr, ptr %10, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %17, %16 ], [ %14, %12 ]
  %20 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ehci_platform_hc_driver, ptr noundef %10, ptr noundef %19) #4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %118, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %20, ptr %23, align 8
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  store ptr @ehci_platform_defaults, ptr %24, align 4
  %25 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 2, i32 20, i32 3, i32 4
  %26 = tail call ptr @devm_phy_get(ptr noundef %10, ptr noundef nonnull @.str.3) #4
  %27 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 2, i32 21, i32 2, i32 1
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %31 = load ptr, ptr %30, align 8
  %32 = tail call ptr @of_clk_get(ptr noundef %31, i32 noundef 0) #4
  store ptr %32, ptr %25, align 4
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %36, label %42

34:                                               ; preds = %22
  %35 = ptrtoint ptr %26 to i32
  br label %116

36:                                               ; preds = %47, %42, %29
  %37 = phi i32 [ 0, %29 ], [ 1, %42 ], [ 2, %47 ]
  %38 = phi ptr [ %32, %29 ], [ %44, %42 ], [ %49, %47 ]
  %39 = icmp eq ptr %38, inttoptr (i32 -517 to ptr)
  br i1 %39, label %98, label %40

40:                                               ; preds = %36
  %41 = getelementptr [3 x ptr], ptr %25, i32 0, i32 %37
  store ptr null, ptr %41, align 4
  br label %52

42:                                               ; preds = %29
  %43 = load ptr, ptr %30, align 8
  %44 = tail call ptr @of_clk_get(ptr noundef %43, i32 noundef 1) #4
  %45 = getelementptr %struct.usb_hcd, ptr %20, i32 2, i32 20, i32 3, i32 5
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %36, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %30, align 8
  %49 = tail call ptr @of_clk_get(ptr noundef %48, i32 noundef 2) #4
  %50 = getelementptr %struct.usb_hcd, ptr %20, i32 2, i32 20, i32 4
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %36, label %52

52:                                               ; preds = %47, %40
  %53 = phi i32 [ %37, %40 ], [ 3, %47 ]
  %54 = tail call ptr @devm_clk_get(ptr noundef %10, ptr noundef nonnull @.str.4) #4
  %55 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 2, i32 21
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.5) #5
  store ptr null, ptr %55, align 4
  br label %58

58:                                               ; preds = %57, %52
  %59 = tail call ptr @__devm_reset_control_get(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #4
  %60 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 2, i32 21, i32 2
  store ptr %59, ptr %60, align 4
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = icmp eq ptr %59, inttoptr (i32 -517 to ptr)
  br i1 %63, label %98, label %64

64:                                               ; preds = %62
  store ptr null, ptr %60, align 4
  br label %65

65:                                               ; preds = %64, %58
  %66 = tail call ptr @__devm_reset_control_get(ptr noundef %10, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #4
  %67 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 2, i32 21, i32 1
  store ptr %66, ptr %67, align 4
  %68 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = icmp eq ptr %66, inttoptr (i32 -517 to ptr)
  br i1 %70, label %98, label %71

71:                                               ; preds = %69
  store ptr null, ptr %67, align 4
  br label %72

72:                                               ; preds = %71, %65
  %73 = load ptr, ptr getelementptr inbounds (%struct.usb_ehci_pdata, ptr @ehci_platform_defaults, i32 0, i32 2), align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = tail call i32 %73(ptr noundef %0) #4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %75, %72
  %79 = load i32, ptr %8, align 4
  %80 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 0, i32 17
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = load i32, ptr %8, align 4
  %84 = add i32 %82, 1
  %85 = sub i32 %84, %83
  %86 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 0, i32 18
  store i32 %85, ptr %86, align 8
  %87 = tail call ptr @devm_ioremap_resource(ptr noundef %10, ptr noundef nonnull %8) #4
  %88 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 0, i32 16
  store ptr %87, ptr %88, align 8
  %89 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = ptrtoint ptr %87 to i32
  br label %98

92:                                               ; preds = %78
  %93 = tail call i32 @usb_add_hcd(ptr noundef nonnull %20, i32 noundef %5, i32 noundef 128) #4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load ptr, ptr %20, align 8
  %97 = tail call i32 @device_wakeup_enable(ptr noundef %96) #4
  store ptr %20, ptr %23, align 8
  br label %118

98:                                               ; preds = %92, %90, %75, %69, %62, %36
  %99 = phi i32 [ %37, %36 ], [ %53, %62 ], [ %53, %69 ], [ %53, %75 ], [ %53, %90 ], [ %53, %92 ]
  %100 = phi i32 [ -517, %36 ], [ -517, %62 ], [ -517, %69 ], [ %76, %75 ], [ %91, %90 ], [ %93, %92 ]
  %101 = icmp sgt i32 %99, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = add nsw i32 %99, -1
  %104 = getelementptr [3 x ptr], ptr %25, i32 0, i32 %103
  %105 = load ptr, ptr %104, align 4
  tail call void @clk_put(ptr noundef %105) #4
  %106 = icmp eq i32 %103, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %102
  %108 = add nsw i32 %99, -2
  %109 = getelementptr [3 x ptr], ptr %25, i32 0, i32 %108
  %110 = load ptr, ptr %109, align 4
  tail call void @clk_put(ptr noundef %110) #4
  %111 = icmp eq i32 %108, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = add nsw i32 %99, -3
  %114 = getelementptr [3 x ptr], ptr %25, i32 0, i32 %113
  %115 = load ptr, ptr %114, align 4
  tail call void @clk_put(ptr noundef %115) #4
  br label %116

116:                                              ; preds = %112, %107, %102, %98, %34
  %117 = phi i32 [ %35, %34 ], [ %100, %98 ], [ %100, %112 ], [ %100, %107 ], [ %100, %102 ]
  store ptr null, ptr %24, align 4
  tail call void @usb_put_hcd(ptr noundef nonnull %20) #4
  br label %118

118:                                              ; preds = %116, %95, %18, %11, %4, %1
  %119 = phi i32 [ %117, %116 ], [ 0, %95 ], [ -6, %11 ], [ -19, %1 ], [ %5, %4 ], [ -12, %18 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_ehci_platform_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  tail call void @usb_remove_hcd(ptr noundef %3) #4
  %7 = getelementptr inbounds %struct.usb_ehci_pdata, ptr %5, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void %8(ptr noundef %0) #4
  br label %11

11:                                               ; preds = %10, %1
  %12 = load ptr, ptr %6, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  tail call void @clk_put(ptr noundef nonnull %12) #4
  %15 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  tail call void @clk_put(ptr noundef nonnull %16) #4
  %19 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @clk_put(ptr noundef nonnull %20) #4
  br label %23

23:                                               ; preds = %22, %18, %14, %11
  tail call void @usb_put_hcd(ptr noundef %3) #4
  %24 = icmp eq ptr %5, @ehci_platform_defaults
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  store ptr null, ptr %4, align 4
  br label %26

26:                                               ; preds = %25, %23
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_ehci_platform_power_on(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @reset_control_deassert(ptr noundef %6) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %95

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @reset_control_deassert(ptr noundef %11) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %91

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @clk_set_rate(ptr noundef nonnull %16, i32 noundef 48000000) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %87

21:                                               ; preds = %18, %14
  %22 = load ptr, ptr %4, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %54, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @clk_prepare(ptr noundef nonnull %22) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %87

27:                                               ; preds = %24
  %28 = tail call i32 @clk_enable(ptr noundef nonnull %22) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %51, %41, %27
  %31 = phi i32 [ 0, %27 ], [ 1, %41 ], [ 2, %51 ]
  %32 = phi ptr [ %22, %27 ], [ %36, %41 ], [ %46, %51 ]
  %33 = phi i32 [ %28, %27 ], [ %42, %41 ], [ %52, %51 ]
  tail call void @clk_unprepare(ptr noundef nonnull %32) #4
  br label %67

34:                                               ; preds = %27
  %35 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %54, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @clk_prepare(ptr noundef nonnull %36) #4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %38
  %42 = tail call i32 @clk_enable(ptr noundef nonnull %36) #4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %30

44:                                               ; preds = %41
  %45 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @clk_prepare(ptr noundef nonnull %46) #4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = tail call i32 @clk_enable(ptr noundef nonnull %46) #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %30

54:                                               ; preds = %51, %44, %34, %21
  %55 = phi i32 [ 0, %21 ], [ 1, %34 ], [ 2, %44 ], [ 3, %51 ]
  %56 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 2, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @phy_init(ptr noundef %57) #4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load ptr, ptr %56, align 4
  %62 = tail call i32 @phy_power_on(ptr noundef %61) #4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %95, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %56, align 4
  %66 = tail call i32 @phy_exit(ptr noundef %65) #4
  br label %67

67:                                               ; preds = %64, %54, %30
  %68 = phi i32 [ %55, %54 ], [ %55, %64 ], [ %31, %30 ]
  %69 = phi i32 [ %58, %54 ], [ %62, %64 ], [ %33, %30 ]
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %67, %48, %38
  %72 = phi i32 [ %69, %67 ], [ %49, %48 ], [ %39, %38 ]
  %73 = phi i32 [ %68, %67 ], [ 2, %48 ], [ 1, %38 ]
  %74 = add nsw i32 %73, -1
  %75 = getelementptr [3 x ptr], ptr %4, i32 0, i32 %74
  %76 = load ptr, ptr %75, align 4
  tail call void @clk_disable(ptr noundef %76) #4
  tail call void @clk_unprepare(ptr noundef %76) #4
  %77 = icmp ugt i32 %73, 1
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = add nsw i32 %73, -2
  %80 = getelementptr [3 x ptr], ptr %4, i32 0, i32 %79
  %81 = load ptr, ptr %80, align 4
  tail call void @clk_disable(ptr noundef %81) #4
  tail call void @clk_unprepare(ptr noundef %81) #4
  %82 = icmp ugt i32 %74, 1
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = add nsw i32 %73, -3
  %85 = getelementptr [3 x ptr], ptr %4, i32 0, i32 %84
  %86 = load ptr, ptr %85, align 4
  tail call void @clk_disable(ptr noundef %86) #4
  tail call void @clk_unprepare(ptr noundef %86) #4
  br label %87

87:                                               ; preds = %83, %78, %71, %67, %24, %18
  %88 = phi i32 [ %19, %18 ], [ %69, %67 ], [ %25, %24 ], [ %72, %83 ], [ %72, %78 ], [ %72, %71 ]
  %89 = load ptr, ptr %10, align 4
  %90 = tail call i32 @reset_control_assert(ptr noundef %89) #4
  br label %91

91:                                               ; preds = %87, %9
  %92 = phi i32 [ %12, %9 ], [ %88, %87 ]
  %93 = load ptr, ptr %5, align 4
  %94 = tail call i32 @reset_control_assert(ptr noundef %93) #4
  br label %95

95:                                               ; preds = %91, %60, %1
  %96 = phi i32 [ %92, %91 ], [ %7, %1 ], [ 0, %60 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st_ehci_platform_power_off(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @reset_control_assert(ptr noundef %6) #4
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @reset_control_assert(ptr noundef %9) #4
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @phy_power_off(ptr noundef %12) #4
  %14 = load ptr, ptr %11, align 4
  %15 = tail call i32 @phy_exit(ptr noundef %14) #4
  %16 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  tail call void @clk_disable(ptr noundef nonnull %17) #4
  tail call void @clk_unprepare(ptr noundef nonnull %17) #4
  br label %20

20:                                               ; preds = %19, %1
  %21 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @clk_disable(ptr noundef nonnull %22) #4
  tail call void @clk_unprepare(ptr noundef nonnull %22) #4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load ptr, ptr %4, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @clk_disable(ptr noundef nonnull %26) #4
  tail call void @clk_unprepare(ptr noundef nonnull %26) #4
  br label %29

29:                                               ; preds = %28, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_ehci_suspend(ptr noundef %0) #3 {
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
  %17 = tail call i32 @ehci_suspend(ptr noundef %3, i1 noundef zeroext %16) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.usb_ehci_pdata, ptr %5, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void %21(ptr noundef %6) #4
  br label %24

24:                                               ; preds = %23, %19
  %25 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #4
  br label %26

26:                                               ; preds = %24, %15
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_ehci_resume(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #4
  %7 = getelementptr inbounds %struct.usb_ehci_pdata, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -16
  %12 = tail call i32 %8(ptr noundef %11) #4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %1
  %15 = tail call i32 @ehci_resume(ptr noundef %3, i1 noundef zeroext false) #4
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi i32 [ 0, %14 ], [ %12, %10 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

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
!8 = !{i64 2153921751}
!9 = !{i64 4990729}
