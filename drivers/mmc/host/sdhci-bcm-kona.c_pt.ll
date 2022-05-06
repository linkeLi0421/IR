; ModuleID = '/llk/IR/drivers/mmc/host/sdhci-bcm-kona.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-bcm-kona.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.lock_class_key = type {}
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

@__initcall__kmod_sdhci_bcm_kona__272_334_sdhci_bcm_kona_driver_init6 = internal global ptr @sdhci_bcm_kona_driver_init, section ".initcall6.init", align 4
@sdhci_bcm_kona_driver = internal global %struct.platform_driver { ptr @sdhci_bcm_kona_probe, ptr @sdhci_pltfm_unregister, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_bcm_kona_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_pmops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sdhci_bcm_kona_driver_exit = internal global ptr @sdhci_bcm_kona_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description273 = internal constant [67 x i8] c"sdhci_bcm_kona.description=SDHCI driver for Broadcom Kona platform\00", section ".modinfo", align 1
@__UNIQUE_ID_author274 = internal constant [31 x i8] c"sdhci_bcm_kona.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_file275 = internal constant [52 x i8] c"sdhci_bcm_kona.file=drivers/mmc/host/sdhci-bcm-kona\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [30 x i8] c"sdhci_bcm_kona.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"sdhci-kona\00", align 1
@sdhci_bcm_kona_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,kona-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bcm,kona-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sdhci_pltfm_pmops = external dso_local constant %struct.dev_pm_ops, align 4
@sdhci_pltfm_data_kona = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_bcm_kona_ops, i32 34608004, i32 0 }, align 4
@sdhci_bcm_kona_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"&kona_dev->write_lock\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Missing max-freq for SDHCI cfg\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to get core clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to set rate core clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to enable core clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Probing of sdhci-pltfm failed: %d\0A\00", align 1
@sdhci_bcm_kona_ops = internal constant %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr @sdhci_bcm_kona_init_74_clocks, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr @sdhci_bcm_kona_card_event, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.8 = private unnamed_addr constant [39 x i8] c"\013Error: sd host is stuck in reset!!!\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__exitcall_sdhci_bcm_kona_driver_exit, ptr @__initcall__kmod_sdhci_bcm_kona__272_334_sdhci_bcm_kona_driver_init6, ptr @sdhci_bcm_kona_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdhci_bcm_kona_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_bcm_kona_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sdhci_bcm_kona_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_bcm_kona_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_bcm_kona_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @sdhci_pltfm_init(ptr noundef %0, ptr noundef nonnull @sdhci_pltfm_data_kona, i32 noundef 20) #4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = ptrtoint ptr %3 to i32
  br label %126

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 81
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 5
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @sdhci_bcm_kona_probe.__key) #4
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @mmc_of_parse(ptr noundef %11) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %124

14:                                               ; preds = %7
  %15 = load ptr, ptr %10, align 8
  %16 = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 6
  %17 = load i32, ptr %16, align 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  br label %124

20:                                               ; preds = %14
  %21 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #4
  store ptr %21, ptr %8, align 64
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  %24 = load ptr, ptr %8, align 64
  %25 = ptrtoint ptr %24 to i32
  br label %124

26:                                               ; preds = %20
  %27 = load ptr, ptr %10, align 8
  %28 = getelementptr inbounds %struct.mmc_host, ptr %27, i32 0, i32 6
  %29 = load i32, ptr %28, align 16
  %30 = tail call i32 @clk_set_rate(ptr noundef %21, i32 noundef %29) #4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  br label %124

33:                                               ; preds = %26
  %34 = load ptr, ptr %8, align 64
  %35 = tail call i32 @clk_prepare(ptr noundef %34) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = tail call i32 @clk_enable(ptr noundef %34) #4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  tail call void @clk_unprepare(ptr noundef %34) #4
  br label %41

41:                                               ; preds = %40, %33
  %42 = phi i32 [ %38, %40 ], [ %35, %33 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #5
  br label %124

43:                                               ; preds = %37
  %44 = load ptr, ptr %10, align 8
  %45 = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 16
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, 32768
  store i32 %52, ptr %50, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = tail call fastcc i32 @sdhci_bcm_kona_sd_reset(ptr noundef %3)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %121

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 9
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61, !prof !8

61:                                               ; preds = %56
  %62 = tail call i32 %59(ptr noundef %3, i32 noundef 32776) #4
  br label %68

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 4
  %65 = load ptr, ptr %64, align 16
  %66 = getelementptr i8, ptr %65, i32 32776
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %68

68:                                               ; preds = %63, %61
  %69 = phi i32 [ %62, %61 ], [ %67, %63 ]
  %70 = or i32 %69, 1
  %71 = load ptr, ptr %57, align 4
  %72 = getelementptr inbounds %struct.sdhci_ops, ptr %71, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75, !prof !8

75:                                               ; preds = %68
  tail call void %73(ptr noundef %3, i32 noundef %70, i32 noundef 32776) #4
  br label %80

76:                                               ; preds = %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %77 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 4
  %78 = load ptr, ptr %77, align 16
  %79 = getelementptr i8, ptr %78, i32 32776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %70) #4, !srcloc !12
  br label %80

