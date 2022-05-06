; ModuleID = '/llk/IR/drivers/mmc/host/sdhci-tegra.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_tegra_soc_data = type { ptr, i64, i32, i8, i8 }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_core_opp_params = type { i8 }
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
%struct.sdhci_tegra = type { ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sdhci_tegra_autocal_offsets, i64, i32, i32, i32, i8, i32, i8 }
%struct.sdhci_tegra_autocal_offsets = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_sdhci_tegra__275_1892_sdhci_tegra_driver_init6 = internal global ptr @sdhci_tegra_driver_init, section ".initcall6.init", align 4
@sdhci_tegra_driver = internal global %struct.platform_driver { ptr @sdhci_tegra_probe, ptr @sdhci_tegra_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_tegra_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_tegra_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sdhci_tegra_driver_exit = internal global ptr @sdhci_tegra_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description276 = internal constant [47 x i8] c"sdhci_tegra.description=SDHCI driver for Tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_author277 = internal constant [32 x i8] c"sdhci_tegra.author=Google, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file278 = internal constant [46 x i8] c"sdhci_tegra.file=drivers/mmc/host/sdhci-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license279 = internal constant [27 x i8] c"sdhci_tegra.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"sdhci-tegra\00", align 1
@sdhci_tegra_dt_match = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_tegra194 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_tegra186 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_tegra210 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_tegra124 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_tegra114 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_tegra30 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_tegra20 }, %struct.of_device_id zeroinitializer], align 4
@sdhci_tegra_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_tegra_suspend, ptr @sdhci_tegra_resume, ptr @sdhci_tegra_suspend, ptr @sdhci_tegra_resume, ptr @sdhci_tegra_suspend, ptr @sdhci_tegra_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_tegra_runtime_suspend, ptr @sdhci_tegra_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"tmclk\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to get tmclk: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to enable tmclk: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"sdhci\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to get reset control: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"sdmmc-1v8-drv\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"sdmmc-3v3-drv\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"sdmmc-3v3\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Missing 3.3V pad state, err: %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"sdmmc-1v8\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Missing 1.8V pad state, err: %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"failed pads drvupdn, ret: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"setting 1.8V failed, ret: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"setting 3.3V failed, ret: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Pad autocal timed out\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Setting drive strengths failed: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"failed to set clk rate to %luHz: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"drivers/mmc/host/sdhci-tegra.c\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"no edge detected, continue with hw tuned delay.\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"supports-cqe\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"nvidia,pad-autocal-pull-up-offset-3v3\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"nvidia,pad-autocal-pull-down-offset-3v3\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"nvidia,pad-autocal-pull-up-offset-1v8\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"nvidia,pad-autocal-pull-down-offset-1v8\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"nvidia,pad-autocal-pull-up-offset-sdr104\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"nvidia,pad-autocal-pull-down-offset-sdr104\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"nvidia,pad-autocal-pull-up-offset-hs400\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"nvidia,pad-autocal-pull-down-offset-hs400\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"nvidia,pad-autocal-pull-up-offset-3v3-timeout\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"\014%s: Missing autocal timeout 3v3-pad drvs\0A\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"nvidia,pad-autocal-pull-down-offset-3v3-timeout\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"nvidia,pad-autocal-pull-up-offset-1v8-timeout\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"\014%s: Missing autocal timeout 1v8-pad drvs\0A\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"nvidia,pad-autocal-pull-down-offset-1v8-timeout\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"nvidia,default-tap\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"nvidia,default-trim\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"nvidia,dqs-trim\00", align 1
@sdhci_tegra_cqhci_ops = internal constant %struct.cqhci_host_ops { ptr @sdhci_tegra_dumpregs, ptr @tegra_cqhci_writel, ptr null, ptr @sdhci_tegra_cqe_enable, ptr @sdhci_cqe_disable, ptr @sdhci_tegra_update_dcmd_desc, ptr @sdhci_tegra_cqe_pre_enable, ptr @sdhci_tegra_cqe_post_disable }, align 4
@soc_data_tegra194 = internal constant %struct.sdhci_tegra_soc_data { ptr @sdhci_tegra186_pdata, i64 549755813887, i32 1496, i8 96, i8 -117 }, align 8
@soc_data_tegra186 = internal constant %struct.sdhci_tegra_soc_data { ptr @sdhci_tegra186_pdata, i64 1099511627775, i32 2008, i8 84, i8 -120 }, align 8
@soc_data_tegra210 = internal constant %struct.sdhci_tegra_soc_data { ptr @sdhci_tegra210_pdata, i64 17179869183, i32 1496, i8 106, i8 -71 }, align 8
@soc_data_tegra124 = internal constant %struct.sdhci_tegra_soc_data { ptr @sdhci_tegra124_pdata, i64 17179869183, i32 2048, i8 0, i8 0 }, align 8
@soc_data_tegra114 = internal constant %struct.sdhci_tegra_soc_data { ptr @sdhci_tegra114_pdata, i64 4294967295, i32 2048, i8 0, i8 0 }, align 8
@soc_data_tegra30 = internal constant %struct.sdhci_tegra_soc_data { ptr @sdhci_tegra30_pdata, i64 4294967295, i32 2140, i8 0, i8 0 }, align 8
@soc_data_tegra20 = internal constant %struct.sdhci_tegra_soc_data { ptr @sdhci_tegra20_pdata, i64 4294967295, i32 2051, i8 0, i8 0 }, align 8
@sdhci_tegra186_pdata = internal constant %struct.sdhci_pltfm_data { ptr @tegra186_sdhci_ops, i32 1644171272, i32 8 }, align 4
@tegra186_sdhci_ops = internal constant %struct.sdhci_ops { ptr null, ptr @tegra_sdhci_readw, ptr null, ptr @tegra_sdhci_writel, ptr null, ptr null, ptr @tegra_sdhci_set_clock, ptr null, ptr @sdhci_tegra_cqhci_irq, ptr @tegra_sdhci_set_dma_mask, ptr null, ptr @tegra_sdhci_get_max_clock, ptr null, ptr null, ptr null, ptr @tegra_sdhci_set_timeout, ptr @sdhci_set_bus_width, ptr null, ptr @tegra_sdhci_get_ro, ptr @tegra_sdhci_reset, ptr null, ptr @tegra_sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr @tegra_sdhci_voltage_switch, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.40 = private unnamed_addr constant [40 x i8] c"HS400 delay line calibration timed out\0A\00", align 1
@sdhci_tegra210_pdata = internal constant %struct.sdhci_pltfm_data { ptr @tegra210_sdhci_ops, i32 1644171272, i32 8 }, align 4
@tegra210_sdhci_ops = internal constant %struct.sdhci_ops { ptr null, ptr @tegra_sdhci_readw, ptr null, ptr @tegra_sdhci_writel, ptr @tegra210_sdhci_writew, ptr null, ptr @tegra_sdhci_set_clock, ptr null, ptr null, ptr @tegra_sdhci_set_dma_mask, ptr null, ptr @tegra_sdhci_get_max_clock, ptr null, ptr null, ptr null, ptr @tegra_sdhci_set_timeout, ptr @sdhci_set_bus_width, ptr null, ptr @tegra_sdhci_get_ro, ptr @tegra_sdhci_reset, ptr null, ptr @tegra_sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr @tegra_sdhci_voltage_switch, ptr null, ptr null, ptr null, ptr null }, align 4
@sdhci_tegra124_pdata = internal constant %struct.sdhci_pltfm_data { ptr @tegra114_sdhci_ops, i32 1660948488, i32 8 }, align 4
@tegra114_sdhci_ops = internal constant %struct.sdhci_ops { ptr null, ptr @tegra_sdhci_readw, ptr null, ptr @tegra_sdhci_writel, ptr @tegra_sdhci_writew, ptr null, ptr @tegra_sdhci_set_clock, ptr null, ptr null, ptr @tegra_sdhci_set_dma_mask, ptr null, ptr @tegra_sdhci_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr @tegra_sdhci_get_ro, ptr @tegra_sdhci_reset, ptr @tegra_sdhci_execute_tuning, ptr @tegra_sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr @tegra_sdhci_voltage_switch, ptr null, ptr null, ptr null, ptr null }, align 4
@sdhci_tegra114_pdata = internal constant %struct.sdhci_pltfm_data { ptr @tegra114_sdhci_ops, i32 1660948488, i32 8 }, align 4
@sdhci_tegra30_pdata = internal constant %struct.sdhci_pltfm_data { ptr @tegra_sdhci_ops, i32 1660948488, i32 16456 }, align 4
@tegra_sdhci_ops = internal constant %struct.sdhci_ops { ptr null, ptr @tegra_sdhci_readw, ptr null, ptr @tegra_sdhci_writel, ptr null, ptr null, ptr @tegra_sdhci_set_clock, ptr null, ptr null, ptr @tegra_sdhci_set_dma_mask, ptr null, ptr @tegra_sdhci_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr @tegra_sdhci_get_ro, ptr @tegra_sdhci_reset, ptr @tegra_sdhci_execute_tuning, ptr @tegra_sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr @tegra_sdhci_voltage_switch, ptr null, ptr null, ptr null, ptr null }, align 4
@sdhci_tegra20_pdata = internal constant %struct.sdhci_pltfm_data { ptr @tegra_sdhci_ops, i32 1644171272, i32 0 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_file278, ptr @__UNIQUE_ID_license279, ptr @__exitcall_sdhci_tegra_driver_exit, ptr @__initcall__kmod_sdhci_tegra__275_1892_sdhci_tegra_driver_init6, ptr @sdhci_tegra_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_tegra_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sdhci_tegra_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_tegra_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.tegra_core_opp_params, align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_match_device(ptr noundef nonnull @sdhci_tegra_dt_match, ptr noundef %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %367, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @sdhci_pltfm_init(ptr noundef %0, ptr noundef %9, i32 noundef 120) #8
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = ptrtoint ptr %10 to i32
  br label %367

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 0, i32 81
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 5
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 8
  store i8 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sdhci_tegra, ptr %16, i32 0, i32 4
  store i8 0, ptr %18, align 1
  %19 = getelementptr inbounds %struct.sdhci_tegra, ptr %16, i32 0, i32 5
  store i8 0, ptr %19, align 2
  store ptr %8, ptr %16, align 8
  %20 = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %8, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 0, i32 10
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 17
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, 268435456
  store i32 %29, ptr %27, align 4
  %30 = load i32, ptr %20, align 8
  br label %31

31:                                               ; preds = %24, %14
  %32 = phi i32 [ %30, %24 ], [ %21, %14 ]
  %33 = and i32 %32, 128
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %64, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @devm_pinctrl_get(ptr noundef %3) #8
  %37 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 10
  store ptr %36, ptr %37, align 4
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %64, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @pinctrl_lookup_state(ptr noundef %36, ptr noundef nonnull @.str.8) #8
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 14
  %42 = icmp eq ptr %40, inttoptr (i32 -19 to ptr)
  %43 = select i1 %42, ptr null, ptr %40
  store ptr %43, ptr %41, align 4
  %44 = load ptr, ptr %37, align 4
  %45 = tail call ptr @pinctrl_lookup_state(ptr noundef %44, ptr noundef nonnull @.str.9) #8
  %46 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 13
  %47 = icmp eq ptr %45, inttoptr (i32 -19 to ptr)
  %48 = select i1 %47, ptr null, ptr %45
  store ptr %48, ptr %46, align 8
  %49 = load ptr, ptr %37, align 4
  %50 = tail call ptr @pinctrl_lookup_state(ptr noundef %49, ptr noundef nonnull @.str.10) #8
  %51 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 11
  store ptr %50, ptr %51, align 8
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = ptrtoint ptr %50 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %54) #9
  br label %64

55:                                               ; preds = %39
  %56 = load ptr, ptr %37, align 4
  %57 = tail call ptr @pinctrl_lookup_state(ptr noundef %56, ptr noundef nonnull @.str.12) #8
  %58 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 12
  store ptr %57, ptr %58, align 4
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = ptrtoint ptr %57 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %61) #9
  br label %64

62:                                               ; preds = %55
  store i8 1, ptr %19, align 2
  %63 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 0, i32 11, i32 10
  store ptr @sdhci_tegra_start_signal_voltage_switch, ptr %63, align 4
  br label %64

64:                                               ; preds = %62, %60, %53, %35, %31
  %65 = load i32, ptr %20, align 8
  %66 = and i32 %65, 64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 0, i32 11, i32 2
  store ptr @tegra_sdhci_request, ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 0, i32 11, i32 18
  store ptr @tegra_sdhci_hs400_enhanced_strobe, ptr %71, align 4
  %72 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 0, i32 9
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.sdhci_ops, ptr %73, i32 0, i32 20
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 0, i32 11, i32 12
  store ptr @tegra_sdhci_execute_hw_tuning, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %70
  %80 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 0, i32 10
  %81 = load ptr, ptr %80, align 8
  %82 = tail call i32 @mmc_of_parse(ptr noundef %81) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %365

84:                                               ; preds = %79
  %85 = load ptr, ptr %16, align 8
  %86 = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %85, i32 0, i32 2
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %84
  %91 = load ptr, ptr %80, align 8
  %92 = getelementptr inbounds %struct.mmc_host, ptr %91, i32 0, i32 16
  %93 = load i32, ptr %92, align 8
  %94 = or i32 %93, 4096
  store i32 %94, ptr %92, align 8
  br label %95

95:                                               ; preds = %90, %84
  %96 = load ptr, ptr %80, align 8
  %97 = getelementptr inbounds %struct.mmc_host, ptr %96, i32 0, i32 16
  %98 = load i32, ptr %97, align 8
  %99 = or i32 %98, 4194816
  store i32 %99, ptr %97, align 8
  %100 = load ptr, ptr %80, align 8
  %101 = load ptr, ptr %100, align 64
  %102 = tail call zeroext i1 @device_property_present(ptr noundef %101, ptr noundef nonnull @.str.22) #8
  %103 = zext i1 %102 to i8
  %104 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 13, i32 5
  store i8 %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 15
  %106 = load ptr, ptr %80, align 8
  %107 = load ptr, ptr %106, align 64
  %108 = tail call i32 @device_property_read_u32_array(ptr noundef %107, ptr noundef nonnull @.str.23, ptr noundef %105, i32 noundef 1) #8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %95
  store i32 0, ptr %105, align 4
  br label %111

111:                                              ; preds = %110, %95
  %112 = load ptr, ptr %80, align 8
  %113 = load ptr, ptr %112, align 64
  %114 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 16
  %115 = tail call i32 @device_property_read_u32_array(ptr noundef %113, ptr noundef nonnull @.str.24, ptr noundef %114, i32 noundef 1) #8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  store i32 0, ptr %114, align 4
  br label %118

118:                                              ; preds = %117, %111
  %119 = load ptr, ptr %80, align 8
  %120 = load ptr, ptr %119, align 64
  %121 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 19
  %122 = tail call i32 @device_property_read_u32_array(ptr noundef %120, ptr noundef nonnull @.str.25, ptr noundef %121, i32 noundef 1) #8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %118
  store i32 0, ptr %121, align 4
  br label %125

125:                                              ; preds = %124, %118
  %126 = load ptr, ptr %80, align 8
  %127 = load ptr, ptr %126, align 64
  %128 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 20
  %129 = tail call i32 @device_property_read_u32_array(ptr noundef %127, ptr noundef nonnull @.str.26, ptr noundef %128, i32 noundef 1) #8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %125
  store i32 0, ptr %128, align 4
  br label %132

132:                                              ; preds = %131, %125
  %133 = load ptr, ptr %80, align 8
  %134 = load ptr, ptr %133, align 64
  %135 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 23
  %136 = tail call i32 @device_property_read_u32_array(ptr noundef %134, ptr noundef nonnull @.str.27, ptr noundef %135, i32 noundef 1) #8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %132
  %139 = load i32, ptr %121, align 4
  store i32 %139, ptr %135, align 4
  br label %140

140:                                              ; preds = %138, %132
  %141 = load ptr, ptr %80, align 8
  %142 = load ptr, ptr %141, align 64
  %143 = getelementptr inbounds %struct.sdhci_tegra, ptr %16, i32 0, i32 12, i32 9
  %144 = tail call i32 @device_property_read_u32_array(ptr noundef %142, ptr noundef nonnull @.str.28, ptr noundef %143, i32 noundef 1) #8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %140
  %147 = load i32, ptr %128, align 4
  store i32 %147, ptr %143, align 4
  br label %148

148:                                              ; preds = %146, %140
  %149 = load ptr, ptr %80, align 8
  %150 = load ptr, ptr %149, align 64
  %151 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 12
  %152 = tail call i32 @device_property_read_u32_array(ptr noundef %150, ptr noundef nonnull @.str.29, ptr noundef %151, i32 noundef 1) #8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %148
  %155 = load i32, ptr %121, align 4
  store i32 %155, ptr %151, align 4
  br label %156

156:                                              ; preds = %154, %148
  %157 = load ptr, ptr %80, align 8
  %158 = load ptr, ptr %157, align 64
  %159 = getelementptr inbounds %struct.sdhci_tegra, ptr %16, i32 0, i32 12, i32 11
  %160 = tail call i32 @device_property_read_u32_array(ptr noundef %158, ptr noundef nonnull @.str.30, ptr noundef %159, i32 noundef 1) #8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %156
  %163 = load i32, ptr %128, align 4
  store i32 %163, ptr %159, align 4
  br label %164

164:                                              ; preds = %162, %156
  %165 = load ptr, ptr %16, align 8
  %166 = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %165, i32 0, i32 2
  %167 = load i32, ptr %166, align 8
  %168 = and i32 %167, 128
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %274, label %170

170:                                              ; preds = %164
  %171 = load ptr, ptr %80, align 8
  %172 = load ptr, ptr %171, align 64
  %173 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 17
  %174 = tail call i32 @device_property_read_u32_array(ptr noundef %172, ptr noundef nonnull @.str.31, ptr noundef %173, i32 noundef 1) #8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %196, label %176

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 11
  %178 = load ptr, ptr %177, align 8
  %179 = icmp ugt ptr %178, inttoptr (i32 -4096 to ptr)
  br i1 %179, label %195, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 13
  %182 = load ptr, ptr %181, align 8
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %195

184:                                              ; preds = %180
  %185 = load ptr, ptr %80, align 8
  %186 = getelementptr inbounds %struct.mmc_host, ptr %185, i32 0, i32 1, i32 3
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.mmc_host, ptr %185, i32 0, i32 1
  %191 = load ptr, ptr %190, align 4
  br label %192

192:                                              ; preds = %189, %184
  %193 = phi ptr [ %191, %189 ], [ %187, %184 ]
  %194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %193) #9
  br label %195

