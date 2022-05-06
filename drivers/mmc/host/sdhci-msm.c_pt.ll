; ModuleID = '/llk/IR/drivers/mmc/host/sdhci-msm.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-msm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_msm_variant_info = type { i8, i8, ptr, ptr }
%struct.sdhci_msm_variant_ops = type { ptr, ptr }
%struct.sdhci_msm_offset = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.sdhci_msm_host = type { ptr, ptr, ptr, i32, ptr, ptr, [5 x %struct.clk_bulk_data], i32, ptr, i8, i8, i8, i8, i8, i32, i32, %struct.wait_queue_head, i8, i32, i8, i8, ptr, ptr, i8, i32, i8, i8, i32, i32, i8 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_sdhci_msm__273_2838_sdhci_msm_driver_init6 = internal global ptr @sdhci_msm_driver_init, section ".initcall6.init", align 4
@sdhci_msm_driver = internal global %struct.platform_driver { ptr @sdhci_msm_probe, ptr @sdhci_msm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_msm_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_msm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sdhci_msm_driver_exit = internal global ptr @sdhci_msm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description274 = internal constant [79 x i8] c"sdhci_msm.description=Qualcomm Secure Digital Host Controller Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file275 = internal constant [42 x i8] c"sdhci_msm.file=drivers/mmc/host/sdhci-msm\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [25 x i8] c"sdhci_msm.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"sdhci_msm\00", align 1
@sdhci_msm_dt_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdhci-msm-v4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_msm_mci_var }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdhci-msm-v5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_msm_v5_var }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_sdhci_var }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_sdhci_var }, %struct.of_device_id zeroinitializer], align 4
@sdhci_msm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_msm_runtime_suspend, ptr @sdhci_msm_runtime_resume, ptr null }, align 4
@sdhci_msm_pdata = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_msm_ops, i32 302022664, i32 8 }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Peripheral clk setup failed (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"SDC MMC clk setup failed (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Invalid OPP table in Device tree\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"core clock boost failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"cal\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"xo\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"TCXO clk not present (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"pwr_irq\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Request IRQ failed (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"supports-cqe\00", align 1
@sdhci_msm_ops = internal constant %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr @sdhci_msm_writew, ptr @sdhci_msm_writeb, ptr @sdhci_msm_set_clock, ptr @sdhci_set_power_noreg, ptr @sdhci_msm_cqe_irq, ptr null, ptr null, ptr @sdhci_msm_get_max_clock, ptr @sdhci_msm_get_min_clock, ptr null, ptr null, ptr @sdhci_msm_set_timeout, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_msm_reset, ptr null, ptr @sdhci_msm_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_msm_dump_vendor_regs }, align 4
@.str.15 = private unnamed_addr constant [37 x i8] c"%s: pwr_irq for req: (%d) timed out\0A\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"\013%s: Unable to get DLL_LOCK/DDR_DLL_LOCK, dll_status: 0x%08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"\013%s: Failed to set clock at rate %u at timing %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"\014%s: Card appears overclocked; req %u Hz, actual %lu Hz\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"\013%s: Failed to calibrate DLL for hs400 mode (%d)\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"%s: DLL failed to LOCK\0A\00", align 1
@msm_config_cm_dll_phase.grey_coded_phase_table = internal unnamed_addr constant [16 x i8] c"\00\01\03\02\06\07\05\04\0C\0D\0F\0E\0A\0B\09\08", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"%s: Failed to set DLL phase: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"%s: CK_OUT_EN bit is not %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"\013%s: %s: CDC calibration was not completed\0A\00", align 1
@__func__.sdhci_msm_cdclp533_calibration = private unnamed_addr constant [31 x i8] c"sdhci_msm_cdclp533_calibration\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"\013%s: %s: CDC error code %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"\013%s: %s: CM_DLL_SDC4 calibration was not completed\0A\00", align 1
@__func__.sdhci_msm_cm_dll_sdc4_calibration = private unnamed_addr constant [34 x i8] c"sdhci_msm_cm_dll_sdc4_calibration\00", align 1
@.str.26 = private unnamed_addr constant [63 x i8] c"\013%s: sdhci_msm: ----------- VENDOR REGISTER DUMP -----------\0A\00", align 1
@.str.27 = private unnamed_addr constant [72 x i8] c"\013%s: sdhci_msm: DLL sts: 0x%08x | DLL cfg:  0x%08x | DLL cfg2: 0x%08x\0A\00", align 1
@.str.28 = private unnamed_addr constant [76 x i8] c"\013%s: sdhci_msm: DLL cfg3: 0x%08x | DLL usr ctl:  0x%08x | DDR cfg: 0x%08x\0A\00", align 1
@.str.29 = private unnamed_addr constant [77 x i8] c"\013%s: sdhci_msm: Vndr func: 0x%08x | Vndr func2 : 0x%08x Vndr func3: 0x%08x\0A\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"qcom,ddr-config\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"qcom,dll-config\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"\014%s: 1.8/3V not supported for vqmmc\0A\00", align 1
@.str.33 = private unnamed_addr constant [55 x i8] c"\013%s: Timedout clearing (0x%x) pwrctl status register\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"drivers/mmc/host/sdhci-msm.c\00", align 1
@.str.35 = private unnamed_addr constant [81 x i8] c"%s: IO_level setting failed(%d). signal_voltage: %d, vdd: %d irq_status: 0x%08x\0A\00", align 1
@.str.36 = private unnamed_addr constant [72 x i8] c"\013%s: PWRCTL_STATUS: 0x%08x | PWRCTL_MASK: 0x%08x | PWRCTL_CTL: 0x%08x\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"%s: vqmmc set load failed: %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"%s: vqmmc set volgate failed: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"%s: vqmm %sable failed: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@sdhci_msm_init_pwr_irq_wait.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"&msm_host->pwr_irq_wait\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"%s: Regulator output did not became stable\0A\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"%s: Invalid argument: total_phases=%d\0A\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"%s: Invalid phase selected=%d\0A\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"cqhci-pltfm init: failed: %d\0A\00", align 1
@sdhci_msm_cqhci_ops = internal constant %struct.cqhci_host_ops { ptr null, ptr null, ptr null, ptr @sdhci_msm_cqe_enable, ptr @sdhci_msm_cqe_disable, ptr null, ptr null, ptr null }, align 4
@.str.47 = private unnamed_addr constant [27 x i8] c"%s: CQE init: failed (%d)\0A\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"%s: CQE init: success\0A\00", align 1
@sdhci_msm_mci_var = internal constant %struct.sdhci_msm_variant_info { i8 0, i8 0, ptr @mci_var_ops, ptr @sdhci_msm_mci_offset }, align 4
@sdhci_msm_v5_var = internal constant %struct.sdhci_msm_variant_info { i8 1, i8 0, ptr @v5_var_ops, ptr @sdhci_msm_v5_offset }, align 4
@sdm845_sdhci_var = internal constant %struct.sdhci_msm_variant_info { i8 1, i8 1, ptr @v5_var_ops, ptr @sdhci_msm_v5_offset }, align 4
@mci_var_ops = internal constant %struct.sdhci_msm_variant_ops { ptr @sdhci_msm_mci_variant_readl_relaxed, ptr @sdhci_msm_mci_variant_writel_relaxed }, align 4
@sdhci_msm_mci_offset = internal constant %struct.sdhci_msm_offset { i32 120, i32 48, i32 52, i32 68, i32 80, i32 112, i32 204, i32 4, i32 8, i32 16, i32 220, i32 224, i32 228, i32 232, i32 292, i32 256, i32 264, i32 268, i32 276, i32 280, i32 272, i32 284, i32 388, i32 432, i32 436, i32 0, i32 440, i32 444, i32 0 }, align 4
@v5_var_ops = internal constant %struct.sdhci_msm_variant_ops { ptr @sdhci_msm_v5_variant_readl_relaxed, ptr @sdhci_msm_v5_variant_writel_relaxed }, align 4
@sdhci_msm_v5_offset = internal constant %struct.sdhci_msm_offset { i32 0, i32 860, i32 804, i32 776, i32 792, i32 800, i32 812, i32 3, i32 -2147483648, i32 8, i32 576, i32 580, i32 584, i32 588, i32 856, i32 512, i32 520, i32 524, i32 532, i32 536, i32 528, i32 540, i32 548, i32 592, i32 596, i32 600, i32 0, i32 604, i32 904 }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description274, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__exitcall_sdhci_msm_driver_exit, ptr @__initcall__kmod_sdhci_msm__273_2838_sdhci_msm_driver_init6, ptr @sdhci_msm_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdhci_msm_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_msm_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sdhci_msm_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_msm_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_msm_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @sdhci_pltfm_init(ptr noundef %0, ptr noundef nonnull @sdhci_msm_pdata, i32 noundef 144) #9
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %5 to i32
  br label %241

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 77
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 11, i32 5
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 10
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 11, i32 22
  store ptr %13, ptr %14, align 4
  store ptr %0, ptr %11, align 4
  %15 = tail call i32 @mmc_of_parse(ptr noundef %13) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %239

17:                                               ; preds = %9
  %18 = tail call ptr @of_device_get_match_data(ptr noundef %2) #9
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 13, i32 5
  store i8 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.sdhci_msm_variant_info, ptr %18, i32 0, i32 1
  %22 = load i8, ptr %21, align 1, !range !8
  %23 = getelementptr inbounds %struct.sdhci_msm_host, ptr %11, i32 0, i32 20
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.sdhci_msm_variant_info, ptr %18, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 13, i32 6
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sdhci_msm_variant_info, ptr %18, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 13, i32 7
  store ptr %28, ptr %29, align 4
  tail call void @sdhci_get_property(ptr noundef %0) #9
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 13, i32 12
  %32 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %30, ptr noundef nonnull @.str.30, ptr noundef %31, i32 noundef 1, i32 noundef 0) #9
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %35, label %34

34:                                               ; preds = %17
  store i32 -2147219341, ptr %31, align 4
  br label %35

35:                                               ; preds = %34, %17
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 13, i32 11
  %37 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %30, ptr noundef nonnull @.str.31, ptr noundef %36, i32 noundef 1, i32 noundef 0) #9
  %38 = getelementptr inbounds %struct.sdhci_msm_host, ptr %11, i32 0, i32 12
  store i8 -1, ptr %38, align 1
  %39 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #9
  %40 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 11, i32 9
  store ptr %39, ptr %40, align 4
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %52, label %42

42:                                               ; preds = %35
  %43 = tail call i32 @clk_set_rate(ptr noundef %39, i32 noundef 2147483647) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %239

45:                                               ; preds = %42
  %46 = load ptr, ptr %40, align 4
  %47 = tail call i32 @clk_prepare(ptr noundef %46) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %239

49:                                               ; preds = %45
  %50 = tail call i32 @clk_enable(ptr noundef %46) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %236

52:                                               ; preds = %49, %35
  %53 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #9
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = ptrtoint ptr %53 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %56) #10
  br label %231

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 11, i32 11
  %59 = getelementptr %struct.sdhci_host, ptr %5, i32 1, i32 11, i32 14
  store ptr %53, ptr %59, align 4
  %60 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #9
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = ptrtoint ptr %60 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %63) #10
  br label %231

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 11, i32 12
  store ptr %60, ptr %65, align 4
  %66 = tail call i32 @dev_pm_opp_of_find_icc_paths(ptr noundef %2, ptr noundef null) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %231

68:                                               ; preds = %64
  %69 = tail call i32 @devm_pm_opp_set_clkname(ptr noundef %2, ptr noundef nonnull @.str.4) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %231

71:                                               ; preds = %68
  %72 = tail call i32 @devm_pm_opp_of_add_table(ptr noundef %2) #9
  switch i32 %72, label %73 [
    i32 -19, label %74
    i32 0, label %74
  ]

73:                                               ; preds = %71
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #10
  br label %231

74:                                               ; preds = %71, %71
  %75 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %2, i32 noundef 2147483647) #9
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.7) #10
  br label %78

78:                                               ; preds = %77, %74
  %79 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.8) #9
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  %81 = select i1 %80, ptr null, ptr %79
  %82 = getelementptr %struct.sdhci_host, ptr %5, i32 1, i32 11, i32 16
  store ptr %81, ptr %82, align 4
  %83 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.9) #9
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  %85 = select i1 %84, ptr null, ptr %83
  %86 = getelementptr %struct.sdhci_host, ptr %5, i32 1, i32 11, i32 18
  store ptr %85, ptr %86, align 4
  %87 = getelementptr %struct.sdhci_host, ptr %5, i32 1, i32 11, i32 20
  store ptr null, ptr %87, align 4
  %88 = tail call fastcc i32 @clk_bulk_prepare_enable(ptr noundef %58)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %231

90:                                               ; preds = %78
  %91 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.10) #9
  %92 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 11, i32 10
  store ptr %91, ptr %92, align 4
  %93 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = ptrtoint ptr %91 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %95) #10
  br label %96

96:                                               ; preds = %94, %90
  %97 = load i8, ptr %20, align 4, !range !8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #9
  %101 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 11, i32 6
  store ptr %100, ptr %101, align 4
  %102 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = ptrtoint ptr %100 to i32
  br label %229

