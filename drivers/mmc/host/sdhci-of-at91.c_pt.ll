; ModuleID = '/llk/IR/drivers/mmc/host/sdhci-of-at91.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-of-at91.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_at91_soc_data = type { ptr, i8, i32 }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
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
%struct.sdhci_at91_priv = type { ptr, ptr, ptr, ptr, i8, i8 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }

@__initcall__kmod_sdhci_of_at91__274_476_sdhci_at91_driver_init6 = internal global ptr @sdhci_at91_driver_init, section ".initcall6.init", align 4
@sdhci_at91_driver = internal global %struct.platform_driver { ptr @sdhci_at91_probe, ptr @sdhci_at91_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_at91_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_at91_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sdhci_at91_driver_exit = internal global ptr @sdhci_at91_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description275 = internal constant [48 x i8] c"sdhci_of_at91.description=SDHCI driver for at91\00", section ".modinfo", align 1
@__UNIQUE_ID_author276 = internal constant [69 x i8] c"sdhci_of_at91.author=Ludovic Desroches <ludovic.desroches@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [50 x i8] c"sdhci_of_at91.file=drivers/mmc/host/sdhci-of-at91\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [29 x i8] c"sdhci_of_at91.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"sdhci-at91\00", align 1
@sdhci_at91_dt_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_sama5d2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_sam9x60 }, %struct.of_device_id zeroinitializer], align 4
@sdhci_at91_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_at91_suspend, ptr @pm_runtime_force_resume, ptr @sdhci_at91_suspend, ptr @pm_runtime_force_resume, ptr @sdhci_at91_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_at91_runtime_suspend, ptr @sdhci_at91_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"baseclk\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to get baseclk\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"hclock\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"failed to get hclock\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"multclk\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"failed to get multclk\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"microchip,sdcal-inverted\00", align 1
@soc_data_sama5d2 = internal constant %struct.sdhci_at91_soc_data { ptr @sdhci_sama5d2_pdata, i8 0, i32 0 }, align 4
@soc_data_sam9x60 = internal constant %struct.sdhci_at91_soc_data { ptr @sdhci_sama5d2_pdata, i8 1, i32 2 }, align 4
@sdhci_sama5d2_pdata = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_at91_sama5d2_ops, i32 0, i32 0 }, align 4
@sdhci_at91_sama5d2_ops = internal constant %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_at91_set_clock, ptr @sdhci_set_power_and_bus_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_at91_reset, ptr null, ptr @sdhci_at91_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"\013%s: Internal clock never stabilised.\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Failed to calibrate\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"can't enable mainck\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"can't enable hclock\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"can't enable gck\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_description275, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_sdhci_at91_driver_exit, ptr @__initcall__kmod_sdhci_of_at91__274_476_sdhci_at91_driver_init6, ptr @sdhci_at91_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdhci_at91_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_at91_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sdhci_at91_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_at91_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_at91_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @sdhci_at91_dt_match, ptr noundef %2) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %107, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @sdhci_pltfm_init(ptr noundef %0, ptr noundef %8, i32 noundef 20) #4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = ptrtoint ptr %9 to i32
  br label %107

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 1, i32 11, i32 5
  store ptr %7, ptr %14, align 4
  %15 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #4
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 1, i32 11, i32 8
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.sdhci_at91_soc_data, ptr %7, i32 0, i32 1
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store ptr null, ptr %16, align 4
  br label %26

23:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  %24 = load ptr, ptr %16, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %105

26:                                               ; preds = %22, %13
  %27 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #4
  %28 = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 1, i32 11, i32 6
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  %31 = load ptr, ptr %28, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %105

33:                                               ; preds = %26
  %34 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.5) #4
  %35 = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 1, i32 11, i32 7
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #5
  %38 = load ptr, ptr %35, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %105

