; ModuleID = '/llk/IR/drivers/mmc/host/sdhci-omap.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-omap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sdhci_omap_data = type { i32, i32, i8 }
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
%struct.sdhci_omap_host = type { ptr, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, ptr, ptr, i32, i8, i32, i32, i32, i32, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_sdhci_omap__275_1493_sdhci_omap_driver_init6 = internal global ptr @sdhci_omap_driver_init, section ".initcall6.init", align 4
@sdhci_omap_driver = internal global %struct.platform_driver { ptr @sdhci_omap_probe, ptr @sdhci_omap_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @omap_sdhci_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_omap_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sdhci_omap_driver_exit = internal global ptr @sdhci_omap_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description276 = internal constant [50 x i8] c"sdhci_omap.description=SDHCI driver for OMAP SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_author277 = internal constant [41 x i8] c"sdhci_omap.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file278 = internal constant [44 x i8] c"sdhci_omap.file=drivers/mmc/host/sdhci-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_license279 = internal constant [26 x i8] c"sdhci_omap.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias280 = internal constant [37 x i8] c"sdhci_omap.alias=platform:sdhci_omap\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"sdhci-omap\00", align 1
@omap_sdhci_match = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2430-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2430_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap5_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,k2g-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @k2g_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am335_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am437-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am437_data }, %struct.of_device_id zeroinitializer], align 4
@sdhci_omap_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_omap_runtime_suspend, ptr @sdhci_omap_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"no sdhci omap data\0A\00", align 1
@sdhci_omap_pdata = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_omap_ops, i32 1660977152, i32 213000 }, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed sdhci_pltfm_init\0A\00", align 1
@sdhci_omap_soc_devices = internal constant [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr @.str.18, ptr null, ptr @.str.19, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"rev11\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"4809c000.mmc\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"480b4000.mmc\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"480ad000.mmc\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"failed to set clock to %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"pbias\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"pm_runtime_get_sync failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"ti,non-removable\00", align 1
@sdhci_omap_probe.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"using old ti,non-removable property\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@sdhci_omap_ops = internal global %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_omap_set_clock, ptr @sdhci_omap_set_power, ptr @sdhci_omap_irq, ptr null, ptr @sdhci_omap_enable_dma, ptr @sdhci_pltfm_clk_get_max_clock, ptr @sdhci_omap_get_min_clock, ptr null, ptr null, ptr @sdhci_omap_set_timeout, ptr @sdhci_omap_set_bus_width, ptr @sdhci_omap_init_74_clocks, ptr null, ptr @sdhci_omap_reset, ptr null, ptr @sdhci_omap_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"drivers/mmc/host/sdhci-omap.c\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.17 = private unnamed_addr constant [43 x i8] c"Timeout waiting on controller reset in %s\0A\00", align 1
@__func__.sdhci_omap_reset = private unnamed_addr constant [17 x i8] c"sdhci_omap_reset\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"DRA7[45]*\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"ES1.[01]\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"vqmmc\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"vqmmc regulator missing for pbias\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"failed to switch IO voltage to %dmV\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"misconfigured CAPA: %08x\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"vqmmc set voltage failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"pbias set voltage failed\0A\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"pbias reg enable fail\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"pbias reg disable fail\0A\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"failed to select pinctrl state\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"cpu_thermal\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"Unable to get thermal zone for tuning\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"Unable to find match\0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"Tuning failed\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Cannot get pinctrl\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"no pinctrl state for default mode\0A\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"sdr104\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"ddr50\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"sdr50\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"sdr25\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"sdr12\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"ddr_1_8v\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"ddr_3_3v\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"hs\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"hs200_1_8v\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"no pinctrl state for %s mode\00", align 1
@omap2430_data = internal constant %struct.sdhci_omap_data { i32 0, i32 256, i8 0 }, align 4
@omap3_data = internal constant %struct.sdhci_omap_data { i32 0, i32 256, i8 0 }, align 4
@omap4_data = internal constant %struct.sdhci_omap_data { i32 256, i32 512, i8 2 }, align 4
@omap5_data = internal constant %struct.sdhci_omap_data { i32 256, i32 512, i8 2 }, align 4
@dra7_data = internal constant %struct.sdhci_omap_data { i32 256, i32 512, i8 1 }, align 4
@k2g_data = internal constant %struct.sdhci_omap_data { i32 256, i32 512, i8 0 }, align 4
@am335_data = internal constant %struct.sdhci_omap_data { i32 256, i32 512, i8 2 }, align 4
@am437_data = internal constant %struct.sdhci_omap_data { i32 256, i32 512, i8 2 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias280, ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_file278, ptr @__UNIQUE_ID_license279, ptr @__exitcall_sdhci_omap_driver_exit, ptr @__initcall__kmod_sdhci_omap__275_1493_sdhci_omap_driver_init6, ptr @sdhci_omap_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdhci_omap_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_omap_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sdhci_omap_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_omap_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_omap_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @omap_sdhci_match, ptr noundef %2) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %261, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #10
  br label %261

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.sdhci_omap_data, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %261, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @sdhci_pltfm_init(ptr noundef %0, ptr noundef nonnull @sdhci_omap_pdata, i32 noundef 72) #9
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #10
  %19 = ptrtoint ptr %16 to i32
  br label %261

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 0, i32 81
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 1, i32 11, i32 5
  %23 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 1, i32 11, i32 10
  store ptr %16, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 0, i32 4
  %25 = load ptr, ptr %24, align 16
  %26 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 1, i32 11, i32 6
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 1, i32 11, i32 7
  store ptr %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.sdhci_omap_host, ptr %22, i32 0, i32 7
  store i8 3, ptr %28, align 1
  %29 = getelementptr inbounds %struct.sdhci_omap_host, ptr %22, i32 0, i32 8
  store i8 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.sdhci_omap_data, ptr %7, i32 0, i32 2
  %31 = load i8, ptr %30, align 4
  %32 = getelementptr inbounds %struct.sdhci_omap_host, ptr %22, i32 0, i32 9
  store i8 %31, ptr %32, align 1
  %33 = load i32, ptr %7, align 4
  %34 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 1, i32 11, i32 16
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 1, i32 11, i32 17
  store i32 -22, ptr %35, align 4
  %36 = getelementptr i8, ptr %25, i32 %12
  store ptr %36, ptr %24, align 16
  %37 = load i32, ptr %13, align 4
  %38 = add i32 %37, %12
  %39 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 0, i32 5
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 0, i32 10
  %41 = load ptr, ptr %40, align 8
  tail call void @sdhci_get_property(ptr noundef %0) #9
  %42 = tail call i32 @mmc_of_parse(ptr noundef %41) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %259

44:                                               ; preds = %20
  %45 = tail call ptr @soc_device_match(ptr noundef nonnull @sdhci_omap_soc_devices) #9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %83, label %47

47:                                               ; preds = %44
  store ptr @.str.3, ptr %22, align 4
  %48 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load ptr, ptr %2, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi ptr [ %52, %51 ], [ %49, %47 ]
  %55 = tail call i32 @strcmp(ptr noundef %54, ptr noundef nonnull dereferenceable(13) @.str.4)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 6
  store i32 96000000, ptr %58, align 16
  %59 = load ptr, ptr %48, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi ptr [ %59, %57 ], [ %49, %53 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load ptr, ptr %2, align 4
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi ptr [ %64, %63 ], [ %61, %60 ]
  %67 = tail call i32 @strcmp(ptr noundef %66, ptr noundef nonnull dereferenceable(13) @.str.5)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 6
  store i32 48000000, ptr %70, align 16
  %71 = load ptr, ptr %48, align 4
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi ptr [ %71, %69 ], [ %61, %65 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load ptr, ptr %2, align 4
  br label %77

77:                                               ; preds = %75, %72
  %78 = phi ptr [ %76, %75 ], [ %73, %72 ]
  %79 = tail call i32 @strcmp(ptr noundef %78, ptr noundef nonnull dereferenceable(13) @.str.6)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 6
  store i32 48000000, ptr %82, align 16
  br label %83

83:                                               ; preds = %81, %77, %44
  %84 = tail call zeroext i1 @mmc_can_gpio_ro(ptr noundef %41) #9
  br i1 %84, label %89, label %85

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 17
  %87 = load i32, ptr %86, align 4
  %88 = or i32 %87, 262144
  store i32 %88, ptr %86, align 4
  br label %89

89:                                               ; preds = %85, %83
  %90 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.7) #9
  store ptr %90, ptr %21, align 64
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = ptrtoint ptr %90 to i32
  br label %259

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 6
  %96 = load i32, ptr %95, align 16
  %97 = tail call i32 @clk_set_rate(ptr noundef %90, i32 noundef %96) #9
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = load i32, ptr %95, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %100) #10
  br label %259

101:                                              ; preds = %94
  %102 = tail call ptr @devm_regulator_get_optional(ptr noundef %2, ptr noundef nonnull @.str.9) #9
  %103 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 1, i32 11, i32 8
  store ptr %102, ptr %103, align 4
  %104 = icmp ule ptr %102, inttoptr (i32 -4096 to ptr)
  %105 = ptrtoint ptr %102 to i32
  %106 = icmp eq ptr %102, inttoptr (i32 -19 to ptr)
  %107 = or i1 %104, %106
  br i1 %107, label %108, label %259

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 1, i32 11, i32 9
  store i8 0, ptr %109, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 50) #9
  tail call void @pm_runtime_enable(ptr noundef %2) #9
  %110 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #9
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %113) #9, !srcloc !9
  %114 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %113, ptr %113, i32 0, i32 -1, ptr elementtype(i32) %113) #9, !srcloc !10
  %115 = extractvalue { i32, i32, i32 } %114, 0
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  br label %118