105:                                              ; preds = %99, %96
  %106 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 4
  %107 = load ptr, ptr %106, align 16
  %108 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %28, i32 0, i32 17
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr i8, ptr %107, i32 %109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 2716) #9, !srcloc !9
  %111 = load i8, ptr %20, align 4, !range !8
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %105
  %114 = load ptr, ptr %26, align 4
  %115 = getelementptr inbounds %struct.sdhci_msm_variant_ops, ptr %114, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = load i32, ptr %28, align 4
  tail call void %116(i32 noundef 1, ptr noundef %5, i32 noundef %117) #9
  %118 = load ptr, ptr %26, align 4
  %119 = load ptr, ptr %118, align 4
  %120 = load i32, ptr %28, align 4
  %121 = tail call i32 %119(ptr noundef %5, i32 noundef %120) #9
  %122 = or i32 %121, 8192
  %123 = load ptr, ptr %26, align 4
  %124 = getelementptr inbounds %struct.sdhci_msm_variant_ops, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = load i32, ptr %28, align 4
  tail call void %125(i32 noundef %122, ptr noundef %5, i32 noundef %126) #9
  br label %127

127:                                              ; preds = %113, %105
  %128 = load ptr, ptr %106, align 16
  %129 = getelementptr i8, ptr %128, i32 254
  %130 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %129) #9, !srcloc !10
  %131 = load ptr, ptr %26, align 4
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %28, i32 0, i32 4
  %134 = load i32, ptr %133, align 4
  %135 = tail call i32 %132(ptr noundef %5, i32 noundef %134) #9
  %136 = and i32 %135, 255
  %137 = and i32 %135, -268435456
  %138 = icmp eq i32 %137, 268435456
  %139 = icmp ugt i32 %136, 65
  %140 = and i1 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %127
  %142 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 11, i32 23
  br label %148

143:                                              ; preds = %127
  %144 = icmp ult i32 %136, 52
  %145 = and i1 %138, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.sdhci_msm_host, ptr %11, i32 0, i32 13
  br label %148

148:                                              ; preds = %146, %141
  %149 = phi ptr [ %142, %141 ], [ %147, %146 ]
  store i8 1, ptr %149, align 4
  br label %150

150:                                              ; preds = %148, %143
  %151 = icmp ugt i32 %135, 268435455
  %152 = add nsw i32 %136, -19
  %153 = icmp ult i32 %152, -2
  %154 = and i1 %151, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = load ptr, ptr %106, align 16
  %157 = getelementptr i8, ptr %156, i32 64
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #9, !srcloc !11
  %159 = or i32 %158, 33816576
  %160 = load ptr, ptr %106, align 16
  %161 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %28, i32 0, i32 21
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr i8, ptr %160, i32 %162
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %159) #9, !srcloc !9
  br label %164

164:                                              ; preds = %155, %150
  %165 = icmp ugt i32 %136, 72
  %166 = and i1 %138, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 13, i32 10
  store i8 1, ptr %168, align 4
  br label %169

169:                                              ; preds = %167, %164
  %170 = icmp ugt i32 %136, 112
  %171 = and i1 %138, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.sdhci_msm_host, ptr %11, i32 0, i32 26
  store i8 1, ptr %173, align 1
  br label %174

174:                                              ; preds = %172, %169
  %175 = tail call fastcc i32 @sdhci_msm_register_vreg(ptr noundef %11)
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %229

177:                                              ; preds = %174
  tail call fastcc void @sdhci_msm_handle_pwr_irq(ptr noundef %5)
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %178 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.12) #9
  %179 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 11, i32 8
  store i32 %178, ptr %179, align 4
  %180 = icmp slt i32 %178, 0
  br i1 %180, label %229, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 1, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %182, ptr noundef nonnull @.str.42, ptr noundef nonnull @sdhci_msm_init_pwr_irq_wait.__key) #9
  %183 = load ptr, ptr %26, align 4
  %184 = getelementptr inbounds %struct.sdhci_msm_variant_ops, ptr %183, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %28, i32 0, i32 11
  %187 = load i32, ptr %186, align 4
  tail call void %185(i32 noundef 15, ptr noundef %5, i32 noundef %187) #9
  %188 = load i32, ptr %179, align 4
  %189 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %181
  %193 = load ptr, ptr %2, align 4
  br label %194

194:                                              ; preds = %192, %181
  %195 = phi ptr [ %193, %192 ], [ %190, %181 ]
  %196 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %188, ptr noundef null, ptr noundef nonnull @sdhci_msm_pwr_irq, i32 noundef 8192, ptr noundef %195, ptr noundef %5) #9
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %194
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %196) #10
  br label %229

199:                                              ; preds = %194
  %200 = load ptr, ptr %14, align 4
  %201 = getelementptr inbounds %struct.mmc_host, ptr %200, i32 0, i32 16
  %202 = load i32, ptr %201, align 8
  %203 = or i32 %202, 4194816
  store i32 %203, ptr %201, align 8
  %204 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 20
  store i8 15, ptr %204, align 4
  %205 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %205) #9, !srcloc !13
  %206 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %205, ptr %205, i32 1, ptr elementtype(i32) %205) #9, !srcloc !14
  %207 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #9
  tail call void @pm_runtime_enable(ptr noundef %2) #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 50) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #9
  %208 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 11, i32 10
  store ptr @sdhci_msm_start_signal_voltage_switch, ptr %208, align 4
  %209 = getelementptr inbounds %struct.sdhci_host, ptr %5, i32 0, i32 11, i32 12
  store ptr @sdhci_msm_execute_tuning, ptr %209, align 4
  %210 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef null) #9
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %199
  %213 = tail call fastcc i32 @sdhci_msm_cqe_add_host(ptr noundef %5, ptr noundef %0)
  br label %216

214:                                              ; preds = %199
  %215 = tail call i32 @sdhci_add_host(ptr noundef %5) #9
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi i32 [ %213, %212 ], [ %215, %214 ]
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = tail call i64 @ktime_get_mono_fast_ns() #9
  %221 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %220, ptr %221, align 8
  %222 = tail call i32 @__pm_runtime_suspend(ptr noundef %2, i32 noundef 13) #9
  br label %241

223:                                              ; preds = %216
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #9
  %224 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 2) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %205) #9, !srcloc !13
  %225 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %205, ptr %205, i32 0, i32 -1, ptr elementtype(i32) %205) #9, !srcloc !16
  %226 = extractvalue { i32, i32, i32 } %225, 0
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %223
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  br label %229

229:                                              ; preds = %228, %223, %198, %177, %174, %103
  %230 = phi i32 [ %175, %174 ], [ %196, %198 ], [ %104, %103 ], [ %178, %177 ], [ %217, %223 ], [ %217, %228 ]
  tail call fastcc void @clk_bulk_disable_unprepare(ptr noundef %58)
  br label %231

231:                                              ; preds = %229, %78, %73, %68, %64, %62, %55
  %232 = phi i32 [ %56, %55 ], [ %63, %62 ], [ %66, %64 ], [ %69, %68 ], [ %72, %73 ], [ %88, %78 ], [ %230, %229 ]
  %233 = load ptr, ptr %40, align 4
  %234 = icmp ugt ptr %233, inttoptr (i32 -4096 to ptr)
  br i1 %234, label %239, label %235

235:                                              ; preds = %231
  tail call void @clk_disable(ptr noundef %233) #9
  br label %236

236:                                              ; preds = %235, %49
  %237 = phi ptr [ %233, %235 ], [ %46, %49 ]
  %238 = phi i32 [ %232, %235 ], [ %50, %49 ]
  tail call void @clk_unprepare(ptr noundef %237) #9
  br label %239

239:                                              ; preds = %236, %231, %45, %42, %9
  %240 = phi i32 [ %15, %9 ], [ %232, %231 ], [ %43, %42 ], [ %47, %45 ], [ %238, %236 ]
  tail call void @sdhci_pltfm_free(ptr noundef %0) #9
  br label %241

241:                                              ; preds = %239, %219, %7
  %242 = phi i32 [ %8, %7 ], [ %240, %239 ], [ 0, %219 ]
  ret i32 %242
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_msm_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 48
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !11
  %8 = icmp eq i32 %7, -1
  %9 = zext i1 %8 to i32
  tail call void @sdhci_remove_host(ptr noundef %3, i32 noundef %9) #9
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #9
  tail call void @__pm_runtime_disable(ptr noundef %10, i1 noundef zeroext true) #9
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #9, !srcloc !13
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #9, !srcloc !16
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 11
  tail call void @clk_bulk_disable(i32 noundef 5, ptr noundef %18) #9
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %18) #9
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @clk_disable(ptr noundef %20) #9
  tail call void @clk_unprepare(ptr noundef %20) #9
  br label %23

23:                                               ; preds = %22, %17
  tail call void @sdhci_pltfm_free(ptr noundef %0) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_find_icc_paths(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_clkname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_bulk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_bulk_prepare(i32 noundef 5, ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_bulk_enable(i32 noundef 5, ptr noundef %0) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %0) #9
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_msm_register_vreg(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sdhci_msm_host, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @mmc_regulator_get_supply(ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %65

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 54, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sdhci_msm_host, ptr %0, i32 0, i32 22
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %60, label %13

13:                                               ; preds = %6
  %14 = tail call i32 @regulator_is_supported_voltage(ptr noundef %9, i32 noundef 1700000, i32 noundef 1950000) #9
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 0, i32 67108864
  %17 = tail call i32 @regulator_is_supported_voltage(ptr noundef %9, i32 noundef 2700000, i32 noundef 3600000) #9
  %18 = icmp eq i32 %17, 0
  %19 = or i32 %16, 33554432
  %20 = select i1 %18, i32 %16, i32 %19
  %21 = select i1 %18, i1 %15, i1 false
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi ptr [ %28, %26 ], [ %24, %22 ]
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %30) #10
  br label %60

32:                                               ; preds = %13
  %33 = getelementptr inbounds %struct.sdhci_msm_host, ptr %0, i32 0, i32 15
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 1, i32 1, i32 0, i32 1, i32 1
  %36 = load ptr, ptr %35, align 16
  %37 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %11, i32 0, i32 17
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %36, i32 %38
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !11
  %41 = or i32 %40, 32768
  %42 = and i32 %34, 8
  %43 = icmp eq i32 %42, 0
  %44 = and i32 %20, 33554432
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %32
  %48 = and i32 %41, -65537
  br label %55

49:                                               ; preds = %32
  %50 = and i32 %34, 4
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i1 %15, i1 false
  %53 = or i32 %40, 98304
  %54 = select i1 %52, i32 %41, i32 %53
  br label %55

55:                                               ; preds = %49, %47
  %56 = phi i32 [ %48, %47 ], [ %54, %49 ]
  %57 = load ptr, ptr %35, align 16
  %58 = load i32, ptr %37, align 4
  %59 = getelementptr i8, ptr %57, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %56) #9, !srcloc !9
  br label %60

60:                                               ; preds = %55, %29, %6
  %61 = phi i32 [ %20, %55 ], [ 0, %6 ], [ 0, %29 ]
  %62 = getelementptr inbounds %struct.sdhci_msm_host, ptr %0, i32 0, i32 18
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, ptr %62, align 4
  br label %65

65:                                               ; preds = %60, %1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdhci_msm_handle_pwr_irq(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.mmc_ios, align 4
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %7, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 %10(ptr noundef %0, i32 noundef %12) #9
  %14 = and i32 %13, 15
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.sdhci_msm_variant_ops, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %7, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  tail call void %17(i32 noundef %14, ptr noundef %0, i32 noundef %19) #9
  %20 = load ptr, ptr %8, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %11, align 4
  %23 = tail call i32 %21(ptr noundef %0, i32 noundef %22) #9
  %24 = and i32 %23, %14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %79, label %26

26:                                               ; preds = %66, %1
  %27 = phi i32 [ %71, %66 ], [ 10, %1 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %26
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 1, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi ptr [ %36, %34 ], [ %32, %29 ]
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %38, i32 noundef %14) #10
  %40 = load ptr, ptr %6, align 4
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 1, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %37
  %49 = phi ptr [ %47, %45 ], [ %43, %37 ]
  %50 = load ptr, ptr %8, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %40, i32 0, i32 10
  %53 = load i32, ptr %52, align 4
  %54 = tail call i32 %51(ptr noundef %0, i32 noundef %53) #9
  %55 = load ptr, ptr %8, align 4
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %40, i32 0, i32 11
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 %56(ptr noundef %0, i32 noundef %58) #9
  %60 = load ptr, ptr %8, align 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %40, i32 0, i32 13
  %63 = load i32, ptr %62, align 4
  %64 = tail call i32 %61(ptr noundef %0, i32 noundef %63) #9
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %49, i32 noundef %54, i32 noundef %59, i32 noundef %64) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 1620, i32 noundef 9, ptr noundef null) #9
  br label %79

66:                                               ; preds = %26
  %67 = load ptr, ptr %8, align 4
  %68 = getelementptr inbounds %struct.sdhci_msm_variant_ops, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = load i32, ptr %18, align 4
  tail call void %69(i32 noundef %14, ptr noundef %0, i32 noundef %70) #9
  %71 = add nsw i32 %27, -1
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 2147480) #9
  %73 = load ptr, ptr %8, align 4
  %74 = load ptr, ptr %73, align 4
  %75 = load i32, ptr %11, align 4
  %76 = tail call i32 %74(ptr noundef %0, i32 noundef %75) #9
  %77 = and i32 %76, %14
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %26

79:                                               ; preds = %66, %48, %1
  %80 = and i32 %13, 2
  %81 = shl nuw nsw i32 %80, 2
  %82 = and i32 %13, 1
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 %80, i32 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %193

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 54
  %88 = load ptr, ptr %87, align 4
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 28, i32 1
  %92 = load i16, ptr %91, align 4
  %93 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %5, ptr noundef %88, i16 noundef zeroext %92) #9
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %193

