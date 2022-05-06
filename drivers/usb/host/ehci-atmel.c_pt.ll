; ModuleID = '/llk/IR/drivers/usb/host/ehci-atmel.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-atmel.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atmel_ehci_priv = type { ptr, ptr, i8 }

@__initcall__kmod_ehci_atmel__254_246_ehci_atmel_init6 = internal global ptr @ehci_atmel_init, section ".initcall6.init", align 4
@ehci_atmel_driver = internal global %struct.platform_driver { ptr @ehci_atmel_drv_probe, ptr @ehci_atmel_drv_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_ehci_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ehci_atmel_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ehci_atmel_cleanup = internal global ptr @ehci_atmel_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description255 = internal constant [41 x i8] c"ehci_atmel.description=EHCI Atmel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias256 = internal constant [37 x i8] c"ehci_atmel.alias=platform:atmel-ehci\00", section ".modinfo", align 1
@__UNIQUE_ID_author257 = internal constant [32 x i8] c"ehci_atmel.author=Nicolas Ferre\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [44 x i8] c"ehci_atmel.file=drivers/usb/host/ehci-atmel\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [23 x i8] c"ehci_atmel.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [25 x i8] c"\016%s: EHCI Atmel driver\0A\00", align 1
@hcd_name = internal constant [11 x i8] c"ehci-atmel\00", align 1
@ehci_atmel_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@ehci_atmel_drv_overrides = internal constant %struct.ehci_driver_overrides { i32 12, ptr null, ptr null }, section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"atmel-ehci\00", align 1
@atmel_ehci_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ehci_atmel_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ehci_atmel_drv_suspend, ptr @ehci_atmel_drv_resume, ptr @ehci_atmel_drv_suspend, ptr @ehci_atmel_drv_resume, ptr @ehci_atmel_drv_suspend, ptr @ehci_atmel_drv_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ehci_clk\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Error getting interface clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"usb_clk\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"failed to get uclk\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"init %s fail, %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias256, ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__exitcall_ehci_atmel_cleanup, ptr @__initcall__kmod_ehci_atmel__254_246_ehci_atmel_init6, ptr @ehci_atmel_cleanup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ehci_atmel_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #5
  tail call void @ehci_init_driver(ptr noundef nonnull @ehci_atmel_hc_driver, ptr noundef nonnull @ehci_atmel_drv_overrides) #4
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ehci_atmel_driver, ptr noundef null) #4
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ -19, %0 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ehci_atmel_cleanup() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ehci_atmel_driver) #4
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
define internal i32 @ehci_atmel_drv_probe(ptr noundef %0) #3 {
  %2 = tail call i32 @usb_disabled() #4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %82

4:                                                ; preds = %1
  %5 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %72, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %9, ptr %10, align 4
  %11 = tail call i32 @dma_set_mask(ptr noundef %8, i64 noundef 4294967295) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %72

13:                                               ; preds = %7
  %14 = tail call i32 @dma_set_coherent_mask(ptr noundef %8, i64 noundef 4294967295) #4
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load ptr, ptr %8, align 4
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ %19, %18 ], [ %16, %13 ]
  %22 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ehci_atmel_hc_driver, ptr noundef %8, ptr noundef %21) #4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %72, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %26 = tail call ptr @devm_ioremap_resource(ptr noundef %8, ptr noundef %25) #4
  %27 = getelementptr inbounds %struct.usb_hcd, ptr %22, i32 0, i32 16
  store ptr %26, ptr %27, align 8
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = ptrtoint ptr %26 to i32
  br label %70

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.usb_hcd, ptr %22, i32 2, i32 20, i32 3, i32 4
  %33 = load i32, ptr %25, align 4
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %22, i32 0, i32 17
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.resource, ptr %25, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %25, align 4
  %38 = add i32 %36, 1
  %39 = sub i32 %38, %37
  %40 = getelementptr inbounds %struct.usb_hcd, ptr %22, i32 0, i32 18
  store i32 %39, ptr %40, align 8
  %41 = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef nonnull @.str.2) #4
  store ptr %41, ptr %32, align 4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.3) #5
  br label %70