40:                                               ; preds = %33
  tail call fastcc void @sdhci_at91_set_clks_presets(ptr noundef %2)
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 1, i32 11, i32 9
  store i8 0, ptr %41, align 4
  %42 = tail call zeroext i1 @device_property_present(ptr noundef %2, ptr noundef nonnull @.str.7) #4
  %43 = getelementptr inbounds %struct.sdhci_at91_priv, ptr %14, i32 0, i32 5
  %44 = zext i1 %42 to i8
  store i8 %44, ptr %43, align 1
  %45 = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 0, i32 10
  %46 = load ptr, ptr %45, align 8
  %47 = tail call i32 @mmc_of_parse(ptr noundef %46) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %100

49:                                               ; preds = %40
  tail call void @sdhci_get_property(ptr noundef %0) #4
  %50 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #4, !srcloc !9
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #4, !srcloc !10
  %52 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #4
  tail call void @pm_runtime_enable(ptr noundef %2) #4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 50) #4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #4
  %53 = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = or i32 %54, 64
  store i32 %55, ptr %53, align 8
  %56 = tail call i32 @sdhci_add_host(ptr noundef %9) #4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %49
  %59 = load ptr, ptr %45, align 8
  %60 = getelementptr inbounds %struct.mmc_host, ptr %59, i32 0, i32 16
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 256
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = tail call i32 @mmc_gpio_get_cd(ptr noundef %59) #4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load ptr, ptr %45, align 8
  %69 = getelementptr inbounds %struct.mmc_host, ptr %68, i32 0, i32 16
  %70 = load i32, ptr %69, align 8
  %71 = or i32 %70, 32
  store i32 %71, ptr %69, align 8
  %72 = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, -32769
  store i32 %74, ptr %72, align 4
  br label %75

75:                                               ; preds = %67, %64, %58
  %76 = load ptr, ptr %45, align 8
  %77 = getelementptr inbounds %struct.mmc_host, ptr %76, i32 0, i32 16
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 256
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = tail call i32 @mmc_gpio_get_cd(ptr noundef %76) #4
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %92

84:                                               ; preds = %81, %75
  %85 = getelementptr inbounds %struct.sdhci_host, ptr %9, i32 0, i32 4
  %86 = load ptr, ptr %85, align 16
  %87 = getelementptr i8, ptr %86, i32 516
  %88 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %87) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %89 = or i8 %88, -128
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %90 = load ptr, ptr %85, align 16
  %91 = getelementptr i8, ptr %90, i32 516
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %91, i8 %89) #4, !srcloc !14
  br label %92

92:                                               ; preds = %84, %81
  %93 = tail call i32 @__pm_runtime_suspend(ptr noundef %2, i32 noundef 13) #4
  br label %107

94:                                               ; preds = %49
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #4
  %95 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 2) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #4, !srcloc !9
  %96 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 0, i32 -1, ptr elementtype(i32) %50) #4, !srcloc !16
  %97 = extractvalue { i32, i32, i32 } %96, 0
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  br label %100

100:                                              ; preds = %99, %94, %40
  %101 = phi i32 [ %47, %40 ], [ %56, %94 ], [ %56, %99 ]
  %102 = load ptr, ptr %35, align 4
  tail call void @clk_disable(ptr noundef %102) #4
  tail call void @clk_unprepare(ptr noundef %102) #4
  %103 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %103) #4
  tail call void @clk_unprepare(ptr noundef %103) #4
  %104 = load ptr, ptr %28, align 4
  tail call void @clk_disable(ptr noundef %104) #4
  tail call void @clk_unprepare(ptr noundef %104) #4
  br label %105

105:                                              ; preds = %100, %37, %30, %23
  %106 = phi i32 [ %32, %30 ], [ %39, %37 ], [ %101, %100 ], [ %25, %23 ]
  tail call void @sdhci_pltfm_free(ptr noundef %0) #4
  br label %107