118:                                              ; preds = %117, %112
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #10
  br label %257

119:                                              ; preds = %108
  %120 = load ptr, ptr %27, align 4
  %121 = tail call ptr @regulator_get(ptr noundef %120, ptr noundef nonnull @.str.9) #9
  %122 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %122, label %137, label %123

123:                                              ; preds = %119
  %124 = tail call i32 @regulator_is_supported_voltage(ptr noundef %121, i32 noundef 1700000, i32 noundef 1950000) #9
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, i32 0, i32 67108864
  %127 = tail call i32 @regulator_is_supported_voltage(ptr noundef %121, i32 noundef 2700000, i32 noundef 3150000) #9
  %128 = icmp eq i32 %127, 0
  %129 = or i32 %126, 33554432
  %130 = select i1 %128, i32 %126, i32 %129
  %131 = tail call i32 @regulator_is_supported_voltage(ptr noundef %121, i32 noundef 3150000, i32 noundef 3600000) #9
  %132 = icmp eq i32 %131, 0
  %133 = or i32 %130, 16777216
  %134 = select i1 %132, i32 %130, i32 %133
  tail call void @regulator_put(ptr noundef %121) #9
  %135 = tail call ptr @regulator_get(ptr noundef %120, ptr noundef nonnull @.str.20) #9
  %136 = icmp ugt ptr %135, inttoptr (i32 -4096 to ptr)
  br i1 %136, label %158, label %140

137:                                              ; preds = %119
  %138 = tail call ptr @regulator_get(ptr noundef %120, ptr noundef nonnull @.str.20) #9
  %139 = icmp ugt ptr %138, inttoptr (i32 -4096 to ptr)
  br i1 %139, label %186, label %140

140:                                              ; preds = %137, %123
  %141 = phi ptr [ %138, %137 ], [ %135, %123 ]
  %142 = phi i32 [ -1, %137 ], [ %134, %123 ]
  %143 = tail call i32 @regulator_is_supported_voltage(ptr noundef %141, i32 noundef 1700000, i32 noundef 1950000) #9
  %144 = icmp eq i32 %143, 0
  %145 = select i1 %144, i32 0, i32 67108864
  %146 = tail call i32 @regulator_is_supported_voltage(ptr noundef %141, i32 noundef 2700000, i32 noundef 3150000) #9
  %147 = icmp eq i32 %146, 0
  %148 = or i32 %145, 33554432
  %149 = select i1 %147, i32 %145, i32 %148
  %150 = tail call i32 @regulator_is_supported_voltage(ptr noundef %141, i32 noundef 3150000, i32 noundef 3600000) #9
  %151 = icmp eq i32 %150, 0
  %152 = or i32 %149, 16777216
  %153 = select i1 %151, i32 %149, i32 %152
  tail call void @regulator_put(ptr noundef %141) #9
  %154 = and i32 %153, %142
  %155 = icmp eq i32 %142, -1
  %156 = and i32 %153, 33554432
  %157 = icmp eq i32 %156, 0
  br label %159

158:                                              ; preds = %123
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %120, ptr noundef nonnull @.str.21) #10
  br label %159

159:                                              ; preds = %158, %140
  %160 = phi i32 [ %134, %158 ], [ %142, %140 ]
  %161 = phi i1 [ false, %158 ], [ %155, %140 ]
  %162 = phi i32 [ %134, %158 ], [ %154, %140 ]
  %163 = phi i1 [ false, %158 ], [ %157, %140 ]
  %164 = and i32 %160, 16777216
  %165 = icmp eq i32 %164, 0
  %166 = or i1 %161, %165
  %167 = select i1 %166, i1 true, i1 %163
  %168 = or i32 %162, 16777216
  %169 = select i1 %167, i32 %162, i32 %168
  %170 = load ptr, ptr %26, align 4
  %171 = load i32, ptr %34, align 4
  %172 = getelementptr i8, ptr %170, i32 %171
  %173 = getelementptr i8, ptr %172, i32 320
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %175 = and i32 %174, -117440513
  %176 = and i32 %169, 117440512
  %177 = or i32 %175, %176
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %178 = load ptr, ptr %26, align 4
  %179 = load i32, ptr %34, align 4
  %180 = getelementptr i8, ptr %178, i32 %179
  %181 = getelementptr i8, ptr %180, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %177) #9, !srcloc !15
  %182 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 0, i32 56
  %183 = load i32, ptr %182, align 4
  %184 = and i32 %183, -117440513
  %185 = or i32 %184, %169
  store i32 %185, ptr %182, align 4
  br label %186

186:                                              ; preds = %159, %137
  %187 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 0, i32 11, i32 10
  store ptr @sdhci_omap_start_signal_voltage_switch, ptr %187, align 4
  %188 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 0, i32 11, i32 4
  store ptr @sdhci_omap_set_ios, ptr %188, align 4
  %189 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 0, i32 11, i32 11
  store ptr @sdhci_omap_card_busy, ptr %189, align 4
  %190 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 0, i32 11, i32 12
  store ptr @sdhci_omap_execute_tuning, ptr %190, align 4
  %191 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 0, i32 11, i32 7
  store ptr @sdhci_omap_enable_sdio_irq, ptr %191, align 4
  %192 = tail call zeroext i1 @device_property_present(ptr noundef %2, ptr noundef nonnull @.str.12) #9
  br i1 %192, label %193, label %202

193:                                              ; preds = %186
  %194 = icmp slt i32 %12, 512
  br i1 %194, label %201, label %195

195:                                              ; preds = %193
  %196 = load ptr, ptr %26, align 4
  %197 = getelementptr i8, ptr %196, i32 4
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %197) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %199 = and i32 %198, 1
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195, %193
  tail call void @sdhci_switch_external_dma(ptr noundef %16, i1 noundef zeroext true) #9
  br label %202

202:                                              ; preds = %201, %195, %186
  %203 = tail call zeroext i1 @device_property_present(ptr noundef %2, ptr noundef nonnull @.str.13) #9
  br i1 %203, label %207, label %204

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 16
  %206 = load i32, ptr %205, align 8
  br label %214

207:                                              ; preds = %202
  %208 = load i1, ptr @sdhci_omap_probe.__print_once, align 1
  br i1 %208, label %210, label %209

209:                                              ; preds = %207
  store i1 true, ptr @sdhci_omap_probe.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.14) #10
  br label %210

210:                                              ; preds = %209, %207
  %211 = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 16
  %212 = load i32, ptr %211, align 8
  %213 = or i32 %212, 256
  store i32 %213, ptr %211, align 8
  br label %214

214:                                              ; preds = %210, %204
  %215 = phi i32 [ %206, %204 ], [ %213, %210 ]
  %216 = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 16
  %217 = or i32 %215, 4210816
  store i32 %217, ptr %216, align 8
  %218 = tail call i32 @sdhci_setup_host(ptr noundef %16) #9
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %252

220:                                              ; preds = %214
  %221 = tail call fastcc i32 @sdhci_omap_config_iodelay_pinctrl_state(ptr noundef %22)
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %250

223:                                              ; preds = %220
  %224 = tail call i32 @__sdhci_add_host(ptr noundef %16) #9
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %250

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %228 = load ptr, ptr %227, align 8
  %229 = tail call i32 @of_irq_get_byname(ptr noundef %228, ptr noundef nonnull @.str.15) #9
  %230 = getelementptr inbounds %struct.sdhci_host, ptr %16, i32 1, i32 11, i32 14
  store i32 %229, ptr %230, align 4
  %231 = icmp eq i32 %229, -517
  br i1 %231, label %250, label %232

232:                                              ; preds = %226
  %233 = icmp sgt i32 %229, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %232
  %235 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext true) #9
  %236 = load i32, ptr %230, align 4
  %237 = tail call i32 @dev_pm_set_dedicated_wake_irq(ptr noundef %2, i32 noundef %236) #9
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %234
  %240 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext false) #9
  br label %250

241:                                              ; preds = %234
  %242 = load ptr, ptr %40, align 8
  %243 = getelementptr inbounds %struct.mmc_host, ptr %242, i32 0, i32 19
  %244 = load i32, ptr %243, align 4
  %245 = or i32 %244, 3
  store i32 %245, ptr %243, align 4
  br label %246

246:                                              ; preds = %241, %232
  %247 = tail call i64 @ktime_get_mono_fast_ns() #9
  %248 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %247, ptr %248, align 8
  %249 = tail call i32 @__pm_runtime_suspend(ptr noundef %2, i32 noundef 13) #9
  br label %261

250:                                              ; preds = %239, %226, %223, %220
  %251 = phi i32 [ %221, %220 ], [ %224, %223 ], [ %237, %239 ], [ -517, %226 ]
  tail call void @sdhci_cleanup_host(ptr noundef %16) #9
  br label %252