95:                                               ; preds = %90, %86
  %96 = and i32 %84, 2
  %97 = icmp eq i32 %96, 0
  %98 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 54, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %182, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 28, i32 5
  %103 = load i8, ptr %102, align 2
  %104 = icmp eq i8 %103, 3
  br i1 %104, label %182, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 16
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 256
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 37
  %112 = load ptr, ptr %111, align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %132, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.mmc_card, ptr %112, i32 0, i32 4
  %116 = load i32, ptr %115, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = select i1 %97, i32 0, i32 325000
  %120 = tail call i32 @regulator_set_load(ptr noundef %99, i32 noundef %119) #9
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %182, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %5, align 64
  %124 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  br label %130

130:                                              ; preds = %127, %122
  %131 = phi ptr [ %129, %127 ], [ %125, %122 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.37, ptr noundef %131, i32 noundef %120) #10
  br label %193

132:                                              ; preds = %114, %110, %105
  %133 = lshr i32 %84, 1
  %134 = trunc i32 %133 to i8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #9, !annotation !18
  %135 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 13
  %136 = load i8, ptr %135, align 4, !range !8
  %137 = icmp eq i8 %136, %134
  br i1 %137, label %180, label %138

138:                                              ; preds = %132
  br i1 %97, label %163, label %139

139:                                              ; preds = %138
  %140 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 4
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 100663296
  switch i32 %142, label %145 [
    i32 67108864, label %143
    i32 0, label %160
  ]

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.mmc_ios, ptr %2, i32 0, i32 8
  store i8 1, ptr %144, align 1
  br label %145

145:                                              ; preds = %143, %139
  %146 = call i32 @mmc_regulator_set_vqmmc(ptr noundef %5, ptr noundef nonnull %2) #9
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr %98, align 4
  br label %160

150:                                              ; preds = %145
  %151 = load ptr, ptr %5, align 64
  %152 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1, i32 3
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  br label %158

158:                                              ; preds = %155, %150
  %159 = phi ptr [ %157, %155 ], [ %153, %150 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.38, ptr noundef %159, i32 noundef %146) #10
  br label %181

160:                                              ; preds = %148, %139
  %161 = phi ptr [ %149, %148 ], [ %99, %139 ]
  %162 = call i32 @regulator_enable(ptr noundef %161) #9
  br label %165

163:                                              ; preds = %138
  %164 = tail call i32 @regulator_disable(ptr noundef %99) #9
  br label %165

165:                                              ; preds = %163, %160
  %166 = phi i32 [ %162, %160 ], [ %164, %163 ]
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %179, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr %5, align 64
  %170 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1, i32 3
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  br label %176

176:                                              ; preds = %173, %168
  %177 = phi ptr [ %175, %173 ], [ %171, %168 ]
  %178 = select i1 %97, ptr @.str.41, ptr @.str.40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.39, ptr noundef %177, ptr noundef nonnull %178, i32 noundef %166) #10
  br label %181

179:                                              ; preds = %165
  store i8 %134, ptr %135, align 4
  br label %180

180:                                              ; preds = %179, %132
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  br label %182

181:                                              ; preds = %176, %158
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  br label %193

182:                                              ; preds = %180, %118, %101, %95
  %183 = load ptr, ptr %3, align 4
  %184 = getelementptr inbounds %struct.platform_device, ptr %183, i32 0, i32 3
  br i1 %97, label %187, label %185

185:                                              ; preds = %182
  %186 = call i32 @pinctrl_pm_select_default_state(ptr noundef %184) #9
  br label %189

187:                                              ; preds = %182
  %188 = call i32 @pinctrl_pm_select_sleep_state(ptr noundef %184) #9
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ]
  %191 = icmp eq i32 %190, 0
  %192 = select i1 %191, i32 1, i32 2
  br label %193

193:                                              ; preds = %189, %181, %130, %90, %79
  %194 = phi i32 [ 0, %79 ], [ 2, %181 ], [ 2, %130 ], [ 2, %90 ], [ %192, %189 ]
  %195 = and i32 %13, 5
  %196 = icmp eq i32 %195, 0
  %197 = select i1 %196, i32 %81, i32 4
  %198 = and i32 %13, 8
  %199 = icmp eq i32 %198, 0
  %200 = select i1 %199, i32 %197, i32 8
  %201 = icmp eq i32 %200, 0
  %202 = or i32 %194, 4
  %203 = select i1 %201, i32 %194, i32 %202
  br i1 %201, label %230, label %204

204:                                              ; preds = %193
  %205 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 54, i32 1
  %206 = load ptr, ptr %205, align 4
  %207 = icmp ugt ptr %206, inttoptr (i32 -4096 to ptr)
  %208 = or i1 %85, %207
  br i1 %208, label %230, label %209

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 28
  %211 = call i32 @mmc_regulator_set_vqmmc(ptr noundef %5, ptr noundef %210) #9
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %230

213:                                              ; preds = %209
  %214 = load ptr, ptr %5, align 64
  %215 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1, i32 3
  %216 = load ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  br label %221

221:                                              ; preds = %218, %213
  %222 = phi ptr [ %220, %218 ], [ %216, %213 ]
  %223 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 28, i32 8
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i32
  %226 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 28, i32 1
  %227 = load i16, ptr %226, align 4
  %228 = zext i16 %227 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %214, ptr noundef nonnull @.str.35, ptr noundef %222, i32 noundef %211, i32 noundef %225, i32 noundef %228, i32 noundef %14) #10
  %229 = or i32 %203, 8
  br label %230

230:                                              ; preds = %221, %209, %204, %193
  %231 = phi i32 [ %202, %204 ], [ %229, %221 ], [ %202, %209 ], [ %194, %193 ]
  %232 = load ptr, ptr %8, align 4
  %233 = getelementptr inbounds %struct.sdhci_msm_variant_ops, ptr %232, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %7, i32 0, i32 13
  %236 = load i32, ptr %235, align 4
  call void %234(i32 noundef %231, ptr noundef %0, i32 noundef %236) #9
  %237 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 4
  %238 = load i32, ptr %237, align 4
  %239 = and i32 %238, 100663296
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %274, label %241

241:                                              ; preds = %230
  %242 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %243 = load ptr, ptr %242, align 16
  %244 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %7, i32 0, i32 17
  %245 = load i32, ptr %244, align 4
  %246 = getelementptr i8, ptr %243, i32 %245
  %247 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %246) #9, !srcloc !11
  %248 = and i32 %200, 8
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %241
  %251 = load i32, ptr %237, align 4
  %252 = and i32 %251, 33554432
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %261, label %254

254:                                              ; preds = %250
  %255 = and i32 %247, -65537
  br label %267

256:                                              ; preds = %241
  %257 = and i32 %200, 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = load i32, ptr %237, align 4
  br label %261

261:                                              ; preds = %259, %250
  %262 = phi i32 [ %260, %259 ], [ %251, %250 ]
  %263 = and i32 %262, 67108864
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %274, label %265

265:                                              ; preds = %261, %256
  %266 = or i32 %247, 65536
  br label %267

267:                                              ; preds = %265, %254
  %268 = phi i32 [ %255, %254 ], [ %266, %265 ]
  %269 = icmp eq i32 %247, %268
  br i1 %269, label %274, label %270

270:                                              ; preds = %267
  %271 = load ptr, ptr %242, align 16
  %272 = load i32, ptr %244, align 4
  %273 = getelementptr i8, ptr %271, i32 %272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 %268) #9, !srcloc !9
  br label %274

274:                                              ; preds = %270, %267, %261, %230
  br i1 %85, label %275, label %277

275:                                              ; preds = %274
  %276 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 12
  store i32 %84, ptr %276, align 4
  br label %277

277:                                              ; preds = %275, %274
  br i1 %201, label %280, label %278

278:                                              ; preds = %277
  %279 = getelementptr inbounds %struct.sdhci_msm_host, ptr %3, i32 0, i32 15
  store i32 %200, ptr %279, align 4
  br label %280

280:                                              ; preds = %278, %277
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_msm_pwr_irq(i32 noundef %0, ptr noundef %1) #2 {
  tail call fastcc void @sdhci_msm_handle_pwr_irq(ptr noundef %1)
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 3
  store i8 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13
  tail call void @__wake_up(ptr noundef %4, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_msm_start_signal_voltage_switch(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 18
  %5 = load i32, ptr %4, align 64
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %76, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !19

13:                                               ; preds = %7
  %14 = tail call zeroext i16 %11(ptr noundef %3, i32 noundef 62) #9
  br label %20

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr i8, ptr %17, i32 62
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i16 [ %14, %13 ], [ %19, %15 ]
  %22 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 8
  %23 = load i8, ptr %22, align 1
  switch i8 %23, label %76 [
    i8 0, label %24
    i8 1, label %31
  ]

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 16
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 16384
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %76, label %29

29:                                               ; preds = %24
  %30 = and i16 %21, -9
  br label %38

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 16
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 32768
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %76, label %36

36:                                               ; preds = %31
  %37 = or i16 %21, 8
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi i16 [ %37, %36 ], [ %30, %29 ]
  %40 = load ptr, ptr %8, align 4
  %41 = getelementptr inbounds %struct.sdhci_ops, ptr %40, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44, !prof !19

44:                                               ; preds = %38
  tail call void %42(ptr noundef %3, i16 noundef zeroext %39, i32 noundef 62) #9
  br label %49

45:                                               ; preds = %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %46 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %47 = load ptr, ptr %46, align 16
  %48 = getelementptr i8, ptr %47, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %48, i16 %39) #9, !srcloc !22
  br label %49

49:                                               ; preds = %45, %44
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #9
  %50 = load ptr, ptr %8, align 4
  %51 = getelementptr inbounds %struct.sdhci_ops, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !19

54:                                               ; preds = %49
  %55 = tail call zeroext i16 %52(ptr noundef %3, i32 noundef 62) #9
  br label %61

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %58 = load ptr, ptr %57, align 16
  %59 = getelementptr i8, ptr %58, i32 62
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %59) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  br label %61

61:                                               ; preds = %56, %54
  %62 = phi i16 [ %55, %54 ], [ %60, %56 ]
  %63 = xor i16 %62, %39
  %64 = and i16 %63, 8
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %0, align 64
  %68 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  br label %74

74:                                               ; preds = %71, %66
  %75 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull @.str.43, ptr noundef %75) #10
  br label %76