107:                                              ; preds = %105, %92, %11, %1
  %108 = phi i32 [ %12, %11 ], [ %106, %105 ], [ 0, %92 ], [ -22, %1 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_at91_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #4
  tail call void @__pm_runtime_disable(ptr noundef %10, i1 noundef zeroext true) #4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #4, !srcloc !9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #4, !srcloc !16
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  br label %17

17:                                               ; preds = %16, %1
  %18 = tail call i32 @sdhci_pltfm_unregister(ptr noundef %0) #4
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  tail call void @clk_disable(ptr noundef %7) #4
  tail call void @clk_unprepare(ptr noundef %7) #4
  tail call void @clk_disable(ptr noundef %9) #4
  tail call void @clk_unprepare(ptr noundef %9) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdhci_at91_set_clks_presets(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 5
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #4
  br label %13

13:                                               ; preds = %12, %9, %1
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 4
  %15 = load ptr, ptr %14, align 16
  %16 = getelementptr i8, ptr %15, i32 64
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !19
  %18 = load ptr, ptr %14, align 16
  %19 = getelementptr i8, ptr %18, i32 68
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  %21 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @clk_get_rate(ptr noundef %22) #4
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.sdhci_at91_soc_data, ptr %24, i32 0, i32 1
  %26 = load i8, ptr %25, align 4, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.sdhci_at91_soc_data, ptr %24, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = udiv i32 %23, %30
  br label %36

32:                                               ; preds = %13
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @clk_get_rate(ptr noundef %34) #4
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %31, %28 ], [ %35, %32 ]
  %38 = udiv i32 %37, 1000000
  %39 = udiv i32 %23, %37
  %40 = and i32 %20, -16711681
  %41 = and i32 %17, -65281
  %42 = shl nuw nsw i32 %38, 8
  %43 = and i32 %42, 65280
  %44 = or i32 %43, %41
  %45 = shl i32 %39, 16
  %46 = add i32 %45, 16711680
  %47 = and i32 %46, 16711680
  %48 = or i32 %47, %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %49 = load ptr, ptr %14, align 16
  %50 = getelementptr i8, ptr %49, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 17921) #4, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %51 = load ptr, ptr %14, align 16
  %52 = getelementptr i8, ptr %51, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %44) #4, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %53 = load ptr, ptr %14, align 16
  %54 = getelementptr i8, ptr %53, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %48) #4, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %55 = load ptr, ptr %14, align 16
  %56 = getelementptr i8, ptr %55, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 0) #4, !srcloc !22
  %57 = add i32 %23, 23999999
  %58 = udiv i32 %57, 24000000
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %59 = trunc i32 %58 to i16
  %60 = add nsw i16 %59, -1
  %61 = or i16 %60, 1024
  %62 = load ptr, ptr %14, align 16
  %63 = getelementptr i8, ptr %62, i32 102
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %63, i16 %61) #4, !srcloc !27
  %64 = add i32 %23, 49999999
  %65 = udiv i32 %64, 50000000
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %66 = trunc i32 %65 to i16
  %67 = add nsw i16 %66, -1
  %68 = or i16 %67, 1024
  %69 = load ptr, ptr %14, align 16
  %70 = getelementptr i8, ptr %69, i32 104
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %70, i16 %68) #4, !srcloc !27
  %71 = add i32 %23, 99999999
  %72 = udiv i32 %71, 100000000
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %73 = trunc i32 %72 to i16
  %74 = add nsw i16 %73, -1
  %75 = or i16 %74, 1024
  %76 = load ptr, ptr %14, align 16
  %77 = getelementptr i8, ptr %76, i32 106
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %77, i16 %75) #4, !srcloc !27
  %78 = add i32 %23, 119999999
  %79 = udiv i32 %78, 120000000
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %80 = trunc i32 %79 to i16
  %81 = add nsw i16 %80, -1
  %82 = or i16 %81, 1024
  %83 = load ptr, ptr %14, align 16
  %84 = getelementptr i8, ptr %83, i32 108
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %84, i16 %82) #4, !srcloc !27
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %85 = load ptr, ptr %14, align 16
  %86 = getelementptr i8, ptr %85, i32 110
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %86, i16 %68) #4, !srcloc !27
  %87 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 8
  %88 = load ptr, ptr %87, align 4
  %89 = tail call i32 @clk_prepare(ptr noundef %88) #4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %36
  %92 = tail call i32 @clk_enable(ptr noundef %88) #4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  tail call void @clk_unprepare(ptr noundef %88) #4
  br label %95