252:                                              ; preds = %250, %214
  %253 = phi i32 [ %218, %214 ], [ %251, %250 ]
  %254 = tail call i64 @ktime_get_mono_fast_ns() #9
  %255 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %254, ptr %255, align 8
  %256 = tail call i32 @__pm_runtime_suspend(ptr noundef %2, i32 noundef 13) #9
  br label %257

257:                                              ; preds = %252, %118
  %258 = phi i32 [ %110, %118 ], [ %253, %252 ]
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext false) #9
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #9
  br label %259

259:                                              ; preds = %257, %101, %99, %92, %20
  %260 = phi i32 [ %42, %20 ], [ %93, %92 ], [ %97, %99 ], [ %258, %257 ], [ %105, %101 ]
  tail call void @sdhci_pltfm_free(ptr noundef %0) #9
  br label %261

261:                                              ; preds = %259, %246, %18, %10, %9, %1
  %262 = phi i32 [ %19, %18 ], [ %260, %259 ], [ 0, %246 ], [ -22, %9 ], [ -22, %1 ], [ -6, %10 ]
  ret i32 %262
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_omap_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #9
  tail call void @sdhci_remove_host(ptr noundef %4, i32 noundef 1) #9
  %6 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext false) #9
  tail call void @dev_pm_clear_wake_irq(ptr noundef %2) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext false) #9
  %7 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #9
  %8 = tail call i32 @pm_runtime_force_suspend(ptr noundef %2) #9
  tail call void @sdhci_pltfm_free(ptr noundef %0) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_can_gpio_ro(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_omap_start_signal_voltage_switch(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 58
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 60
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 8
  %7 = load i8, ptr %6, align 1
  switch i8 %7, label %104 [
    i8 0, label %8
    i8 1, label %33
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 59
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 67, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = getelementptr i8, ptr %13, i32 320
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %16 = and i32 %15, 50331648
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %104, label %18

18:                                               ; preds = %8
  %19 = and i32 %15, 33554432
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 3300000, i32 3000000
  %22 = load i8, ptr %6, align 1
  tail call fastcc void @sdhci_omap_conf_bus_power(ptr noundef %3, i8 noundef zeroext %22)
  %23 = load ptr, ptr %9, align 4
  %24 = load i32, ptr %11, align 4
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = getelementptr i8, ptr %25, i32 316
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %28 = and i32 %27, -524289
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %29 = load ptr, ptr %9, align 4
  %30 = load i32, ptr %11, align 4
  %31 = getelementptr i8, ptr %29, i32 %30
  %32 = getelementptr i8, ptr %31, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %28) #9, !srcloc !15
  br label %55

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 59
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 67, i32 17
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = getelementptr i8, ptr %38, i32 320
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %41 = and i32 %40, 67108864
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %104, label %43

43:                                               ; preds = %33
  %44 = load i8, ptr %6, align 1
  tail call fastcc void @sdhci_omap_conf_bus_power(ptr noundef %3, i8 noundef zeroext %44)
  %45 = load ptr, ptr %34, align 4
  %46 = load i32, ptr %36, align 4
  %47 = getelementptr i8, ptr %45, i32 %46
  %48 = getelementptr i8, ptr %47, i32 316
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %50 = or i32 %49, 524288
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %51 = load ptr, ptr %34, align 4
  %52 = load i32, ptr %36, align 4
  %53 = getelementptr i8, ptr %51, i32 %52
  %54 = getelementptr i8, ptr %53, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %50) #9, !srcloc !15
  br label %55

55:                                               ; preds = %43, %18
  %56 = phi i32 [ %21, %18 ], [ 1800000, %43 ]
  %57 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 63
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.sdhci_host, ptr %58, i32 0, i32 10
  %60 = load ptr, ptr %59, align 8
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 61
  %63 = load ptr, ptr %62, align 4
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %74, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 62
  %67 = load i8, ptr %66, align 4, !range !17
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = tail call i32 @regulator_disable(ptr noundef %63) #9
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i8 0, ptr %66, align 4
  br label %74

73:                                               ; preds = %69
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.27) #10
  br label %102

74:                                               ; preds = %72, %65, %55
  %75 = getelementptr inbounds %struct.mmc_host, ptr %60, i32 0, i32 54, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.mmc_host, ptr %60, i32 0, i32 28
  %80 = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %60, ptr noundef %79) #9
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load ptr, ptr %60, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.24) #10
  br label %102

84:                                               ; preds = %78, %74
  %85 = load ptr, ptr %4, align 4
  %86 = load ptr, ptr %62, align 4
  %87 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %104, label %88

88:                                               ; preds = %84
  %89 = tail call i32 @regulator_set_voltage(ptr noundef %86, i32 noundef %56, i32 noundef %56) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.25) #10
  br label %102

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 62
  %94 = load i8, ptr %93, align 4, !range !17
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load ptr, ptr %62, align 4
  %98 = tail call i32 @regulator_enable(ptr noundef %97) #9
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.26) #10
  br label %102

101:                                              ; preds = %96
  store i8 1, ptr %93, align 4
  br label %104

102:                                              ; preds = %100, %91, %82, %73
  %103 = phi i32 [ %98, %100 ], [ %89, %91 ], [ %70, %73 ], [ %80, %82 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.22, i32 noundef %56) #10
  br label %104

104:                                              ; preds = %102, %101, %92, %84, %33, %8, %2
  %105 = phi i32 [ %103, %102 ], [ -95, %8 ], [ -95, %33 ], [ -95, %2 ], [ 0, %84 ], [ 0, %92 ], [ 0, %101 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_omap_set_ios(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 3
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 64
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, %4
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 59
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 67, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = getelementptr i8, ptr %13, i32 44
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %16 = icmp eq i8 %4, 1
  %17 = and i32 %15, -2
  %18 = zext i1 %16 to i32
  %19 = or i32 %17, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %20 = load ptr, ptr %9, align 4
  %21 = load i32, ptr %11, align 4
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = getelementptr i8, ptr %22, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #9, !srcloc !15
  store i8 %4, ptr %5, align 4
  br label %24

24:                                               ; preds = %8, %2
  %25 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 7
  %26 = load i8, ptr %25, align 4
  %27 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 60
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 67
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %71, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 66
  %35 = load i8, ptr %34, align 2
  %36 = icmp eq i8 %35, %26
  br i1 %36, label %71, label %37

37:                                               ; preds = %33
  %38 = zext i8 %26 to i32
  %39 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 59
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 67, i32 17
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %40, i32 %42
  %44 = getelementptr i8, ptr %43, i32 300
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %46 = and i32 %45, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %47 = load ptr, ptr %39, align 4
  %48 = load i32, ptr %41, align 4
  %49 = getelementptr i8, ptr %47, i32 %48
  %50 = getelementptr i8, ptr %49, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %46) #9, !srcloc !15
  %51 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 67, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr ptr, ptr %52, i32 %38
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 67, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @pinctrl_select_state(ptr noundef %56, ptr noundef %54) #9
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.28) #10
  br label %71

60:                                               ; preds = %37
  %61 = load ptr, ptr %39, align 4
  %62 = load i32, ptr %41, align 4
  %63 = getelementptr i8, ptr %61, i32 %62
  %64 = getelementptr i8, ptr %63, i32 300
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %66 = or i32 %65, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %67 = load ptr, ptr %39, align 4
  %68 = load i32, ptr %41, align 4
  %69 = getelementptr i8, ptr %67, i32 %68
  %70 = getelementptr i8, ptr %69, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %66) #9, !srcloc !15
  store i8 %26, ptr %34, align 2
  br label %71

71:                                               ; preds = %60, %59, %33, %24
  tail call void @sdhci_set_ios(ptr noundef %0, ptr noundef %1) #9
  %72 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 5
  %73 = load i8, ptr %72, align 2
  %74 = load i8, ptr %5, align 4
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 59
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 67, i32 17
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %78, i32 %80
  %82 = getelementptr i8, ptr %81, i32 316
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %84 = and i32 %83, -8388609
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %85 = load ptr, ptr %77, align 4
  %86 = load i32, ptr %79, align 4
  %87 = getelementptr i8, ptr %85, i32 %86
  %88 = getelementptr i8, ptr %87, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %84) #9, !srcloc !15
  %89 = load ptr, ptr %77, align 4
  %90 = load i32, ptr %79, align 4
  %91 = getelementptr i8, ptr %89, i32 %90
  %92 = getelementptr i8, ptr %91, i32 52
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %94 = and i32 %93, -1052673
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %95 = load ptr, ptr %77, align 4
  %96 = load i32, ptr %79, align 4
  %97 = getelementptr i8, ptr %95, i32 %96
  %98 = getelementptr i8, ptr %97, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %94) #9, !srcloc !15
  br label %99

99:                                               ; preds = %76, %71
  %100 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 65
  store i8 %73, ptr %100, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_omap_card_busy(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 35, i32 3
  %4 = load i32, ptr %3, align 64
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 59
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 67, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = getelementptr i8, ptr %9, i32 44
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %12 = load ptr, ptr %5, align 4
  %13 = load i32, ptr %7, align 4
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = getelementptr i8, ptr %14, i32 316
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %17 = and i32 %11, -98305
  %18 = lshr i32 %16, 3
  %19 = and i32 %18, 65536
  %20 = or i32 %17, %19
  %21 = or i32 %20, 32768
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %22 = load ptr, ptr %5, align 4
  %23 = load i32, ptr %7, align 4
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = getelementptr i8, ptr %24, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %21) #9, !srcloc !15
  %26 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  tail call void @disable_irq(i32 noundef %27) #9
  %28 = or i32 %4, 256
  %29 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sdhci_ops, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !18