195:                                              ; preds = %192, %180, %176
  store i32 0, ptr %173, align 4
  br label %196

196:                                              ; preds = %195, %170
  %197 = load ptr, ptr %80, align 8
  %198 = load ptr, ptr %197, align 64
  %199 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 18
  %200 = tail call i32 @device_property_read_u32_array(ptr noundef %198, ptr noundef nonnull @.str.33, ptr noundef %199, i32 noundef 1) #8
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %222, label %202

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 11
  %204 = load ptr, ptr %203, align 8
  %205 = icmp ugt ptr %204, inttoptr (i32 -4096 to ptr)
  br i1 %205, label %221, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 13
  %208 = load ptr, ptr %207, align 8
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %221

210:                                              ; preds = %206
  %211 = load ptr, ptr %80, align 8
  %212 = getelementptr inbounds %struct.mmc_host, ptr %211, i32 0, i32 1, i32 3
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.mmc_host, ptr %211, i32 0, i32 1
  %217 = load ptr, ptr %216, align 4
  br label %218

218:                                              ; preds = %215, %210
  %219 = phi ptr [ %217, %215 ], [ %213, %210 ]
  %220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %219) #9
  br label %221

221:                                              ; preds = %218, %206, %202
  store i32 0, ptr %199, align 4
  br label %222

222:                                              ; preds = %221, %196
  %223 = load ptr, ptr %80, align 8
  %224 = load ptr, ptr %223, align 64
  %225 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 21
  %226 = tail call i32 @device_property_read_u32_array(ptr noundef %224, ptr noundef nonnull @.str.34, ptr noundef %225, i32 noundef 1) #8
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %248, label %228

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 12
  %230 = load ptr, ptr %229, align 4
  %231 = icmp ugt ptr %230, inttoptr (i32 -4096 to ptr)
  br i1 %231, label %247, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 14
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %247

236:                                              ; preds = %232
  %237 = load ptr, ptr %80, align 8
  %238 = getelementptr inbounds %struct.mmc_host, ptr %237, i32 0, i32 1, i32 3
  %239 = load ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.mmc_host, ptr %237, i32 0, i32 1
  %243 = load ptr, ptr %242, align 4
  br label %244

244:                                              ; preds = %241, %236
  %245 = phi ptr [ %243, %241 ], [ %239, %236 ]
  %246 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %245) #9
  br label %247

247:                                              ; preds = %244, %232, %228
  store i32 0, ptr %225, align 4
  br label %248

248:                                              ; preds = %247, %222
  %249 = load ptr, ptr %80, align 8
  %250 = load ptr, ptr %249, align 64
  %251 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 22
  %252 = tail call i32 @device_property_read_u32_array(ptr noundef %250, ptr noundef nonnull @.str.36, ptr noundef %251, i32 noundef 1) #8
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %274, label %254

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 12
  %256 = load ptr, ptr %255, align 4
  %257 = icmp ugt ptr %256, inttoptr (i32 -4096 to ptr)
  br i1 %257, label %273, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 14
  %260 = load ptr, ptr %259, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %273

262:                                              ; preds = %258
  %263 = load ptr, ptr %80, align 8
  %264 = getelementptr inbounds %struct.mmc_host, ptr %263, i32 0, i32 1, i32 3
  %265 = load ptr, ptr %264, align 4
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = getelementptr inbounds %struct.mmc_host, ptr %263, i32 0, i32 1
  %269 = load ptr, ptr %268, align 4
  br label %270

270:                                              ; preds = %267, %262
  %271 = phi ptr [ %269, %267 ], [ %265, %262 ]
  %272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %271) #9
  br label %273

273:                                              ; preds = %270, %258, %254
  store i32 0, ptr %251, align 4
  br label %274

274:                                              ; preds = %273, %248, %164
  %275 = load ptr, ptr %80, align 8
  %276 = load ptr, ptr %275, align 64
  %277 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 13, i32 2
  %278 = tail call i32 @device_property_read_u32_array(ptr noundef %276, ptr noundef nonnull @.str.37, ptr noundef %277, i32 noundef 1) #8
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %281, label %280

280:                                              ; preds = %274
  store i32 0, ptr %277, align 8
  br label %281

281:                                              ; preds = %280, %274
  %282 = load ptr, ptr %80, align 8
  %283 = load ptr, ptr %282, align 64
  %284 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 13, i32 3
  %285 = tail call i32 @device_property_read_u32_array(ptr noundef %283, ptr noundef nonnull @.str.38, ptr noundef %284, i32 noundef 1) #8
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %281
  store i32 0, ptr %284, align 4
  br label %288

288:                                              ; preds = %287, %281
  %289 = load ptr, ptr %80, align 8
  %290 = load ptr, ptr %289, align 64
  %291 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 13, i32 4
  %292 = tail call i32 @device_property_read_u32_array(ptr noundef %290, ptr noundef nonnull @.str.39, ptr noundef %291, i32 noundef 1) #8
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %288
  store i32 17, ptr %291, align 8
  br label %295