76:                                               ; preds = %74, %61, %31, %24, %20, %2
  %77 = phi i32 [ -11, %74 ], [ 0, %2 ], [ -22, %24 ], [ -22, %31 ], [ -22, %20 ], [ 0, %61 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_msm_execute_tuning(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca [16 x i8], align 1
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !18
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 58
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 21, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 100000001
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 28, i32 7
  %15 = load i8, ptr %14, align 4
  switch i8 %15, label %20 [
    i8 10, label %16
    i8 9, label %16
    i8 6, label %16
  ]

16:                                               ; preds = %13, %13, %13
  %17 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 28, i32 10
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %16, %13, %2
  %21 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 2, i32 1, i32 4
  store i8 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 2, i32 1, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 16
  %26 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %23, i32 0, i32 15
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %25, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !11
  %30 = and i32 %29, -655361
  %31 = or i32 %30, 524288
  %32 = icmp eq i32 %31, %29
  br i1 %32, label %91, label %33

33:                                               ; preds = %20
  %34 = load ptr, ptr %24, align 16
  %35 = load i32, ptr %26, align 4
  %36 = getelementptr i8, ptr %34, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %31) #9, !srcloc !9
  br label %91

37:                                               ; preds = %16
  %38 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 2, i32 1, i32 4
  store i8 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.sdhci_msm_host, ptr %9, i32 0, i32 10
  store i8 0, ptr %39, align 1
  %40 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 16
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 8192
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  tail call fastcc void @sdhci_msm_hc_select_mode(ptr noundef %4)
  tail call fastcc void @msm_set_clock_rate_for_bus_mode(ptr noundef %4, i32 noundef %8)
  %45 = load i32, ptr %40, align 4
  %46 = and i32 %45, -8193
  store i32 %46, ptr %40, align 4
  br label %47

47:                                               ; preds = %44, %37
  %48 = tail call fastcc i32 @msm_init_cm_dll(ptr noundef %4)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %91

50:                                               ; preds = %85, %47
  %51 = phi i32 [ %86, %85 ], [ 10, %47 ]
  br label %52

52:                                               ; preds = %64, %50
  %53 = phi i8 [ %66, %64 ], [ 0, %50 ]
  %54 = phi i8 [ %65, %64 ], [ 0, %50 ]
  %55 = tail call fastcc i32 @msm_config_cm_dll_phase(ptr noundef %4, i8 noundef zeroext %53)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %52
  %58 = tail call i32 @mmc_send_tuning(ptr noundef %0, i32 noundef %1, ptr noundef null) #9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = add i8 %54, 1
  %62 = zext i8 %54 to i32
  %63 = getelementptr [16 x i8], ptr %3, i32 0, i32 %62
  store i8 %53, ptr %63, align 1
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i8 [ %54, %57 ], [ %61, %60 ]
  %66 = add nuw nsw i8 %53, 1
  %67 = icmp ult i8 %53, 15
  br i1 %67, label %52, label %68

68:                                               ; preds = %64
  %69 = icmp eq i8 %65, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %68
  %71 = icmp ne i8 %65, 16
  %72 = add i32 %51, -1
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = call fastcc i32 @msm_find_most_appropriate_phase(ptr noundef %4, ptr noundef nonnull %3, i8 noundef zeroext %65)
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %75
  %79 = trunc i32 %76 to i8
  %80 = tail call fastcc i32 @msm_config_cm_dll_phase(ptr noundef %4, i8 noundef zeroext %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %89, label %91

82:                                               ; preds = %68
  %83 = add i32 %51, -1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %82, %70
  %86 = phi i32 [ %83, %82 ], [ %72, %70 ]
  %87 = tail call fastcc i32 @msm_init_cm_dll(ptr noundef %4)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %50, label %91

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.sdhci_msm_host, ptr %9, i32 0, i32 12
  store i8 %79, ptr %90, align 1
  store i8 1, ptr %39, align 1
  br label %91

91:                                               ; preds = %89, %85, %82, %78, %75, %52, %47, %33, %20
  %92 = phi i32 [ %76, %75 ], [ %80, %78 ], [ 0, %89 ], [ 0, %20 ], [ 0, %33 ], [ %48, %47 ], [ %55, %52 ], [ %87, %85 ], [ -5, %82 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_msm_cqe_add_host(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 56
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 268435456
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 49
  store i32 16, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = tail call i32 @sdhci_setup_host(ptr noundef %0) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %89

12:                                               ; preds = %9
  %13 = tail call ptr @cqhci_pltfm_init(ptr noundef %1) #9
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = ptrtoint ptr %13 to i32
  %17 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.46, i32 noundef %16) #10
  br label %87

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 22
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 17
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, 25165824
  store i32 %23, ptr %21, align 4
  store ptr @sdhci_msm_cqhci_ops, ptr %13, align 4
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 4096
  %27 = icmp ne i32 %26, 0
  %28 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 @cqhci_init(ptr noundef %13, ptr noundef %29, i1 noundef zeroext %27) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %34 = load ptr, ptr %28, align 8
  %35 = getelementptr inbounds %struct.mmc_host, ptr %34, i32 0, i32 1, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.mmc_host, ptr %34, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %32
  %42 = phi ptr [ %40, %38 ], [ %36, %32 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.47, ptr noundef %42, i32 noundef %30) #10
  br label %87

43:                                               ; preds = %18
  %44 = load ptr, ptr %13, align 4
  %45 = getelementptr inbounds %struct.cqhci_host_ops, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48, !prof !19

48:                                               ; preds = %43
  %49 = tail call i32 %46(ptr noundef %13, i32 noundef 2560) #9
  br label %55

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 2560
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #9, !srcloc !11
  br label %55

55:                                               ; preds = %50, %48
  %56 = phi i32 [ %49, %48 ], [ %54, %50 ]
  %57 = or i32 %56, 24576
  %58 = load ptr, ptr %13, align 4
  %59 = getelementptr inbounds %struct.cqhci_host_ops, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62, !prof !19

62:                                               ; preds = %55
  tail call void %60(ptr noundef %13, i32 noundef %57, i32 noundef 2560) #9
  br label %67

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %57) #9, !srcloc !9
  br label %67

67:                                               ; preds = %63, %62
  %68 = load i32, ptr %24, align 4
  %69 = and i32 %68, 4096
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 48
  store i32 12, ptr %72, align 16
  br label %73

73:                                               ; preds = %71, %67
  %74 = tail call i32 @__sdhci_add_host(ptr noundef %0) #9
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %78 = load ptr, ptr %28, align 8
  %79 = getelementptr inbounds %struct.mmc_host, ptr %78, i32 0, i32 1, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.mmc_host, ptr %78, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  br label %85

85:                                               ; preds = %82, %76
  %86 = phi ptr [ %84, %82 ], [ %80, %76 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.48, ptr noundef %86) #10
  br label %89

87:                                               ; preds = %73, %41, %15
  %88 = phi i32 [ %16, %15 ], [ %30, %41 ], [ %74, %73 ]
  tail call void @sdhci_cleanup_host(ptr noundef %0) #9
  br label %89

89:                                               ; preds = %87, %85, %9
  %90 = phi i32 [ %88, %87 ], [ 0, %85 ], [ %10, %9 ]
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_bulk_disable_unprepare(ptr noundef %0) unnamed_addr #5 {
  tail call void @clk_bulk_disable(i32 noundef 5, ptr noundef %0) #9
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_msm_writew(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = tail call fastcc i32 @__sdhci_msm_check_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2)
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 %2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %1) #9, !srcloc !22
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call fastcc void @sdhci_msm_check_power_status(ptr noundef %0, i32 noundef %4)
  br label %10

10:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_msm_writeb(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = zext i8 %1 to i16
  %5 = tail call fastcc i32 @__sdhci_msm_check_write(ptr noundef %0, i16 noundef zeroext %4, i32 noundef %2)
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr i8, ptr %7, i32 %2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %1) #9, !srcloc !23
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call fastcc void @sdhci_msm_check_power_status(ptr noundef %0, i32 noundef %5)
  br label %11

11:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_msm_set_clock(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 21
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 57
  store i32 0, ptr %8, align 4
  br label %10

9:                                                ; preds = %2
  tail call fastcc void @sdhci_msm_hc_select_mode(ptr noundef %0)
  tail call fastcc void @msm_set_clock_rate_for_bus_mode(ptr noundef %0, i32 noundef %1)
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sdhci_ops, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !19

16:                                               ; preds = %10
  tail call void %14(ptr noundef %0, i16 noundef zeroext 0, i32 noundef 44) #9
  br label %21

17:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 16
  %20 = getelementptr i8, ptr %19, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 0) #9, !srcloc !22
  br label %21

21:                                               ; preds = %17, %16
  br i1 %3, label %36, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr inbounds %struct.sdhci_ops, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !19

27:                                               ; preds = %22
  %28 = tail call zeroext i16 %25(ptr noundef %0, i32 noundef 44) #9
  br label %34

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr i8, ptr %31, i32 44
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %32) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i16 [ %28, %27 ], [ %33, %29 ]
  tail call void @sdhci_enable_clk(ptr noundef %0, i16 noundef zeroext %35) #9
  br label %36

36:                                               ; preds = %34, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_power_noreg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_msm_cqe_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4
  %5 = call zeroext i1 @sdhci_cqe_irq(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %3, align 4
  %10 = load i32, ptr %4, align 4
  %11 = call i32 @cqhci_irq(ptr noundef %8, i32 noundef %1, i32 noundef %9, i32 noundef %10) #9
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %6 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_msm_get_max_clock(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_round_rate(ptr noundef %3, i32 noundef -1) #9
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sdhci_msm_get_min_clock(ptr nocapture noundef readnone %0) #6 {
  ret i32 400000
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_msm_set_timeout(ptr noundef %0, ptr noundef %1) #2 {
  tail call void @__sdhci_set_timeout(ptr noundef %0, ptr noundef %1) #9
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_ops, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !19

8:                                                ; preds = %2
  %9 = tail call zeroext i8 %6(ptr noundef %0, i32 noundef 46) #9
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr i8, ptr %12, i32 46
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #9, !srcloc !24
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i8 [ %9, %8 ], [ %14, %10 ]
  %17 = zext i8 %16 to i32
  %18 = icmp eq ptr %1, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -400001
  %27 = icmp ult i32 %26, 49600000
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = shl i32 32768, %17
  %30 = mul nuw nsw i32 %25, 10
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 79
  store i64 22000000000, ptr %33, align 64
  br label %34

34:                                               ; preds = %32, %28, %23, %19, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_msm_reset(ptr noundef %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8388608
  %8 = icmp eq i32 %7, 0
  %9 = and i8 %1, 1
  %10 = icmp eq i8 %9, 0
  %11 = or i1 %10, %8
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @cqhci_deactivate(ptr noundef %4) #9
  br label %14

14:                                               ; preds = %12, %2
  tail call void @sdhci_reset(ptr noundef %0, i8 noundef zeroext %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_msm_set_uhs_signaling(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !19

13:                                               ; preds = %2
  %14 = tail call zeroext i16 %11(ptr noundef %0, i32 noundef 62) #9
  br label %20

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr i8, ptr %17, i32 62
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i16 [ %14, %13 ], [ %19, %15 ]
  %22 = and i16 %21, -8
  switch i32 %1, label %31 [
    i32 8, label %29
    i32 4, label %23
    i32 5, label %25
    i32 10, label %27
    i32 9, label %27
    i32 6, label %27
    i32 7, label %29
  ]

23:                                               ; preds = %20
  %24 = or i16 %22, 1
  br label %31

25:                                               ; preds = %20
  %26 = or i16 %22, 2
  br label %31

27:                                               ; preds = %20, %20, %20
  %28 = or i16 %22, 3
  br label %31

29:                                               ; preds = %20, %20
  %30 = or i16 %22, 4
  br label %31

31:                                               ; preds = %29, %27, %25, %23, %20
  %32 = phi i16 [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %22, %20 ]
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  %34 = load i32, ptr %33, align 4
  %35 = icmp ult i32 %34, 100000001
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  switch i32 %1, label %38 [
    i32 10, label %37
    i32 9, label %37
    i32 6, label %37
  ]

37:                                               ; preds = %36, %36, %36
  br label %38

38:                                               ; preds = %37, %36
  %39 = phi i16 [ %22, %37 ], [ %32, %36 ]
  %40 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %41 = load ptr, ptr %40, align 16
  %42 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %7, i32 0, i32 15
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr i8, ptr %41, i32 %43
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !11
  %46 = or i32 %45, 1073741824
  %47 = load ptr, ptr %40, align 16
  %48 = load i32, ptr %42, align 4
  %49 = getelementptr i8, ptr %47, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %46) #9, !srcloc !9
  %50 = load ptr, ptr %40, align 16
  %51 = load i32, ptr %42, align 4
  %52 = getelementptr i8, ptr %50, i32 %51
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !11
  %54 = or i32 %53, 536870912
  %55 = load ptr, ptr %40, align 16
  %56 = load i32, ptr %42, align 4
  %57 = getelementptr i8, ptr %55, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %54) #9, !srcloc !9
  %58 = getelementptr inbounds %struct.sdhci_msm_host, ptr %5, i32 0, i32 11
  store i8 0, ptr %58, align 2
  br label %59

59:                                               ; preds = %38, %31
  %60 = phi i16 [ %39, %38 ], [ %32, %31 ]
  %61 = load ptr, ptr %8, align 4
  %62 = getelementptr inbounds %struct.sdhci_ops, ptr %61, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65, !prof !19

65:                                               ; preds = %59
  tail call void %63(ptr noundef %0, i16 noundef zeroext %60, i32 noundef 62) #9
  br label %70

66:                                               ; preds = %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %67 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %68 = load ptr, ptr %67, align 16
  %69 = getelementptr i8, ptr %68, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %69, i16 %60) #9, !srcloc !22
  br label %70

70:                                               ; preds = %66, %65
  %71 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 7
  %72 = load i8, ptr %71, align 4
  %73 = icmp eq i8 %72, 10
  br i1 %73, label %74, label %375

74:                                               ; preds = %70
  %75 = load i32, ptr %33, align 4
  %76 = icmp ugt i32 %75, 100000000
  br i1 %76, label %77, label %375

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.sdhci_msm_host, ptr %5, i32 0, i32 10
  %79 = load i8, ptr %78, align 1, !range !8
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 10
  %83 = load i8, ptr %82, align 1, !range !8
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %375, label %85

85:                                               ; preds = %81, %77
  %86 = getelementptr inbounds %struct.sdhci_msm_host, ptr %5, i32 0, i32 11
  %87 = load i8, ptr %86, align 2, !range !8
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %375

89:                                               ; preds = %85
  %90 = load ptr, ptr %3, align 8
  %91 = load ptr, ptr %6, align 4
  %92 = tail call fastcc i32 @msm_init_cm_dll(ptr noundef %0) #9
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %363

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.mmc_host, ptr %90, i32 0, i32 28, i32 10
  %96 = load i8, ptr %95, align 1, !range !8
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.sdhci_msm_host, ptr %5, i32 0, i32 12
  %100 = load i8, ptr %99, align 1
  %101 = tail call fastcc i32 @msm_config_cm_dll_phase(ptr noundef %0, i8 noundef zeroext %100) #9
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %363

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %105 = load ptr, ptr %104, align 16
  %106 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %91, i32 0, i32 15
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr i8, ptr %105, i32 %107
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #9, !srcloc !11
  %110 = or i32 %109, 1
  %111 = load ptr, ptr %104, align 16
  %112 = load i32, ptr %106, align 4
  %113 = getelementptr i8, ptr %111, i32 %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %110) #9, !srcloc !9
  br label %114

114:                                              ; preds = %103, %94
  %115 = getelementptr inbounds %struct.sdhci_msm_host, ptr %5, i32 0, i32 13
  %116 = load i8, ptr %115, align 4, !range !8
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %270, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %6, align 4
  %120 = tail call fastcc i32 @msm_init_cm_dll(ptr noundef %0) #9
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %363

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.sdhci_msm_host, ptr %5, i32 0, i32 12
  %124 = load i8, ptr %123, align 1
  %125 = tail call fastcc i32 @msm_config_cm_dll_phase(ptr noundef %0, i8 noundef zeroext %124) #9
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %363

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %129 = load ptr, ptr %128, align 16
  %130 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %119, i32 0, i32 15
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr i8, ptr %129, i32 %131
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #9, !srcloc !11
  %134 = or i32 %133, 1
  %135 = load ptr, ptr %128, align 16
  %136 = load i32, ptr %130, align 4
  %137 = getelementptr i8, ptr %135, i32 %136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %134) #9, !srcloc !9
  %138 = load ptr, ptr %128, align 16
  %139 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %119, i32 0, i32 22
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr i8, ptr %138, i32 %140
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #9, !srcloc !11
  %143 = and i32 %142, -2
  %144 = load ptr, ptr %128, align 16
  %145 = load i32, ptr %139, align 4
  %146 = getelementptr i8, ptr %144, i32 %145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %143) #9, !srcloc !9
  %147 = load ptr, ptr %128, align 16
  %148 = getelementptr i8, ptr %147, i32 376
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #9, !srcloc !11
  %150 = and i32 %149, -2
  %151 = load ptr, ptr %128, align 16
  %152 = getelementptr i8, ptr %151, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %150) #9, !srcloc !9
  %153 = load ptr, ptr %128, align 16
  %154 = getelementptr i8, ptr %153, i32 376
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #9, !srcloc !11
  %156 = or i32 %155, 2
  %157 = load ptr, ptr %128, align 16
  %158 = getelementptr i8, ptr %157, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #9, !srcloc !9
  %159 = load ptr, ptr %128, align 16
  %160 = load i32, ptr %139, align 4
  %161 = getelementptr i8, ptr %159, i32 %160
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #9, !srcloc !11
  %163 = and i32 %162, -65
  %164 = load ptr, ptr %128, align 16
  %165 = load i32, ptr %139, align 4
  %166 = getelementptr i8, ptr %164, i32 %165
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %163) #9, !srcloc !9
  %167 = load ptr, ptr %128, align 16
  %168 = getelementptr i8, ptr %167, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 18350316) #9, !srcloc !9
  %169 = load ptr, ptr %128, align 16
  %170 = getelementptr i8, ptr %169, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 50401553) #9, !srcloc !9
  %171 = load ptr, ptr %128, align 16
  %172 = getelementptr i8, ptr %171, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 18878464) #9, !srcloc !9
  %173 = load ptr, ptr %128, align 16
  %174 = getelementptr i8, ptr %173, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 4) #9, !srcloc !9
  %175 = load ptr, ptr %128, align 16
  %176 = getelementptr i8, ptr %175, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 -881647584) #9, !srcloc !9
  %177 = load ptr, ptr %128, align 16
  %178 = getelementptr i8, ptr %177, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 2841) #9, !srcloc !9
  %179 = load ptr, ptr %128, align 16
  %180 = getelementptr i8, ptr %179, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 1250) #9, !srcloc !9
  %181 = load ptr, ptr %128, align 16
  %182 = getelementptr i8, ptr %181, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 0) #9, !srcloc !9
  %183 = load ptr, ptr %128, align 16
  %184 = getelementptr i8, ptr %183, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 90932) #9, !srcloc !9
  %185 = load ptr, ptr %128, align 16
  %186 = getelementptr i8, ptr %185, i32 304
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %186) #9, !srcloc !11
  %188 = or i32 %187, 65536
  %189 = load ptr, ptr %128, align 16
  %190 = getelementptr i8, ptr %189, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %188) #9, !srcloc !9
  %191 = load ptr, ptr %128, align 16
  %192 = getelementptr i8, ptr %191, i32 304
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #9, !srcloc !11
  %194 = and i32 %193, -65537
  %195 = load ptr, ptr %128, align 16
  %196 = getelementptr i8, ptr %195, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %194) #9, !srcloc !9
  %197 = load ptr, ptr %128, align 16
  %198 = getelementptr i8, ptr %197, i32 304
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %198) #9, !srcloc !11
  %200 = or i32 %199, 131072
  %201 = load ptr, ptr %128, align 16
  %202 = getelementptr i8, ptr %201, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %200) #9, !srcloc !9
  %203 = load ptr, ptr %128, align 16
  %204 = getelementptr i8, ptr %203, i32 312
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %204) #9, !srcloc !11
  %206 = or i32 %205, 65536
  %207 = load ptr, ptr %128, align 16
  %208 = getelementptr i8, ptr %207, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 %206) #9, !srcloc !9
  %209 = tail call i64 @ktime_get() #9
  %210 = add i64 %209, 50000
  %211 = load ptr, ptr %128, align 16
  %212 = getelementptr i8, ptr %211, i32 356
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #9, !srcloc !11
  %214 = and i32 %213, 1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %223, %127
  %217 = tail call i64 @ktime_get() #9
  %218 = icmp sgt i64 %217, %210
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = load ptr, ptr %128, align 16
  %221 = getelementptr i8, ptr %220, i32 356
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %221) #9, !srcloc !11
  br label %229