34:                                               ; preds = %1
  tail call void %32(ptr noundef %2, i32 noundef %28, i32 noundef 52) #9
  br label %39

35:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %36 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %37 = load ptr, ptr %36, align 16
  %38 = getelementptr i8, ptr %37, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %28) #9, !srcloc !15
  br label %39

39:                                               ; preds = %35, %34
  %40 = load ptr, ptr %29, align 4
  %41 = getelementptr inbounds %struct.sdhci_ops, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44, !prof !18

44:                                               ; preds = %39
  tail call void %42(ptr noundef %2, i32 noundef %28, i32 noundef 56) #9
  br label %49

45:                                               ; preds = %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %46 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %47 = load ptr, ptr %46, align 16
  %48 = getelementptr i8, ptr %47, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %28) #9, !srcloc !15
  br label %49

49:                                               ; preds = %45, %44
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #9
  %50 = load ptr, ptr %5, align 4
  %51 = load i32, ptr %7, align 4
  %52 = getelementptr i8, ptr %50, i32 %51
  %53 = getelementptr i8, ptr %52, i32 292
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %55 = load ptr, ptr %5, align 4
  %56 = load i32, ptr %7, align 4
  %57 = getelementptr i8, ptr %55, i32 %56
  %58 = getelementptr i8, ptr %57, i32 44
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %60 = and i32 %59, -98305
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %61 = load ptr, ptr %5, align 4
  %62 = load i32, ptr %7, align 4
  %63 = getelementptr i8, ptr %61, i32 %62
  %64 = getelementptr i8, ptr %63, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %60) #9, !srcloc !15
  %65 = load i32, ptr %3, align 64
  %66 = load ptr, ptr %29, align 4
  %67 = getelementptr inbounds %struct.sdhci_ops, ptr %66, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70, !prof !18

70:                                               ; preds = %49
  tail call void %68(ptr noundef %2, i32 noundef %65, i32 noundef 52) #9
  br label %75

71:                                               ; preds = %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %72 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %73 = load ptr, ptr %72, align 16
  %74 = getelementptr i8, ptr %73, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %65) #9, !srcloc !15
  br label %75

75:                                               ; preds = %71, %70
  %76 = load i32, ptr %3, align 64
  %77 = load ptr, ptr %29, align 4
  %78 = getelementptr inbounds %struct.sdhci_ops, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81, !prof !18

81:                                               ; preds = %75
  tail call void %79(ptr noundef %2, i32 noundef %76, i32 noundef 56) #9
  br label %86

82:                                               ; preds = %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %83 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %84 = load ptr, ptr %83, align 16
  %85 = getelementptr i8, ptr %84, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %76) #9, !srcloc !15
  br label %86

86:                                               ; preds = %82, %81
  %87 = and i32 %54, 1048578
  %88 = icmp ne i32 %87, 1048576
  %89 = zext i1 %88 to i32
  %90 = load i32, ptr %26, align 4
  tail call void @enable_irq(i32 noundef %90) #9
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_omap_execute_tuning(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 58
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 60
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !20
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 52000001
  br i1 %10, label %375, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 59
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 67, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = getelementptr i8, ptr %16, i32 324
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %19 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 7
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 5
  %22 = and i32 %18, 8192
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %375, label %25

25:                                               ; preds = %11
  %26 = tail call ptr @thermal_zone_get_zone_by_name(ptr noundef nonnull @.str.29) #9
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.30) #10
  %29 = ptrtoint ptr %26 to i32
  br label %375

30:                                               ; preds = %25
  %31 = call i32 @thermal_zone_get_temp(ptr noundef %26, ptr noundef nonnull %3) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %375

33:                                               ; preds = %30
  %34 = load ptr, ptr %12, align 4
  %35 = load i32, ptr %14, align 4
  %36 = getelementptr i8, ptr %34, i32 %35
  %37 = getelementptr i8, ptr %36, i32 52
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %39 = or i32 %38, 1048576
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %40 = load ptr, ptr %12, align 4
  %41 = load i32, ptr %14, align 4
  %42 = getelementptr i8, ptr %40, i32 %41
  %43 = getelementptr i8, ptr %42, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %39) #9, !srcloc !15
  %44 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 35, i32 3
  %45 = load i32, ptr %44, align 64
  %46 = and i32 %45, 2097152
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %33
  %49 = and i32 %45, -2097153
  store i32 %49, ptr %44, align 64
  br label %50

50:                                               ; preds = %48, %33
  %51 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 67, i32 13
  store i8 1, ptr %51, align 4
  br label %52

52:                                               ; preds = %107, %50
  %53 = phi i32 [ 0, %50 ], [ %114, %107 ]
  %54 = phi i32 [ 0, %50 ], [ %113, %107 ]
  %55 = phi i32 [ 0, %50 ], [ %110, %107 ]
  %56 = phi i8 [ 0, %50 ], [ %98, %107 ]
  %57 = phi i1 [ false, %50 ], [ %109, %107 ]
  %58 = phi i32 [ 0, %50 ], [ %112, %107 ]
  %59 = phi i32 [ 0, %50 ], [ %108, %107 ]
  %60 = load ptr, ptr %12, align 4
  %61 = load i32, ptr %14, align 4
  %62 = getelementptr i8, ptr %60, i32 52
  %63 = getelementptr i8, ptr %62, i32 %61
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #9, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %65 = and i32 %64, -1044481
  %66 = shl nuw nsw i32 %53, 13
  %67 = or i32 %65, %66
  %68 = or i32 %67, 4096
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %69 = load ptr, ptr %12, align 4
  %70 = load i32, ptr %14, align 4
  %71 = getelementptr i8, ptr %69, i32 52
  %72 = getelementptr i8, ptr %71, i32 %70
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %68) #9, !srcloc !15
  %73 = or i32 %67, 4098
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %74 = load ptr, ptr %12, align 4
  %75 = load i32, ptr %14, align 4
  %76 = getelementptr i8, ptr %74, i32 52
  %77 = getelementptr i8, ptr %76, i32 %75
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %73) #9, !srcloc !15
  br label %78

78:                                               ; preds = %78, %52
  %79 = phi i32 [ 0, %52 ], [ %87, %78 ]
  %80 = load ptr, ptr %12, align 4
  %81 = load i32, ptr %14, align 4
  %82 = getelementptr i8, ptr %80, i32 52
  %83 = getelementptr i8, ptr %82, i32 %81
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #9, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %85 = and i32 %84, 2
  %86 = icmp ne i32 %85, 0
  %87 = add nuw nsw i32 %79, 1
  %88 = icmp eq i32 %87, 1000
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %90, label %78

90:                                               ; preds = %78
  %91 = and i32 %84, -3
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %92 = load ptr, ptr %12, align 4
  %93 = load i32, ptr %14, align 4
  %94 = getelementptr i8, ptr %92, i32 52
  %95 = getelementptr i8, ptr %94, i32 %93
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %91) #9, !srcloc !15
  %96 = call i32 @mmc_send_tuning(ptr noundef %0, i32 noundef %1, ptr noundef null) #9
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i8
  br i1 %97, label %99, label %105

99:                                               ; preds = %90
  %100 = icmp eq i8 %56, 0
  %101 = add i32 %55, 1
  br i1 %100, label %102, label %107

102:                                              ; preds = %99
  %103 = select i1 %57, i32 %59, i32 %53
  %104 = select i1 %57, i32 %101, i32 1
  br label %107

105:                                              ; preds = %90
  %106 = icmp ne i8 %56, 0
  br label %107

107:                                              ; preds = %105, %102, %99
  %108 = phi i32 [ %59, %105 ], [ %103, %102 ], [ %59, %99 ]
  %109 = phi i1 [ %106, %105 ], [ %57, %102 ], [ %57, %99 ]
  %110 = phi i32 [ %55, %105 ], [ %104, %102 ], [ %101, %99 ]
  %111 = icmp ugt i32 %110, %54
  %112 = select i1 %111, i32 %108, i32 %58
  %113 = call i32 @llvm.umax.i32(i32 %110, i32 %54)
  %114 = add nuw nsw i32 %53, 4
  %115 = icmp ult i32 %53, 121
  br i1 %115, label %52, label %116

116:                                              ; preds = %107
  %117 = icmp eq i32 %113, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %116
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.31) #10
  br label %346

119:                                              ; preds = %116
  %120 = load i32, ptr %3, align 4
  %121 = icmp slt i32 %120, -20000
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = shl i32 %113, 2
  %124 = add i32 %112, -28
  %125 = add i32 %124, %123
  %126 = mul i32 %113, 13
  %127 = add i32 %126, 15
  %128 = lshr i32 %127, 2
  %129 = and i32 %128, 1073741820
  %130 = add i32 %129, %112
  %131 = call i32 @llvm.umin.i32(i32 %125, i32 %130)
  br label %176

132:                                              ; preds = %119
  %133 = icmp slt i32 %120, 20000
  br i1 %133, label %134, label %140

134:                                              ; preds = %132
  %135 = mul i32 %113, 9
  %136 = add i32 %135, 15
  %137 = lshr i32 %136, 2
  %138 = and i32 %137, 1073741820
  %139 = add i32 %138, %112
  br label %176