295:                                              ; preds = %294, %288
  %296 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 7) #8
  %297 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 6
  store ptr %296, ptr %297, align 4
  %298 = icmp ugt ptr %296, inttoptr (i32 -4096 to ptr)
  br i1 %298, label %299, label %301

299:                                              ; preds = %295
  %300 = ptrtoint ptr %296 to i32
  br label %365

301:                                              ; preds = %295
  %302 = load i32, ptr %20, align 8
  %303 = and i32 %302, 1024
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %320, label %305

305:                                              ; preds = %301
  %306 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  %307 = icmp ugt ptr %306, inttoptr (i32 -4096 to ptr)
  br i1 %307, label %308, label %312

308:                                              ; preds = %305
  %309 = icmp eq ptr %306, inttoptr (i32 -517 to ptr)
  br i1 %309, label %365, label %310

310:                                              ; preds = %308
  %311 = ptrtoint ptr %306 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %311) #9
  br label %312

312:                                              ; preds = %310, %305
  %313 = phi ptr [ null, %310 ], [ %306, %305 ]
  %314 = tail call i32 @clk_set_rate(ptr noundef %313, i32 noundef 12000000) #8
  %315 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %313)
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %312
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %315) #9
  br label %365

318:                                              ; preds = %312
  %319 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 7
  store ptr %313, ptr %319, align 8
  br label %320

320:                                              ; preds = %318, %301
  %321 = load ptr, ptr %80, align 8
  %322 = load ptr, ptr %321, align 64
  %323 = tail call ptr @devm_clk_get(ptr noundef %322, ptr noundef null) #8
  %324 = icmp ugt ptr %323, inttoptr (i32 -4096 to ptr)
  br i1 %324, label %325, label %328

325:                                              ; preds = %320
  %326 = ptrtoint ptr %323 to i32
  %327 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %326, ptr noundef nonnull @.str.5) #8
  br label %361

328:                                              ; preds = %320
  store ptr %323, ptr %15, align 64
  %329 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %330 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 9
  store ptr %329, ptr %330, align 8
  %331 = icmp ugt ptr %329, inttoptr (i32 -4096 to ptr)
  br i1 %331, label %332, label %334

332:                                              ; preds = %328
  %333 = ptrtoint ptr %329 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %333) #9
  br label %361

334:                                              ; preds = %328
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 1, ptr %2, align 1
  %335 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %3, ptr noundef nonnull %2) #8
  %336 = icmp eq i32 %335, -19
  %337 = select i1 %336, i32 0, i32 %335
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %361

339:                                              ; preds = %334
  call void @pm_runtime_enable(ptr noundef %3) #8
  %340 = call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %3)
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %359

342:                                              ; preds = %339
  %343 = load ptr, ptr %330, align 8
  %344 = call i32 @reset_control_assert(ptr noundef %343) #8
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %356

346:                                              ; preds = %342
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %347 = load ptr, ptr %330, align 8
  %348 = call i32 @reset_control_deassert(ptr noundef %347) #8
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %346
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %351 = call fastcc i32 @sdhci_tegra_add_host(ptr noundef %10)
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %367, label %353

353:                                              ; preds = %350
  %354 = load ptr, ptr %330, align 8
  %355 = call i32 @reset_control_assert(ptr noundef %354) #8
  br label %356

356:                                              ; preds = %353, %346, %342
  %357 = phi i32 [ %344, %342 ], [ %348, %346 ], [ %351, %353 ]
  %358 = call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 4) #8
  br label %359

359:                                              ; preds = %356, %339
  %360 = phi i32 [ %340, %339 ], [ %357, %356 ]
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #8
  br label %361

361:                                              ; preds = %359, %334, %332, %325
  %362 = phi i32 [ %327, %325 ], [ %333, %332 ], [ %337, %334 ], [ %360, %359 ]
  %363 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 1, i32 11, i32 7
  %364 = load ptr, ptr %363, align 8
  call void @clk_disable(ptr noundef %364) #8
  call void @clk_unprepare(ptr noundef %364) #8
  br label %365

365:                                              ; preds = %361, %317, %308, %299, %79
  %366 = phi i32 [ %82, %79 ], [ %300, %299 ], [ -517, %308 ], [ %315, %317 ], [ %362, %361 ]
  call void @sdhci_pltfm_free(ptr noundef %0) #8
  br label %367

367:                                              ; preds = %365, %350, %12, %1
  %368 = phi i32 [ %13, %12 ], [ %366, %365 ], [ -22, %1 ], [ 0, %350 ]
  ret i32 %368
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @sdhci_remove_host(ptr noundef %3, i32 noundef 0) #8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 4) #8
  %9 = tail call i32 @pm_runtime_force_suspend(ptr noundef %7) #8
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 7
  %11 = load ptr, ptr %10, align 8
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  tail call void @sdhci_pltfm_free(ptr noundef %0) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_start_signal_voltage_switch(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 58
  %5 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 8
  %6 = load i8, ptr %5, align 1
  switch i8 %6, label %54 [
    i8 0, label %7
    i8 1, label %24
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sdhci_tegra, ptr %4, i32 0, i32 5
  %9 = load i8, ptr %8, align 2, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 63
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 64
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @pinctrl_select_state(ptr noundef %13, ptr noundef %15) #8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %20, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.16, i32 noundef %16) #9
  br label %60

22:                                               ; preds = %11, %7
  %23 = tail call i32 @sdhci_start_signal_voltage_switch(ptr noundef %0, ptr noundef %1) #8
  br label %54

24:                                               ; preds = %2
  %25 = tail call i32 @sdhci_start_signal_voltage_switch(ptr noundef %0, ptr noundef %1) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %60, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.sdhci_tegra, ptr %4, i32 0, i32 5
  %29 = load i8, ptr %28, align 2, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %27
  %32 = load i8, ptr %5, align 1
  %33 = icmp eq i8 %32, 1
  %34 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 63
  %35 = load ptr, ptr %34, align 4
  br i1 %33, label %36, label %45

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 67, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @pinctrl_select_state(ptr noundef %35, ptr noundef %38) #8
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %43 = load ptr, ptr %42, align 8
  %44 = load ptr, ptr %43, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.15, i32 noundef %39) #9
  br label %54

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 64
  %47 = load ptr, ptr %46, align 8
  %48 = tail call i32 @pinctrl_select_state(ptr noundef %35, ptr noundef %47) #8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %52 = load ptr, ptr %51, align 8
  %53 = load ptr, ptr %52, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.16, i32 noundef %48) #9
  br label %54

54:                                               ; preds = %50, %45, %41, %36, %27, %22, %2
  %55 = phi i32 [ %23, %22 ], [ 0, %2 ], [ 0, %27 ], [ %39, %41 ], [ %39, %36 ], [ %48, %50 ], [ %48, %45 ]
  %56 = getelementptr inbounds %struct.sdhci_tegra, ptr %4, i32 0, i32 4
  %57 = load i8, ptr %56, align 1, !range !8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  tail call fastcc void @tegra_sdhci_pad_autocalib(ptr noundef %3)
  br label %60

60:                                               ; preds = %59, %54, %24, %18
  %61 = phi i32 [ %16, %18 ], [ %25, %24 ], [ %55, %59 ], [ %55, %54 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sdhci_request(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i64 @ktime_get() #8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 2, i32 1, i32 0, i32 3
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %3, %5
  %7 = tail call i64 @llvm.abs.i64(i64 %6, i1 false) #8
  %8 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %7) #10, !srcloc !9
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %7, i64 %8, i32 0) #10, !srcloc !10
  %10 = extractvalue { i64, i32 } %9, 0
  %11 = icmp slt i64 %6, 0
  %12 = lshr i64 %10, 18
  %13 = sub nsw i64 0, %12
  %14 = select i1 %11, i64 %13, i64 %12
  %15 = icmp sgt i64 %14, 100
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  tail call fastcc void @tegra_sdhci_pad_autocalib(ptr noundef %17)
  %18 = tail call i64 @ktime_get() #8
  store i64 %18, ptr %4, align 8
  br label %19

19:                                               ; preds = %16, %2
  tail call void @sdhci_request(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sdhci_hs400_enhanced_strobe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !11

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %3, i32 noundef 260) #8
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr i8, ptr %12, i32 260
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ %9, %8 ], [ %14, %10 ]
  %17 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 10
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = or i32 %16, -2147483648
  tail call void @tegra_sdhci_set_clock(ptr noundef %3, i32 noundef 200000000)
  br label %24

22:                                               ; preds = %15
  %23 = and i32 %16, 2147483647
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr inbounds %struct.sdhci_ops, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30, !prof !11

30:                                               ; preds = %24
  tail call void %28(ptr noundef %3, i32 noundef %25, i32 noundef 260) #8
  br label %35

31:                                               ; preds = %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %32 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %33 = load ptr, ptr %32, align 16
  %34 = getelementptr i8, ptr %33, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %25) #8, !srcloc !15
  br label %35

35:                                               ; preds = %31, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sdhci_execute_hw_tuning(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = tail call i32 @sdhci_execute_tuning(ptr noundef %0, i32 noundef %1) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %223

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 42, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %223

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 58
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !11

17:                                               ; preds = %10
  %18 = tail call i32 %15(ptr noundef %3, i32 noundef 256) #8
  br label %24

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 16
  %22 = getelementptr i8, ptr %21, i32 256
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i32 [ %18, %17 ], [ %23, %19 ]
  %26 = lshr i32 %25, 16
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 2, i32 1, i32 3
  store i8 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %12, i32 0, i32 3
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = icmp eq i8 %30, 0
  br i1 %32, label %220, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %12, i32 0, i32 4
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %220, label %37

37:                                               ; preds = %33
  %38 = zext i8 %35 to i32
  %39 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 2, i32 1, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = udiv i32 %40, 1000000
  %42 = udiv i32 1000000, %41
  %43 = udiv i32 %42, %31
  %44 = udiv i32 %42, %38
  %45 = lshr i32 %43, 1
  %46 = add nuw nsw i32 %45, %44
  %47 = trunc i32 %46 to i8
  %48 = lshr i32 %44, 2
  %49 = trunc i32 %48 to i8
  %50 = shl nuw nsw i32 %42, 1
  %51 = add nuw nsw i32 %38, %31
  %52 = udiv i32 %50, %51
  %53 = lshr i32 %52, 1
  %54 = trunc i32 %53 to i8
  %55 = load ptr, ptr %13, align 4
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58, !prof !11

58:                                               ; preds = %37
  %59 = tail call i32 %56(ptr noundef %3, i32 noundef 460) #8
  br label %65

60:                                               ; preds = %37
  %61 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %62 = load ptr, ptr %61, align 16
  %63 = getelementptr i8, ptr %62, i32 460
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %65

65:                                               ; preds = %60, %58
  %66 = phi i32 [ %59, %58 ], [ %64, %60 ]
  %67 = lshr i32 %66, 8
  %68 = and i32 %66, 255
  %69 = sub i32 %67, %66
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 42, i32 0, i32 2
  %73 = load i32, ptr %72, align 16
  br label %88

74:                                               ; preds = %65
  %75 = and i32 %67, 255
  %76 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 42, i32 0, i32 2
  %77 = load i32, ptr %76, align 16
  %78 = and i32 %77, 255
  %79 = add nsw i32 %78, -1
  %80 = icmp eq i32 %75, %79
  %81 = add nsw i32 %78, -2
  %82 = icmp eq i32 %75, %81
  %83 = select i1 %80, i1 true, i1 %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %74
  %85 = and i32 %69, 255
  %86 = and i32 %46, 255
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %220, label %88

88:                                               ; preds = %84, %74, %71
  %89 = phi i32 [ %73, %71 ], [ %77, %84 ], [ %77, %74 ]
  %90 = sdiv i32 %89, 32
  %91 = and i32 %90, 255
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %203, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  br label %95

95:                                               ; preds = %199, %93
  %96 = phi i32 [ 0, %93 ], [ %200, %199 ]
  %97 = phi i8 [ 0, %93 ], [ %196, %199 ]
  %98 = phi i8 [ 0, %93 ], [ %195, %199 ]
  %99 = phi i8 [ 0, %93 ], [ %194, %199 ]
  %100 = phi i8 [ 0, %93 ], [ %193, %199 ]
  %101 = phi i1 [ false, %93 ], [ %192, %199 ]
  %102 = phi i1 [ false, %93 ], [ %191, %199 ]
  %103 = phi i1 [ false, %93 ], [ %190, %199 ]
  %104 = phi i1 [ false, %93 ], [ %189, %199 ]
  %105 = phi i1 [ false, %93 ], [ %188, %199 ]
  %106 = load ptr, ptr %13, align 4
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109, !prof !11

109:                                              ; preds = %95
  %110 = tail call i32 %107(ptr noundef %3, i32 noundef 448) #8
  br label %115

111:                                              ; preds = %95
  %112 = load ptr, ptr %94, align 16
  %113 = getelementptr i8, ptr %112, i32 448
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %115

115:                                              ; preds = %111, %109
  %116 = phi i32 [ %110, %109 ], [ %114, %111 ]
  %117 = and i32 %116, -8
  %118 = or i32 %117, %96
  %119 = load ptr, ptr %13, align 4
  %120 = getelementptr inbounds %struct.sdhci_ops, ptr %119, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123, !prof !11

123:                                              ; preds = %115
  tail call void %121(ptr noundef %3, i32 noundef %118, i32 noundef 448) #8
  br label %127

124:                                              ; preds = %115
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %125 = load ptr, ptr %94, align 16
  %126 = getelementptr i8, ptr %125, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %118) #8, !srcloc !15
  br label %127