223:                                              ; preds = %216
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #9
  %224 = load ptr, ptr %128, align 16
  %225 = getelementptr i8, ptr %224, i32 356
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %225) #9, !srcloc !11
  %227 = and i32 %226, 1
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %216, label %229

229:                                              ; preds = %223, %219, %127
  %230 = phi i32 [ %222, %219 ], [ %213, %127 ], [ %226, %223 ]
  %231 = and i32 %230, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %244

233:                                              ; preds = %229
  %234 = load ptr, ptr %3, align 8
  %235 = getelementptr inbounds %struct.mmc_host, ptr %234, i32 0, i32 1, i32 3
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.mmc_host, ptr %234, i32 0, i32 1
  %240 = load ptr, ptr %239, align 4
  br label %241

241:                                              ; preds = %238, %233
  %242 = phi ptr [ %240, %238 ], [ %236, %233 ]
  %243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %242, ptr noundef nonnull @__func__.sdhci_msm_cdclp533_calibration) #10
  br label %363

244:                                              ; preds = %229
  %245 = load ptr, ptr %128, align 16
  %246 = getelementptr i8, ptr %245, i32 356
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %246) #9, !srcloc !11
  %248 = and i32 %247, 117440512
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %261, label %250

250:                                              ; preds = %244
  %251 = load ptr, ptr %3, align 8
  %252 = getelementptr inbounds %struct.mmc_host, ptr %251, i32 0, i32 1, i32 3
  %253 = load ptr, ptr %252, align 4
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.mmc_host, ptr %251, i32 0, i32 1
  %257 = load ptr, ptr %256, align 4
  br label %258

258:                                              ; preds = %255, %250
  %259 = phi ptr [ %257, %255 ], [ %253, %250 ]
  %260 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %259, ptr noundef nonnull @__func__.sdhci_msm_cdclp533_calibration, i32 noundef %248) #10
  br label %363

261:                                              ; preds = %244
  %262 = load ptr, ptr %128, align 16
  %263 = load i32, ptr %139, align 4
  %264 = getelementptr i8, ptr %262, i32 %263
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %264) #9, !srcloc !11
  %266 = or i32 %265, 64
  %267 = load ptr, ptr %128, align 16
  %268 = load i32, ptr %139, align 4
  %269 = getelementptr i8, ptr %267, i32 %268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %269, i32 %266) #9, !srcloc !9
  br label %362

270:                                              ; preds = %114
  %271 = load ptr, ptr %3, align 8
  %272 = load ptr, ptr %6, align 4
  %273 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 10
  %274 = load i8, ptr %273, align 4, !range !8
  %275 = icmp eq i8 %274, 0
  %276 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %272, i32 0, i32 27
  %277 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %272, i32 0, i32 26
  %278 = select i1 %275, ptr %277, ptr %276
  %279 = load i32, ptr %278, align 4
  %280 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 12
  %281 = load i32, ptr %280, align 4
  %282 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %283 = load ptr, ptr %282, align 16
  %284 = getelementptr i8, ptr %283, i32 %279
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %284, i32 %281) #9, !srcloc !9
  %285 = getelementptr inbounds %struct.mmc_host, ptr %271, i32 0, i32 28, i32 10
  %286 = load i8, ptr %285, align 1, !range !8
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %298, label %288

288:                                              ; preds = %270
  %289 = load ptr, ptr %282, align 16
  %290 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %272, i32 0, i32 22
  %291 = load i32, ptr %290, align 4
  %292 = getelementptr i8, ptr %289, i32 %291
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %292) #9, !srcloc !11
  %294 = or i32 %293, 2
  %295 = load ptr, ptr %282, align 16
  %296 = load i32, ptr %290, align 4
  %297 = getelementptr i8, ptr %295, i32 %296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 %294) #9, !srcloc !9
  br label %298

298:                                              ; preds = %288, %270
  %299 = load ptr, ptr %282, align 16
  %300 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %272, i32 0, i32 24
  %301 = load i32, ptr %300, align 4
  %302 = getelementptr i8, ptr %299, i32 %301
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %302) #9, !srcloc !11
  %304 = or i32 %303, 1
  %305 = load ptr, ptr %282, align 16
  %306 = load i32, ptr %300, align 4
  %307 = getelementptr i8, ptr %305, i32 %306
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %307, i32 %304) #9, !srcloc !9
  %308 = tail call i64 @ktime_get() #9
  %309 = add i64 %308, 1000000
  %310 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %272, i32 0, i32 16
  %311 = load ptr, ptr %282, align 16
  %312 = load i32, ptr %310, align 4
  %313 = getelementptr i8, ptr %311, i32 %312
  %314 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %313) #9, !srcloc !11
  %315 = and i32 %314, 2048
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %332

317:                                              ; preds = %325, %298
  %318 = tail call i64 @ktime_get() #9
  %319 = icmp sgt i64 %318, %309
  br i1 %319, label %320, label %325

320:                                              ; preds = %317
  %321 = load ptr, ptr %282, align 16
  %322 = load i32, ptr %310, align 4
  %323 = getelementptr i8, ptr %321, i32 %322
  %324 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %323) #9, !srcloc !11
  br label %332

325:                                              ; preds = %317
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %326 = load ptr, ptr %282, align 16
  %327 = load i32, ptr %310, align 4
  %328 = getelementptr i8, ptr %326, i32 %327
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %328) #9, !srcloc !11
  %330 = and i32 %329, 2048
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %317, label %332

332:                                              ; preds = %325, %320, %298
  %333 = phi i32 [ %324, %320 ], [ %314, %298 ], [ %329, %325 ]
  %334 = and i32 %333, 2048
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %347

336:                                              ; preds = %332
  %337 = load ptr, ptr %3, align 8
  %338 = getelementptr inbounds %struct.mmc_host, ptr %337, i32 0, i32 1, i32 3
  %339 = load ptr, ptr %338, align 4
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %344

341:                                              ; preds = %336
  %342 = getelementptr inbounds %struct.mmc_host, ptr %337, i32 0, i32 1
  %343 = load ptr, ptr %342, align 4
  br label %344

344:                                              ; preds = %341, %336
  %345 = phi ptr [ %343, %341 ], [ %339, %336 ]
  %346 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %345, ptr noundef nonnull @__func__.sdhci_msm_cm_dll_sdc4_calibration) #10
  br label %363

347:                                              ; preds = %332
  %348 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 23
  %349 = load i8, ptr %348, align 4, !range !8
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %351, label %361

351:                                              ; preds = %347
  %352 = load ptr, ptr %282, align 16
  %353 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %272, i32 0, i32 23
  %354 = load i32, ptr %353, align 4
  %355 = getelementptr i8, ptr %352, i32 %354
  %356 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %355) #9, !srcloc !11
  %357 = or i32 %356, 8
  %358 = load ptr, ptr %282, align 16
  %359 = load i32, ptr %353, align 4
  %360 = getelementptr i8, ptr %358, i32 %359
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %360, i32 %357) #9, !srcloc !9
  br label %361

361:                                              ; preds = %351, %347
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  br label %362

362:                                              ; preds = %361, %261
  store i8 1, ptr %86, align 2
  br label %375

363:                                              ; preds = %344, %258, %241, %122, %118, %98, %89
  %364 = phi i32 [ -110, %344 ], [ -22, %258 ], [ -110, %241 ], [ %125, %122 ], [ %120, %118 ], [ %101, %98 ], [ %92, %89 ]
  %365 = load ptr, ptr %3, align 8
  %366 = getelementptr inbounds %struct.mmc_host, ptr %365, i32 0, i32 1, i32 3
  %367 = load ptr, ptr %366, align 4
  %368 = icmp eq ptr %367, null
  br i1 %368, label %369, label %372

369:                                              ; preds = %363
  %370 = getelementptr inbounds %struct.mmc_host, ptr %365, i32 0, i32 1
  %371 = load ptr, ptr %370, align 4
  br label %372

372:                                              ; preds = %369, %363
  %373 = phi ptr [ %371, %369 ], [ %367, %363 ]
  %374 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %373, i32 noundef %364) #10
  br label %375

375:                                              ; preds = %372, %362, %85, %81, %74, %70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_msm_dump_vendor_regs(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi ptr [ %11, %9 ], [ %7, %1 ]
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %13) #10
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 1, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi ptr [ %21, %19 ], [ %17, %12 ]
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 16
  %26 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 16
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %25, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !11
  %30 = load ptr, ptr %24, align 16
  %31 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 15
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %30, i32 %32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !11
  %35 = load ptr, ptr %24, align 16
  %36 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 24
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !11
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %23, i32 noundef %29, i32 noundef %34, i32 noundef %39) #10
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 1, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %22
  %46 = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %22
  %49 = phi ptr [ %47, %45 ], [ %43, %22 ]
  %50 = load ptr, ptr %24, align 16
  %51 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 25
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i8, ptr %50, i32 %52
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #9, !srcloc !11
  %55 = load ptr, ptr %24, align 16
  %56 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 28
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr i8, ptr %55, i32 %57
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #9, !srcloc !11
  %60 = load ptr, ptr %24, align 16
  %61 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 27
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr i8, ptr %60, i32 %62
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #9, !srcloc !11
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %49, i32 noundef %54, i32 noundef %59, i32 noundef %64) #10
  %66 = load ptr, ptr %4, align 8
  %67 = getelementptr inbounds %struct.mmc_host, ptr %66, i32 0, i32 1, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %48
  %71 = getelementptr inbounds %struct.mmc_host, ptr %66, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %48
  %74 = phi ptr [ %72, %70 ], [ %68, %48 ]
  %75 = load ptr, ptr %24, align 16
  %76 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 17
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr i8, ptr %75, i32 %77
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #9, !srcloc !11
  %80 = load ptr, ptr %24, align 16
  %81 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 20
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr i8, ptr %80, i32 %82
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #9, !srcloc !11
  %85 = load ptr, ptr %24, align 16
  %86 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 23
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr i8, ptr %85, i32 %87
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #9, !srcloc !11
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %74, i32 noundef %79, i32 noundef %84, i32 noundef %89) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__sdhci_msm_check_write(ptr nocapture noundef %0, i16 noundef zeroext %1, i32 noundef %2) unnamed_addr #2 {
  switch i32 %2, label %68 [
    i32 62, label %4
    i32 47, label %8
    i32 41, label %15
    i32 12, label %18
    i32 14, label %21
  ]