140:                                              ; preds = %132
  %141 = icmp ult i32 %120, 40000
  br i1 %141, label %142, label %148

142:                                              ; preds = %140
  %143 = shl i32 %113, 3
  %144 = add i32 %143, 15
  %145 = lshr i32 %144, 2
  %146 = and i32 %145, 1073741820
  %147 = add i32 %146, %112
  br label %176

148:                                              ; preds = %140
  %149 = icmp ult i32 %120, 70000
  br i1 %149, label %150, label %156

150:                                              ; preds = %148
  %151 = mul i32 %113, 7
  %152 = add i32 %151, 15
  %153 = lshr i32 %152, 2
  %154 = and i32 %153, 1073741820
  %155 = add i32 %154, %112
  br label %176

156:                                              ; preds = %148
  %157 = icmp ult i32 %120, 90000
  br i1 %157, label %158, label %164

158:                                              ; preds = %156
  %159 = mul i32 %113, 5
  %160 = add i32 %159, 15
  %161 = lshr i32 %160, 2
  %162 = and i32 %161, 1073741820
  %163 = add i32 %162, %112
  br label %176

164:                                              ; preds = %156
  %165 = icmp ult i32 %120, 120000
  br i1 %165, label %166, label %170

166:                                              ; preds = %164
  %167 = add i32 %113, 3
  %168 = and i32 %167, 1073741820
  %169 = add i32 %168, %112
  br label %176

170:                                              ; preds = %164
  %171 = mul i32 %113, 3
  %172 = add i32 %171, 15
  %173 = lshr i32 %172, 2
  %174 = and i32 %173, 1073741820
  %175 = add i32 %174, %112
  br label %176

176:                                              ; preds = %170, %166, %158, %150, %142, %134, %122
  %177 = phi i32 [ %131, %122 ], [ %139, %134 ], [ %147, %142 ], [ %155, %150 ], [ %163, %158 ], [ %169, %166 ], [ %175, %170 ]
  br label %178

178:                                              ; preds = %234, %176
  %179 = phi i32 [ 3, %176 ], [ %235, %234 ]
  %180 = add i32 %179, %177
  %181 = load ptr, ptr %12, align 4
  %182 = load i32, ptr %14, align 4
  %183 = getelementptr i8, ptr %181, i32 52
  %184 = getelementptr i8, ptr %183, i32 %182
  %185 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %184) #9, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %186 = and i32 %185, -1044481
  %187 = shl i32 %180, 13
  %188 = or i32 %186, %187
  %189 = or i32 %188, 4096
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %190 = load ptr, ptr %12, align 4
  %191 = load i32, ptr %14, align 4
  %192 = getelementptr i8, ptr %190, i32 52
  %193 = getelementptr i8, ptr %192, i32 %191
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %189) #9, !srcloc !15
  %194 = or i32 %188, 4098
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %195 = load ptr, ptr %12, align 4
  %196 = load i32, ptr %14, align 4
  %197 = getelementptr i8, ptr %195, i32 52
  %198 = getelementptr i8, ptr %197, i32 %196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %194) #9, !srcloc !15
  br label %199

199:                                              ; preds = %199, %178
  %200 = phi i32 [ 0, %178 ], [ %208, %199 ]
  %201 = load ptr, ptr %12, align 4
  %202 = load i32, ptr %14, align 4
  %203 = getelementptr i8, ptr %201, i32 52
  %204 = getelementptr i8, ptr %203, i32 %202
  %205 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %204) #9, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %206 = and i32 %205, 2
  %207 = icmp ne i32 %206, 0
  %208 = add nuw nsw i32 %200, 1
  %209 = icmp eq i32 %208, 1000
  %210 = select i1 %207, i1 true, i1 %209
  br i1 %210, label %211, label %199

211:                                              ; preds = %199
  %212 = and i32 %205, -3
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %213 = load ptr, ptr %12, align 4
  %214 = load i32, ptr %14, align 4
  %215 = getelementptr i8, ptr %213, i32 52
  %216 = getelementptr i8, ptr %215, i32 %214
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %212) #9, !srcloc !15
  %217 = call i32 @mmc_send_tuning(ptr noundef %0, i32 noundef %1, ptr noundef null) #9
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %234, label %219

219:                                              ; preds = %211
  %220 = load i32, ptr %3, align 4
  %221 = icmp slt i32 %220, 10000
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = add i32 %180, 6
  br label %300

224:                                              ; preds = %219
  %225 = icmp ult i32 %220, 20000
  br i1 %225, label %226, label %228

226:                                              ; preds = %224
  %227 = add i32 %180, -12
  br label %300

228:                                              ; preds = %224
  %229 = icmp ult i32 %220, 70000
  br i1 %229, label %230, label %232

230:                                              ; preds = %228
  %231 = add i32 %180, -8
  br label %300

232:                                              ; preds = %228
  %233 = add i32 %180, -6
  br label %300

234:                                              ; preds = %211
  %235 = add nuw nsw i32 %179, 1
  %236 = icmp eq i32 %235, 11
  br i1 %236, label %237, label %178

237:                                              ; preds = %297, %234
  %238 = phi i32 [ %298, %297 ], [ 2, %234 ]
  %239 = add i32 %238, %177
  %240 = load ptr, ptr %12, align 4
  %241 = load i32, ptr %14, align 4
  %242 = getelementptr i8, ptr %240, i32 52
  %243 = getelementptr i8, ptr %242, i32 %241
  %244 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %243) #9, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %245 = and i32 %244, -1044481
  %246 = shl i32 %239, 13
  %247 = or i32 %245, %246
  %248 = or i32 %247, 4096
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %249 = load ptr, ptr %12, align 4
  %250 = load i32, ptr %14, align 4
  %251 = getelementptr i8, ptr %249, i32 52
  %252 = getelementptr i8, ptr %251, i32 %250
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 %248) #9, !srcloc !15
  %253 = or i32 %247, 4098
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %254 = load ptr, ptr %12, align 4
  %255 = load i32, ptr %14, align 4
  %256 = getelementptr i8, ptr %254, i32 52
  %257 = getelementptr i8, ptr %256, i32 %255
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 %253) #9, !srcloc !15
  br label %258

258:                                              ; preds = %258, %237
  %259 = phi i32 [ 0, %237 ], [ %267, %258 ]
  %260 = load ptr, ptr %12, align 4
  %261 = load i32, ptr %14, align 4
  %262 = getelementptr i8, ptr %260, i32 52
  %263 = getelementptr i8, ptr %262, i32 %261
  %264 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %263) #9, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %265 = and i32 %264, 2
  %266 = icmp ne i32 %265, 0
  %267 = add nuw nsw i32 %259, 1
  %268 = icmp eq i32 %267, 1000
  %269 = select i1 %266, i1 true, i1 %268
  br i1 %269, label %270, label %258

270:                                              ; preds = %258
  %271 = and i32 %264, -3
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %272 = load ptr, ptr %12, align 4
  %273 = load i32, ptr %14, align 4
  %274 = getelementptr i8, ptr %272, i32 52
  %275 = getelementptr i8, ptr %274, i32 %273
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %275, i32 %271) #9, !srcloc !15
  %276 = call i32 @mmc_send_tuning(ptr noundef %0, i32 noundef %1, ptr noundef null) #9
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %297, label %278

278:                                              ; preds = %270
  %279 = load i32, ptr %3, align 4
  %280 = icmp slt i32 %279, 10000
  br i1 %280, label %281, label %283

281:                                              ; preds = %278
  %282 = add i32 %239, 12
  br label %300

283:                                              ; preds = %278
  %284 = icmp ult i32 %279, 20000
  br i1 %284, label %285, label %287

285:                                              ; preds = %283
  %286 = add i32 %239, 8
  br label %300

287:                                              ; preds = %283
  %288 = icmp ult i32 %279, 70000
  br i1 %288, label %289, label %291

289:                                              ; preds = %287
  %290 = add i32 %239, 8
  br label %300

291:                                              ; preds = %287
  %292 = icmp ult i32 %279, 90000
  br i1 %292, label %293, label %295

293:                                              ; preds = %291
  %294 = add i32 %239, 10
  br label %300

295:                                              ; preds = %291
  %296 = add i32 %239, 12
  br label %300

297:                                              ; preds = %270
  %298 = add nsw i32 %238, -1
  %299 = icmp sgt i32 %238, -10
  br i1 %299, label %237, label %300

300:                                              ; preds = %297, %295, %293, %289, %285, %281, %232, %230, %226, %222
  %301 = phi i32 [ %223, %222 ], [ %227, %226 ], [ %231, %230 ], [ %233, %232 ], [ %282, %281 ], [ %286, %285 ], [ %290, %289 ], [ %294, %293 ], [ %296, %295 ], [ %177, %297 ]
  %302 = load ptr, ptr %12, align 4
  %303 = load i32, ptr %14, align 4
  %304 = getelementptr i8, ptr %302, i32 %303
  %305 = getelementptr i8, ptr %304, i32 316
  %306 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %305) #9, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %307 = and i32 %306, 8388608
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %346, label %309