127:                                              ; preds = %124, %123
  %128 = load ptr, ptr %13, align 4
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131, !prof !11

131:                                              ; preds = %127
  %132 = tail call i32 %129(ptr noundef %3, i32 noundef 456) #8
  br label %137

133:                                              ; preds = %127
  %134 = load ptr, ptr %94, align 16
  %135 = getelementptr i8, ptr %134, i32 456
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %137

137:                                              ; preds = %133, %131
  %138 = phi i32 [ %132, %131 ], [ %136, %133 ]
  %139 = shl i32 %96, 5
  %140 = and i32 %139, 224
  br label %141

141:                                              ; preds = %187, %137
  %142 = phi i32 [ 0, %137 ], [ %197, %187 ]
  %143 = phi i8 [ %97, %137 ], [ %196, %187 ]
  %144 = phi i8 [ %98, %137 ], [ %195, %187 ]
  %145 = phi i8 [ %99, %137 ], [ %194, %187 ]
  %146 = phi i8 [ %100, %137 ], [ %193, %187 ]
  %147 = phi i1 [ %101, %137 ], [ %192, %187 ]
  %148 = phi i1 [ %102, %137 ], [ %191, %187 ]
  %149 = phi i1 [ %103, %137 ], [ %190, %187 ]
  %150 = phi i1 [ %104, %137 ], [ %189, %187 ]
  %151 = phi i1 [ %105, %137 ], [ %188, %187 ]
  %152 = add nuw nsw i32 %142, %140
  %153 = shl nuw i32 1, %142
  %154 = and i32 %153, %138
  %155 = icmp eq i32 %154, 0
  %156 = xor i1 %155, true
  %157 = select i1 %156, i1 true, i1 %151
  br i1 %157, label %161, label %158

158:                                              ; preds = %141
  %159 = trunc i32 %152 to i8
  %160 = select i1 %148, i8 %144, i8 %159
  br label %187

161:                                              ; preds = %141
  %162 = xor i1 %151, true
  %163 = select i1 %155, i1 true, i1 %162
  %164 = select i1 %163, i1 true, i1 %150
  %165 = trunc i32 %152 to i8
  br i1 %164, label %168, label %166

166:                                              ; preds = %161
  %167 = select i1 %147, i8 %143, i8 %165
  br label %187

168:                                              ; preds = %161
  %169 = select i1 %156, i1 true, i1 %162
  %170 = xor i1 %150, true
  %171 = select i1 %169, i1 true, i1 %170
  %172 = select i1 %171, i1 true, i1 %149
  br i1 %172, label %175, label %173

173:                                              ; preds = %168
  %174 = add i8 %165, -1
  br label %187

175:                                              ; preds = %168
  br i1 %155, label %187, label %176

176:                                              ; preds = %175
  br i1 %150, label %177, label %187

177:                                              ; preds = %176
  br i1 %151, label %178, label %187

178:                                              ; preds = %177
  br i1 %149, label %179, label %187

179:                                              ; preds = %178
  %180 = sub i8 %145, %146
  %181 = icmp uge i8 %180, %47
  %182 = icmp ult i8 %180, %49
  %183 = or i1 %181, %182
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = lshr i8 %180, 1
  %186 = add i8 %185, %146
  store i8 %186, ptr %28, align 4
  br label %220

187:                                              ; preds = %179, %178, %177, %176, %175, %173, %166, %158
  %188 = phi i1 [ true, %178 ], [ false, %177 ], [ %151, %176 ], [ %151, %175 ], [ %151, %173 ], [ true, %158 ], [ %151, %166 ], [ true, %179 ]
  %189 = phi i1 [ true, %178 ], [ true, %177 ], [ false, %176 ], [ %150, %175 ], [ %150, %173 ], [ %150, %158 ], [ true, %166 ], [ true, %179 ]
  %190 = phi i1 [ false, %178 ], [ %149, %177 ], [ %149, %176 ], [ %149, %175 ], [ true, %173 ], [ %149, %158 ], [ %149, %166 ], [ false, %179 ]
  %191 = phi i1 [ %148, %178 ], [ %148, %177 ], [ %148, %176 ], [ %148, %175 ], [ %148, %173 ], [ true, %158 ], [ %148, %166 ], [ %148, %179 ]
  %192 = phi i1 [ %147, %178 ], [ %147, %177 ], [ %147, %176 ], [ %147, %175 ], [ %147, %173 ], [ %147, %158 ], [ true, %166 ], [ %147, %179 ]
  %193 = phi i8 [ %146, %178 ], [ %146, %177 ], [ %146, %176 ], [ %146, %175 ], [ %146, %173 ], [ %146, %158 ], [ %165, %166 ], [ %165, %179 ]
  %194 = phi i8 [ %145, %178 ], [ %145, %177 ], [ %145, %176 ], [ %145, %175 ], [ %174, %173 ], [ %145, %158 ], [ %145, %166 ], [ %145, %179 ]
  %195 = phi i8 [ %144, %178 ], [ %144, %177 ], [ %144, %176 ], [ %144, %175 ], [ %144, %173 ], [ %160, %158 ], [ %144, %166 ], [ %144, %179 ]
  %196 = phi i8 [ %143, %178 ], [ %143, %177 ], [ %143, %176 ], [ %143, %175 ], [ %143, %173 ], [ %143, %158 ], [ %167, %166 ], [ %143, %179 ]
  %197 = add nuw nsw i32 %142, 1
  %198 = icmp eq i32 %197, 32
  br i1 %198, label %199, label %141

199:                                              ; preds = %187
  %200 = add nuw nsw i32 %96, 1
  %201 = icmp eq i32 %200, %91
  br i1 %201, label %202, label %95

202:                                              ; preds = %199
  br i1 %191, label %204, label %203

203:                                              ; preds = %202, %88
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 923, i32 noundef 9, ptr noundef nonnull @.str.21) #8
  br label %220

204:                                              ; preds = %202
  br i1 %192, label %205, label %220

205:                                              ; preds = %204
  %206 = zext i8 %195 to i16
  %207 = zext i8 %196 to i16
  %208 = sub nsw i16 %207, %206
  %209 = sdiv i16 %208, 2
  %210 = trunc i16 %209 to i8
  %211 = add i8 %195, %210
  %212 = zext i8 %211 to i32
  %213 = add nsw i32 %212, -1
  %214 = and i32 %53, 255
  %215 = icmp sgt i32 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %205
  %217 = sub i8 %211, %54
  store i8 %217, ptr %28, align 4
  br label %220

218:                                              ; preds = %205
  %219 = add i8 %211, %54
  store i8 %219, ptr %28, align 4
  br label %220

220:                                              ; preds = %218, %216, %204, %203, %184, %84, %33, %24
  %221 = load i8, ptr %28, align 4
  %222 = zext i8 %221 to i32
  tail call fastcc void @tegra_sdhci_set_tap(ptr noundef %3, i32 noundef %222) #8
  br label %223

223:                                              ; preds = %220, %6, %2
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #8
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #8
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #8, !srcloc !17
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 0, i32 -1, ptr elementtype(i32) %5) #8, !srcloc !18
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  br label %10

10:                                               ; preds = %9, %4, %1
  %11 = phi i32 [ 0, %1 ], [ %2, %4 ], [ %2, %9 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_tegra_add_host(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 5
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @sdhci_add_host(ptr noundef %0) #8
  br label %42

7:                                                ; preds = %1
  tail call void @sdhci_enable_v4_mode(ptr noundef %0) #8
  %8 = tail call i32 @sdhci_setup_host(ptr noundef %0) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 25165824
  store i32 %15, ptr %13, align 4
  %16 = load ptr, ptr %11, align 8
  %17 = load ptr, ptr %16, align 64
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %17, i32 noundef 116, i32 noundef 3520) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 16
  %23 = getelementptr i8, ptr %22, i32 61440
  %24 = getelementptr inbounds %struct.cqhci_host, ptr %18, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  store ptr @sdhci_tegra_cqhci_ops, ptr %18, align 4
  %25 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 4096
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.cqhci_host, ptr %18, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 1
  store i32 %32, ptr %30, align 4
  br label %33

33:                                               ; preds = %29, %20
  %34 = load ptr, ptr %11, align 8
  %35 = tail call i32 @cqhci_init(ptr noundef nonnull %18, ptr noundef %34, i1 noundef zeroext %28) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = tail call i32 @__sdhci_add_host(ptr noundef %0) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37, %33, %10
  %41 = phi i32 [ %35, %33 ], [ %38, %37 ], [ -12, %10 ]
  tail call void @sdhci_cleanup_host(ptr noundef %0) #8
  br label %42

42:                                               ; preds = %40, %37, %7, %5
  %43 = phi i32 [ %41, %40 ], [ %6, %5 ], [ %8, %7 ], [ 0, %37 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_sdhci_set_padctrl(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  br i1 %2, label %68, label %4

4:                                                ; preds = %3
  %5 = icmp eq i32 %1, 1
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 21
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 22
  br label %30

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 13
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 17
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 18
  br label %30

20:                                               ; preds = %13, %6
  %21 = phi ptr [ %8, %6 ], [ %15, %13 ]
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @pinctrl_select_state(ptr noundef %23, ptr noundef nonnull %21) #8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %95

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %28 = load ptr, ptr %27, align 8
  %29 = load ptr, ptr %28, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.14, i32 noundef %24) #9
  br label %95

30:                                               ; preds = %17, %10
  %31 = phi ptr [ %18, %17 ], [ %11, %10 ]
  %32 = phi ptr [ %19, %17 ], [ %12, %10 ]
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %31, align 4
  %35 = and i32 %34, 255
  %36 = icmp ne i32 %35, 0
  %37 = and i32 %33, 255
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %40, label %95

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !11

45:                                               ; preds = %40
  %46 = tail call i32 %43(ptr noundef %0, i32 noundef 480) #8
  br label %52

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %49 = load ptr, ptr %48, align 16
  %50 = getelementptr i8, ptr %49, i32 480
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %52

52:                                               ; preds = %47, %45
  %53 = phi i32 [ %46, %45 ], [ %51, %47 ]
  %54 = and i32 %53, -134213633
  %55 = shl nuw nsw i32 %35, 20
  %56 = shl nuw nsw i32 %37, 12
  %57 = or i32 %55, %56
  %58 = or i32 %54, %57
  %59 = load ptr, ptr %41, align 4
  %60 = getelementptr inbounds %struct.sdhci_ops, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63, !prof !11

63:                                               ; preds = %52
  tail call void %61(ptr noundef %0, i32 noundef %58, i32 noundef 480) #8
  br label %95

64:                                               ; preds = %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %65 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %66 = load ptr, ptr %65, align 16
  %67 = getelementptr i8, ptr %66, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %58) #8, !srcloc !15
  br label %95

68:                                               ; preds = %3
  %69 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %70 = getelementptr inbounds %struct.sdhci_tegra, ptr %69, i32 0, i32 5
  %71 = load i8, ptr %70, align 2, !range !8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %95, label %73

73:                                               ; preds = %68
  %74 = icmp eq i32 %1, 1
  %75 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 10
  %76 = load ptr, ptr %75, align 4
  br i1 %74, label %77, label %86

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 12
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @pinctrl_select_state(ptr noundef %76, ptr noundef %79) #8
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %84 = load ptr, ptr %83, align 8
  %85 = load ptr, ptr %84, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.15, i32 noundef %80) #9
  br label %95

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 11
  %88 = load ptr, ptr %87, align 8
  %89 = tail call i32 @pinctrl_select_state(ptr noundef %76, ptr noundef %88) #8
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %93 = load ptr, ptr %92, align 8
  %94 = load ptr, ptr %93, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.16, i32 noundef %89) #9
  br label %95

