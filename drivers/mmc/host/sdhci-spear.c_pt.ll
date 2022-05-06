; ModuleID = '/llk/IR/drivers/mmc/host/sdhci-spear.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-spear.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [56 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }

@__initcall__kmod_sdhci_spear__263_192_sdhci_driver_init6 = internal global ptr @sdhci_driver_init, section ".initcall6.init", align 4
@sdhci_driver = internal global %struct.platform_driver { ptr @sdhci_probe, ptr @sdhci_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_spear_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sdhci_driver_exit = internal global ptr @sdhci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description264 = internal constant [78 x i8] c"sdhci_spear.description=SPEAr Secure Digital Host Controller Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author265 = internal constant [53 x i8] c"sdhci_spear.author=Viresh Kumar <vireshk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file266 = internal constant [46 x i8] c"sdhci_spear.file=drivers/mmc/host/sdhci-spear\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [27 x i8] c"sdhci_spear.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [6 x i8] c"sdhci\00", align 1
@sdhci_spear_id_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear300-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sdhci_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_suspend, ptr @sdhci_resume, ptr @sdhci_suspend, ptr @sdhci_resume, ptr @sdhci_suspend, ptr @sdhci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sdhci_pltfm_ops = internal constant %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"spear-sdhci probe failed: %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description264, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_license267, ptr @__exitcall_sdhci_driver_exit, ptr @__initcall__kmod_sdhci_spear__263_192_sdhci_driver_init6, ptr @sdhci_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdhci_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sdhci_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr %2, ptr %4
  %7 = tail call ptr @sdhci_alloc_host(ptr noundef %6, i32 noundef 4) #4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = ptrtoint ptr %7 to i32
  br label %53

11:                                               ; preds = %1
  %12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %13 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 4
  store ptr %12, ptr %13, align 16
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = ptrtoint ptr %12 to i32
  br label %51

17:                                               ; preds = %11
  store ptr @.str, ptr %7, align 64
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 9
  store ptr @sdhci_pltfm_ops, ptr %18, align 4
  %19 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 3
  store i32 %19, ptr %20, align 4
  %21 = icmp slt i32 %19, 1
  br i1 %21, label %51, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 1
  store i32 64, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 81
  %25 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #4
  store ptr %25, ptr %24, align 4
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = ptrtoint ptr %25 to i32
  br label %51

29:                                               ; preds = %22
  %30 = tail call i32 @clk_prepare(ptr noundef %25) #4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = tail call i32 @clk_enable(ptr noundef %25) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @clk_unprepare(ptr noundef %25) #4
  br label %51

36:                                               ; preds = %32
  %37 = load ptr, ptr %24, align 4
  %38 = tail call i32 @clk_set_rate(ptr noundef %37, i32 noundef 50000000) #4
  %39 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 10
  %40 = load ptr, ptr %39, align 8
  %41 = tail call i32 @mmc_gpiod_request_cd(ptr noundef %40, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #4
  %42 = icmp eq i32 %41, -517
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = tail call i32 @sdhci_add_host(ptr noundef %7) #4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %47, align 8
  br label %55

48:                                               ; preds = %43, %36
  %49 = phi i32 [ -517, %36 ], [ %44, %43 ]
  %50 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %50) #4
  tail call void @clk_unprepare(ptr noundef %50) #4
  br label %51

51:                                               ; preds = %48, %35, %29, %27, %17, %15
  %52 = phi i32 [ %16, %15 ], [ %28, %27 ], [ %49, %48 ], [ -22, %17 ], [ %33, %35 ], [ %30, %29 ]
  tail call void @sdhci_free_host(ptr noundef %7) #4
  br label %53

53:                                               ; preds = %51, %9
  %54 = phi i32 [ %10, %9 ], [ %52, %51 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %54) #5
  br label %55

55:                                               ; preds = %53, %46
  %56 = phi i32 [ %54, %53 ], [ 0, %46 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 81
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %9 = icmp eq i32 %8, -1
  %10 = zext i1 %9 to i32
  tail call void @sdhci_remove_host(ptr noundef %3, i32 noundef %10) #4
  %11 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %11) #4
  tail call void @clk_unprepare(ptr noundef %11) #4
  tail call void @sdhci_free_host(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_alloc_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpiod_request_cd(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 81
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 73
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 29
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 8
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 32
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %8, %1
  %18 = tail call i32 @sdhci_suspend_host(ptr noundef %3) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %21) #4
  br label %22

22:                                               ; preds = %20, %17
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 81
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call i32 @sdhci_resume_host(ptr noundef %3) #4
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ %6, %1 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

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
!8 = !{i64 4663109}
!9 = !{i64 2153385563}