4:                                                ; preds = %3
  %5 = and i16 %1, 8
  %6 = icmp eq i16 %5, 0
  %7 = select i1 %6, i32 8, i32 4
  br label %65

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 23
  %10 = load i8, ptr %9, align 8
  %11 = icmp eq i8 %10, 0
  %12 = and i16 %1, 1
  %13 = icmp eq i16 %12, 0
  %14 = or i1 %13, %11
  br i1 %14, label %68, label %65

15:                                               ; preds = %3
  %16 = icmp eq i16 %1, 0
  %17 = select i1 %16, i32 1, i32 2
  br label %65

18:                                               ; preds = %3
  %19 = zext i16 %1 to i32
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 9
  store i32 %19, ptr %20, align 4
  br label %68

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 8
  %23 = load i8, ptr %22, align 4, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %68, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %25
  %31 = lshr i16 %1, 8
  %32 = trunc i16 %31 to i6
  switch i6 %32, label %33 [
    i6 21, label %49
    i6 19, label %49
  ]

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %37 = load ptr, ptr %36, align 16
  %38 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %35, i32 0, i32 15
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %37, i32 %39
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !11
  %42 = and i32 %41, -655361
  %43 = or i32 %42, 131072
  %44 = icmp eq i32 %43, %41
  br i1 %44, label %68, label %45

45:                                               ; preds = %33
  %46 = load ptr, ptr %36, align 16
  %47 = load i32, ptr %38, align 4
  %48 = getelementptr i8, ptr %46, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %43) #9, !srcloc !9
  br label %68

49:                                               ; preds = %30, %30, %25
  %50 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 7
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %53 = load ptr, ptr %52, align 16
  %54 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %51, i32 0, i32 15
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr i8, ptr %53, i32 %55
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !11
  %58 = and i32 %57, -655361
  %59 = or i32 %58, 524288
  %60 = icmp eq i32 %59, %57
  br i1 %60, label %68, label %61

61:                                               ; preds = %49
  %62 = load ptr, ptr %52, align 16
  %63 = load i32, ptr %54, align 4
  %64 = getelementptr i8, ptr %62, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %59) #9, !srcloc !9
  br label %68

65:                                               ; preds = %15, %8, %4
  %66 = phi i32 [ %17, %15 ], [ %7, %4 ], [ 1, %8 ]
  %67 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 3
  store i8 0, ptr %67, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  br label %68

68:                                               ; preds = %65, %61, %49, %45, %33, %21, %18, %8, %3
  %69 = phi i32 [ %66, %65 ], [ 0, %3 ], [ 0, %21 ], [ 0, %18 ], [ 0, %33 ], [ 0, %45 ], [ 0, %49 ], [ 0, %61 ], [ 0, %8 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdhci_msm_check_power_status(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 5
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %10, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 %13(ptr noundef %0, i32 noundef %15) #9
  %17 = and i32 %16, 536870912
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %1, 12
  %20 = icmp ne i32 %19, 0
  %21 = select i1 %20, i1 %18, i1 false
  br i1 %21, label %76, label %22

22:                                               ; preds = %8, %2
  %23 = and i32 %1, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 23
  %27 = load i8, ptr %26, align 8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %76, label %29

29:                                               ; preds = %25, %22
  %30 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 12
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, %1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.sdhci_msm_host, ptr %4, i32 0, i32 15
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, %1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 3
  %41 = load i8, ptr %40, align 4, !range !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !18
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #9
  %44 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13
  %45 = call i32 @prepare_to_wait_event(ptr noundef %44, ptr noundef nonnull %3, i32 noundef 2) #9
  %46 = load i8, ptr %40, align 4, !range !8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  call void @finish_wait(ptr noundef %44, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  br label %76

49:                                               ; preds = %49, %43
  %50 = phi i32 [ %58, %49 ], [ 500, %43 ]
  %51 = call i32 @schedule_timeout(i32 noundef %50) #9
  %52 = call i32 @prepare_to_wait_event(ptr noundef %44, ptr noundef nonnull %3, i32 noundef 2) #9
  %53 = load i8, ptr %40, align 4, !range !8
  %54 = icmp ne i8 %53, 0
  %55 = xor i1 %54, true
  %56 = icmp ne i32 %51, 0
  %57 = select i1 %55, i1 true, i1 %56
  %58 = select i1 %57, i32 %51, i32 1
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %54, i1 true, i1 %59
  br i1 %60, label %61, label %49

61:                                               ; preds = %49
  %62 = icmp eq i32 %58, 0
  call void @finish_wait(ptr noundef %44, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  br i1 %62, label %63, label %76

63:                                               ; preds = %61
  %64 = load ptr, ptr %4, align 4
  %65 = getelementptr inbounds %struct.platform_device, ptr %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.mmc_host, ptr %67, i32 0, i32 1, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.mmc_host, ptr %67, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  br label %74

74:                                               ; preds = %71, %63
  %75 = phi ptr [ %73, %71 ], [ %69, %63 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str.15, ptr noundef %75, i32 noundef %1) #10
  br label %76

76:                                               ; preds = %74, %61, %48, %39, %34, %29, %25, %8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdhci_msm_hc_select_mode(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28, i32 7
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 10
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 8192
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %96, label %12

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %14 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28, i32 10
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 16
  %20 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %17, i32 0, i32 17
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %19, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !11
  %24 = or i32 %23, 768
  %25 = load ptr, ptr %18, align 16
  %26 = load i32, ptr %20, align 4
  %27 = getelementptr i8, ptr %25, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %24) #9, !srcloc !9
  %28 = getelementptr inbounds %struct.sdhci_msm_host, ptr %13, i32 0, i32 10
  %29 = load i8, ptr %28, align 1, !range !8
  %30 = icmp eq i8 %29, 0
  %31 = and i8 %15, 1
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %47, label %34

34:                                               ; preds = %12
  %35 = getelementptr inbounds %struct.sdhci_msm_host, ptr %13, i32 0, i32 11
  %36 = load i8, ptr %35, align 2, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load ptr, ptr %18, align 16
  %40 = load i32, ptr %20, align 4
  %41 = getelementptr i8, ptr %39, i32 %40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !11
  %43 = or i32 %42, 3407872
  %44 = load ptr, ptr %18, align 16
  %45 = load i32, ptr %20, align 4
  %46 = getelementptr i8, ptr %44, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %43) #9, !srcloc !9
  br label %47

47:                                               ; preds = %38, %34, %12
  %48 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 21
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %95

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.sdhci_msm_host, ptr %13, i32 0, i32 13
  %53 = load i8, ptr %52, align 4, !range !8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %95

55:                                               ; preds = %51
  %56 = tail call i64 @ktime_get() #9
  %57 = add i64 %56, 1000000
  %58 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %17, i32 0, i32 16
  %59 = load ptr, ptr %18, align 16
  %60 = load i32, ptr %58, align 4
  %61 = getelementptr i8, ptr %59, i32 %60
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #9, !srcloc !11
  %63 = and i32 %62, 2176
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %73, %55
  %66 = tail call i64 @ktime_get() #9
  %67 = icmp sgt i64 %66, %57
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load ptr, ptr %18, align 16
  %70 = load i32, ptr %58, align 4
  %71 = getelementptr i8, ptr %69, i32 %70
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #9, !srcloc !11
  br label %80

73:                                               ; preds = %65
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %74 = load ptr, ptr %18, align 16
  %75 = load i32, ptr %58, align 4
  %76 = getelementptr i8, ptr %74, i32 %75
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #9, !srcloc !11
  %78 = and i32 %77, 2176
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %65, label %80

80:                                               ; preds = %73, %68, %55
  %81 = phi i32 [ %72, %68 ], [ %62, %55 ], [ %77, %73 ]
  %82 = and i32 %81, 2176
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load ptr, ptr %2, align 8
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
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %93, i32 noundef %81) #10
  br label %95

95:                                               ; preds = %92, %80, %51, %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !28
  br label %134

96:                                               ; preds = %7
  %97 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %98 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 7
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.sdhci_msm_host, ptr %97, i32 0, i32 13
  %101 = load i8, ptr %100, align 4, !range !8
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %105 = load ptr, ptr %104, align 16
  %106 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %99, i32 0, i32 23
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr i8, ptr %105, i32 %107
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #9, !srcloc !11
  %110 = and i32 %109, -9
  %111 = load ptr, ptr %104, align 16
  %112 = load i32, ptr %106, align 4
  %113 = getelementptr i8, ptr %111, i32 %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %110) #9, !srcloc !9
  br label %114

114:                                              ; preds = %103, %96
  %115 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %116 = load ptr, ptr %115, align 16
  %117 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %99, i32 0, i32 17
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr i8, ptr %116, i32 %118
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #9, !srcloc !11
  %121 = and i32 %120, -769
  %122 = or i32 %121, 512
  %123 = load ptr, ptr %115, align 16
  %124 = load i32, ptr %117, align 4
  %125 = getelementptr i8, ptr %123, i32 %124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %122) #9, !srcloc !9
  %126 = load ptr, ptr %115, align 16
  %127 = load i32, ptr %117, align 4
  %128 = getelementptr i8, ptr %126, i32 %127
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #9, !srcloc !11
  %130 = and i32 %129, -3932161
  %131 = load ptr, ptr %115, align 16
  %132 = load i32, ptr %117, align 4
  %133 = getelementptr i8, ptr %131, i32 %132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %130) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !29
  br label %134

134:                                              ; preds = %114, %95
  tail call void @arm_heavy_mb() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @msm_set_clock_rate_for_bus_mode(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 7
  %6 = load i8, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 12
  %8 = load ptr, ptr %7, align 4
  switch i8 %6, label %9 [
    i8 10, label %15
    i8 8, label %15
    i8 7, label %15
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 8192
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 1, i32 2
  br label %15

15:                                               ; preds = %9, %2, %2, %2
  %16 = phi i32 [ 2, %2 ], [ 2, %2 ], [ 2, %2 ], [ %14, %9 ]
  %17 = mul i32 %16, %1
  %18 = load ptr, ptr %4, align 64
  %19 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %18, i32 noundef %17) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.mmc_host, ptr %22, i32 0, i32 1, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.mmc_host, ptr %22, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi ptr [ %28, %26 ], [ %24, %21 ]
  %31 = zext i8 %6 to i32
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %30, i32 noundef %17, i32 noundef %31) #10
  br label %52

33:                                               ; preds = %15
  %34 = tail call i32 @clk_get_rate(ptr noundef %8) #9
  %35 = icmp ugt i32 %34, %17
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.mmc_host, ptr %37, i32 0, i32 1, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.mmc_host, ptr %37, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi ptr [ %43, %41 ], [ %39, %36 ]
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %45, i32 noundef %17, i32 noundef %34) #10
  br label %47

47:                                               ; preds = %44, %33
  %48 = udiv i32 %34, %16
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct.mmc_host, ptr %49, i32 0, i32 57
  store i32 %48, ptr %50, align 4
  %51 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 21
  store i32 %17, ptr %51, align 4
  br label %52

52:                                               ; preds = %47, %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_clk(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sdhci_cqe_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_irq(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdhci_set_timeout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msm_init_cm_dll(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 23
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %15 = or i1 %13, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call i32 @clk_get_rate(ptr noundef nonnull %12) #9
  br label %18

18:                                               ; preds = %16, %10, %1
  %19 = phi i32 [ 0, %10 ], [ %17, %16 ], [ 0, %1 ]
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 15
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #9
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 16
  %24 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %6, i32 0, i32 17
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %23, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !11
  %28 = and i32 %27, -3
  %29 = load ptr, ptr %22, align 16
  %30 = load i32, ptr %24, align 4
  %31 = getelementptr i8, ptr %29, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #9, !srcloc !9
  %32 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 11
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %18
  %36 = load ptr, ptr %22, align 16
  %37 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %6, i32 0, i32 15
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %36, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %33) #9, !srcloc !9
  br label %40

40:                                               ; preds = %35, %18
  %41 = load i8, ptr %7, align 4, !range !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %22, align 16
  %45 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %6, i32 0, i32 15
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %44, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !11
  %49 = and i32 %48, -262145
  %50 = load ptr, ptr %22, align 16
  %51 = load i32, ptr %45, align 4
  %52 = getelementptr i8, ptr %50, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %49) #9, !srcloc !9
  %53 = load ptr, ptr %22, align 16
  %54 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %6, i32 0, i32 24
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr i8, ptr %53, i32 %55
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !11
  %58 = or i32 %57, 2097152
  %59 = load ptr, ptr %22, align 16
  %60 = load i32, ptr %54, align 4
  %61 = getelementptr i8, ptr %59, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %58) #9, !srcloc !9
  br label %62

62:                                               ; preds = %43, %40
  %63 = load ptr, ptr %22, align 16
  %64 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %6, i32 0, i32 15
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr i8, ptr %63, i32 %65
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #9, !srcloc !11
  %68 = or i32 %67, 1073741824
  %69 = load ptr, ptr %22, align 16
  %70 = load i32, ptr %64, align 4
  %71 = getelementptr i8, ptr %69, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %68) #9, !srcloc !9
  %72 = load ptr, ptr %22, align 16
  %73 = load i32, ptr %64, align 4
  %74 = getelementptr i8, ptr %72, i32 %73
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #9, !srcloc !11
  %76 = or i32 %75, 536870912
  %77 = load ptr, ptr %22, align 16
  %78 = load i32, ptr %64, align 4
  %79 = getelementptr i8, ptr %77, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %76) #9, !srcloc !9
  %80 = load i32, ptr %32, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %114