95:                                               ; preds = %91, %86, %82, %77, %68, %64, %63, %30, %26, %20
  %96 = phi i32 [ 0, %68 ], [ %80, %82 ], [ %80, %77 ], [ %89, %91 ], [ %89, %86 ], [ %24, %26 ], [ %24, %20 ], [ 0, %30 ], [ 0, %63 ], [ 0, %64 ]
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_start_signal_voltage_switch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_sdhci_pad_autocalib(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 7
  %6 = load i8, ptr %5, align 4
  switch i8 %6, label %17 [
    i8 6, label %7
    i8 10, label %12
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sdhci_tegra, ptr %2, i32 0, i32 12, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 23
  %11 = load i32, ptr %10, align 8
  br label %31

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.sdhci_tegra, ptr %2, i32 0, i32 12, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 12
  %16 = load i32, ptr %15, align 8
  br label %31

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 20
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 19
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 15
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 8
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 1
  %29 = select i1 %28, i32 %19, i32 %23
  %30 = select i1 %28, i32 %21, i32 %25
  br label %31

31:                                               ; preds = %17, %12, %7
  %32 = phi i32 [ %14, %12 ], [ %9, %7 ], [ %29, %17 ]
  %33 = phi i32 [ %16, %12 ], [ %11, %7 ], [ %30, %17 ]
  %34 = shl i32 %32, 8
  %35 = or i32 %34, %33
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !11

40:                                               ; preds = %31
  %41 = tail call i32 %38(ptr noundef %0, i32 noundef 484) #8
  br label %47

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %44 = load ptr, ptr %43, align 16
  %45 = getelementptr i8, ptr %44, i32 484
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %47

47:                                               ; preds = %42, %40
  %48 = phi i32 [ %41, %40 ], [ %46, %42 ]
  %49 = and i32 %48, -65536
  %50 = and i32 %35, 65535
  %51 = or i32 %49, %50
  %52 = load ptr, ptr %36, align 4
  %53 = getelementptr inbounds %struct.sdhci_ops, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56, !prof !11

56:                                               ; preds = %47
  tail call void %54(ptr noundef %0, i32 noundef %51, i32 noundef 484) #8
  br label %61

57:                                               ; preds = %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %58 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %59 = load ptr, ptr %58, align 16
  %60 = getelementptr i8, ptr %59, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %51) #8, !srcloc !15
  br label %61

61:                                               ; preds = %57, %56
  %62 = load ptr, ptr %36, align 4
  %63 = getelementptr inbounds %struct.sdhci_ops, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66, !prof !11

66:                                               ; preds = %61
  %67 = tail call zeroext i16 %64(ptr noundef %0, i32 noundef 44) #8
  br label %73

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %70 = load ptr, ptr %69, align 16
  %71 = getelementptr i8, ptr %70, i32 44
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %71) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  br label %73

73:                                               ; preds = %68, %66
  %74 = phi i16 [ %67, %66 ], [ %72, %68 ]
  %75 = and i16 %74, 4
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %73
  %78 = and i16 %74, -5
  %79 = load ptr, ptr %36, align 4
  %80 = getelementptr inbounds %struct.sdhci_ops, ptr %79, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83, !prof !11

83:                                               ; preds = %77
  tail call void %81(ptr noundef %0, i16 noundef zeroext %78, i32 noundef 44) #8
  br label %88

84:                                               ; preds = %77
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %85 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %86 = load ptr, ptr %85, align 16
  %87 = getelementptr i8, ptr %86, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %87, i16 %78) #8, !srcloc !23
  br label %88

88:                                               ; preds = %84, %83, %73
  %89 = load ptr, ptr %36, align 4
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92, !prof !11

92:                                               ; preds = %88
  %93 = tail call i32 %90(ptr noundef %0, i32 noundef 480) #8
  br label %99

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %96 = load ptr, ptr %95, align 16
  %97 = getelementptr i8, ptr %96, i32 480
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %99

99:                                               ; preds = %94, %92
  %100 = phi i32 [ %93, %92 ], [ %98, %94 ]
  %101 = or i32 %100, -2147483648
  %102 = load ptr, ptr %36, align 4
  %103 = getelementptr inbounds %struct.sdhci_ops, ptr %102, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106, !prof !11

106:                                              ; preds = %99
  tail call void %104(ptr noundef %0, i32 noundef %101, i32 noundef 480) #8
  br label %111

107:                                              ; preds = %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %108 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %109 = load ptr, ptr %108, align 16
  %110 = getelementptr i8, ptr %109, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %101) #8, !srcloc !15
  br label %111

111:                                              ; preds = %107, %106
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %112 = load ptr, ptr %36, align 4
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115, !prof !11

115:                                              ; preds = %111
  %116 = tail call i32 %113(ptr noundef %0, i32 noundef 484) #8
  br label %122

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %119 = load ptr, ptr %118, align 16
  %120 = getelementptr i8, ptr %119, i32 484
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %122

122:                                              ; preds = %117, %115
  %123 = phi i32 [ %116, %115 ], [ %121, %117 ]
  %124 = or i32 %123, -1610612736
  %125 = load ptr, ptr %36, align 4
  %126 = getelementptr inbounds %struct.sdhci_ops, ptr %125, i32 0, i32 3
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129, !prof !11

129:                                              ; preds = %122
  tail call void %127(ptr noundef %0, i32 noundef %124, i32 noundef 484) #8
  br label %134

130:                                              ; preds = %122
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %131 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %132 = load ptr, ptr %131, align 16
  %133 = getelementptr i8, ptr %132, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %124) #8, !srcloc !15
  br label %134

134:                                              ; preds = %130, %129
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %135 = tail call i64 @ktime_get() #8
  %136 = add i64 %135, 10000000
  %137 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %138 = load ptr, ptr %137, align 16
  %139 = getelementptr i8, ptr %138, i32 492
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  %141 = icmp sgt i32 %140, -1
  br i1 %141, label %154, label %142

142:                                              ; preds = %149, %134
  %143 = tail call i64 @ktime_get() #8
  %144 = icmp sgt i64 %143, %136
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load ptr, ptr %137, align 16
  %147 = getelementptr i8, ptr %146, i32 492
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  br label %154

149:                                              ; preds = %142
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %150 = load ptr, ptr %137, align 16
  %151 = getelementptr i8, ptr %150, i32 492
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  %153 = icmp sgt i32 %152, -1
  br i1 %153, label %154, label %142

154:                                              ; preds = %149, %145, %134
  %155 = phi i32 [ %148, %145 ], [ %140, %134 ], [ %152, %149 ]
  %156 = icmp sgt i32 %155, -1
  %157 = load ptr, ptr %36, align 4
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160, !prof !11

160:                                              ; preds = %154
  %161 = tail call i32 %158(ptr noundef %0, i32 noundef 480) #8
  br label %166

162:                                              ; preds = %154
  %163 = load ptr, ptr %137, align 16
  %164 = getelementptr i8, ptr %163, i32 480
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %166

166:                                              ; preds = %162, %160
  %167 = phi i32 [ %161, %160 ], [ %165, %162 ]
  %168 = and i32 %167, 2147483647
  %169 = load ptr, ptr %36, align 4
  %170 = getelementptr inbounds %struct.sdhci_ops, ptr %169, i32 0, i32 3
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %174, label %173, !prof !11

173:                                              ; preds = %166
  tail call void %171(ptr noundef %0, i32 noundef %168, i32 noundef 480) #8
  br label %177

174:                                              ; preds = %166
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %175 = load ptr, ptr %137, align 16
  %176 = getelementptr i8, ptr %175, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %168) #8, !srcloc !15
  br label %177

177:                                              ; preds = %174, %173
  %178 = load ptr, ptr %36, align 4
  %179 = getelementptr inbounds %struct.sdhci_ops, ptr %178, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %184, label %182, !prof !11

182:                                              ; preds = %177
  %183 = tail call zeroext i16 %180(ptr noundef %0, i32 noundef 44) #8
  br label %188

184:                                              ; preds = %177
  %185 = load ptr, ptr %137, align 16
  %186 = getelementptr i8, ptr %185, i32 44
  %187 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %186) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  br label %188

188:                                              ; preds = %184, %182
  %189 = phi i16 [ %183, %182 ], [ %187, %184 ]
  %190 = lshr i16 %189, 2
  %191 = and i16 %190, 1
  %192 = lshr exact i16 %75, 2
  %193 = icmp eq i16 %191, %192
  br i1 %193, label %205, label %194

194:                                              ; preds = %188
  %195 = and i16 %189, -5
  %196 = or i16 %195, %75
  %197 = load ptr, ptr %36, align 4
  %198 = getelementptr inbounds %struct.sdhci_ops, ptr %197, i32 0, i32 4
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %202, label %201, !prof !11

201:                                              ; preds = %194
  tail call void %199(ptr noundef %0, i16 noundef zeroext %196, i32 noundef 44) #8
  br label %205

202:                                              ; preds = %194
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %203 = load ptr, ptr %137, align 16
  %204 = getelementptr i8, ptr %203, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %204, i16 %196) #8, !srcloc !23
  br label %205

205:                                              ; preds = %202, %201, %188
  br i1 %156, label %238, label %206

206:                                              ; preds = %205
  %207 = load ptr, ptr %3, align 8
  %208 = load ptr, ptr %207, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.17) #9
  %209 = load ptr, ptr %36, align 4
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212, !prof !11

212:                                              ; preds = %206
  %213 = tail call i32 %210(ptr noundef %0, i32 noundef 484) #8
  br label %218

214:                                              ; preds = %206
  %215 = load ptr, ptr %137, align 16
  %216 = getelementptr i8, ptr %215, i32 484
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %216) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %218

218:                                              ; preds = %214, %212
  %219 = phi i32 [ %213, %212 ], [ %217, %214 ]
  %220 = and i32 %219, -536870913
  %221 = load ptr, ptr %36, align 4
  %222 = getelementptr inbounds %struct.sdhci_ops, ptr %221, i32 0, i32 3
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %226, label %225, !prof !11

225:                                              ; preds = %218
  tail call void %223(ptr noundef %0, i32 noundef %220, i32 noundef 484) #8
  br label %229

226:                                              ; preds = %218
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %227 = load ptr, ptr %137, align 16
  %228 = getelementptr i8, ptr %227, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %220) #8, !srcloc !15
  br label %229

