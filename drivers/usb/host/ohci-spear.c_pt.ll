; ModuleID = '/llk/IR/drivers/usb/host/ohci-spear.c_pt.bc'
source_filename = "../drivers/usb/host/ohci-spear.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ohci_driver_overrides = type { ptr, i32, ptr }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.65, i32 }
%union.anon.65 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_ohci_spear__231_187_ohci_spear_init6 = internal global ptr @ohci_spear_init, section ".initcall6.init", align 4
@spear_ohci_hcd_driver = internal global %struct.platform_driver { ptr @spear_ohci_hcd_drv_probe, ptr @spear_ohci_hcd_drv_remove, ptr null, ptr @spear_ohci_hcd_drv_suspend, ptr @spear_ohci_hcd_drv_resume, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spear_ohci_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ohci_spear_cleanup = internal global ptr @ohci_spear_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description232 = internal constant [41 x i8] c"ohci_spear.description=OHCI SPEAr driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [31 x i8] c"ohci_spear.author=Deepak Sikri\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [44 x i8] c"ohci_spear.file=drivers/usb/host/ohci-spear\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [26 x i8] c"ohci_spear.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias236 = internal constant [37 x i8] c"ohci_spear.alias=platform:spear-ohci\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [25 x i8] c"\016%s: OHCI SPEAr driver\0A\00", align 1
@hcd_name = internal constant [11 x i8] c"SPEAr-ohci\00", align 1
@ohci_spear_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@spear_overrides = internal constant %struct.ohci_driver_overrides { ptr null, i32 4, ptr null }, section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"spear-ohci\00", align 1
@spear_ohci_id_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear600-ohci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Error getting interface clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"init fail, %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_ohci_spear_cleanup, ptr @__initcall__kmod_ohci_spear__231_187_ohci_spear_init6, ptr @ohci_spear_cleanup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ohci_spear_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #5
  tail call void @ohci_init_driver(ptr noundef nonnull @ohci_spear_hc_driver, ptr noundef nonnull @spear_overrides) #4
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @spear_ohci_hcd_driver, ptr noundef null) #4
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ -19, %0 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ohci_spear_cleanup() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @spear_ohci_hcd_driver) #4
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
define internal i32 @spear_ohci_hcd_drv_probe(ptr noundef %0) #3 {
  %2 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %59, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %6, ptr %7, align 4
  %8 = tail call i32 @dma_set_mask(ptr noundef %5, i64 noundef 4294967295) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %59

10:                                               ; preds = %4
  %11 = tail call i32 @dma_set_coherent_mask(ptr noundef %5, i64 noundef 4294967295) #4
  %12 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef null) #4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #5
  %15 = ptrtoint ptr %12 to i32
  br label %59

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %21, %20 ], [ %18, %16 ]
  %24 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ohci_spear_hc_driver, ptr noundef %5, ptr noundef %23) #4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %59, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %28 = tail call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef %27) #4
  %29 = getelementptr inbounds %struct.usb_hcd, ptr %24, i32 0, i32 16
  store ptr %28, ptr %29, align 8
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = ptrtoint ptr %28 to i32
  br label %57

33:                                               ; preds = %26
  %34 = load i32, ptr %27, align 4
  %35 = getelementptr inbounds %struct.usb_hcd, ptr %24, i32 0, i32 17
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.resource, ptr %27, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %27, align 4
  %39 = add i32 %37, 1
  %40 = sub i32 %39, %38
  %41 = getelementptr inbounds %struct.usb_hcd, ptr %24, i32 0, i32 18
  store i32 %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.usb_hcd, ptr %24, i32 2, i32 22
  store ptr %12, ptr %42, align 4
  %43 = tail call i32 @clk_prepare(ptr noundef %12) #4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = tail call i32 @clk_enable(ptr noundef %12) #4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @clk_unprepare(ptr noundef %12) #4
  br label %49

49:                                               ; preds = %48, %45, %33
  %50 = tail call i32 @usb_add_hcd(ptr noundef nonnull %24, i32 noundef %2, i32 noundef 0) #4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load ptr, ptr %24, align 8
  %54 = tail call i32 @device_wakeup_enable(ptr noundef %53) #4
  br label %62

55:                                               ; preds = %49
  %56 = load ptr, ptr %42, align 4
  tail call void @clk_disable(ptr noundef %56) #4
  tail call void @clk_unprepare(ptr noundef %56) #4
  br label %57

57:                                               ; preds = %55, %31
  %58 = phi i32 [ %32, %31 ], [ %50, %55 ]
  tail call void @usb_put_hcd(ptr noundef nonnull %24) #4
  br label %59

59:                                               ; preds = %57, %22, %14, %4, %1
  %60 = phi i32 [ %15, %14 ], [ %58, %57 ], [ %2, %1 ], [ -12, %22 ], [ %8, %4 ]
  %61 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.3, i32 noundef %60) #5
  br label %62

62:                                               ; preds = %59, %52
  %63 = phi i32 [ %60, %59 ], [ 0, %52 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_ohci_hcd_drv_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 22
  tail call void @usb_remove_hcd(ptr noundef %3) #4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @clk_disable(ptr noundef nonnull %5) #4
  tail call void @clk_unprepare(ptr noundef nonnull %5) #4
  br label %8

8:                                                ; preds = %7, %1
  tail call void @usb_put_hcd(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_ohci_hcd_drv_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #3 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 2, i32 22
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ false, %2 ], [ %13, %10 ]
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 2, i32 20, i32 2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %16, %18
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  tail call void @msleep(i32 noundef 5) #4
  br label %22

22:                                               ; preds = %21, %14
  %23 = load volatile i32, ptr @jiffies, align 64
  store i32 %23, ptr %17, align 4
  %24 = tail call i32 @ohci_suspend(ptr noundef %4, i1 noundef zeroext %15) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %27) #4
  tail call void @clk_unprepare(ptr noundef %27) #4
  br label %28

28:                                               ; preds = %26, %22
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_ohci_hcd_drv_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 2, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @msleep(i32 noundef 5) #4
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 22
  %12 = load volatile i32, ptr @jiffies, align 64
  store i32 %12, ptr %5, align 4
  %13 = load ptr, ptr %11, align 4
  %14 = tail call i32 @clk_prepare(ptr noundef %13) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = tail call i32 @clk_enable(ptr noundef %13) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @clk_unprepare(ptr noundef %13) #4
  br label %20

20:                                               ; preds = %19, %16, %10
  %21 = tail call i32 @ohci_resume(ptr noundef %3, i1 noundef zeroext false) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

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