309:                                              ; preds = %300
  %310 = load ptr, ptr %12, align 4
  %311 = load i32, ptr %14, align 4
  %312 = getelementptr i8, ptr %310, i32 %311
  %313 = getelementptr i8, ptr %312, i32 52
  %314 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %313) #9, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %315 = and i32 %314, -1044481
  %316 = shl i32 %301, 13
  %317 = or i32 %315, %316
  %318 = or i32 %317, 4096
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %319 = load ptr, ptr %12, align 4
  %320 = load i32, ptr %14, align 4
  %321 = getelementptr i8, ptr %319, i32 %320
  %322 = getelementptr i8, ptr %321, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %322, i32 %318) #9, !srcloc !15
  %323 = or i32 %317, 4098
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %324 = load ptr, ptr %12, align 4
  %325 = load i32, ptr %14, align 4
  %326 = getelementptr i8, ptr %324, i32 %325
  %327 = getelementptr i8, ptr %326, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %327, i32 %323) #9, !srcloc !15
  br label %328

328:                                              ; preds = %328, %309
  %329 = phi i32 [ 0, %309 ], [ %337, %328 ]
  %330 = load ptr, ptr %12, align 4
  %331 = load i32, ptr %14, align 4
  %332 = getelementptr i8, ptr %330, i32 52
  %333 = getelementptr i8, ptr %332, i32 %331
  %334 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %333) #9, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %335 = and i32 %334, 2
  %336 = icmp ne i32 %335, 0
  %337 = add nuw nsw i32 %329, 1
  %338 = icmp eq i32 %337, 1000
  %339 = select i1 %336, i1 true, i1 %338
  br i1 %339, label %340, label %328

340:                                              ; preds = %328
  %341 = and i32 %334, -3
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %342 = load ptr, ptr %12, align 4
  %343 = load i32, ptr %14, align 4
  %344 = getelementptr i8, ptr %342, i32 %343
  %345 = getelementptr i8, ptr %344, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %345, i32 %341) #9, !srcloc !15
  store i8 0, ptr %51, align 4
  br label %347

346:                                              ; preds = %300, %118
  store i8 0, ptr %51, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.32) #10
  call fastcc void @sdhci_omap_disable_tuning(ptr noundef %5)
  br label %347

347:                                              ; preds = %346, %340
  %348 = phi i32 [ 0, %340 ], [ -5, %346 ]
  call void @sdhci_reset(ptr noundef %4, i8 noundef zeroext 6) #9
  %349 = load i32, ptr %44, align 64
  br i1 %47, label %352, label %350

350:                                              ; preds = %347
  %351 = or i32 %349, 2097152
  store i32 %351, ptr %44, align 64
  br label %352

352:                                              ; preds = %350, %347
  %353 = phi i32 [ %351, %350 ], [ %349, %347 ]
  %354 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %355 = load ptr, ptr %354, align 4
  %356 = getelementptr inbounds %struct.sdhci_ops, ptr %355, i32 0, i32 3
  %357 = load ptr, ptr %356, align 4
  %358 = icmp eq ptr %357, null
  br i1 %358, label %360, label %359, !prof !18

359:                                              ; preds = %352
  call void %357(ptr noundef %4, i32 noundef %353, i32 noundef 52) #9
  br label %364

360:                                              ; preds = %352
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  call void @arm_heavy_mb() #9
  %361 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %362 = load ptr, ptr %361, align 16
  %363 = getelementptr i8, ptr %362, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %363, i32 %353) #9, !srcloc !15
  br label %364

364:                                              ; preds = %360, %359
  %365 = load i32, ptr %44, align 64
  %366 = load ptr, ptr %354, align 4
  %367 = getelementptr inbounds %struct.sdhci_ops, ptr %366, i32 0, i32 3
  %368 = load ptr, ptr %367, align 4
  %369 = icmp eq ptr %368, null
  br i1 %369, label %371, label %370, !prof !18

370:                                              ; preds = %364
  call void %368(ptr noundef %4, i32 noundef %365, i32 noundef 56) #9
  br label %375

371:                                              ; preds = %364
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  call void @arm_heavy_mb() #9
  %372 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %373 = load ptr, ptr %372, align 16
  %374 = getelementptr i8, ptr %373, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %374, i32 %365) #9, !srcloc !15
  br label %375

375:                                              ; preds = %371, %370, %30, %28, %11, %2
  %376 = phi i32 [ %29, %28 ], [ 0, %2 ], [ 0, %11 ], [ %31, %30 ], [ %348, %370 ], [ %348, %371 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %376
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_omap_enable_sdio_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 59
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 67, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = getelementptr i8, ptr %7, i32 44
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %10 = icmp eq i32 %1, 0
  %11 = and i32 %9, -67585
  %12 = select i1 %10, i32 0, i32 67584
  %13 = or i32 %11, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %14 = load ptr, ptr %3, align 4
  %15 = load i32, ptr %5, align 4
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = getelementptr i8, ptr %16, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %13) #9, !srcloc !15
  tail call void @sdhci_enable_sdio_irq(ptr noundef %0, i32 noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_switch_external_dma(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_setup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_omap_config_iodelay_pinctrl_state(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sdhci_omap_host, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sdhci_omap_host, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 16
  %9 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 17
  %10 = getelementptr inbounds %struct.sdhci_omap_host, ptr %0, i32 0, i32 9
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %81, label %14

14:                                               ; preds = %1
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 40, i32 noundef 3520) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %81, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 4
  %19 = tail call ptr @devm_pinctrl_get(ptr noundef %18) #9
  %20 = getelementptr inbounds %struct.sdhci_omap_host, ptr %0, i32 0, i32 10
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.33) #10
  %23 = load ptr, ptr %20, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %81

25:                                               ; preds = %17
  %26 = tail call ptr @pinctrl_lookup_state(ptr noundef %19, ptr noundef nonnull @.str.34) #9
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.35) #10
  %29 = ptrtoint ptr %26 to i32
  br label %81

30:                                               ; preds = %25
  store ptr %26, ptr %15, align 4
  %31 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef %8, i32 noundef 524288)
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = getelementptr ptr, ptr %15, i32 6
  store ptr %31, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef %8, i32 noundef 1048576)
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = getelementptr ptr, ptr %15, i32 7
  store ptr %36, ptr %39, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef %8, i32 noundef 262144)
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = getelementptr ptr, ptr %15, i32 5
  store ptr %41, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef %8, i32 noundef 131072)
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = getelementptr ptr, ptr %15, i32 4
  store ptr %46, ptr %49, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %8, i32 noundef 65536)
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = getelementptr ptr, ptr %15, i32 3
  store ptr %51, ptr %54, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef %8, i32 noundef 4096)
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %8, i32 noundef 2048)
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %64, label %61

61:                                               ; preds = %58, %55
  %62 = phi ptr [ %56, %55 ], [ %59, %58 ]
  %63 = getelementptr ptr, ptr %15, i32 8
  store ptr %62, ptr %63, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef %8, i32 noundef 4)
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = getelementptr ptr, ptr %15, i32 2
  store ptr %65, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef %8, i32 noundef 2)
  %71 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = getelementptr ptr, ptr %15, i32 1
  store ptr %70, ptr %73, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef %9, i32 noundef 32)
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = getelementptr ptr, ptr %15, i32 9
  store ptr %75, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %74
  %80 = getelementptr inbounds %struct.sdhci_omap_host, ptr %0, i32 0, i32 11
  store ptr %15, ptr %80, align 4
  br label %81

81:                                               ; preds = %79, %28, %22, %14, %1
  %82 = phi i32 [ %24, %22 ], [ %29, %28 ], [ 0, %79 ], [ 0, %1 ], [ -12, %14 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_dedicated_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cleanup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_omap_set_clock(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = getelementptr i8, ptr %7, i32 300
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %10 = and i32 %9, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %11 = load ptr, ptr %3, align 4
  %12 = load i32, ptr %5, align 4
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr i8, ptr %13, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %10) #9, !srcloc !15
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 81
  %18 = load ptr, ptr %17, align 64
  %19 = tail call i32 @clk_get_rate(ptr noundef %18) #9
  %20 = add i32 %1, -1
  %21 = add i32 %20, %19
  %22 = udiv i32 %21, %1
  %23 = trunc i32 %22 to i16
  %24 = and i32 %22, 64512
  %25 = icmp eq i32 %24, 0
  %26 = shl i16 %23, 6
  %27 = select i1 %25, i16 %26, i16 -64
  tail call void @sdhci_enable_clk(ptr noundef %0, i16 noundef zeroext %27) #9
  %28 = load ptr, ptr %3, align 4
  %29 = load i32, ptr %5, align 4
  %30 = getelementptr i8, ptr %28, i32 %29
  %31 = getelementptr i8, ptr %30, i32 300
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %33 = or i32 %32, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %34 = load ptr, ptr %3, align 4
  %35 = load i32, ptr %5, align 4
  %36 = getelementptr i8, ptr %34, i32 %35
  %37 = getelementptr i8, ptr %36, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %33) #9, !srcloc !15
  br label %38

38:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_omap_set_power(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 54
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %5, ptr noundef %7, i16 noundef zeroext %2) #9
  br label %11

11:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_omap_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 15
  %4 = load i8, ptr %3, align 4, !range !17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 33
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 37
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 1
  %14 = icmp ne i8 %13, 0
  %15 = and i32 %1, 983040
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %16, %14
  br i1 %17, label %36, label %18