229:                                              ; preds = %226, %225
  %230 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 8
  %231 = load i8, ptr %230, align 1
  %232 = zext i8 %231 to i32
  %233 = tail call fastcc i32 @tegra_sdhci_set_padctrl(ptr noundef %0, i32 noundef %232, i1 noundef zeroext false)
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %229
  %236 = load ptr, ptr %3, align 8
  %237 = load ptr, ptr %236, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %237, ptr noundef nonnull @.str.18, i32 noundef %233) #9
  br label %238

238:                                              ; preds = %235, %229, %205
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sdhci_set_clock(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 81
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 64
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @sdhci_set_clock(ptr noundef %0, i32 noundef 0) #8
  br label %32

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 8
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = zext i8 %12 to i32
  %14 = shl i32 %1, %13
  %15 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %7, i32 noundef %14) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, i32 noundef %14, i32 noundef %15) #9
  br label %18

18:                                               ; preds = %17, %10
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 6
  store i32 %14, ptr %19, align 8
  %20 = load i8, ptr %11, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load ptr, ptr %3, align 64
  %24 = tail call i32 @clk_get_rate(ptr noundef %23) #8
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i32 [ %24, %22 ], [ %14, %18 ]
  %27 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 18
  store i32 %26, ptr %27, align 4
  tail call void @sdhci_set_clock(ptr noundef %0, i32 noundef %1) #8
  %28 = getelementptr inbounds %struct.sdhci_tegra, ptr %4, i32 0, i32 4
  %29 = load i8, ptr %28, align 1, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  tail call fastcc void @tegra_sdhci_pad_autocalib(ptr noundef %0)
  store i8 0, ptr %28, align 1
  br label %32

32:                                               ; preds = %31, %25, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_execute_tuning(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_sdhci_set_tap(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sdhci_ops, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !11

15:                                               ; preds = %9
  %16 = tail call zeroext i16 %13(ptr noundef %0, i32 noundef 44) #8
  br label %22

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 16
  %20 = getelementptr i8, ptr %19, i32 44
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi i16 [ %16, %15 ], [ %21, %17 ]
  %24 = and i16 %23, 4
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = and i16 %23, -5
  %28 = load ptr, ptr %10, align 4
  %29 = getelementptr inbounds %struct.sdhci_ops, ptr %28, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !11

32:                                               ; preds = %26
  tail call void %30(ptr noundef %0, i16 noundef zeroext %27, i32 noundef 44) #8
  br label %37

33:                                               ; preds = %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %34 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 16
  %36 = getelementptr i8, ptr %35, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %36, i16 %27) #8, !srcloc !23
  br label %37

37:                                               ; preds = %33, %32, %22, %2
  %38 = phi i1 [ true, %2 ], [ true, %22 ], [ false, %32 ], [ false, %33 ]
  %39 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43, !prof !11

43:                                               ; preds = %37
  %44 = tail call i32 %41(ptr noundef %0, i32 noundef 256) #8
  br label %50

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %47 = load ptr, ptr %46, align 16
  %48 = getelementptr i8, ptr %47, i32 256
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %50

50:                                               ; preds = %45, %43
  %51 = phi i32 [ %44, %43 ], [ %49, %45 ]
  %52 = and i32 %51, -16711681
  %53 = shl i32 %1, 16
  %54 = or i32 %52, %53
  %55 = load ptr, ptr %39, align 4
  %56 = getelementptr inbounds %struct.sdhci_ops, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59, !prof !11

59:                                               ; preds = %50
  tail call void %57(ptr noundef %0, i32 noundef %54, i32 noundef 256) #8
  br label %64

60:                                               ; preds = %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %61 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %62 = load ptr, ptr %61, align 16
  %63 = getelementptr i8, ptr %62, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %54) #8, !srcloc !15
  br label %64

64:                                               ; preds = %60, %59
  %65 = load i32, ptr %5, align 8
  %66 = and i32 %65, 256
  %67 = icmp eq i32 %66, 0
  %68 = or i1 %67, %38
  br i1 %68, label %97, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748) #8
  tail call void @sdhci_reset(ptr noundef %0, i8 noundef zeroext 6) #8
  %71 = load ptr, ptr %39, align 4
  %72 = getelementptr inbounds %struct.sdhci_ops, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75, !prof !11

75:                                               ; preds = %69
  %76 = tail call zeroext i16 %73(ptr noundef %0, i32 noundef 44) #8
  br label %82

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %79 = load ptr, ptr %78, align 16
  %80 = getelementptr i8, ptr %79, i32 44
  %81 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %80) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  br label %82

82:                                               ; preds = %77, %75
  %83 = phi i16 [ %76, %75 ], [ %81, %77 ]
  %84 = and i16 %83, 4
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = or i16 %83, 4
  %88 = load ptr, ptr %39, align 4
  %89 = getelementptr inbounds %struct.sdhci_ops, ptr %88, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92, !prof !11

92:                                               ; preds = %86
  tail call void %90(ptr noundef %0, i16 noundef zeroext %87, i32 noundef 44) #8
  br label %97

93:                                               ; preds = %86
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %94 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %95 = load ptr, ptr %94, align 16
  %96 = getelementptr i8, ptr %95, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %96, i16 %87) #8, !srcloc !23
  br label %97

97:                                               ; preds = %93, %92, %82, %64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_v4_mode(ptr noundef) local_unnamed_addr #1

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
define internal void @sdhci_tegra_dumpregs(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  tail call void @sdhci_dumpregs(ptr noundef %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_cqhci_writel(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 68
  %7 = icmp eq i32 %2, 12
  %8 = and i32 %1, 1
  %9 = icmp eq i32 %8, 0
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %66

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.cqhci_host_ops, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !11

16:                                               ; preds = %11
  %17 = tail call i32 %14(ptr noundef %0, i32 noundef 12) #8
  br label %23

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !12
  br label %23

23:                                               ; preds = %18, %16
  %24 = phi i32 [ %17, %16 ], [ %22, %18 ]
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %66, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 1, i32 1, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sdhci_ops, ptr %29, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33, !prof !11

33:                                               ; preds = %27
  tail call void %31(ptr noundef %6, i16 noundef zeroext 35, i32 noundef 12) #8
  br label %38

34:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %35 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 1, i32 1, i32 0, i32 1, i32 1
  %36 = load ptr, ptr %35, align 16
  %37 = getelementptr i8, ptr %36, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %37, i16 35) #8, !srcloc !23
  br label %38

38:                                               ; preds = %34, %33
  tail call void @sdhci_cqe_enable(ptr noundef %5) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  tail call void @arm_heavy_mb() #8
  %39 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %1) #8, !srcloc !15
  %42 = tail call i64 @ktime_get() #8
  %43 = add i64 %42, 50000
  br label %44

44:                                               ; preds = %57, %38
  %45 = tail call i64 @ktime_get() #8
  %46 = icmp sgt i64 %45, %43
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.cqhci_host_ops, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51, !prof !11

51:                                               ; preds = %44
  %52 = tail call i32 %49(ptr noundef %0, i32 noundef 12) #8
  br label %57

53:                                               ; preds = %44
  %54 = load ptr, ptr %39, align 4
  %55 = getelementptr i8, ptr %54, i32 12
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #8, !srcloc !12
  br label %57

57:                                               ; preds = %53, %51
  %58 = phi i32 [ %52, %51 ], [ %56, %53 ]
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i1 true, i1 %46
  br i1 %61, label %62, label %44

62:                                               ; preds = %57
  br i1 %46, label %63, label %70

63:                                               ; preds = %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %64 = load ptr, ptr %39, align 4
  %65 = getelementptr i8, ptr %64, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %1) #8, !srcloc !15
  br label %70

66:                                               ; preds = %23, %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  %67 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %1) #8, !srcloc !15
  br label %70

70:                                               ; preds = %66, %63, %62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_tegra_cqe_enable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 62
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %5 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 14
  %6 = load i8, ptr %5, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %68

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.cqhci_host_ops, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !11

13:                                               ; preds = %8
  %14 = tail call i32 %11(ptr noundef %3, i32 noundef 8) #8
  br label %20

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !12
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i32 [ %14, %13 ], [ %19, %15 ]
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %20
  %25 = and i32 %21, -2
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.cqhci_host_ops, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30, !prof !11

30:                                               ; preds = %24
  tail call void %28(ptr noundef %3, i32 noundef %25, i32 noundef 8) #8
  br label %35

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %25) #8, !srcloc !15
  br label %35

35:                                               ; preds = %31, %30
  %36 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.sdhci_ops, ptr %37, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41, !prof !11

41:                                               ; preds = %35
  tail call void %39(ptr noundef %4, i16 noundef zeroext 35, i32 noundef 12) #8
  br label %46

42:                                               ; preds = %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %43 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 16
  %45 = getelementptr i8, ptr %44, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %45, i16 35) #8, !srcloc !23
  br label %46

46:                                               ; preds = %42, %41
  tail call void @sdhci_cqe_enable(ptr noundef %0) #8
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr inbounds %struct.cqhci_host_ops, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51, !prof !11

51:                                               ; preds = %46
  tail call void %49(ptr noundef %3, i32 noundef %21, i32 noundef 8) #8
  br label %68

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %21) #8, !srcloc !15
  br label %68

56:                                               ; preds = %20
  %57 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.sdhci_ops, ptr %58, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62, !prof !11

62:                                               ; preds = %56
  tail call void %60(ptr noundef %4, i16 noundef zeroext 35, i32 noundef 12) #8
  br label %67

63:                                               ; preds = %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %64 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %65 = load ptr, ptr %64, align 16
  %66 = getelementptr i8, ptr %65, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %66, i16 35) #8, !srcloc !23
  br label %67

67:                                               ; preds = %63, %62
  tail call void @sdhci_cqe_enable(ptr noundef %0) #8
  br label %68

68:                                               ; preds = %67, %52, %51, %1
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr inbounds %struct.cqhci_host_ops, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73, !prof !11

73:                                               ; preds = %68
  %74 = tail call i32 %71(ptr noundef %3, i32 noundef 64) #8
  br label %80

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 64
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #8, !srcloc !12
  br label %80

80:                                               ; preds = %75, %73
  %81 = phi i32 [ %74, %73 ], [ %79, %75 ]
  %82 = and i32 %81, -983041
  %83 = load ptr, ptr %3, align 4
  %84 = getelementptr inbounds %struct.cqhci_host_ops, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87, !prof !11

87:                                               ; preds = %80
  tail call void %85(ptr noundef %3, i32 noundef %82, i32 noundef 64) #8
  br label %92

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr i8, ptr %90, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %82) #8, !srcloc !15
  br label %92

92:                                               ; preds = %88, %87
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_disable(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sdhci_tegra_update_dcmd_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #6 {
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 58
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 512
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 29
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load i64, ptr %2, align 8
  %19 = or i64 %18, 4194304
  store i64 %19, ptr %2, align 8
  br label %20

20:                                               ; preds = %17, %10, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_tegra_cqe_pre_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 62
  %3 = load ptr, ptr %2, align 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cqhci_host_ops, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !11

8:                                                ; preds = %1
  %9 = tail call i32 %6(ptr noundef %3, i32 noundef 8) #8
  br label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !12
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ %9, %8 ], [ %14, %10 ]
  %17 = or i32 %16, 1
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.cqhci_host_ops, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !11

22:                                               ; preds = %15
  tail call void %20(ptr noundef %3, i32 noundef %17, i32 noundef 8) #8
  br label %27

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %17) #8, !srcloc !15
  br label %27

27:                                               ; preds = %23, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_tegra_cqe_post_disable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 62
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr inbounds %struct.cqhci_host_ops, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !11

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %3, i32 noundef 8) #8
  br label %16

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !12
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ %10, %9 ], [ %15, %11 ]
  %18 = and i32 %17, -2
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.cqhci_host_ops, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !11

23:                                               ; preds = %16
  tail call void %21(ptr noundef %3, i32 noundef %18, i32 noundef 8) #8
  br label %28

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %18) #8, !srcloc !15
  br label %28

28:                                               ; preds = %24, %23
  %29 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sdhci_ops, ptr %30, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !11