82:                                               ; preds = %62
  %83 = load ptr, ptr %5, align 4
  %84 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  %85 = load i32, ptr %84, align 4
  %86 = icmp ult i32 %85, 112000001
  br i1 %86, label %102, label %87

87:                                               ; preds = %82
  %88 = icmp ult i32 %85, 125000001
  br i1 %88, label %102, label %89

89:                                               ; preds = %87
  %90 = icmp ult i32 %85, 137000001
  br i1 %90, label %102, label %91

91:                                               ; preds = %89
  %92 = icmp ult i32 %85, 150000001
  br i1 %92, label %102, label %93

93:                                               ; preds = %91
  %94 = icmp ult i32 %85, 162000001
  br i1 %94, label %102, label %95

95:                                               ; preds = %93
  %96 = icmp ult i32 %85, 175000001
  br i1 %96, label %102, label %97

97:                                               ; preds = %95
  %98 = icmp ult i32 %85, 187000001
  br i1 %98, label %102, label %99

99:                                               ; preds = %97
  %100 = icmp ult i32 %85, 200000001
  %101 = select i1 %100, i32 117440512, i32 0
  br label %102

102:                                              ; preds = %99, %97, %95, %93, %91, %89, %87, %82
  %103 = phi i32 [ 0, %82 ], [ 16777216, %87 ], [ 33554432, %89 ], [ 50331648, %91 ], [ 67108864, %93 ], [ 83886080, %95 ], [ 100663296, %97 ], [ %101, %99 ]
  %104 = load ptr, ptr %22, align 16
  %105 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %83, i32 0, i32 15
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr i8, ptr %104, i32 %106
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #9, !srcloc !11
  %109 = and i32 %108, -117440513
  %110 = or i32 %109, %103
  %111 = load ptr, ptr %22, align 16
  %112 = load i32, ptr %105, align 4
  %113 = getelementptr i8, ptr %111, i32 %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %110) #9, !srcloc !9
  br label %114

114:                                              ; preds = %102, %62
  %115 = load i8, ptr %7, align 4, !range !8
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %149, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 10
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  %121 = icmp ugt ptr %119, inttoptr (i32 -4096 to ptr)
  %122 = or i1 %120, %121
  br i1 %122, label %149, label %123

123:                                              ; preds = %117
  %124 = load ptr, ptr %22, align 16
  %125 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %6, i32 0, i32 24
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr i8, ptr %124, i32 %126
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #9, !srcloc !11
  %129 = and i32 %128, 262144
  %130 = icmp eq i32 %129, 0
  %131 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  %132 = load i32, ptr %131, align 4
  %133 = select i1 %130, i32 2, i32 3
  %134 = shl i32 %132, %133
  %135 = lshr i32 %19, 1
  %136 = add i32 %134, %135
  %137 = udiv i32 %136, %19
  %138 = load ptr, ptr %22, align 16
  %139 = load i32, ptr %125, align 4
  %140 = getelementptr i8, ptr %138, i32 %139
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #9, !srcloc !11
  %142 = and i32 %141, -261121
  %143 = shl i32 %137, 10
  %144 = or i32 %142, %143
  %145 = load ptr, ptr %22, align 16
  %146 = load i32, ptr %125, align 4
  %147 = getelementptr i8, ptr %145, i32 %146
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %144) #9, !srcloc !9
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 1073740) #9
  br label %149

149:                                              ; preds = %123, %117, %114
  %150 = load ptr, ptr %22, align 16
  %151 = load i32, ptr %64, align 4
  %152 = getelementptr i8, ptr %150, i32 %151
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #9, !srcloc !11
  %154 = and i32 %153, -1073741825
  %155 = load ptr, ptr %22, align 16
  %156 = load i32, ptr %64, align 4
  %157 = getelementptr i8, ptr %155, i32 %156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %154) #9, !srcloc !9
  %158 = load ptr, ptr %22, align 16
  %159 = load i32, ptr %64, align 4
  %160 = getelementptr i8, ptr %158, i32 %159
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #9, !srcloc !11
  %162 = and i32 %161, -536870913
  %163 = load ptr, ptr %22, align 16
  %164 = load i32, ptr %64, align 4
  %165 = getelementptr i8, ptr %163, i32 %164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %162) #9, !srcloc !9
  %166 = load i8, ptr %7, align 4, !range !8
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %213, label %168

168:                                              ; preds = %149
  %169 = load i32, ptr %32, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %203

171:                                              ; preds = %168
  %172 = load ptr, ptr %5, align 4
  %173 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  %174 = load i32, ptr %173, align 4
  %175 = icmp ult i32 %174, 112000001
  br i1 %175, label %191, label %176

176:                                              ; preds = %171
  %177 = icmp ult i32 %174, 125000001
  br i1 %177, label %191, label %178

178:                                              ; preds = %176
  %179 = icmp ult i32 %174, 137000001
  br i1 %179, label %191, label %180

180:                                              ; preds = %178
  %181 = icmp ult i32 %174, 150000001
  br i1 %181, label %191, label %182

182:                                              ; preds = %180
  %183 = icmp ult i32 %174, 162000001
  br i1 %183, label %191, label %184

184:                                              ; preds = %182
  %185 = icmp ult i32 %174, 175000001
  br i1 %185, label %191, label %186

186:                                              ; preds = %184
  %187 = icmp ult i32 %174, 187000001
  br i1 %187, label %191, label %188

188:                                              ; preds = %186
  %189 = icmp ult i32 %174, 200000001
  %190 = select i1 %189, i32 117440512, i32 0
  br label %191

191:                                              ; preds = %188, %186, %184, %182, %180, %178, %176, %171
  %192 = phi i32 [ 0, %171 ], [ 16777216, %176 ], [ 33554432, %178 ], [ 50331648, %180 ], [ 67108864, %182 ], [ 83886080, %184 ], [ 100663296, %186 ], [ %190, %188 ]
  %193 = load ptr, ptr %22, align 16
  %194 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %172, i32 0, i32 15
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr i8, ptr %193, i32 %195
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #9, !srcloc !11
  %198 = and i32 %197, -117440513
  %199 = or i32 %198, %192
  %200 = load ptr, ptr %22, align 16
  %201 = load i32, ptr %194, align 4
  %202 = getelementptr i8, ptr %200, i32 %201
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %199) #9, !srcloc !9
  br label %203

203:                                              ; preds = %191, %168
  %204 = load ptr, ptr %22, align 16
  %205 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %6, i32 0, i32 24
  %206 = load i32, ptr %205, align 4
  %207 = getelementptr i8, ptr %204, i32 %206
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #9, !srcloc !11
  %209 = and i32 %208, -2097153
  %210 = load ptr, ptr %22, align 16
  %211 = load i32, ptr %205, align 4
  %212 = getelementptr i8, ptr %210, i32 %211
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %212, i32 %209) #9, !srcloc !9
  br label %213

213:                                              ; preds = %203, %149
  %214 = getelementptr inbounds %struct.sdhci_msm_host, ptr %4, i32 0, i32 26
  %215 = load i8, ptr %214, align 1, !range !8
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %236, label %217

217:                                              ; preds = %213
  %218 = load ptr, ptr %22, align 16
  %219 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %6, i32 0, i32 28
  %220 = load i32, ptr %219, align 4
  %221 = getelementptr i8, ptr %218, i32 %220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %221, i32 738265088) #9, !srcloc !9
  %222 = load ptr, ptr %22, align 16
  %223 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %6, i32 0, i32 25
  %224 = load i32, ptr %223, align 4
  %225 = getelementptr i8, ptr %222, i32 %224
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %225) #9, !srcloc !11
  %227 = and i32 %226, -256
  %228 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 21
  %229 = load i32, ptr %228, align 4
  %230 = icmp ult i32 %229, 150000000
  %231 = select i1 %230, i32 8, i32 16
  %232 = or i32 %231, %227
  %233 = load ptr, ptr %22, align 16
  %234 = load i32, ptr %223, align 4
  %235 = getelementptr i8, ptr %233, i32 %234
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %232) #9, !srcloc !9
  br label %236

236:                                              ; preds = %217, %213
  %237 = load ptr, ptr %22, align 16
  %238 = load i32, ptr %64, align 4
  %239 = getelementptr i8, ptr %237, i32 %238
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %239) #9, !srcloc !11
  %241 = or i32 %240, 65536
  %242 = load ptr, ptr %22, align 16
  %243 = load i32, ptr %64, align 4
  %244 = getelementptr i8, ptr %242, i32 %243
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %241) #9, !srcloc !9
  %245 = load ptr, ptr %22, align 16
  %246 = load i32, ptr %64, align 4
  %247 = getelementptr i8, ptr %245, i32 %246
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #9, !srcloc !11
  %249 = or i32 %248, 262144
  %250 = load ptr, ptr %22, align 16
  %251 = load i32, ptr %64, align 4
  %252 = getelementptr i8, ptr %250, i32 %251
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 %249) #9, !srcloc !9
  %253 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %6, i32 0, i32 16
  %254 = load ptr, ptr %22, align 16
  %255 = load i32, ptr %253, align 4
  %256 = getelementptr i8, ptr %254, i32 %255
  %257 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %256) #9, !srcloc !11
  %258 = and i32 %257, 128
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %282

260:                                              ; preds = %274, %236
  %261 = phi i32 [ %262, %274 ], [ 50, %236 ]
  %262 = add nsw i32 %261, -1
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %274

264:                                              ; preds = %260
  %265 = load ptr, ptr %3, align 64
  %266 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %267 = load ptr, ptr %266, align 4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %272

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %271 = load ptr, ptr %270, align 4
  br label %272

272:                                              ; preds = %269, %264
  %273 = phi ptr [ %271, %269 ], [ %267, %264 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %265, ptr noundef nonnull @.str.20, ptr noundef %273) #10
  br label %282

274:                                              ; preds = %260
  %275 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %275(i32 noundef 214748) #9
  %276 = load ptr, ptr %22, align 16
  %277 = load i32, ptr %253, align 4
  %278 = getelementptr i8, ptr %276, i32 %277
  %279 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %278) #9, !srcloc !11
  %280 = and i32 %279, 128
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %260, label %282

282:                                              ; preds = %274, %272, %236
  %283 = phi i32 [ -110, %272 ], [ 0, %236 ], [ 0, %274 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #9
  ret i32 %283
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msm_config_cm_dll_phase(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 7
  %6 = zext i8 %1 to i32
  %7 = icmp ugt i8 %1, 15
  br i1 %7, label %129, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 15
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #9
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %9, i32 0, i32 15
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !11
  %18 = and i32 %17, -983041
  %19 = or i32 %18, 589824
  %20 = load ptr, ptr %12, align 16
  %21 = load i32, ptr %14, align 4
  %22 = getelementptr i8, ptr %20, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %19) #9, !srcloc !9
  %23 = load ptr, ptr %3, align 8
  %24 = load ptr, ptr %5, align 4
  %25 = load ptr, ptr %12, align 16
  %26 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %24, i32 0, i32 15
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %25, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !11
  %30 = and i32 %29, 262144
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %44, %8
  %33 = phi i32 [ %34, %44 ], [ 50, %8 ]
  %34 = add nsw i32 %33, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load ptr, ptr %23, align 64
  %38 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 1, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  br label %52

44:                                               ; preds = %32
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #9
  %46 = load ptr, ptr %12, align 16
  %47 = load i32, ptr %26, align 4
  %48 = getelementptr i8, ptr %46, i32 %47
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #9, !srcloc !11
  %50 = and i32 %49, 262144
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %32

52:                                               ; preds = %41, %36
  %53 = phi ptr [ %43, %41 ], [ %39, %36 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.22, ptr noundef %53, i32 noundef 0) #10
  br label %117

54:                                               ; preds = %44, %8
  %55 = load ptr, ptr %12, align 16
  %56 = load i32, ptr %14, align 4
  %57 = getelementptr i8, ptr %55, i32 %56
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !11
  %59 = and i32 %58, -15728641
  %60 = getelementptr [16 x i8], ptr @msm_config_cm_dll_phase.grey_coded_phase_table, i32 0, i32 %6
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 20
  %64 = or i32 %63, %59
  %65 = load ptr, ptr %12, align 16
  %66 = load i32, ptr %14, align 4
  %67 = getelementptr i8, ptr %65, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %64) #9, !srcloc !9
  %68 = load ptr, ptr %12, align 16
  %69 = load i32, ptr %14, align 4
  %70 = getelementptr i8, ptr %68, i32 %69
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9, !srcloc !11
  %72 = or i32 %71, 262144
  %73 = load ptr, ptr %12, align 16
  %74 = load i32, ptr %14, align 4
  %75 = getelementptr i8, ptr %73, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %72) #9, !srcloc !9
  %76 = load ptr, ptr %3, align 8
  %77 = load ptr, ptr %5, align 4
  %78 = load ptr, ptr %12, align 16
  %79 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %77, i32 0, i32 15
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %78, i32 %80
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #9, !srcloc !11
  %83 = and i32 %82, 262144
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %97, %54
  %86 = phi i32 [ %87, %97 ], [ 50, %54 ]
  %87 = add nsw i32 %86, -1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load ptr, ptr %76, align 64
  %91 = getelementptr inbounds %struct.mmc_host, ptr %76, i32 0, i32 1, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.mmc_host, ptr %76, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  br label %105