95:                                               ; preds = %94, %91, %36
  %96 = load ptr, ptr %21, align 4
  %97 = tail call i32 @clk_prepare(ptr noundef %96) #4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = tail call i32 @clk_enable(ptr noundef %96) #4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  tail call void @clk_unprepare(ptr noundef %96) #4
  br label %103

103:                                              ; preds = %102, %99, %95
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_at91_set_clock(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 57
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sdhci_ops, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !32

11:                                               ; preds = %2
  %12 = tail call zeroext i16 %9(ptr noundef %0, i32 noundef 44) #4
  br label %18

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 16
  %16 = getelementptr i8, ptr %15, i32 44
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %16) #4, !srcloc !33
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !34
  br label %18

18:                                               ; preds = %13, %11
  %19 = phi i16 [ %12, %11 ], [ %17, %13 ]
  %20 = and i16 %19, 1
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr inbounds %struct.sdhci_ops, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !32

25:                                               ; preds = %18
  tail call void %23(ptr noundef %0, i16 noundef zeroext %20, i32 noundef 44) #4
  br label %30

26:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %27 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 16
  %29 = getelementptr i8, ptr %28, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %29, i16 %20) #4, !srcloc !27
  br label %30

30:                                               ; preds = %26, %25
  %31 = icmp eq i32 %1, 0
  br i1 %31, label %105, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.mmc_host, ptr %33, i32 0, i32 57
  %35 = tail call zeroext i16 @sdhci_calc_clk(ptr noundef %0, i32 noundef %1, ptr noundef %34) #4
  %36 = or i16 %35, 1
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr inbounds %struct.sdhci_ops, ptr %37, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41, !prof !32

41:                                               ; preds = %32
  tail call void %39(ptr noundef %0, i16 noundef zeroext %36, i32 noundef 44) #4
  br label %46

42:                                               ; preds = %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %43 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %44 = load ptr, ptr %43, align 16
  %45 = getelementptr i8, ptr %44, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %45, i16 %36) #4, !srcloc !27
  br label %46

46:                                               ; preds = %42, %41
  %47 = tail call i64 @ktime_get() #4
  %48 = add i64 %47, 20000000
  %49 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  br label %50

50:                                               ; preds = %79, %46
  %51 = load ptr, ptr %6, align 4
  %52 = getelementptr inbounds %struct.sdhci_ops, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55, !prof !32

55:                                               ; preds = %50
  %56 = tail call zeroext i16 %53(ptr noundef %0, i32 noundef 44) #4
  br label %61

57:                                               ; preds = %50
  %58 = load ptr, ptr %49, align 16
  %59 = getelementptr i8, ptr %58, i32 44
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %59) #4, !srcloc !33
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !34
  br label %61

61:                                               ; preds = %57, %55
  %62 = phi i16 [ %56, %55 ], [ %60, %57 ]
  %63 = and i16 %62, 2
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = tail call i64 @ktime_get() #4
  %67 = icmp sgt i64 %66, %48
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load ptr, ptr %6, align 4
  %70 = getelementptr inbounds %struct.sdhci_ops, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73, !prof !32

73:                                               ; preds = %68
  %74 = tail call zeroext i16 %71(ptr noundef %0, i32 noundef 44) #4
  br label %80

75:                                               ; preds = %68
  %76 = load ptr, ptr %49, align 16
  %77 = getelementptr i8, ptr %76, i32 44
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %77) #4, !srcloc !33
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !34
  br label %80

79:                                               ; preds = %65
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #4
  br label %50

80:                                               ; preds = %75, %73, %61
  %81 = phi i16 [ %74, %73 ], [ %78, %75 ], [ %62, %61 ]
  %82 = and i16 %81, 2
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load ptr, ptr %3, align 8
  %86 = getelementptr inbounds %struct.mmc_host, ptr %85, i32 0, i32 1, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.mmc_host, ptr %85, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %91, %89 ], [ %87, %84 ]
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %93) #5
  br label %105

