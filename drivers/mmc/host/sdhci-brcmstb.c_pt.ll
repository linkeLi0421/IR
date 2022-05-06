; ModuleID = '/llk/IR/drivers/mmc/host/sdhci-brcmstb.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-brcmstb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmstb_match_priv = type { ptr, ptr, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
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
%struct.sdhci_brcmstb_priv = type { ptr, i8 }
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr }

@__initcall__kmod_sdhci_brcmstb__263_333_sdhci_brcmstb_driver_init6 = internal global ptr @sdhci_brcmstb_driver_init, section ".initcall6.init", align 4
@sdhci_brcmstb_driver = internal global %struct.platform_driver { ptr @sdhci_brcmstb_probe, ptr @sdhci_pltfm_unregister, ptr @sdhci_brcmstb_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_brcm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_pmops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sdhci_brcmstb_driver_exit = internal global ptr @sdhci_brcmstb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description264 = internal constant [65 x i8] c"sdhci_brcmstb.description=SDHCI driver for Broadcom BRCMSTB SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_author265 = internal constant [30 x i8] c"sdhci_brcmstb.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_file266 = internal constant [50 x i8] c"sdhci_brcmstb.file=drivers/mmc/host/sdhci-brcmstb\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [29 x i8] c"sdhci_brcmstb.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"sdhci-brcmstb\00", align 1
@sdhci_brcm_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7425-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @match_priv_7425 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7445-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @match_priv_7445 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7216-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @match_priv_7216 }, %struct.of_device_id zeroinitializer], align 4
@sdhci_pltfm_pmops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to get clock from Device Tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"supports-cqe\00", align 1
@sdhci_brcmstb_cqhci_ops = internal constant %struct.cqhci_host_ops { ptr @sdhci_brcmstb_dumpregs, ptr null, ptr null, ptr @sdhci_brcmstb_cqe_enable, ptr @sdhci_cqe_disable, ptr null, ptr null, ptr null }, align 4
@match_priv_7425 = internal global %struct.brcmstb_match_priv { ptr null, ptr @sdhci_brcmstb_ops, i32 3 }, align 4
@match_priv_7445 = internal global %struct.brcmstb_match_priv { ptr null, ptr @sdhci_brcmstb_ops, i32 2 }, align 4
@match_priv_7216 = internal constant %struct.brcmstb_match_priv { ptr @sdhci_brcmstb_hs400es, ptr @sdhci_brcmstb_ops_7216, i32 0 }, align 4
@sdhci_brcmstb_ops = internal global %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sdhci_brcmstb_ops_7216 = internal global %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_brcmstb_set_clock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_brcmstb_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description264, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_license267, ptr @__exitcall_sdhci_brcmstb_driver_exit, ptr @__initcall__kmod_sdhci_brcmstb__263_333_sdhci_brcmstb_driver_init6, ptr @sdhci_brcmstb_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdhci_brcmstb_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_brcmstb_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sdhci_brcmstb_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_brcmstb_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_brcmstb_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.sdhci_pltfm_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_match_node(ptr noundef nonnull @sdhci_brcm_of_match, ptr noundef %5) #4
  %7 = getelementptr inbounds %struct.of_device_id, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @devm_clk_get_optional(ptr noundef %3, ptr noundef null) #4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = ptrtoint ptr %9 to i32
  %13 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %12, ptr noundef nonnull @.str.1) #4
  br label %113

14:                                               ; preds = %1
  %15 = tail call i32 @clk_prepare(ptr noundef %9) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %113

17:                                               ; preds = %14
  %18 = tail call i32 @clk_enable(ptr noundef %9) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef %9) #4
  br label %113

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %2, i32 4
  store i64 0, ptr %22, align 4
  %23 = tail call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str.2) #4
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.brcmstb_match_priv, ptr %8, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sdhci_ops, ptr %26, i32 0, i32 8
  store ptr @sdhci_brcmstb_cqhci_irq, ptr %27, align 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = getelementptr inbounds %struct.brcmstb_match_priv, ptr %8, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  store ptr %30, ptr %2, align 4
  %31 = call ptr @sdhci_pltfm_init(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 8) #4
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = ptrtoint ptr %31 to i32
  br label %111

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 0, i32 81
  %37 = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 1, i32 11, i32 5
  %38 = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 1, i32 11, i32 6
  %39 = zext i1 %23 to i8
  store i8 %39, ptr %38, align 4
  %40 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #4
  %41 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %40) #4
  store ptr %41, ptr %37, align 4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = ptrtoint ptr %41 to i32
  br label %109

45:                                               ; preds = %35
  call void @sdhci_get_property(ptr noundef %0) #4
  %46 = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 0, i32 10
  %47 = load ptr, ptr %46, align 8
  %48 = call i32 @mmc_of_parse(ptr noundef %47) #4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %109