34:                                               ; preds = %28
  tail call void %32(ptr noundef %4, i16 noundef zeroext 0, i32 noundef 12) #8
  br label %39

35:                                               ; preds = %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %36 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %37 = load ptr, ptr %36, align 16
  %38 = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %38, i16 0) #8, !srcloc !23
  br label %39

39:                                               ; preds = %35, %34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_dumpregs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @tegra_sdhci_readw(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq i32 %1, 254
  %10 = and i1 %9, %8
  br i1 %10, label %16, label %11, !prof !29

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr i8, ptr %13, i32 %1
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !30
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i16 [ %15, %11 ], [ 1, %2 ]
  ret i16 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sdhci_writel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %2, 56
  br i1 %6, label %7, label %9, !prof !29

7:                                                ; preds = %3
  %8 = and i32 %1, -196609
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ %1, %3 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr i8, ptr %12, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #8, !srcloc !15
  %14 = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 2
  %17 = icmp ne i32 %16, 0
  %18 = icmp eq i32 %2, 52
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %31, !prof !29

20:                                               ; preds = %9
  %21 = load ptr, ptr %11, align 16
  %22 = getelementptr i8, ptr %21, i32 42
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #8, !srcloc !32
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !33
  %24 = and i8 %23, -9
  %25 = lshr i32 %10, 5
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 8
  %28 = or i8 %24, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !34
  tail call void @arm_heavy_mb() #8
  %29 = load ptr, ptr %11, align 16
  %30 = getelementptr i8, ptr %29, i32 42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 %28) #8, !srcloc !35
  br label %31

31:                                               ; preds = %20, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_cqhci_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4
  %5 = call zeroext i1 @sdhci_cqe_irq(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %3, align 4
  %10 = load i32, ptr %4, align 4
  %11 = call i32 @cqhci_irq(ptr noundef %8, i32 noundef %1, i32 noundef %9, i32 noundef %10) #8
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %6 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sdhci_set_dma_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %3, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 64
  %11 = tail call i32 @dma_set_mask(ptr noundef %10, i64 noundef %5) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call i32 @dma_set_coherent_mask(ptr noundef %10, i64 noundef %5) #8
  br label %15

15:                                               ; preds = %13, %7, %1
  %16 = phi i32 [ 0, %1 ], [ %11, %7 ], [ 0, %13 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sdhci_get_max_clock(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 81
  %3 = load ptr, ptr %2, align 64
  %4 = tail call i32 @clk_round_rate(ptr noundef %3, i32 noundef -1) #8
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sdhci_set_timeout(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !11

7:                                                ; preds = %2
  %8 = tail call i32 %5(ptr noundef %0, i32 noundef 288) #8
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr i8, ptr %11, i32 288
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ %8, %7 ], [ %13, %9 ]
  %16 = icmp eq ptr %1, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 10999
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = or i32 %15, 1
  br label %25

23:                                               ; preds = %17, %14
  %24 = and i32 %15, -2
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.sdhci_ops, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !11

31:                                               ; preds = %25
  tail call void %29(ptr noundef %0, i32 noundef %26, i32 noundef 288) #8
  br label %36

32:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %34 = load ptr, ptr %33, align 16
  %35 = getelementptr i8, ptr %34, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %26) #8, !srcloc !15
  br label %36

36:                                               ; preds = %32, %31
  tail call void @__sdhci_set_timeout(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sdhci_get_ro(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @mmc_gpio_get_ro(ptr noundef %3) #8
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sdhci_reset(ptr noundef %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %4 = load ptr, ptr %3, align 8
  tail call void @sdhci_reset(ptr noundef %0, i8 noundef zeroext %1) #8
  %5 = and i8 %1, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %137, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 2
  %9 = load i32, ptr %8, align 8
  tail call fastcc void @tegra_sdhci_set_tap(ptr noundef %0, i32 noundef %9)
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !11

14:                                               ; preds = %7
  %15 = tail call i32 %12(ptr noundef %0, i32 noundef 288) #8
  br label %21

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 16
  %19 = getelementptr i8, ptr %18, i32 288
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi i32 [ %15, %14 ], [ %20, %16 ]
  %23 = load ptr, ptr %10, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !11

26:                                               ; preds = %21
  %27 = tail call i32 %24(ptr noundef %0, i32 noundef 256) #8
  br label %33

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %30 = load ptr, ptr %29, align 16
  %31 = getelementptr i8, ptr %30, i32 256
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %33

33:                                               ; preds = %28, %26
  %34 = phi i32 [ %27, %26 ], [ %32, %28 ]
  %35 = and i32 %22, -569
  %36 = and i32 %34, -520093701
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 128
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 54, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %78, label %48

48:                                               ; preds = %42
  %49 = tail call i32 @regulator_is_supported_voltage(ptr noundef %46, i32 noundef 1700000, i32 noundef 1950000) #8
  %50 = load ptr, ptr %43, align 8
  %51 = getelementptr inbounds %struct.mmc_host, ptr %50, i32 0, i32 54, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @regulator_is_supported_voltage(ptr noundef %52, i32 noundef 2700000, i32 noundef 3600000) #8
  %54 = icmp eq i32 %49, 1
  %55 = icmp eq i32 %53, 1
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.sdhci_tegra, ptr %3, i32 0, i32 5
  %59 = load i8, ptr %58, align 2, !range !8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %57, %48, %33
  %62 = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %4, i32 0, i32 2
  %63 = load i32, ptr %62, align 8
  %64 = shl i32 %63, 3
  %65 = and i32 %64, 32
  %66 = or i32 %35, %65
  %67 = and i32 %63, 8
  %68 = shl nuw nsw i32 %67, 1
  %69 = or i32 %66, %68
  %70 = shl i32 %63, 4
  %71 = and i32 %70, 512
  %72 = or i32 %69, %71
  %73 = lshr i32 %63, 1
  %74 = and i32 %73, 8
  %75 = or i32 %72, %74
  %76 = shl nuw nsw i32 %67, 2
  %77 = or i32 %76, %36
  br label %78

78:                                               ; preds = %61, %57, %42
  %79 = phi i32 [ %35, %57 ], [ %75, %61 ], [ %35, %42 ]
  %80 = phi i32 [ %36, %57 ], [ %77, %61 ], [ %36, %42 ]
  %81 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = shl i32 %82, 24
  %84 = or i32 %83, %80
  %85 = load ptr, ptr %10, align 4
  %86 = getelementptr inbounds %struct.sdhci_ops, ptr %85, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89, !prof !11

89:                                               ; preds = %78
  tail call void %87(ptr noundef %0, i32 noundef %79, i32 noundef 288) #8
  br label %94

90:                                               ; preds = %78
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %91 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %92 = load ptr, ptr %91, align 16
  %93 = getelementptr i8, ptr %92, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %79) #8, !srcloc !15
  br label %94

94:                                               ; preds = %90, %89
  %95 = load ptr, ptr %10, align 4
  %96 = getelementptr inbounds %struct.sdhci_ops, ptr %95, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99, !prof !11

99:                                               ; preds = %94
  tail call void %97(ptr noundef %0, i32 noundef %84, i32 noundef 256) #8
  br label %104

100:                                              ; preds = %94
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %101 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %102 = load ptr, ptr %101, align 16
  %103 = getelementptr i8, ptr %102, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %84) #8, !srcloc !15
  br label %104

104:                                              ; preds = %100, %99
  %105 = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %4, i32 0, i32 2
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 64
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %135, label %109

109:                                              ; preds = %104
  %110 = load ptr, ptr %10, align 4
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113, !prof !11

113:                                              ; preds = %109
  %114 = tail call i32 %111(ptr noundef %0, i32 noundef 480) #8
  br label %120

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %117 = load ptr, ptr %116, align 16
  %118 = getelementptr i8, ptr %117, i32 480
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %120

120:                                              ; preds = %115, %113
  %121 = phi i32 [ %114, %113 ], [ %119, %115 ]
  %122 = and i32 %121, -16
  %123 = or i32 %122, 7
  %124 = load ptr, ptr %10, align 4
  %125 = getelementptr inbounds %struct.sdhci_ops, ptr %124, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128, !prof !11

128:                                              ; preds = %120
  tail call void %126(ptr noundef %0, i32 noundef %123, i32 noundef 480) #8
  br label %133

129:                                              ; preds = %120
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %130 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %131 = load ptr, ptr %130, align 16
  %132 = getelementptr i8, ptr %131, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %123) #8, !srcloc !15
  br label %133

133:                                              ; preds = %129, %128
  %134 = getelementptr inbounds %struct.sdhci_tegra, ptr %3, i32 0, i32 4
  store i8 1, ptr %134, align 1
  br label %135

135:                                              ; preds = %133, %104
  %136 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 8
  store i8 0, ptr %136, align 4
  br label %137

137:                                              ; preds = %135, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sdhci_set_uhs_signaling(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 8
  store i8 0, ptr %3, align 4
  switch i32 %1, label %7 [
    i32 5, label %8
    i32 6, label %4
    i32 9, label %4
    i32 10, label %5
    i32 8, label %6
    i32 7, label %6
  ]

4:                                                ; preds = %2, %2
  br label %8

5:                                                ; preds = %2
  br label %8

6:                                                ; preds = %2, %2
  store i8 1, ptr %3, align 4
  br label %8

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %6, %5, %4, %2
  %9 = phi i1 [ true, %7 ], [ true, %6 ], [ false, %5 ], [ false, %4 ], [ false, %2 ]
  %10 = phi i1 [ false, %7 ], [ false, %6 ], [ true, %5 ], [ false, %4 ], [ false, %2 ]
  %11 = phi i32 [ 256, %7 ], [ 256, %6 ], [ 128, %5 ], [ 128, %4 ], [ 256, %2 ]
  %12 = phi i32 [ 32832, %7 ], [ 32832, %6 ], [ 16448, %5 ], [ 16448, %4 ], [ 32832, %2 ]
  %13 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !11

17:                                               ; preds = %8
  %18 = tail call i32 %15(ptr noundef %0, i32 noundef 448) #8
  br label %24

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 16
  %22 = getelementptr i8, ptr %21, i32 448
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i32 [ %18, %17 ], [ %23, %19 ]
  %26 = and i32 %25, -66912193
  %27 = or i32 %26, %12
  %28 = load ptr, ptr %13, align 4
  %29 = getelementptr inbounds %struct.sdhci_ops, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !11

32:                                               ; preds = %24
  tail call void %30(ptr noundef %0, i32 noundef %27, i32 noundef 448) #8
  br label %37

33:                                               ; preds = %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %34 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 16
  %36 = getelementptr i8, ptr %35, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %27) #8, !srcloc !15
  br label %37

37:                                               ; preds = %33, %32
  %38 = load ptr, ptr %13, align 4
  %39 = getelementptr inbounds %struct.sdhci_ops, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42, !prof !11

42:                                               ; preds = %37
  tail call void %40(ptr noundef %0, i32 noundef 0, i32 noundef 452) #8
  br label %47

43:                                               ; preds = %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %44 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %45 = load ptr, ptr %44, align 16
  %46 = getelementptr i8, ptr %45, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #8, !srcloc !15
  br label %47

47:                                               ; preds = %43, %42
  %48 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 76
  store i32 %11, ptr %48, align 16
  tail call void @sdhci_set_uhs_signaling(ptr noundef %0, i32 noundef %1) #8
  tail call fastcc void @tegra_sdhci_pad_autocalib(ptr noundef %0)
  %49 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 7
  %50 = load i8, ptr %49, align 4
  %51 = icmp eq i8 %50, 0
  %52 = or i1 %9, %51
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = zext i8 %50 to i32
  br label %58

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 2
  %57 = load i32, ptr %56, align 8
  br label %58

58:                                               ; preds = %55, %53
  %59 = phi i32 [ %57, %55 ], [ %54, %53 ]
  tail call fastcc void @tegra_sdhci_set_tap(ptr noundef %0, i32 noundef %59)
  br i1 %10, label %60, label %136

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 4
  %62 = load i32, ptr %61, align 8
  %63 = load ptr, ptr %13, align 4
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66, !prof !11

66:                                               ; preds = %60
  %67 = tail call i32 %64(ptr noundef %0, i32 noundef 268) #8
  br label %73

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %70 = load ptr, ptr %69, align 16
  %71 = getelementptr i8, ptr %70, i32 268
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %73

73:                                               ; preds = %68, %66
  %74 = phi i32 [ %67, %66 ], [ %72, %68 ]
  %75 = and i32 %74, -16129
  %76 = shl i32 %62, 8
  %77 = and i32 %76, 65280
  %78 = or i32 %75, %77
  %79 = load ptr, ptr %13, align 4
  %80 = getelementptr inbounds %struct.sdhci_ops, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83, !prof !11

83:                                               ; preds = %73
  tail call void %81(ptr noundef %0, i32 noundef %78, i32 noundef 268) #8
  br label %88

84:                                               ; preds = %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %85 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %86 = load ptr, ptr %85, align 16
  %87 = getelementptr i8, ptr %86, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %78) #8, !srcloc !15
  br label %88

88:                                               ; preds = %84, %83
  %89 = load ptr, ptr %13, align 4
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92, !prof !11

92:                                               ; preds = %88
  %93 = tail call i32 %90(ptr noundef %0, i32 noundef 432) #8
  br label %99

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %96 = load ptr, ptr %95, align 16
  %97 = getelementptr i8, ptr %96, i32 432
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %99

99:                                               ; preds = %94, %92
  %100 = phi i32 [ %93, %92 ], [ %98, %94 ]
  %101 = or i32 %100, -2147483648
  %102 = load ptr, ptr %13, align 4
  %103 = getelementptr inbounds %struct.sdhci_ops, ptr %102, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106, !prof !11

106:                                              ; preds = %99
  tail call void %104(ptr noundef %0, i32 noundef %101, i32 noundef 432) #8
  br label %111

107:                                              ; preds = %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %108 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %109 = load ptr, ptr %108, align 16
  %110 = getelementptr i8, ptr %109, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %101) #8, !srcloc !15
  br label %111