95:                                               ; preds = %80
  %96 = or i16 %81, 4
  %97 = load ptr, ptr %6, align 4
  %98 = getelementptr inbounds %struct.sdhci_ops, ptr %97, i32 0, i32 4
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101, !prof !32

101:                                              ; preds = %95
  tail call void %99(ptr noundef %0, i16 noundef zeroext %96, i32 noundef 44) #4
  br label %105

102:                                              ; preds = %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %103 = load ptr, ptr %49, align 16
  %104 = getelementptr i8, ptr %103, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %104, i16 %96) #4, !srcloc !27
  br label %105

105:                                              ; preds = %102, %101, %92, %30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_power_and_bus_voltage(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_at91_reset(ptr noundef %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  tail call void @sdhci_reset(ptr noundef %0, i8 noundef zeroext %1) #4
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 16
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = tail call i32 @mmc_gpio_get_cd(ptr noundef %5) #4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %21

13:                                               ; preds = %10, %2
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 16
  %16 = getelementptr i8, ptr %15, i32 516
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %18 = or i8 %17, -128
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %19 = load ptr, ptr %14, align 16
  %20 = getelementptr i8, ptr %19, i32 516
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %18) #4, !srcloc !14
  br label %21

21:                                               ; preds = %13, %10
  %22 = getelementptr inbounds %struct.sdhci_at91_priv, ptr %3, i32 0, i32 5
  %23 = load i8, ptr %22, align 1, !range !8
  %24 = icmp eq i8 %23, 0
  %25 = and i8 %1, 1
  %26 = icmp eq i8 %25, 0
  %27 = or i1 %26, %24
  br i1 %27, label %91, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !32

33:                                               ; preds = %28
  %34 = tail call i32 %31(ptr noundef %0, i32 noundef 576) #4
  br label %40

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %37 = load ptr, ptr %36, align 16
  %38 = getelementptr i8, ptr %37, i32 576
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !36
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi i32 [ %34, %33 ], [ %39, %35 ]
  %42 = or i32 %41, 17
  %43 = load ptr, ptr %29, align 4
  %44 = getelementptr inbounds %struct.sdhci_ops, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47, !prof !32

47:                                               ; preds = %40
  tail call void %45(ptr noundef %0, i32 noundef %42, i32 noundef 576) #4
  br label %52

48:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %49 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %50 = load ptr, ptr %49, align 16
  %51 = getelementptr i8, ptr %50, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %42) #4, !srcloc !22
  br label %52

52:                                               ; preds = %48, %47
  %53 = tail call i64 @ktime_get() #4
  %54 = add i64 %53, 20000000
  %55 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  br label %56

56:                                               ; preds = %83, %52
  %57 = load ptr, ptr %29, align 4
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60, !prof !32

60:                                               ; preds = %56
  %61 = tail call i32 %58(ptr noundef %0, i32 noundef 576) #4
  br label %66

62:                                               ; preds = %56
  %63 = load ptr, ptr %55, align 16
  %64 = getelementptr i8, ptr %63, i32 576
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #4, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !36
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi i32 [ %61, %60 ], [ %65, %62 ]
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %66
  %71 = tail call i64 @ktime_get() #4
  %72 = icmp sgt i64 %71, %54
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load ptr, ptr %29, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77, !prof !32

77:                                               ; preds = %73
  %78 = tail call i32 %75(ptr noundef %0, i32 noundef 576) #4
  br label %84

79:                                               ; preds = %73
  %80 = load ptr, ptr %55, align 16
  %81 = getelementptr i8, ptr %80, i32 576
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #4, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !36
  br label %84

83:                                               ; preds = %70
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #4
  br label %56

84:                                               ; preds = %79, %77, %66
  %85 = phi i32 [ %78, %77 ], [ %82, %79 ], [ %67, %66 ]
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %4, align 8
  %90 = load ptr, ptr %89, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.9) #5
  br label %91

