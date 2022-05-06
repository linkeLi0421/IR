; ModuleID = '/llk/IR/drivers/mmc/host/sdhci-iproc.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-iproc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_iproc_data = type { ptr, i32, i32, i32 }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sdhci_iproc_host = type { ptr, i32, i32, i8, i8 }

@__initcall__kmod_sdhci_iproc__263_446_sdhci_iproc_driver_init6 = internal global ptr @sdhci_iproc_driver_init, section ".initcall6.init", align 4
@sdhci_iproc_driver = internal global %struct.platform_driver { ptr @sdhci_iproc_probe, ptr @sdhci_pltfm_unregister, ptr @sdhci_iproc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_iproc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_pmops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sdhci_iproc_driver_exit = internal global ptr @sdhci_iproc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author264 = internal constant [28 x i8] c"sdhci_iproc.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [43 x i8] c"sdhci_iproc.description=IPROC SDHCI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file266 = internal constant [46 x i8] c"sdhci_iproc.file=drivers/mmc/host/sdhci-iproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [27 x i8] c"sdhci_iproc.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"sdhci-iproc\00", align 1
@sdhci_iproc_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-emmc2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sdhci-iproc-cygnus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @iproc_cygnus_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sdhci-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @iproc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7211a0-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7211a0_data }, %struct.of_device_id zeroinitializer], align 4
@sdhci_pltfm_pmops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to enable host clk\0A\00", align 1
@bcm2835_data = internal constant %struct.sdhci_iproc_data { ptr @sdhci_bcm2835_pltfm_data, i32 18939904, i32 48, i32 0 }, align 4
@bcm2711_data = internal constant %struct.sdhci_iproc_data { ptr @sdhci_bcm2711_pltfm_data, i32 0, i32 0, i32 2048 }, align 4
@iproc_cygnus_data = internal constant %struct.sdhci_iproc_data { ptr @sdhci_iproc_cygnus_pltfm_data, i32 99155968, i32 100, i32 4096 }, align 4
@iproc_data = internal constant %struct.sdhci_iproc_data { ptr @sdhci_iproc_pltfm_data, i32 99155968, i32 100, i32 0 }, align 4
@bcm7211a0_data = internal constant %struct.sdhci_iproc_data { ptr @sdhci_bcm7211a0_pltfm_data, i32 94528562, i32 96, i32 0 }, align 4
@sdhci_bcm2835_pltfm_data = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_iproc_32only_ops, i32 687898624, i32 8 }, align 4
@sdhci_iproc_32only_ops = internal constant %struct.sdhci_ops { ptr @sdhci_iproc_readl, ptr @sdhci_iproc_readw, ptr @sdhci_iproc_readb, ptr @sdhci_iproc_writel, ptr @sdhci_iproc_writew, ptr @sdhci_iproc_writeb, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_iproc_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sdhci_bcm2711_pltfm_data = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_iproc_bcm2711_ops, i32 268435456, i32 0 }, align 4
@sdhci_iproc_bcm2711_ops = internal constant %struct.sdhci_ops { ptr @sdhci_iproc_readl, ptr @sdhci_iproc_readw, ptr @sdhci_iproc_readb, ptr @sdhci_iproc_writel, ptr @sdhci_iproc_writew, ptr @sdhci_iproc_writeb, ptr @sdhci_set_clock, ptr @sdhci_set_power_and_bus_voltage, ptr null, ptr null, ptr null, ptr @sdhci_iproc_get_max_clock, ptr @sdhci_iproc_bcm2711_get_min_clock, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sdhci_iproc_cygnus_pltfm_data = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_iproc_32only_ops, i32 553648128, i32 16385 }, align 4
@sdhci_iproc_pltfm_data = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_iproc_ops, i32 822083584, i32 16384 }, align 4
@sdhci_iproc_ops = internal constant %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_iproc_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sdhci_bcm7211a0_pltfm_data = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_iproc_ops, i32 134221920, i32 0 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_license267, ptr @__exitcall_sdhci_iproc_driver_exit, ptr @__initcall__kmod_sdhci_iproc__263_446_sdhci_iproc_driver_init6, ptr @sdhci_iproc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdhci_iproc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_iproc_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sdhci_iproc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_iproc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_iproc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @device_get_match_data(ptr noundef %2) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %67, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = tail call ptr @sdhci_pltfm_init(ptr noundef %0, ptr noundef %6, i32 noundef 16) #6
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  br label %67

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 81
  %13 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 1, i32 11, i32 5
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 10
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @mmc_of_parse(ptr noundef %15) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %11
  tail call void @sdhci_get_property(ptr noundef %0) #6
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr inbounds %struct.sdhci_iproc_data, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %14, align 8
  %23 = getelementptr inbounds %struct.mmc_host, ptr %22, i32 0, i32 16
  %24 = load i32, ptr %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, ptr %23, align 8
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %18
  %30 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #6
  store ptr %30, ptr %12, align 64
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = ptrtoint ptr %30 to i32
  br label %65