44:                                               ; preds = %31
  %45 = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef nonnull @.str.4) #4
  %46 = getelementptr inbounds %struct.usb_hcd, ptr %22, i32 2, i32 20, i32 3, i32 5
  store ptr %45, ptr %46, align 4
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.5) #5
  %49 = load ptr, ptr %46, align 4
  %50 = ptrtoint ptr %49 to i32
  br label %70

51:                                               ; preds = %44
  %52 = load ptr, ptr %27, align 8
  %53 = getelementptr inbounds %struct.usb_hcd, ptr %22, i32 1, i32 8
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.usb_hcd, ptr %55, i32 2, i32 20, i32 3, i32 4
  tail call fastcc void @atmel_start_clock(ptr noundef %56) #4
  %57 = tail call i32 @usb_add_hcd(ptr noundef nonnull %22, i32 noundef %5, i32 noundef 128) #4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = load ptr, ptr %22, align 8
  %61 = tail call i32 @device_wakeup_enable(ptr noundef %60) #4
  %62 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %63 = load ptr, ptr %62, align 8
  %64 = tail call i32 @of_usb_get_phy_mode(ptr noundef %63) #4
  %65 = icmp eq i32 %64, 5
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %67 = load ptr, ptr %27, align 8
  %68 = getelementptr i8, ptr %67, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 4) #4, !srcloc !9
  br label %82

69:                                               ; preds = %51
  tail call fastcc void @atmel_stop_ehci(ptr noundef %0)
  br label %70

70:                                               ; preds = %69, %48, %43, %29
  %71 = phi i32 [ %30, %29 ], [ -2, %43 ], [ %50, %48 ], [ %57, %69 ]
  tail call void @usb_put_hcd(ptr noundef nonnull %22) #4
  br label %72

72:                                               ; preds = %70, %20, %7, %4
  %73 = phi i32 [ %71, %70 ], [ -19, %4 ], [ -12, %20 ], [ %11, %7 ]
  %74 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %75 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load ptr, ptr %74, align 4
  br label %80

80:                                               ; preds = %78, %72
  %81 = phi ptr [ %79, %78 ], [ %76, %72 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.6, ptr noundef %81, i32 noundef %73) #5
  br label %82

82:                                               ; preds = %80, %66, %59, %1
  %83 = phi i32 [ %73, %80 ], [ -19, %1 ], [ 0, %66 ], [ 0, %59 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_atmel_drv_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @usb_remove_hcd(ptr noundef %3) #4
  tail call void @usb_put_hcd(ptr noundef %3) #4
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 2, i32 20, i32 4
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 2, i32 20, i32 3, i32 4
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #4
  tail call void @clk_unprepare(ptr noundef %10) #4
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 2, i32 20, i32 3, i32 5
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %12) #4
  tail call void @clk_unprepare(ptr noundef %12) #4
  store i8 0, ptr %5, align 4
  br label %13

13:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_phy_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_stop_ehci(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 4
  %5 = load i8, ptr %4, align 4, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #4
  tail call void @clk_unprepare(ptr noundef %9) #4
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #4
  tail call void @clk_unprepare(ptr noundef %11) #4
  store i8 0, ptr %4, align 4
  br label %12

12:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_start_clock(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.atmel_ehci_priv, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.atmel_ehci_priv, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = tail call i32 @clk_enable(ptr noundef %7) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #4
  br label %14

14:                                               ; preds = %13, %10, %5
  %15 = load ptr, ptr %0, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = tail call i32 @clk_enable(ptr noundef %15) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %15) #4
  br label %22

22:                                               ; preds = %21, %18, %14
  store i8 1, ptr %2, align 4
  br label %23

23:                                               ; preds = %22, %1
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
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_atmel_drv_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @ehci_suspend(ptr noundef %3, i1 noundef zeroext false) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 4
  %8 = load i8, ptr %7, align 4, !range !10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %12) #4
  tail call void @clk_unprepare(ptr noundef %12) #4
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 5
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #4
  tail call void @clk_unprepare(ptr noundef %14) #4
  store i8 0, ptr %7, align 4
  br label %15

15:                                               ; preds = %10, %6, %1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_atmel_drv_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  tail call fastcc void @atmel_start_clock(ptr noundef %4)
  %5 = tail call i32 @ehci_resume(ptr noundef %3, i1 noundef zeroext false) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

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
!8 = !{i64 2153942879}
!9 = !{i64 4988651}
!10 = !{i8 0, i8 2}