18:                                               ; preds = %10
  %19 = and i32 %1, 65536
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 -84, i32 -110
  %22 = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 5
  store i32 %21, ptr %22, align 4
  store ptr null, ptr %7, align 4
  %23 = and i32 %1, 983041
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sdhci_ops, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !18

29:                                               ; preds = %18
  tail call void %27(ptr noundef %0, i32 noundef %23, i32 noundef 48) #9
  br label %34

30:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 16
  %33 = getelementptr i8, ptr %32, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %23) #9, !srcloc !15
  br label %34

34:                                               ; preds = %30, %29
  %35 = and i32 %1, -983042
  br label %36

36:                                               ; preds = %34, %10, %6, %2
  %37 = phi i32 [ %1, %10 ], [ %35, %34 ], [ %1, %6 ], [ %1, %2 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_omap_enable_dma(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 %5
  %7 = getelementptr i8, ptr %6, i32 44
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %9 = and i32 %8, -1048577
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 30
  %11 = load i8, ptr %10, align 1, !range !17
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 1048576, i32 0
  %14 = or i32 %13, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %15 = load ptr, ptr %2, align 4
  %16 = load i32, ptr %4, align 4
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %14) #9, !srcloc !15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_omap_get_min_clock(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 81
  %3 = load ptr, ptr %2, align 64
  %4 = tail call i32 @clk_get_rate(ptr noundef %3) #9
  %5 = udiv i32 %4, 1023
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_omap_set_timeout(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 38
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @sdhci_set_data_timeout_irq(ptr noundef %0, i1 noundef zeroext false) #9
  br label %6

6:                                                ; preds = %5, %2
  tail call void @__sdhci_set_timeout(ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_omap_set_bus_width(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = getelementptr i8, ptr %7, i32 44
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %10 = icmp eq i32 %1, 3
  %11 = and i32 %9, -33
  %12 = select i1 %10, i32 32, i32 0
  %13 = or i32 %11, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %14 = load ptr, ptr %3, align 4
  %15 = load i32, ptr %5, align 4
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = getelementptr i8, ptr %16, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %13) #9, !srcloc !15
  tail call void @sdhci_set_bus_width(ptr noundef %0, i32 noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_omap_init_74_clocks(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %4 = getelementptr inbounds %struct.sdhci_omap_host, ptr %3, i32 0, i32 7
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %1, 2
  %7 = icmp ne i8 %5, 2
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %67

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  tail call void @disable_irq(i32 noundef %11) #9
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 16
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = getelementptr i8, ptr %16, i32 44
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %19 = or i32 %18, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %20 = load ptr, ptr %12, align 4
  %21 = load i32, ptr %14, align 4
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = getelementptr i8, ptr %22, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #9, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %24 = load ptr, ptr %12, align 4
  %25 = load i32, ptr %14, align 4
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = getelementptr i8, ptr %26, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #9, !srcloc !15
  %28 = tail call i64 @ktime_get() #9
  %29 = add i64 %28, 1000000
  %30 = tail call i64 @ktime_get() #9
  %31 = load ptr, ptr %12, align 4
  %32 = load i32, ptr %14, align 4
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = getelementptr i8, ptr %33, i32 304
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %42, %9
  %39 = phi i64 [ %43, %42 ], [ %30, %9 ]
  %40 = icmp sgt i64 %39, %29
  br i1 %40, label %41, label %42, !prof !21

41:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 808, i32 noundef 9, ptr noundef null) #9
  br label %67

42:                                               ; preds = %38
  tail call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #9
  %43 = tail call i64 @ktime_get() #9
  %44 = load ptr, ptr %12, align 4
  %45 = load i32, ptr %14, align 4
  %46 = getelementptr i8, ptr %44, i32 304
  %47 = getelementptr i8, ptr %46, i32 %45
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %38, label %51

51:                                               ; preds = %42, %9
  %52 = load ptr, ptr %12, align 4
  %53 = load i32, ptr %14, align 4
  %54 = getelementptr i8, ptr %52, i32 %53
  %55 = getelementptr i8, ptr %54, i32 44
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %57 = and i32 %56, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %58 = load ptr, ptr %12, align 4
  %59 = load i32, ptr %14, align 4
  %60 = getelementptr i8, ptr %58, i32 %59
  %61 = getelementptr i8, ptr %60, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %57) #9, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %62 = load ptr, ptr %12, align 4
  %63 = load i32, ptr %14, align 4
  %64 = getelementptr i8, ptr %62, i32 %63
  %65 = getelementptr i8, ptr %64, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 1) #9, !srcloc !15
  %66 = load i32, ptr %10, align 4
  tail call void @enable_irq(i32 noundef %66) #9
  br label %67

67:                                               ; preds = %51, %41, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_omap_reset(ptr noundef %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %4 = and i8 %1, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 16
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = getelementptr i8, ptr %11, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ %13, %6 ], [ 0, %2 ]
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 15
  %17 = load i8, ptr %16, align 4, !range !17
  %18 = icmp eq i8 %17, 0
  %19 = and i8 %1, -5
  %20 = select i1 %18, i8 %1, i8 %19
  %21 = getelementptr inbounds %struct.sdhci_omap_host, ptr %3, i32 0, i32 9
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %99, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sdhci_ops, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !18

31:                                               ; preds = %25
  tail call void %29(ptr noundef %0, i8 noundef zeroext %20, i32 noundef 47) #9
  br label %36

32:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %34 = load ptr, ptr %33, align 16
  %35 = getelementptr i8, ptr %34, i32 47
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 %20) #9, !srcloc !23
  br label %36

36:                                               ; preds = %32, %31
  %37 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  br label %38

38:                                               ; preds = %56, %36
  %39 = phi i32 [ 0, %36 ], [ %57, %56 ]
  %40 = load ptr, ptr %26, align 4
  %41 = getelementptr inbounds %struct.sdhci_ops, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44, !prof !18

44:                                               ; preds = %38
  %45 = tail call zeroext i8 %42(ptr noundef %0, i32 noundef 47) #9
  br label %50

46:                                               ; preds = %38
  %47 = load ptr, ptr %37, align 16
  %48 = getelementptr i8, ptr %47, i32 47
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %48) #9, !srcloc !24
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi i8 [ %45, %44 ], [ %49, %46 ]
  %52 = and i8 %51, %20
  %53 = icmp eq i8 %52, 0
  %54 = icmp ult i32 %39, 20000
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = add nuw nsw i32 %39, 1
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748) #9
  br label %38

59:                                               ; preds = %77, %50
  %60 = phi i32 [ %78, %77 ], [ 0, %50 ]
  %61 = load ptr, ptr %26, align 4
  %62 = getelementptr inbounds %struct.sdhci_ops, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65, !prof !18

65:                                               ; preds = %59
  %66 = tail call zeroext i8 %63(ptr noundef %0, i32 noundef 47) #9
  br label %71

67:                                               ; preds = %59
  %68 = load ptr, ptr %37, align 16
  %69 = getelementptr i8, ptr %68, i32 47
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %69) #9, !srcloc !24
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  br label %71

71:                                               ; preds = %67, %65
  %72 = phi i8 [ %66, %65 ], [ %70, %67 ]
  %73 = and i8 %72, %20
  %74 = icmp ne i8 %73, 0
  %75 = icmp ult i32 %60, 20000
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = add nuw nsw i32 %60, 1
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748) #9
  br label %59

80:                                               ; preds = %71
  %81 = load ptr, ptr %26, align 4
  %82 = getelementptr inbounds %struct.sdhci_ops, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85, !prof !18

85:                                               ; preds = %80
  %86 = tail call zeroext i8 %83(ptr noundef %0, i32 noundef 47) #9
  br label %91

87:                                               ; preds = %80
  %88 = load ptr, ptr %37, align 16
  %89 = getelementptr i8, ptr %88, i32 47
  %90 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %89) #9, !srcloc !24
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  br label %91

91:                                               ; preds = %87, %85
  %92 = phi i8 [ %86, %85 ], [ %90, %87 ]
  %93 = and i8 %92, %20
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %97 = load ptr, ptr %96, align 8
  %98 = load ptr, ptr %97, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.sdhci_omap_reset) #10
  br label %100

99:                                               ; preds = %14
  tail call void @sdhci_reset(ptr noundef %0, i8 noundef zeroext %20) #9
  br label %100

100:                                              ; preds = %99, %95, %91
  %101 = and i8 %20, 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %104 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 6
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 16
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr i8, ptr %105, i32 %107
  %109 = getelementptr i8, ptr %108, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %15) #9, !srcloc !15
  br label %110