50:                                               ; preds = %45
  %51 = load ptr, ptr %8, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %46, align 8
  %55 = getelementptr inbounds %struct.mmc_host, ptr %54, i32 0, i32 17
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1048576
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 0, i32 11, i32 18
  store ptr %51, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %53, %50
  %62 = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 0, i32 9
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66, !prof !8

66:                                               ; preds = %61
  %67 = call i32 %64(ptr noundef %31, i32 noundef 64) #4
  br label %73

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 0, i32 4
  %70 = load ptr, ptr %69, align 16
  %71 = getelementptr i8, ptr %70, i32 64
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %73

73:                                               ; preds = %68, %66
  %74 = phi i32 [ %67, %66 ], [ %72, %68 ]
  %75 = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 0, i32 56
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.brcmstb_match_priv, ptr %8, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %73
  %81 = and i32 %74, -268435457
  store i32 %81, ptr %75, align 4
  br label %82

82:                                               ; preds = %80, %73
  %83 = load ptr, ptr %62, align 4
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86, !prof !8

86:                                               ; preds = %82
  %87 = call i32 %84(ptr noundef %31, i32 noundef 68) #4
  br label %93

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 0, i32 4
  %90 = load ptr, ptr %89, align 16
  %91 = getelementptr i8, ptr %90, i32 68
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #4, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %93

93:                                               ; preds = %88, %86
  %94 = phi i32 [ %87, %86 ], [ %92, %88 ]
  %95 = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 0, i32 57
  %96 = and i32 %94, -8
  store i32 %96, ptr %95, align 32
  %97 = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = or i32 %98, 134217728
  store i32 %99, ptr %97, align 4
  %100 = load i32, ptr %76, align 4
  %101 = and i32 %100, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %93
  %104 = or i32 %98, 134221824
  store i32 %104, ptr %97, align 4
  br label %105

105:                                              ; preds = %103, %93
  %106 = call fastcc i32 @sdhci_brcmstb_add_host(ptr noundef %31, ptr noundef %37)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store ptr %9, ptr %36, align 64
  br label %113

109:                                              ; preds = %105, %45, %43
  %110 = phi i32 [ %44, %43 ], [ %48, %45 ], [ %106, %105 ]
  call void @sdhci_pltfm_free(ptr noundef %0) #4
  br label %111

111:                                              ; preds = %109, %33
  %112 = phi i32 [ %34, %33 ], [ %110, %109 ]
  call void @clk_disable(ptr noundef %9) #4
  call void @clk_unprepare(ptr noundef %9) #4
  br label %113