80:                                               ; preds = %76, %75
  %81 = load ptr, ptr %57, align 4
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84, !prof !8

84:                                               ; preds = %80
  %85 = tail call i32 %82(ptr noundef %3, i32 noundef 32768) #4
  br label %91

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 4
  %88 = load ptr, ptr %87, align 16
  %89 = getelementptr i8, ptr %88, i32 32768
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %91

91:                                               ; preds = %86, %84
  %92 = phi i32 [ %85, %84 ], [ %90, %86 ]
  %93 = or i32 %92, 1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #4
  %94 = load ptr, ptr %57, align 4
  %95 = getelementptr inbounds %struct.sdhci_ops, ptr %94, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98, !prof !8

98:                                               ; preds = %91
  tail call void %96(ptr noundef %3, i32 noundef %93, i32 noundef 32768) #4
  br label %103

99:                                               ; preds = %91
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %100 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 4
  %101 = load ptr, ptr %100, align 16
  %102 = getelementptr i8, ptr %101, i32 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %93) #4, !srcloc !12
  br label %103

103:                                              ; preds = %99, %98
  %104 = tail call i32 @sdhci_add_host(ptr noundef %3) #4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  %107 = load ptr, ptr %10, align 8
  %108 = getelementptr inbounds %struct.mmc_host, ptr %107, i32 0, i32 16
  %109 = load i32, ptr %108, align 8
  %110 = and i32 %109, 256
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %106
  tail call fastcc void @sdhci_bcm_kona_sd_card_emulate(ptr noundef %3, i32 noundef 1)
  %113 = load ptr, ptr %10, align 8
  br label %114

114:                                              ; preds = %112, %106
  %115 = phi ptr [ %113, %112 ], [ %107, %106 ]
  %116 = tail call i32 @mmc_gpio_get_cd(ptr noundef %115) #4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  tail call fastcc void @sdhci_bcm_kona_sd_card_emulate(ptr noundef %3, i32 noundef 1)
  br label %126

119:                                              ; preds = %103
  %120 = tail call fastcc i32 @sdhci_bcm_kona_sd_reset(ptr noundef %3)
  br label %121

121:                                              ; preds = %119, %53
  %122 = phi i32 [ %54, %53 ], [ %104, %119 ]
  %123 = load ptr, ptr %8, align 64
  tail call void @clk_disable(ptr noundef %123) #4
  tail call void @clk_unprepare(ptr noundef %123) #4
  br label %124

124:                                              ; preds = %121, %41, %32, %23, %19, %7
  %125 = phi i32 [ %12, %7 ], [ %25, %23 ], [ %30, %32 ], [ %42, %41 ], [ %122, %121 ], [ -6, %19 ]
  tail call void @sdhci_pltfm_free(ptr noundef %0) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %125) #5
  br label %126

126:                                              ; preds = %124, %118, %114, %5
  %127 = phi i32 [ %6, %5 ], [ %125, %124 ], [ 0, %118 ], [ 0, %114 ]
  ret i32 %127
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_bcm_kona_sd_reset(ptr noundef %0) unnamed_addr #2 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = add i32 %2, 10
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !8

8:                                                ; preds = %1
  %9 = tail call i32 %6(ptr noundef %0, i32 noundef 32768) #4
  br label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr i8, ptr %12, i32 32768
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ %9, %8 ], [ %14, %10 ]
  %17 = or i32 %16, 2
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.sdhci_ops, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %15
  tail call void %20(ptr noundef %0, i32 noundef %17, i32 noundef 32768) #4
  br label %27

23:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 16
  %26 = getelementptr i8, ptr %25, i32 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %17) #4, !srcloc !12
  br label %27

27:                                               ; preds = %23, %22
  %28 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  br label %29

29:                                               ; preds = %43, %27
  %30 = load ptr, ptr %4, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !8

33:                                               ; preds = %29
  %34 = tail call i32 %31(ptr noundef %0, i32 noundef 32768) #4
  br label %39