111:                                              ; preds = %107, %106
  %112 = tail call i64 @ktime_get() #8
  %113 = add i64 %112, 5000000
  %114 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %115 = load ptr, ptr %114, align 16
  %116 = getelementptr i8, ptr %115, i32 444
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !36
  %118 = icmp sgt i32 %117, -1
  br i1 %118, label %136, label %119

119:                                              ; preds = %122, %111
  %120 = tail call i64 @ktime_get() #8
  %121 = icmp sgt i64 %120, %113
  br i1 %121, label %127, label %122

122:                                              ; preds = %119
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %123 = load ptr, ptr %114, align 16
  %124 = getelementptr i8, ptr %123, i32 444
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !36
  %126 = icmp sgt i32 %125, -1
  br i1 %126, label %136, label %119

127:                                              ; preds = %119
  %128 = load ptr, ptr %114, align 16
  %129 = getelementptr i8, ptr %128, i32 444
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !37
  %131 = icmp sgt i32 %130, -1
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %134 = load ptr, ptr %133, align 8
  %135 = load ptr, ptr %134, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.40) #9
  br label %136

136:                                              ; preds = %132, %127, %122, %111, %58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @tegra_sdhci_voltage_switch(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sdhci_tegra, ptr %2, i32 0, i32 4
  store i8 1, ptr %9, align 1
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sdhci_cqe_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_irq(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdhci_set_timeout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_supported_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra210_sdhci_writew(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 14
  br i1 %4, label %5, label %38

5:                                                ; preds = %3
  %6 = lshr i16 %1, 8
  %7 = trunc i16 %6 to i6
  switch i6 %7, label %38 [
    i6 21, label %8
    i6 19, label %8
  ]

8:                                                ; preds = %5, %5
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sdhci_ops, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !11

14:                                               ; preds = %8
  %15 = tail call zeroext i16 %12(ptr noundef %0, i32 noundef 44) #8
  br label %21

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 16
  %19 = getelementptr i8, ptr %18, i32 44
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi i16 [ %15, %14 ], [ %20, %16 ]
  %23 = and i16 %22, 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = and i16 %22, -5
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr inbounds %struct.sdhci_ops, ptr %27, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !11

31:                                               ; preds = %25
  tail call void %29(ptr noundef %0, i16 noundef zeroext %26, i32 noundef 44) #8
  br label %36

32:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %34 = load ptr, ptr %33, align 16
  %35 = getelementptr i8, ptr %34, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %35, i16 %26) #8, !srcloc !23
  br label %36

36:                                               ; preds = %32, %31, %21
  %37 = icmp ne i16 %23, 0
  br label %38

38:                                               ; preds = %36, %5, %3
  %39 = phi i1 [ true, %36 ], [ false, %5 ], [ false, %3 ]
  %40 = phi i1 [ %37, %36 ], [ false, %5 ], [ false, %3 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !38
  tail call void @arm_heavy_mb() #8
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %42 = load ptr, ptr %41, align 16
  %43 = getelementptr i8, ptr %42, i32 %2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %43, i16 %1) #8, !srcloc !23
  br i1 %39, label %44, label %74

44:                                               ; preds = %38
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #8
  tail call void @sdhci_reset(ptr noundef %0, i8 noundef zeroext 6) #8
  %46 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.sdhci_ops, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51, !prof !11

51:                                               ; preds = %44
  %52 = tail call zeroext i16 %49(ptr noundef %0, i32 noundef 44) #8
  br label %57

53:                                               ; preds = %44
  %54 = load ptr, ptr %41, align 16
  %55 = getelementptr i8, ptr %54, i32 44
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %55) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  br label %57

57:                                               ; preds = %53, %51
  %58 = phi i16 [ %52, %51 ], [ %56, %53 ]
  %59 = and i16 %58, 4
  %60 = icmp eq i16 %59, 0
  %61 = xor i1 %40, %60
  br i1 %61, label %74, label %62

62:                                               ; preds = %57
  %63 = and i16 %58, -5
  %64 = select i1 %40, i16 4, i16 0
  %65 = or i16 %63, %64
  %66 = load ptr, ptr %46, align 4
  %67 = getelementptr inbounds %struct.sdhci_ops, ptr %66, i32 0, i32 4
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70, !prof !11

70:                                               ; preds = %62
  tail call void %68(ptr noundef %0, i16 noundef zeroext %65, i32 noundef 44) #8
  br label %74

71:                                               ; preds = %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %72 = load ptr, ptr %41, align 16
  %73 = getelementptr i8, ptr %72, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %73, i16 %65) #8, !srcloc !23
  br label %74

74:                                               ; preds = %71, %70, %57, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sdhci_writew(ptr nocapture noundef %0, i16 noundef zeroext %1, i32 noundef %2) #2 {
  switch i32 %2, label %16 [
    i32 12, label %4
    i32 14, label %6
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 2
  store i16 %1, ptr %5, align 8
  br label %20

6:                                                ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !39
  tail call void @arm_heavy_mb() #8
  %7 = zext i16 %1 to i32
  %8 = shl nuw i32 %7, 16
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 2
  %10 = load i16, ptr %9, align 8
  %11 = zext i16 %10 to i32
  %12 = or i32 %8, %11
  %13 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #8, !srcloc !15
  br label %20

16:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !40
  tail call void @arm_heavy_mb() #8
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 16
  %19 = getelementptr i8, ptr %18, i32 %2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 %1) #8, !srcloc !23
  br label %20

20:                                               ; preds = %16, %6, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sdhci_execute_tuning(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  br label %4

4:                                                ; preds = %9, %2
  %5 = phi i32 [ 10, %2 ], [ %10, %9 ]
  tail call fastcc void @tegra_sdhci_set_tap(ptr noundef %0, i32 noundef %5)
  %6 = load ptr, ptr %3, align 8
  %7 = tail call i32 @mmc_send_tuning(ptr noundef %6, i32 noundef %1, ptr noundef null) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = add nuw nsw i32 %5, 1
  %11 = icmp eq i32 %10, 255
  br i1 %11, label %12, label %4

12:                                               ; preds = %9, %4
  %13 = phi i32 [ %5, %4 ], [ 255, %9 ]
  br label %14

14:                                               ; preds = %18, %12
  %15 = phi i32 [ %13, %12 ], [ %16, %18 ]
  %16 = add nuw nsw i32 %15, 1
  %17 = icmp ult i32 %15, 254
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  tail call fastcc void @tegra_sdhci_set_tap(ptr noundef %0, i32 noundef %16)
  %19 = load ptr, ptr %3, align 8
  %20 = tail call i32 @mmc_send_tuning(ptr noundef %19, i32 noundef %1, ptr noundef null) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %14, label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %16, %14 ], [ %15, %18 ]
  %24 = sub i32 %23, %13
  %25 = mul i32 %24, 3
  %26 = lshr i32 %25, 2
  %27 = add nuw i32 %26, %13
  tail call fastcc void @tegra_sdhci_set_tap(ptr noundef %0, i32 noundef %27)
  %28 = load ptr, ptr %3, align 8
  %29 = tail call i32 @mmc_send_tuning(ptr noundef %28, i32 noundef %1, ptr noundef null) #8
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 8388608
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @cqhci_deactivate(ptr noundef %5) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %10, %1
  %14 = tail call i32 @sdhci_suspend_host(ptr noundef %3) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @sdhci_resume_host(ptr noundef %3) #8
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i32 [ %17, %19 ], [ %14, %13 ]
  %23 = load ptr, ptr %4, align 8
  %24 = tail call i32 @cqhci_resume(ptr noundef %23) #8
  br label %25

25:                                               ; preds = %21, %16, %10
  %26 = phi i32 [ %11, %10 ], [ 0, %16 ], [ %22, %21 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = tail call i32 @sdhci_resume_host(ptr noundef %3) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 8388608
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = tail call i32 @cqhci_resume(ptr noundef %11) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @sdhci_suspend_host(ptr noundef %3) #8
  br label %21

21:                                               ; preds = %19, %6
  %22 = phi i32 [ %7, %6 ], [ %17, %19 ]
  %23 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #8
  br label %24

24:                                               ; preds = %21, %16, %9, %1
  %25 = phi i32 [ %22, %21 ], [ %4, %1 ], [ 0, %16 ], [ 0, %9 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 81
  %5 = load ptr, ptr %4, align 64
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 81
  %5 = load ptr, ptr %4, align 64
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = phi i32 [ %6, %1 ], [ %9, %11 ], [ 0, %8 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!9 = !{i64 231262, i64 231289}
!10 = !{i64 231957, i64 231984, i64 232017, i64 232038, i64 232065, i64 232091}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 5015252}
!13 = !{i64 2154151535}
!14 = !{i64 2154149866}
!15 = !{i64 5014834}
!16 = !{i64 2147945621}
!17 = !{i64 443931, i64 2147933902, i64 2147933928, i64 2147933975, i64 2147933997, i64 2147934025, i64 2147934045}
!18 = !{i64 430500, i64 430525, i64 430547, i64 430563, i64 430575, i64 430595, i64 430619, i64 430635, i64 430647}
!19 = !{i64 2147945747}
!20 = !{i64 5014414}
!21 = !{i64 2154152086}
!22 = !{i64 2154150397}
!23 = !{i64 5014214}
!24 = !{i64 2154171185}
!25 = !{i64 2154171528}
!26 = !{i64 2154183375}
!27 = !{i64 2154183709}
!28 = !{i64 2154184027}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2154162933}
!31 = !{i64 2154163951}
!32 = !{i64 5015032}
!33 = !{i64 2154164480}
!34 = !{i64 2154164688}
!35 = !{i64 5014637}
!36 = !{i64 2154178437}
!37 = !{i64 2154178780}
!38 = !{i64 2154164998}
!39 = !{i64 2154163174}
!40 = !{i64 2154163569}