91:                                               ; preds = %88, %84, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_at91_set_uhs_signaling(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 8
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sdhci_ops, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !32

10:                                               ; preds = %4
  tail call void %8(ptr noundef %0, i8 noundef zeroext 8, i32 noundef 516) #4
  br label %15

11:                                               ; preds = %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr i8, ptr %13, i32 516
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 8) #4, !srcloc !14
  br label %15

15:                                               ; preds = %11, %10, %2
  tail call void @sdhci_set_uhs_signaling(ptr noundef %0, i32 noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @sdhci_calc_clk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_at91_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #4
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 9
  store i8 1, ptr %5, align 4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_at91_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @sdhci_runtime_suspend_host(ptr noundef %3) #4
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
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 7
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %19) #4
  tail call void @clk_unprepare(ptr noundef %19) #4
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 6
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #4
  tail call void @clk_unprepare(ptr noundef %21) #4
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 8
  %23 = load ptr, ptr %22, align 4
  tail call void @clk_disable(ptr noundef %23) #4
  tail call void @clk_unprepare(ptr noundef %23) #4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_at91_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 9
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call fastcc void @sdhci_at91_set_clks_presets(ptr noundef %0)
  store i8 0, ptr %4, align 4
  br label %41

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = tail call i32 @clk_enable(ptr noundef %10) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #4
  br label %17

17:                                               ; preds = %16, %8
  %18 = phi i32 [ %14, %16 ], [ %11, %8 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10) #5
  br label %43

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @clk_prepare(ptr noundef %21) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = tail call i32 @clk_enable(ptr noundef %21) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  tail call void @clk_unprepare(ptr noundef %21) #4
  br label %28

28:                                               ; preds = %27, %19
  %29 = phi i32 [ %25, %27 ], [ %22, %19 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #5
  br label %43

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @clk_prepare(ptr noundef %32) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = tail call i32 @clk_enable(ptr noundef %32) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  tail call void @clk_unprepare(ptr noundef %32) #4
  br label %39

39:                                               ; preds = %38, %30
  %40 = phi i32 [ %36, %38 ], [ %33, %30 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12) #5
  br label %43

41:                                               ; preds = %35, %7
  %42 = tail call i32 @sdhci_runtime_resume_host(ptr noundef %3, i32 noundef 0) #4
  br label %43

43:                                               ; preds = %41, %39, %28, %17
  %44 = phi i32 [ %42, %41 ], [ %18, %17 ], [ %29, %28 ], [ %40, %39 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_resume_host(ptr noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{i8 0, i8 2}
!9 = !{i64 511661, i64 2148001632, i64 2148001658, i64 2148001705, i64 2148001727, i64 2148001755, i64 2148001775}
!10 = !{i64 2148013844, i64 2148013870, i64 2148013899, i64 2148013933, i64 2148013964, i64 2148013987}
!11 = !{i64 2520207}
!12 = !{i64 2153504118}
!13 = !{i64 2153504395}
!14 = !{i64 2519812}
!15 = !{i64 2148013351}
!16 = !{i64 498230, i64 498255, i64 498277, i64 498293, i64 498305, i64 498325, i64 498349, i64 498365, i64 498377}
!17 = !{i64 2148013477}
!18 = !{i64 2520427}
!19 = !{i64 2153508005}
!20 = !{i64 2153508350}
!21 = !{i64 2153594244}
!22 = !{i64 2520009}
!23 = !{i64 2153594646}
!24 = !{i64 2153594975}
!25 = !{i64 2153595302}
!26 = !{i64 2153596595}
!27 = !{i64 2519389}
!28 = !{i64 2153597042}
!29 = !{i64 2153597491}
!30 = !{i64 2153597940}
!31 = !{i64 2153598387}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2519589}
!34 = !{i64 2153502661}
!35 = !{i64 2153500972}
!36 = !{i64 2153502110}
!37 = !{i64 2153500441}
!38 = !{i64 2153501503}