110:                                              ; preds = %103, %100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_omap_set_uhs_signaling(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = getelementptr i8, ptr %7, i32 300
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %10 = and i32 %9, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %11 = load ptr, ptr %3, align 4
  %12 = load i32, ptr %5, align 4
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr i8, ptr %13, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %10) #9, !srcloc !15
  %15 = load ptr, ptr %3, align 4
  %16 = load i32, ptr %5, align 4
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = getelementptr i8, ptr %17, i32 44
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %20 = add i32 %1, -7
  %21 = icmp ult i32 %20, 2
  %22 = and i32 %19, -524289
  %23 = select i1 %21, i32 524288, i32 0
  %24 = or i32 %22, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %25 = load ptr, ptr %3, align 4
  %26 = load i32, ptr %5, align 4
  %27 = getelementptr i8, ptr %25, i32 %26
  %28 = getelementptr i8, ptr %27, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %24) #9, !srcloc !15
  tail call void @sdhci_set_uhs_signaling(ptr noundef %0, i32 noundef %1) #9
  %29 = load ptr, ptr %3, align 4
  %30 = load i32, ptr %5, align 4
  %31 = getelementptr i8, ptr %29, i32 %30
  %32 = getelementptr i8, ptr %31, i32 300
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %34 = or i32 %33, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %35 = load ptr, ptr %3, align 4
  %36 = load i32, ptr %5, align 4
  %37 = getelementptr i8, ptr %35, i32 %36
  %38 = getelementptr i8, ptr %37, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %34) #9, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_clk(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_data_timeout_irq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdhci_set_timeout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_supported_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdhci_omap_conf_bus_power(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sdhci_omap_host, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_omap_host, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = getelementptr i8, ptr %7, i32 296
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %10 = and i32 %9, -3585
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 4
  %14 = load i32, ptr %5, align 4
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = getelementptr i8, ptr %15, i32 320
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %18 = and i32 %17, 16777216
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = or i32 %9, 3584
  br label %32

22:                                               ; preds = %12
  %23 = and i32 %17, 33554432
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = or i32 %10, 3072
  br label %32

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.sdhci_omap_host, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.23, i32 noundef %17) #10
  br label %32

30:                                               ; preds = %2
  %31 = or i32 %10, 2560
  br label %32

32:                                               ; preds = %30, %27, %25, %20
  %33 = phi i32 [ %21, %20 ], [ %26, %25 ], [ %10, %27 ], [ %31, %30 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %34 = load ptr, ptr %3, align 4
  %35 = load i32, ptr %5, align 4
  %36 = getelementptr i8, ptr %34, i32 %35
  %37 = getelementptr i8, ptr %36, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %33) #9, !srcloc !15
  %38 = or i32 %33, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %39 = load ptr, ptr %3, align 4
  %40 = load i32, ptr %5, align 4
  %41 = getelementptr i8, ptr %39, i32 %40
  %42 = getelementptr i8, ptr %41, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %38) #9, !srcloc !15
  %43 = tail call i64 @ktime_get() #9
  %44 = add i64 %43, 1000000
  %45 = tail call i64 @ktime_get() #9
  %46 = load ptr, ptr %3, align 4
  %47 = load i32, ptr %5, align 4
  %48 = getelementptr i8, ptr %46, i32 %47
  %49 = getelementptr i8, ptr %48, i32 296
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %51 = and i32 %50, 256
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %57, %32
  %54 = phi i64 [ %58, %57 ], [ %45, %32 ]
  %55 = icmp sgt i64 %54, %44
  br i1 %55, label %56, label %57, !prof !21

56:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 258, i32 noundef 9, ptr noundef null) #9
  br label %66

57:                                               ; preds = %53
  tail call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #9
  %58 = tail call i64 @ktime_get() #9
  %59 = load ptr, ptr %3, align 4
  %60 = load i32, ptr %5, align 4
  %61 = getelementptr i8, ptr %59, i32 296
  %62 = getelementptr i8, ptr %61, i32 %60
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %64 = and i32 %63, 256
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %53, label %66

66:                                               ; preds = %57, %56, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_ios(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdhci_omap_disable_tuning(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sdhci_omap_host, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sdhci_omap_host, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 %5
  %7 = getelementptr i8, ptr %6, i32 316
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %9 = and i32 %8, -8388609
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %10 = load ptr, ptr %2, align 4
  %11 = load i32, ptr %4, align 4
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = getelementptr i8, ptr %12, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %9) #9, !srcloc !15
  %14 = load ptr, ptr %2, align 4
  %15 = load i32, ptr %4, align 4
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = getelementptr i8, ptr %16, i32 52
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %19 = and i32 %18, -1052673
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %20 = load ptr, ptr %2, align 4
  %21 = load i32, ptr %4, align 4
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = getelementptr i8, ptr %22, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #9, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_get_zone_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_get_temp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_sdio_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca [20 x i8], align 1
  %6 = getelementptr inbounds %struct.sdhci_omap_host, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !20
  %9 = load i32, ptr %2, align 4
  %10 = and i32 %9, %3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %4
  %13 = icmp eq ptr %8, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %12
  %15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 20, ptr noundef nonnull @.str.45, ptr noundef %1, ptr noundef nonnull %8)
  %16 = getelementptr inbounds %struct.sdhci_omap_host, ptr %0, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = call ptr @pinctrl_lookup_state(ptr noundef %17, ptr noundef nonnull %5) #9
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %24

20:                                               ; preds = %14, %12
  %21 = getelementptr inbounds %struct.sdhci_omap_host, ptr %0, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  %23 = call ptr @pinctrl_lookup_state(ptr noundef %22, ptr noundef %1) #9
  br label %24

24:                                               ; preds = %20, %14
  %25 = phi ptr [ %23, %20 ], [ %18, %14 ]
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.46, ptr noundef %1) #10
  %28 = xor i32 %3, -1
  %29 = load i32, ptr %2, align 4
  %30 = and i32 %29, %28
  store i32 %30, ptr %2, align 4
  br label %31

31:                                               ; preds = %27, %24, %4
  %32 = phi ptr [ %25, %27 ], [ %25, %24 ], [ inttoptr (i32 -19 to ptr), %4 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_omap_runtime_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @sdhci_runtime_suspend_host(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = getelementptr i8, ptr %9, i32 44
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 17
  store i32 %11, ptr %12, align 4
  %13 = load ptr, ptr %5, align 4
  %14 = load i32, ptr %7, align 4
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = getelementptr i8, ptr %15, i32 296
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 18
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = load i32, ptr %7, align 4
  %21 = getelementptr i8, ptr %19, i32 %20
  %22 = getelementptr i8, ptr %21, i32 300
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 19
  store i32 %23, ptr %24, align 4
  %25 = load ptr, ptr %5, align 4
  %26 = load i32, ptr %7, align 4
  %27 = getelementptr i8, ptr %25, i32 %26
  %28 = getelementptr i8, ptr %27, i32 320
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %30 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 20
  store i32 %29, ptr %30, align 4
  %31 = load ptr, ptr %5, align 4
  %32 = load i32, ptr %7, align 4
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = getelementptr i8, ptr %33, i32 308
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 21
  store i32 %35, ptr %36, align 4
  %37 = load ptr, ptr %5, align 4
  %38 = load i32, ptr %7, align 4
  %39 = getelementptr i8, ptr %37, i32 %38
  %40 = getelementptr i8, ptr %39, i32 312
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %42 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 22
  store i32 %41, ptr %42, align 4
  %43 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %0) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_omap_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, -22
  br i1 %7, label %51, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 18
  %10 = load i32, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = getelementptr i8, ptr %15, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %10) #9, !srcloc !15
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 20
  %18 = load i32, ptr %17, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %19 = load ptr, ptr %11, align 4
  %20 = load i32, ptr %13, align 4
  %21 = getelementptr i8, ptr %19, i32 %20
  %22 = getelementptr i8, ptr %21, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %18) #9, !srcloc !15
  %23 = load i32, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %24 = load ptr, ptr %11, align 4
  %25 = load i32, ptr %13, align 4
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = getelementptr i8, ptr %26, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %23) #9, !srcloc !15
  %28 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 19
  %29 = load i32, ptr %28, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %30 = load ptr, ptr %11, align 4
  %31 = load i32, ptr %13, align 4
  %32 = getelementptr i8, ptr %30, i32 %31
  %33 = getelementptr i8, ptr %32, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %29) #9, !srcloc !15
  %34 = load i32, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %35 = load ptr, ptr %11, align 4
  %36 = load i32, ptr %13, align 4
  %37 = getelementptr i8, ptr %35, i32 %36
  %38 = getelementptr i8, ptr %37, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %34) #9, !srcloc !15
  %39 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 21
  %40 = load i32, ptr %39, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %41 = load ptr, ptr %11, align 4
  %42 = load i32, ptr %13, align 4
  %43 = getelementptr i8, ptr %41, i32 %42
  %44 = getelementptr i8, ptr %43, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %40) #9, !srcloc !15
  %45 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 22
  %46 = load i32, ptr %45, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %47 = load ptr, ptr %11, align 4
  %48 = load i32, ptr %13, align 4
  %49 = getelementptr i8, ptr %47, i32 %48
  %50 = getelementptr i8, ptr %49, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %46) #9, !srcloc !15
  br label %51

51:                                               ; preds = %8, %1
  %52 = tail call i32 @sdhci_runtime_resume_host(ptr noundef %3, i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_resume_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 2147929091}
!9 = !{i64 427401, i64 2147917372, i64 2147917398, i64 2147917445, i64 2147917467, i64 2147917495, i64 2147917515}
!10 = !{i64 413970, i64 413995, i64 414017, i64 414033, i64 414045, i64 414065, i64 414089, i64 414105, i64 414117}
!11 = !{i64 2147929217}
!12 = !{i64 3893277}
!13 = !{i64 2154061912}
!14 = !{i64 2154066350}
!15 = !{i64 3892859}
!16 = !{i64 2154080299}
!17 = !{i8 0, i8 2}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2154057881}
!20 = !{!"auto-init"}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2154058943}
!23 = !{i64 3892662}
!24 = !{i64 3893057}
!25 = !{i64 2154060520}