35:                                               ; preds = %29
  %36 = load ptr, ptr %28, align 16
  %37 = getelementptr i8, ptr %36, i32 32768
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %39

39:                                               ; preds = %35, %33
  %40 = phi i32 [ %34, %33 ], [ %38, %35 ]
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = sub i32 %3, %44
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %29

47:                                               ; preds = %43
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #5
  br label %70

49:                                               ; preds = %39
  %50 = load ptr, ptr %4, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53, !prof !8

53:                                               ; preds = %49
  %54 = tail call i32 %51(ptr noundef %0, i32 noundef 32768) #4
  br label %59

55:                                               ; preds = %49
  %56 = load ptr, ptr %28, align 16
  %57 = getelementptr i8, ptr %56, i32 32768
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %59

59:                                               ; preds = %55, %53
  %60 = phi i32 [ %54, %53 ], [ %58, %55 ]
  %61 = and i32 %60, -3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #4
  %62 = load ptr, ptr %4, align 4
  %63 = getelementptr inbounds %struct.sdhci_ops, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66, !prof !8

66:                                               ; preds = %59
  tail call void %64(ptr noundef %0, i32 noundef %61, i32 noundef 32768) #4
  br label %70

67:                                               ; preds = %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %68 = load ptr, ptr %28, align 16
  %69 = getelementptr i8, ptr %68, i32 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %61) #4, !srcloc !12
  br label %70

70:                                               ; preds = %67, %66, %47
  %71 = phi i32 [ -14, %47 ], [ 0, %66 ], [ 0, %67 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdhci_bcm_kona_sd_card_emulate(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  tail call void @mutex_lock(ptr noundef %3) #4
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 4294960) #4
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !8

9:                                                ; preds = %2
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef 32772) #4
  br label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr i8, ptr %13, i32 32772
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ %10, %9 ], [ %15, %11 ]
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 @mmc_gpio_get_ro(ptr noundef %21) #4
  %23 = and i32 %17, -4
  %24 = icmp eq i32 %22, 0
  %25 = select i1 %24, i32 0, i32 2
  %26 = or i32 %25, %23
  %27 = icmp slt i32 %22, 0
  %28 = select i1 %27, i32 %17, i32 %26
  %29 = or i32 %28, 1
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr inbounds %struct.sdhci_ops, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !8

34:                                               ; preds = %19
  tail call void %32(ptr noundef %0, i32 noundef %29, i32 noundef 32772) #4
  br label %50

35:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %37 = load ptr, ptr %36, align 16
  %38 = getelementptr i8, ptr %37, i32 32772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %29) #4, !srcloc !12
  br label %50

39:                                               ; preds = %16
  %40 = and i32 %17, -2
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr inbounds %struct.sdhci_ops, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45, !prof !8

45:                                               ; preds = %39
  tail call void %43(ptr noundef %0, i32 noundef %40, i32 noundef 32772) #4
  br label %50

46:                                               ; preds = %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %47 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %48 = load ptr, ptr %47, align 16
  %49 = getelementptr i8, ptr %48, i32 32772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %40) #4, !srcloc !12
  br label %50

50:                                               ; preds = %46, %45, %35, %34
  tail call void @mutex_unlock(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_bcm_kona_init_74_clocks(ptr nocapture noundef readnone %0, i8 noundef zeroext %1) #2 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 158913520) #4
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_bcm_kona_card_event(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @mmc_gpio_get_cd(ptr noundef %3) #4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call fastcc void @sdhci_bcm_kona_sd_card_emulate(ptr noundef %0, i32 noundef 1)
  br label %34

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  tail call void @mutex_lock(ptr noundef %8) #4
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 4294960) #4
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !8

14:                                               ; preds = %7
  %15 = tail call i32 %12(ptr noundef %0, i32 noundef 32772) #4
  br label %21

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 16
  %19 = getelementptr i8, ptr %18, i32 32772
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi i32 [ %15, %14 ], [ %20, %16 ]
  %23 = and i32 %22, -2
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr inbounds %struct.sdhci_ops, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !8

28:                                               ; preds = %21
  tail call void %26(ptr noundef %0, i32 noundef %23, i32 noundef 32772) #4
  br label %33

29:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %30 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr i8, ptr %31, i32 32772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %23) #4, !srcloc !12
  br label %33

33:                                               ; preds = %29, %28
  tail call void @mutex_unlock(ptr noundef %8) #4
  br label %34

34:                                               ; preds = %33, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 4838437}
!10 = !{i64 2153923610}
!11 = !{i64 2153921941}
!12 = !{i64 4838019}