34:                                               ; preds = %29
  %35 = tail call i32 @clk_prepare(ptr noundef %30) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = tail call i32 @clk_enable(ptr noundef %30) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  tail call void @clk_unprepare(ptr noundef %30) #6
  br label %41

41:                                               ; preds = %40, %34
  %42 = phi i32 [ %38, %40 ], [ %35, %34 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  br label %65

43:                                               ; preds = %37, %18
  %44 = load ptr, ptr %13, align 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.sdhci_pltfm_data, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 134217728
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.sdhci_iproc_data, ptr %44, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 56
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.sdhci_iproc_data, ptr %44, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 57
  store i32 %55, ptr %56, align 32
  br label %57

57:                                               ; preds = %50, %43
  %58 = tail call i32 @sdhci_add_host(ptr noundef %7) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %26, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %12, align 64
  tail call void @clk_disable(ptr noundef %64) #6
  tail call void @clk_unprepare(ptr noundef %64) #6
  br label %65

65:                                               ; preds = %63, %60, %41, %32, %11
  %66 = phi i32 [ %16, %11 ], [ %33, %32 ], [ %42, %41 ], [ %58, %63 ], [ %58, %60 ]
  tail call void @sdhci_pltfm_free(ptr noundef %0) #6
  br label %67

67:                                               ; preds = %65, %57, %9, %1
  %68 = phi i32 [ %10, %9 ], [ %66, %65 ], [ -19, %1 ], [ 0, %57 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_iproc_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @sdhci_pltfm_suspend(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_iproc_readl(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @sdhci_iproc_readw(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %4 = icmp eq i32 %1, 12
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 8
  %7 = load i8, ptr %6, align 4, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 6
  %11 = load i32, ptr %10, align 4
  br label %28

12:                                               ; preds = %2
  %13 = and i32 %1, -3
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.sdhci_iproc_host, ptr %3, i32 0, i32 4
  %17 = load i8, ptr %16, align 1, !range !10
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 7
  %21 = load i32, ptr %20, align 4
  br label %28

22:                                               ; preds = %15, %12, %5
  %23 = and i32 %1, -4
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 16
  %26 = getelementptr i8, ptr %25, i32 %23
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  br label %28

28:                                               ; preds = %22, %19, %9
  %29 = phi i32 [ %11, %9 ], [ %21, %19 ], [ %27, %22 ]
  %30 = shl i32 %1, 3
  %31 = and i32 %30, 24
  %32 = lshr i32 %29, %31
  %33 = trunc i32 %32 to i16
  ret i16 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @sdhci_iproc_readb(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = and i32 %1, -4
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 %3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %8 = shl i32 %1, 3
  %9 = and i32 %8, 24
  %10 = lshr i32 %7, %9
  %11 = trunc i32 %10 to i8
  ret i8 %11
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_iproc_writel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #4 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #6, !srcloc !12
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 400001
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = add nuw nsw i32 %8, 3999999
  %14 = udiv i32 %13, %8
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi ptr [ getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), %12 ], [ getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), %10 ]
  %17 = phi i32 [ %14, %12 ], [ 2147480, %10 ]
  %18 = load ptr, ptr %16, align 4
  tail call void %18(i32 noundef %17) #6
  br label %19

19:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_iproc_writew(ptr nocapture noundef %0, i16 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %5 = shl i32 %2, 3
  %6 = and i32 %5, 24
  %7 = shl i32 65535, %6
  %8 = icmp eq i32 %2, 14
  br i1 %8, label %9, label %36

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sdhci_iproc_host, ptr %4, i32 0, i32 4
  %11 = load i8, ptr %10, align 1, !range !10
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 7
  %15 = load i32, ptr %14, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #6, !srcloc !12
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, 400001
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = add nuw nsw i32 %20, 3999999
  %26 = udiv i32 %25, %20
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi ptr [ getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), %24 ], [ getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), %22 ]
  %29 = phi i32 [ %26, %24 ], [ 2147480, %22 ]
  %30 = load ptr, ptr %28, align 4
  tail call void %30(i32 noundef %29) #6
  br label %31

31:                                               ; preds = %27, %13
  store i8 0, ptr %10, align 1
  br label %32

32:                                               ; preds = %31, %9
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 8
  store i8 0, ptr %35, align 4
  br label %46

36:                                               ; preds = %3
  %37 = and i32 %2, -3
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.sdhci_iproc_host, ptr %4, i32 0, i32 4
  %41 = load i8, ptr %40, align 1, !range !10
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 7
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %32
  %47 = phi i32 [ 4, %43 ], [ 12, %32 ]
  %48 = phi i32 [ %45, %43 ], [ %34, %32 ]
  %49 = xor i32 %7, -1
  %50 = and i32 %48, %49
  %51 = zext i16 %1 to i32
  %52 = shl i32 %51, %6
  %53 = or i32 %50, %52
  br label %69

54:                                               ; preds = %39, %36
  %55 = and i32 %2, -4
  %56 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %57 = load ptr, ptr %56, align 16
  %58 = getelementptr i8, ptr %57, i32 %55
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %60 = xor i32 %7, -1
  %61 = and i32 %59, %60
  %62 = zext i16 %1 to i32
  %63 = shl i32 %62, %6
  %64 = or i32 %61, %63
  %65 = icmp eq i32 %2, 12
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 6
  store i32 %64, ptr %67, align 4
  %68 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 8
  store i8 1, ptr %68, align 4
  br label %92

69:                                               ; preds = %54, %46
  %70 = phi i32 [ %47, %46 ], [ %37, %54 ]
  %71 = phi i32 [ %53, %46 ], [ %64, %54 ]
  %72 = icmp eq i32 %70, 4
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 7
  store i32 %71, ptr %74, align 4
  %75 = getelementptr inbounds %struct.sdhci_iproc_host, ptr %4, i32 0, i32 4
  store i8 1, ptr %75, align 1
  br label %92

76:                                               ; preds = %69
  %77 = and i32 %2, -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %78 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %79 = load ptr, ptr %78, align 16
  %80 = getelementptr i8, ptr %79, i32 %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %71) #6, !srcloc !12
  %81 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  %82 = load i32, ptr %81, align 4
  %83 = icmp ult i32 %82, 400001
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = icmp eq i32 %82, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %84
  %87 = add nuw nsw i32 %82, 3999999
  %88 = udiv i32 %87, %82
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %89(i32 noundef %88) #6
  br label %92

90:                                               ; preds = %84
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 2147480) #6
  br label %92

92:                                               ; preds = %90, %86, %76, %73, %66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_iproc_writeb(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = and i32 %2, -4
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 %4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %9 = shl i32 %2, 3
  %10 = and i32 %9, 24
  %11 = shl nuw i32 255, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %8, %12
  %14 = zext i8 %1 to i32
  %15 = shl nuw i32 %14, %10
  %16 = or i32 %13, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %17 = load ptr, ptr %5, align 16
  %18 = getelementptr i8, ptr %17, i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !12
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, 400001
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = add nuw nsw i32 %20, 3999999
  %26 = udiv i32 %25, %20
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi ptr [ getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), %24 ], [ getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), %22 ]
  %29 = phi i32 [ %26, %24 ], [ 2147480, %22 ]
  %30 = load ptr, ptr %28, align 4
  tail call void %30(i32 noundef %29) #6
  br label %31

31:                                               ; preds = %27, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_iproc_get_max_clock(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 81
  %3 = load ptr, ptr %2, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef %0) #6
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_power_and_bus_voltage(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sdhci_iproc_bcm2711_get_min_clock(ptr nocapture noundef readnone %0) #5 {
  ret i32 200000
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 5801876}
!9 = !{i64 2153943453}
!10 = !{i8 0, i8 2}
!11 = !{i64 2153945307}
!12 = !{i64 5801458}