97:                                               ; preds = %85
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 214748) #9
  %99 = load ptr, ptr %12, align 16
  %100 = load i32, ptr %79, align 4
  %101 = getelementptr i8, ptr %99, i32 %100
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #9, !srcloc !11
  %103 = and i32 %102, 262144
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %85, label %107

105:                                              ; preds = %94, %89
  %106 = phi ptr [ %96, %94 ], [ %92, %89 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.22, ptr noundef %106, i32 noundef 1) #10
  br label %117

107:                                              ; preds = %97, %54
  %108 = load ptr, ptr %12, align 16
  %109 = load i32, ptr %14, align 4
  %110 = getelementptr i8, ptr %108, i32 %109
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #9, !srcloc !11
  %112 = and i32 %111, -655361
  %113 = or i32 %112, 131072
  %114 = load ptr, ptr %12, align 16
  %115 = load i32, ptr %14, align 4
  %116 = getelementptr i8, ptr %114, i32 %115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %113) #9, !srcloc !9
  br label %127

117:                                              ; preds = %105, %52
  %118 = load ptr, ptr %4, align 64
  %119 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 1, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  br label %125

125:                                              ; preds = %122, %117
  %126 = phi ptr [ %124, %122 ], [ %120, %117 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.21, ptr noundef %126, i32 noundef %6) #10
  br label %127

127:                                              ; preds = %125, %107
  %128 = phi i32 [ -110, %125 ], [ 0, %107 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #9
  br label %129

129:                                              ; preds = %127, %2
  %130 = phi i32 [ %128, %127 ], [ -22, %2 ]
  ret i32 %130
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_supported_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msm_find_most_appropriate_phase(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca [16 x [16 x i8]], align 1
  %5 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %4, i8 0, i32 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false)
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = zext i8 %2 to i32
  %9 = icmp ugt i8 %2, 16
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = icmp eq i8 %2, 0
  br i1 %11, label %111, label %22

12:                                               ; preds = %3
  %13 = load ptr, ptr %7, align 64
  %14 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %19, %17 ], [ %15, %12 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.44, ptr noundef %21, i32 noundef %8) #10
  br label %149

22:                                               ; preds = %50, %10
  %23 = phi i8 [ %52, %50 ], [ 0, %10 ]
  %24 = phi i32 [ %33, %50 ], [ 0, %10 ]
  %25 = phi i32 [ %48, %50 ], [ 0, %10 ]
  %26 = phi i32 [ %47, %50 ], [ 0, %10 ]
  %27 = getelementptr i8, ptr %1, i32 %24
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr [16 x [16 x i8]], ptr %4, i32 0, i32 %26, i32 %25
  store i8 %28, ptr %29, align 1
  %30 = getelementptr [16 x i8], ptr %5, i32 0, i32 %26
  %31 = add i8 %23, 1
  store i8 %31, ptr %30, align 1
  %32 = add i32 %25, 1
  %33 = add nuw nsw i32 %24, 1
  %34 = icmp eq i32 %33, %8
  br i1 %34, label %46, label %35

35:                                               ; preds = %22
  %36 = zext i8 %28 to i32
  %37 = add nuw nsw i32 %36, 1
  %38 = getelementptr i8, ptr %1, i32 %33
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %37, %40
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = add i32 %26, %43
  %45 = select i1 %41, i32 %32, i32 0
  br label %46

46:                                               ; preds = %35, %22
  %47 = phi i32 [ %26, %22 ], [ %44, %35 ]
  %48 = phi i32 [ %32, %22 ], [ %45, %35 ]
  %49 = icmp eq i32 %33, %8
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = getelementptr [16 x i8], ptr %5, i32 0, i32 %47
  %52 = load i8, ptr %51, align 1
  br label %22

53:                                               ; preds = %46
  %54 = icmp sgt i32 %47, 15
  br i1 %54, label %149, label %55

55:                                               ; preds = %53
  %56 = load i8, ptr %4, align 1
  %57 = icmp ne i8 %56, 0
  %58 = icmp slt i32 %47, 1
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %109, label %60

60:                                               ; preds = %77, %55
  %61 = phi i32 [ %78, %77 ], [ 0, %55 ]
  %62 = phi i32 [ %80, %77 ], [ 1, %55 ]
  %63 = phi i1 [ %79, %77 ], [ false, %55 ]
  %64 = getelementptr [16 x i8], ptr %5, i32 0, i32 %62
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %60
  %68 = zext i8 %65 to i32
  br label %72

69:                                               ; preds = %72
  %70 = add nuw nsw i32 %73, 1
  %71 = icmp eq i32 %70, %68
  br i1 %71, label %77, label %72

72:                                               ; preds = %69, %67
  %73 = phi i32 [ 0, %67 ], [ %70, %69 ]
  %74 = getelementptr [16 x [16 x i8]], ptr %4, i32 0, i32 %62, i32 %73
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, 15
  br i1 %76, label %77, label %69

77:                                               ; preds = %72, %69, %60
  %78 = phi i32 [ %61, %60 ], [ %62, %72 ], [ %61, %69 ]
  %79 = phi i1 [ %63, %60 ], [ true, %72 ], [ %63, %69 ]
  %80 = add i32 %62, 1
  %81 = icmp sgt i32 %80, %47
  br i1 %81, label %82, label %60

82:                                               ; preds = %77
  br i1 %79, label %83, label %109

83:                                               ; preds = %82
  %84 = load i8, ptr %5, align 1
  %85 = getelementptr [16 x i8], ptr %5, i32 0, i32 %78
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %84 to i32
  %88 = zext i8 %86 to i32
  %89 = add nuw nsw i32 %88, %87
  %90 = icmp ugt i32 %89, 15
  br i1 %90, label %149, label %91

91:                                               ; preds = %83
  %92 = icmp eq i8 %84, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %91
  %94 = getelementptr [16 x [16 x i8]], ptr %4, i32 0, i32 %78, i32 %88
  store i8 0, ptr %94, align 1
  %95 = icmp ugt i8 %86, 14
  br i1 %95, label %107, label %96

96:                                               ; preds = %101, %93
  %97 = phi i32 [ %102, %101 ], [ %88, %93 ]
  %98 = phi i32 [ %99, %101 ], [ 0, %93 ]
  %99 = add nuw nsw i32 %98, 1
  %100 = icmp eq i32 %99, %87
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = add nuw nsw i32 %97, 1
  %103 = getelementptr [16 x i8], ptr %4, i32 0, i32 %99
  %104 = load i8, ptr %103, align 1
  %105 = getelementptr [16 x [16 x i8]], ptr %4, i32 0, i32 %78, i32 %102
  store i8 %104, ptr %105, align 1
  %106 = icmp ugt i32 %97, 13
  br i1 %106, label %107, label %96

107:                                              ; preds = %101, %96, %93, %91
  store i8 0, ptr %5, align 1
  %108 = trunc i32 %89 to i8
  store i8 %108, ptr %85, align 1
  br label %109

109:                                              ; preds = %107, %82, %55
  %110 = icmp slt i32 %47, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %109, %10
  %112 = phi i32 [ %47, %109 ], [ 0, %10 ]
  br label %113

113:                                              ; preds = %113, %111
  %114 = phi i32 [ %123, %113 ], [ 0, %111 ]
  %115 = phi i32 [ %122, %113 ], [ 0, %111 ]
  %116 = phi i32 [ %121, %113 ], [ 0, %111 ]
  %117 = getelementptr [16 x i8], ptr %5, i32 0, i32 %114
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp ult i32 %115, %119
  %121 = select i1 %120, i32 %114, i32 %116
  %122 = tail call i32 @llvm.smax.i32(i32 %115, i32 %119)
  %123 = add i32 %114, 1
  %124 = icmp sgt i32 %123, %112
  br i1 %124, label %125, label %113

125:                                              ; preds = %113
  %126 = mul i32 %122, 3
  br label %127

127:                                              ; preds = %125, %109
  %128 = phi i32 [ 0, %109 ], [ %121, %125 ]
  %129 = phi i32 [ 0, %109 ], [ %126, %125 ]
  %130 = add i32 %129, 3
  %131 = icmp ult i32 %130, 7
  %132 = sdiv i32 %129, 4
  %133 = add nsw i32 %132, -1
  %134 = select i1 %131, i32 0, i32 %133
  %135 = getelementptr [16 x [16 x i8]], ptr %4, i32 0, i32 %128, i32 %134
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp ugt i8 %136, 15
  br i1 %138, label %139, label %149

139:                                              ; preds = %127
  %140 = load ptr, ptr %7, align 64
  %141 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1, i32 3
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  br label %147

147:                                              ; preds = %144, %139
  %148 = phi ptr [ %146, %144 ], [ %142, %139 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.45, ptr noundef %148, i32 noundef -22) #10
  br label %149

149:                                              ; preds = %147, %127, %83, %53, %20
  %150 = phi i32 [ -22, %20 ], [ -22, %53 ], [ -22, %147 ], [ %137, %127 ], [ -22, %83 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #9
  ret i32 %150
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_setup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cqhci_pltfm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cleanup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_msm_cqe_enable(ptr noundef %0) #2 {
  tail call void @sdhci_cqe_enable(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_msm_cqe_disable(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4096
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 14
  store i32 16, ptr %9, align 16
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 17
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #9
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !19

17:                                               ; preds = %10
  %18 = tail call i32 %15(ptr noundef %3, i32 noundef 52) #9
  br label %24

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 16
  %22 = getelementptr i8, ptr %21, i32 52
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !30
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i32 [ %18, %17 ], [ %23, %19 ]
  %26 = or i32 %25, 1
  %27 = load ptr, ptr %13, align 4
  %28 = getelementptr inbounds %struct.sdhci_ops, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !19

31:                                               ; preds = %24
  tail call void %29(ptr noundef %3, i32 noundef %26, i32 noundef 52) #9
  br label %36

32:                                               ; preds = %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !31
  tail call void @arm_heavy_mb() #9
  %33 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 16
  %35 = getelementptr i8, ptr %34, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %26) #9, !srcloc !9
  br label %36

36:                                               ; preds = %32, %31
  %37 = load ptr, ptr %13, align 4
  %38 = getelementptr inbounds %struct.sdhci_ops, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41, !prof !19

41:                                               ; preds = %36
  tail call void %39(ptr noundef %3, i32 noundef 1, i32 noundef 48) #9
  br label %46

42:                                               ; preds = %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !31
  tail call void @arm_heavy_mb() #9
  %43 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 16
  %45 = getelementptr i8, ptr %44, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 1) #9, !srcloc !9
  br label %46

46:                                               ; preds = %42, %41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #9
  tail call void @sdhci_cqe_disable(ptr noundef %0, i1 noundef zeroext %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_msm_mci_variant_readl_relaxed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_msm_mci_variant_writel_relaxed(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %0) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_msm_v5_variant_readl_relaxed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_msm_v5_variant_writel_relaxed(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %0) #9, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_msm_runtime_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %0, i32 noundef 0) #9
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 11
  tail call void @clk_bulk_disable(i32 noundef 5, ptr noundef %5) #9
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_msm_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 5
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 11
  %6 = tail call i32 @clk_bulk_prepare(i32 noundef 5, ptr noundef %5) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %1
  %9 = tail call i32 @clk_bulk_enable(i32 noundef 5, ptr noundef %5) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %5) #9
  br label %45

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sdhci_msm_host, ptr %4, i32 0, i32 20
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 21
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 22
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, 100000001
  br i1 %25, label %41, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.mmc_host, ptr %22, i32 0, i32 28, i32 7
  %28 = load i8, ptr %27, align 4
  switch i8 %28, label %41 [
    i8 10, label %29
    i8 9, label %29
    i8 6, label %29
  ]

29:                                               ; preds = %26, %26, %26
  %30 = getelementptr inbounds %struct.mmc_host, ptr %22, i32 0, i32 28, i32 10
  %31 = load i8, ptr %30, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = tail call fastcc i32 @msm_init_cm_dll(ptr noundef %3) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.sdhci_msm_host, ptr %4, i32 0, i32 12
  %38 = load i8, ptr %37, align 1
  %39 = tail call fastcc i32 @msm_config_cm_dll_phase(ptr noundef %3, i8 noundef zeroext %38) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %29, %26, %20, %16, %12
  %42 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 21
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %0, i32 noundef %43) #9
  br label %45

45:                                               ; preds = %41, %36, %33, %11, %1
  %46 = phi i32 [ 0, %41 ], [ %39, %36 ], [ %9, %11 ], [ %6, %1 ], [ %34, %33 ]
  ret i32 %46
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 4052323}
!10 = !{i64 4051903}
!11 = !{i64 4052741}
!12 = !{i64 2154196998}
!13 = !{i64 623418, i64 2148113389, i64 2148113415, i64 2148113462, i64 2148113484, i64 2148113512, i64 2148113532}
!14 = !{i64 2148124804, i64 2148124830, i64 2148124859, i64 2148124893, i64 2148124924, i64 2148124947}
!15 = !{i64 2148124311}
!16 = !{i64 609987, i64 610012, i64 610034, i64 610050, i64 610062, i64 610082, i64 610106, i64 610122, i64 610134}
!17 = !{i64 2148124437}
!18 = !{!"auto-init"}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2154081811}
!21 = !{i64 2154080122}
!22 = !{i64 4051703}
!23 = !{i64 4052126}
!24 = !{i64 4052521}
!25 = !{i64 2154082230}
!26 = !{i64 2154147455}
!27 = !{i64 2154178522}
!28 = !{i64 2154132052}
!29 = !{i64 2154128111}
!30 = !{i64 2154081260}
!31 = !{i64 2154079591}