113:                                              ; preds = %111, %108, %20, %14, %11
  %114 = phi i32 [ %13, %11 ], [ %112, %111 ], [ 0, %108 ], [ %18, %20 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #4
  ret i32 %114
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_brcmstb_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @sdhci_pltfm_suspend(ptr noundef %2) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_brcmstb_cqhci_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4
  %5 = call zeroext i1 @sdhci_cqe_irq(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #4
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %3, align 4
  %10 = load i32, ptr %4, align 4
  %11 = call i32 @cqhci_irq(ptr noundef %8, i32 noundef %1, i32 noundef %9, i32 noundef %10) #4
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %6 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_brcmstb_add_host(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sdhci_brcmstb_priv, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 4, !range !11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @sdhci_add_host(ptr noundef %0) #4
  br label %43

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 25165824
  store i32 %13, ptr %11, align 4
  %14 = tail call i32 @sdhci_setup_host(ptr noundef %0) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %8
  %17 = load ptr, ptr %9, align 8
  %18 = load ptr, ptr %17, align 64
  %19 = tail call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef 116, i32 noundef 3520) #4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 16
  %24 = getelementptr i8, ptr %23, i32 512
  %25 = getelementptr inbounds %struct.cqhci_host, ptr %19, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  store ptr @sdhci_brcmstb_cqhci_ops, ptr %19, align 4
  %26 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 4096
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.cqhci_host, ptr %19, i32 0, i32 9
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, 1
  store i32 %33, ptr %31, align 4
  br label %34

34:                                               ; preds = %30, %21
  %35 = load ptr, ptr %9, align 8
  %36 = tail call i32 @cqhci_init(ptr noundef nonnull %19, ptr noundef %35, i1 noundef zeroext %29) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = tail call i32 @__sdhci_add_host(ptr noundef %0) #4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38, %34, %16
  %42 = phi i32 [ %36, %34 ], [ %39, %38 ], [ -12, %16 ]
  tail call void @sdhci_cleanup_host(ptr noundef %0) #4
  br label %43

43:                                               ; preds = %41, %38, %8, %6
  %44 = phi i32 [ %42, %41 ], [ %7, %6 ], [ %14, %8 ], [ 0, %38 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sdhci_cqe_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_irq(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_setup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cleanup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_brcmstb_dumpregs(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  tail call void @sdhci_dumpregs(ptr noundef %2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_brcmstb_cqe_enable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %2, i32 noundef 36) #4
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr i8, ptr %11, i32 36
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ %8, %7 ], [ %13, %9 ]
  %16 = and i32 %15, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  br label %20

20:                                               ; preds = %40, %18
  %21 = load ptr, ptr %3, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !8

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef %2, i32 noundef 32) #4
  br label %30

26:                                               ; preds = %20
  %27 = load ptr, ptr %19, align 16
  %28 = getelementptr i8, ptr %27, i32 32
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %30

30:                                               ; preds = %26, %24
  %31 = load ptr, ptr %3, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34, !prof !8

34:                                               ; preds = %30
  %35 = tail call i32 %32(ptr noundef %2, i32 noundef 36) #4
  br label %40

36:                                               ; preds = %30
  %37 = load ptr, ptr %19, align 16
  %38 = getelementptr i8, ptr %37, i32 36
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i32 [ %35, %34 ], [ %39, %36 ]
  %42 = and i32 %41, 2048
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %20

44:                                               ; preds = %40, %14
  tail call void @sdhci_cqe_enable(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_disable(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_dumpregs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_brcmstb_hs400es(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 120
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %7 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 10
  %8 = load i8, ptr %7, align 1, !range !11
  %9 = and i32 %6, -2
  %10 = zext i8 %8 to i32
  %11 = or i32 %9, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %12 = load ptr, ptr %3, align 16
  %13 = getelementptr i8, ptr %12, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #4, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_brcmstb_set_clock(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 57
  store i32 0, ptr %5, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 57
  %8 = tail call zeroext i16 @sdhci_calc_clk(ptr noundef %0, i32 noundef %1, ptr noundef %7) #4
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sdhci_ops, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !8

14:                                               ; preds = %2
  tail call void %12(ptr noundef %0, i16 noundef zeroext %8, i32 noundef 44) #4
  br label %19

15:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %8) #4, !srcloc !16
  br label %19

19:                                               ; preds = %15, %14
  %20 = icmp eq i32 %1, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void @sdhci_enable_clk(ptr noundef %0, i16 noundef zeroext %8) #4
  br label %22

22:                                               ; preds = %21, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_brcmstb_set_uhs_signaling(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_ops, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !8

8:                                                ; preds = %2
  %9 = tail call zeroext i16 %6(ptr noundef %0, i32 noundef 62) #4
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr i8, ptr %12, i32 62
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #4, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i16 [ %9, %8 ], [ %14, %10 ]
  %17 = and i16 %16, -8
  switch i32 %1, label %24 [
    i32 9, label %18
    i32 6, label %18
    i32 3, label %33
    i32 4, label %20
    i32 2, label %20
    i32 1, label %20
    i32 5, label %22
  ]

18:                                               ; preds = %15, %15
  %19 = or i16 %17, 3
  br label %33

20:                                               ; preds = %15, %15, %15
  %21 = or i16 %17, 1
  br label %33

22:                                               ; preds = %15
  %23 = or i16 %17, 2
  br label %33

24:                                               ; preds = %15
  %25 = add i32 %1, -7
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = or i16 %17, 4
  br label %33

29:                                               ; preds = %24
  %30 = icmp eq i32 %1, 10
  %31 = or i16 %17, 5
  %32 = select i1 %30, i16 %31, i16 %17
  br label %33

33:                                               ; preds = %29, %27, %22, %20, %18, %15
  %34 = phi i16 [ %19, %18 ], [ %21, %20 ], [ %23, %22 ], [ %28, %27 ], [ %17, %15 ], [ %32, %29 ]
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.sdhci_ops, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !8

39:                                               ; preds = %33
  tail call void %37(ptr noundef %0, i16 noundef zeroext %34, i32 noundef 62) #4
  br label %44

40:                                               ; preds = %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %42 = load ptr, ptr %41, align 16
  %43 = getelementptr i8, ptr %42, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %43, i16 %34) #4, !srcloc !16
  br label %44

44:                                               ; preds = %40, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @sdhci_calc_clk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_clk(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 368064}
!10 = !{i64 2153386612}
!11 = !{i8 0, i8 2}
!12 = !{i64 2153398568}
!13 = !{i64 2153398768}
!14 = !{i64 367646}
!15 = !{i64 2153385474}
!16 = !{i64 367026}
!17 = !{i64 367226}
!18 = !{i64 2153387163}
