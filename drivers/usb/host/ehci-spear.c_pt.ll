; ModuleID = '/llk/IR/drivers/usb/host/ehci-spear.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-spear.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.65, i32 }
%union.anon.65 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_ehci_spear__231_175_ehci_spear_init6 = internal global ptr @ehci_spear_init, section ".initcall6.init", align 4
@spear_ehci_hcd_driver = internal global %struct.platform_driver { ptr @spear_ehci_hcd_drv_probe, ptr @spear_ehci_hcd_drv_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr @platform_bus_type, ptr null, ptr null, i8 0, i32 0, ptr @spear_ehci_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ehci_spear_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ehci_spear_cleanup = internal global ptr @ehci_spear_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description232 = internal constant [41 x i8] c"ehci_spear.description=EHCI SPEAr driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [37 x i8] c"ehci_spear.alias=platform:spear-ehci\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [31 x i8] c"ehci_spear.author=Deepak Sikri\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [44 x i8] c"ehci_spear.file=drivers/usb/host/ehci-spear\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [23 x i8] c"ehci_spear.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [25 x i8] c"\016%s: EHCI SPEAr driver\0A\00", align 1
@hcd_name = internal constant [11 x i8] c"SPEAr-ehci\00", align 1
@ehci_spear_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@spear_overrides = internal constant %struct.ehci_driver_overrides { i32 4, ptr null, ptr null }, section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"spear-ehci\00", align 1
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@spear_ehci_id_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear600-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ehci_spear_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ehci_spear_drv_suspend, ptr @ehci_spear_drv_resume, ptr @ehci_spear_drv_suspend, ptr @ehci_spear_drv_resume, ptr @ehci_spear_drv_suspend, ptr @ehci_spear_drv_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Error getting interface clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"init fail, %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_ehci_spear_cleanup, ptr @__initcall__kmod_ehci_spear__231_175_ehci_spear_init6, ptr @ehci_spear_cleanup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ehci_spear_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #5
  tail call void @ehci_init_driver(ptr noundef nonnull @ehci_spear_hc_driver, ptr noundef nonnull @spear_overrides) #4
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @spear_ehci_hcd_driver, ptr noundef null) #4
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ -19, %0 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ehci_spear_cleanup() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @spear_ehci_hcd_driver) #4
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
define internal i32 @spear_ehci_hcd_drv_probe(ptr noundef %0) #3 {
  %2 = tail call i32 @usb_disabled() #4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %66

4:                                                ; preds = %1
  %5 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %63, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %9, ptr %10, align 4
  %11 = tail call i32 @dma_set_mask(ptr noundef %8, i64 noundef 4294967295) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %63

13:                                               ; preds = %7
  %14 = tail call i32 @dma_set_coherent_mask(ptr noundef %8, i64 noundef 4294967295) #4
  %15 = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef null) #4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.2) #5
  %18 = ptrtoint ptr %15 to i32
  br label %63

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load ptr, ptr %8, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %24, %23 ], [ %21, %19 ]
  %27 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ehci_spear_hc_driver, ptr noundef %8, ptr noundef %26) #4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %63, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %31 = tail call ptr @devm_ioremap_resource(ptr noundef %8, ptr noundef %30) #4
  %32 = getelementptr inbounds %struct.usb_hcd, ptr %27, i32 0, i32 16
  store ptr %31, ptr %32, align 8
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = ptrtoint ptr %31 to i32
  br label %61

36:                                               ; preds = %29
  %37 = load i32, ptr %30, align 4
  %38 = getelementptr inbounds %struct.usb_hcd, ptr %27, i32 0, i32 17
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.resource, ptr %30, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %30, align 4
  %42 = add i32 %40, 1
  %43 = sub i32 %42, %41
  %44 = getelementptr inbounds %struct.usb_hcd, ptr %27, i32 0, i32 18
  store i32 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.usb_hcd, ptr %27, i32 2, i32 20, i32 3, i32 4
  store ptr %15, ptr %45, align 4
  %46 = getelementptr inbounds %struct.usb_hcd, ptr %27, i32 1, i32 8
  store ptr %31, ptr %46, align 4
  %47 = tail call i32 @clk_prepare(ptr noundef %15) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = tail call i32 @clk_enable(ptr noundef %15) #4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @clk_unprepare(ptr noundef %15) #4
  br label %53

53:                                               ; preds = %52, %49, %36
  %54 = tail call i32 @usb_add_hcd(ptr noundef nonnull %27, i32 noundef %5, i32 noundef 128) #4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load ptr, ptr %27, align 8
  %58 = tail call i32 @device_wakeup_enable(ptr noundef %57) #4
  br label %66

59:                                               ; preds = %53
  %60 = load ptr, ptr %45, align 4
  tail call void @clk_disable(ptr noundef %60) #4
  tail call void @clk_unprepare(ptr noundef %60) #4
  br label %61

61:                                               ; preds = %59, %34
  %62 = phi i32 [ %35, %34 ], [ %54, %59 ]
  tail call void @usb_put_hcd(ptr noundef nonnull %27) #4
  br label %63

63:                                               ; preds = %61, %25, %17, %7, %4
  %64 = phi i32 [ %18, %17 ], [ %62, %61 ], [ %5, %4 ], [ -12, %25 ], [ %11, %7 ]
  %65 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.3, i32 noundef %64) #5
  br label %66

66:                                               ; preds = %63, %56, %1
  %67 = phi i32 [ %64, %63 ], [ 0, %56 ], [ -19, %1 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_ehci_hcd_drv_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_spear_drv_suspend(ptr nocapture noundef readonly %0) #3 {
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
  %14 = tail call i32 @ehci_suspend(ptr noundef %3, i1 noundef zeroext %13) #4
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_spear_drv_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @ehci_resume(ptr noundef %3, i1 noundef zeroext false) #4
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
