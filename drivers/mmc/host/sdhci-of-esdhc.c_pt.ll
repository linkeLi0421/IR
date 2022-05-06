; ModuleID = '/llk/IR/drivers/mmc/host/sdhci-of-esdhc.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-of-esdhc.c"
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
%struct.esdhc_clk_fixup = type { i32, [11 x i32] }
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
%struct.sdhci_esdhc = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32 }
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
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_sdhci_of_esdhc__265_1519_sdhci_esdhc_driver_init6 = internal global ptr @sdhci_esdhc_driver_init, section ".initcall6.init", align 4
@sdhci_esdhc_driver = internal global %struct.platform_driver { ptr @sdhci_esdhc_probe, ptr @sdhci_pltfm_unregister, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_esdhc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @esdhc_of_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sdhci_esdhc_driver_exit = internal global ptr @sdhci_esdhc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description266 = internal constant [67 x i8] c"sdhci_of_esdhc.description=SDHCI OF driver for Freescale MPC eSDHC\00", section ".modinfo", align 1
@__UNIQUE_ID_author267 = internal constant [99 x i8] c"sdhci_of_esdhc.author=Xiaobo Xie <X.Xie@freescale.com>, Anton Vorontsov <avorontsov@ru.mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file268 = internal constant [52 x i8] c"sdhci_of_esdhc.file=drivers/mmc/host/sdhci-of-esdhc\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [30 x i8] c"sdhci_of_esdhc.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"sdhci-esdhc\00", align 1
@sdhci_esdhc_of_match = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1021a_esdhc_clk }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1046a-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1046a_esdhc_clk }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1012a-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1012a_esdhc_clk }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p1010-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @p1010_esdhc_clk }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc8379-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc8536-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@esdhc_of_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @esdhc_of_suspend, ptr @esdhc_of_resume, ptr @esdhc_of_suspend, ptr @esdhc_of_resume, ptr @esdhc_of_suspend, ptr @esdhc_of_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"little-endian\00", align 1
@sdhci_esdhc_le_pdata = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_esdhc_le_ops, i32 622084228, i32 0 }, align 4
@sdhci_esdhc_be_pdata = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_esdhc_be_ops, i32 622084228, i32 0 }, align 4
@soc_tuning_erratum_type1 = internal global [5 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.24, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.25, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.26, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.27, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@soc_tuning_erratum_type2 = internal global [7 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.28, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.29, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.30, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.31, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.32, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.33, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"fsl,p2020-esdhc\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fsl,p5040-esdhc\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"fsl,p5020-esdhc\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fsl,p4080-esdhc\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"fsl,p1020-esdhc\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"fsl,t1040-esdhc\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"fsl,ls1021a-esdhc\00", align 1
@sdhci_esdhc_le_ops = internal constant %struct.sdhci_ops { ptr @esdhc_le_readl, ptr @esdhc_le_readw, ptr @esdhc_le_readb, ptr @esdhc_le_writel, ptr @esdhc_le_writew, ptr @esdhc_le_writeb, ptr @esdhc_of_set_clock, ptr null, ptr @esdhc_irq, ptr null, ptr @esdhc_of_enable_dma, ptr @esdhc_of_get_max_clock, ptr @esdhc_of_get_min_clock, ptr null, ptr null, ptr null, ptr @esdhc_pltfm_set_bus_width, ptr null, ptr null, ptr @esdhc_reset, ptr null, ptr @esdhc_set_uhs_signaling, ptr null, ptr @esdhc_of_adma_workaround, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"\014%s: using unsupported clock division.\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"\013%s: Internal clock never stabilised.\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"\013%s: timeout for delay chain lock.\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"\013%s: flushing asynchronous FIFO timeout.\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"fsl,ls1043a-esdhc\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"fsl,ls1046a-esdhc\00", align 1
@sdhci_esdhc_be_ops = internal constant %struct.sdhci_ops { ptr @esdhc_be_readl, ptr @esdhc_be_readw, ptr @esdhc_be_readb, ptr @esdhc_be_writel, ptr @esdhc_be_writew, ptr @esdhc_be_writeb, ptr @esdhc_of_set_clock, ptr null, ptr @esdhc_irq, ptr null, ptr @esdhc_of_enable_dma, ptr @esdhc_of_get_max_clock, ptr @esdhc_of_get_min_clock, ptr null, ptr null, ptr null, ptr @esdhc_pltfm_set_bus_width, ptr null, ptr null, ptr @esdhc_reset, ptr null, ptr @esdhc_set_uhs_signaling, ptr null, ptr @esdhc_of_adma_workaround, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@scfg_device_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,t1040-scfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1012a-scfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1046a-scfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [59 x i8] c"\016%s: Hold on to use fixed sampling clock. Try SW tuning!\0A\00", align 1
@.str.16 = private unnamed_addr constant [75 x i8] c"\016%s: Hold on to use fixed sampling clock. Try tuning with reduced clock!\0A\00", align 1
@soc_incorrect_hostver = internal global [3 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.19, ptr @.str.20, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.19, ptr @.str.21, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@soc_fixup_sdhc_clkdivs = internal global [4 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.22, ptr @.str.20, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.22, ptr @.str.21, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.23, ptr @.str.20, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@soc_unreliable_pulse_detection = internal global [4 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.22, ptr @.str.20, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.22, ptr @.str.21, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.23, ptr @.str.20, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@.str.17 = private unnamed_addr constant [18 x i8] c"fsl,ls1028a-esdhc\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"fsl,ls1088a-esdhc\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"QorIQ T4240\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"QorIQ LX2160A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"QorIQ LS1028A\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"QorIQ T1023\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"QorIQ T1040\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"QorIQ T2080\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"QorIQ LS1021A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"QorIQ LS1012A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"QorIQ LS1043A\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"QorIQ LS1046A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"QorIQ LS1080A\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"QorIQ LS2080A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"QorIQ LA1575A\00", align 1
@ls1046a_esdhc_clk = internal constant %struct.esdhc_clk_fixup { i32 25000000, [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 167000000, i32 0, i32 0, i32 167000000, i32 0] }, align 4
@ls1012a_esdhc_clk = internal constant %struct.esdhc_clk_fixup { i32 25000000, [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 125000000, i32 0, i32 0, i32 125000000, i32 0] }, align 4
@ls1021a_esdhc_clk = internal constant { i32, <{ i32, i32, i32, [8 x i32] }> } { i32 25000000, <{ i32, i32, i32, [8 x i32] }> <{ i32 0, i32 46500000, i32 46500000, [8 x i32] zeroinitializer }> }, align 4
@p1010_esdhc_clk = internal constant { i32, <{ i32, i32, i32, [8 x i32] }> } { i32 20000000, <{ i32, i32, i32, [8 x i32] }> <{ i32 20000000, i32 42000000, i32 40000000, [8 x i32] zeroinitializer }> }, align 4
@esdhc_proctl = internal unnamed_addr global i32 0, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author267, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_file268, ptr @__UNIQUE_ID_license269, ptr @__exitcall_sdhci_esdhc_driver_exit, ptr @__initcall__kmod_sdhci_of_esdhc__265_1519_sdhci_esdhc_driver_init6, ptr @sdhci_esdhc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_esdhc_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sdhci_esdhc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_esdhc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @sdhci_esdhc_be_pdata, ptr @sdhci_esdhc_le_pdata
  %7 = tail call ptr @sdhci_pltfm_init(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 24) #7
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = ptrtoint ptr %7 to i32
  br label %188

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 11, i32 10
  store ptr @esdhc_signal_voltage_switch, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 11, i32 12
  store ptr @esdhc_execute_tuning, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 11, i32 15
  store ptr @esdhc_hs400_prepare_ddr, ptr %14, align 4
  %15 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 75
  store i32 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 1, i32 11, i32 5
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sdhci_ops, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22, !prof !8

22:                                               ; preds = %11
  %23 = tail call zeroext i16 %20(ptr noundef %7, i32 noundef 254) #7
  %24 = trunc i16 %23 to i8
  %25 = lshr i16 %23, 8
  %26 = trunc i16 %25 to i8
  br label %35

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 4
  %29 = load ptr, ptr %28, align 16
  %30 = getelementptr i8, ptr %29, i32 254
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %30) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %32 = trunc i16 %31 to i8
  %33 = lshr i16 %31, 8
  %34 = trunc i16 %33 to i8
  br label %35

35:                                               ; preds = %27, %22
  %36 = phi i8 [ %32, %27 ], [ %24, %22 ]
  %37 = phi i8 [ %34, %27 ], [ %26, %22 ]
  store i8 %37, ptr %16, align 4
  %38 = getelementptr inbounds %struct.sdhci_esdhc, ptr %16, i32 0, i32 1
  store i8 %36, ptr %38, align 1
  %39 = tail call ptr @soc_device_match(ptr noundef nonnull @soc_incorrect_hostver) #7
  %40 = icmp ne ptr %39, null
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.sdhci_esdhc, ptr %16, i32 0, i32 2
  store i8 %41, ptr %42, align 2
  %43 = tail call ptr @soc_device_match(ptr noundef nonnull @soc_fixup_sdhc_clkdivs) #7
  %44 = icmp ne ptr %43, null
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.sdhci_esdhc, ptr %16, i32 0, i32 3
  store i8 %45, ptr %46, align 1
  %47 = tail call ptr @soc_device_match(ptr noundef nonnull @soc_unreliable_pulse_detection) #7
  %48 = icmp ne ptr %47, null
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 1, i32 11, i32 6
  store i8 %49, ptr %50, align 4
  %51 = load ptr, ptr %2, align 8
  %52 = tail call ptr @of_match_node(ptr noundef nonnull @sdhci_esdhc_of_match, ptr noundef %51) #7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %35
  %55 = getelementptr inbounds %struct.of_device_id, ptr %52, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 1, i32 11, i32 9
  store ptr %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %54, %35
  %59 = load ptr, ptr %2, align 8
  %60 = tail call i32 @of_device_is_compatible(ptr noundef %59, ptr noundef nonnull @.str.2) #7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 1, i32 11, i32 7
  store i8 1, ptr %63, align 4
  %64 = getelementptr inbounds %struct.sdhci_esdhc, ptr %16, i32 0, i32 9
  store i8 1, ptr %64, align 1
  br label %65

65:                                               ; preds = %62, %58
  %66 = tail call ptr @of_clk_get(ptr noundef %59, i32 noundef 0) #7
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %85, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @of_device_is_compatible(ptr noundef %59, ptr noundef nonnull @.str.14) #7
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = tail call i32 @of_device_is_compatible(ptr noundef %59, ptr noundef nonnull @.str.17) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = tail call i32 @of_device_is_compatible(ptr noundef %59, ptr noundef nonnull @.str.18) #7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74, %71, %68
  %78 = tail call i32 @clk_get_rate(ptr noundef %66) #7
  %79 = lshr i32 %78, 1
  br label %82

80:                                               ; preds = %74
  %81 = tail call i32 @clk_get_rate(ptr noundef %66) #7
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi i32 [ %81, %80 ], [ %79, %77 ]
  %84 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 1, i32 11, i32 8
  store i32 %83, ptr %84, align 4
  tail call void @clk_put(ptr noundef %66) #7
  br label %85

85:                                               ; preds = %82, %65
  tail call fastcc void @esdhc_clock_enable(ptr noundef %7, i1 noundef zeroext false) #7
  %86 = load ptr, ptr %17, align 4
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89, !prof !8

89:                                               ; preds = %85
  %90 = tail call i32 %87(ptr noundef %7, i32 noundef 1036) #7
  br label %96

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 4
  %93 = load ptr, ptr %92, align 16
  %94 = getelementptr i8, ptr %93, i32 1036
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %96

96:                                               ; preds = %91, %89
  %97 = phi i32 [ %90, %89 ], [ %95, %91 ]
  %98 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 1, i32 11, i32 8
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  %101 = and i32 %97, -524289
  %102 = select i1 %100, i32 0, i32 524288
  %103 = or i32 %102, %101
  %104 = load ptr, ptr %17, align 4
  %105 = getelementptr inbounds %struct.sdhci_ops, ptr %104, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108, !prof !8

108:                                              ; preds = %96
  tail call void %106(ptr noundef %7, i32 noundef %103, i32 noundef 1036) #7
  br label %113

109:                                              ; preds = %96
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %110 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 4
  %111 = load ptr, ptr %110, align 16
  %112 = getelementptr i8, ptr %111, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %103) #7, !srcloc !14
  br label %113

113:                                              ; preds = %109, %108
  tail call fastcc void @esdhc_clock_enable(ptr noundef %7, i1 noundef zeroext true) #7
  tail call void @sdhci_get_property(ptr noundef %0) #7
  %114 = tail call ptr @soc_device_match(ptr noundef nonnull @soc_tuning_erratum_type1) #7
  %115 = icmp ne ptr %114, null
  %116 = zext i1 %115 to i8
  %117 = getelementptr inbounds %struct.sdhci_esdhc, ptr %16, i32 0, i32 5
  store i8 %116, ptr %117, align 1
  %118 = tail call ptr @soc_device_match(ptr noundef nonnull @soc_tuning_erratum_type2) #7
  %119 = icmp ne ptr %118, null
  %120 = zext i1 %119 to i8
  %121 = getelementptr inbounds %struct.sdhci_esdhc, ptr %16, i32 0, i32 6
  store i8 %120, ptr %121, align 2
  %122 = load i8, ptr %16, align 4
  %123 = icmp eq i8 %122, 18
  br i1 %123, label %124, label %128

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 2
  %126 = load i32, ptr %125, align 8
  %127 = or i32 %126, 2
  store i32 %127, ptr %125, align 8
  br label %134

128:                                              ; preds = %113
  %129 = icmp ugt i8 %122, 18
  br i1 %129, label %130, label %134

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, -16385
  store i32 %133, ptr %131, align 4
  br label %134

134:                                              ; preds = %130, %128, %124
  %135 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #7
  %136 = icmp eq ptr %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = or i32 %139, 5120
  store i32 %140, ptr %138, align 4
  br label %141

141:                                              ; preds = %137, %134
  %142 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %141
  %145 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.5) #7
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.6) #7
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.7) #7
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %153, %150, %147, %144, %141
  %157 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, -32769
  store i32 %159, ptr %157, align 4
  br label %160

160:                                              ; preds = %156, %153
  %161 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.8) #7
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = or i32 %165, 4096
  store i32 %166, ptr %164, align 4
  br label %167

167:                                              ; preds = %163, %160
  %168 = getelementptr inbounds %struct.sdhci_esdhc, ptr %16, i32 0, i32 7
  store i8 0, ptr %168, align 1
  %169 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 2
  %173 = load i32, ptr %172, align 8
  %174 = or i32 %173, 32
  store i32 %174, ptr %172, align 8
  store i8 1, ptr %168, align 1
  br label %175

175:                                              ; preds = %171, %167
  %176 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 10
  %177 = load ptr, ptr %176, align 8
  %178 = tail call i32 @mmc_of_parse(ptr noundef %177) #7
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load ptr, ptr %176, align 8
  %182 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 63
  %183 = tail call i32 @mmc_of_parse_voltage(ptr noundef %181, ptr noundef %182) #7
  %184 = tail call i32 @sdhci_add_host(ptr noundef %7) #7
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %180, %175
  %187 = phi i32 [ %178, %175 ], [ %184, %180 ]
  tail call void @sdhci_pltfm_free(ptr noundef %0) #7
  br label %188

188:                                              ; preds = %186, %180, %9
  %189 = phi i32 [ %10, %9 ], [ %187, %186 ], [ 0, %180 ]
  ret i32 %189
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esdhc_signal_voltage_switch(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 18
  %5 = load i32, ptr %4, align 64
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %69, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !8

12:                                               ; preds = %7
  %13 = tail call i32 %10(ptr noundef %3, i32 noundef 40) #7
  br label %19

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 16
  %17 = getelementptr i8, ptr %16, i32 40
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi i32 [ %13, %12 ], [ %18, %14 ]
  %21 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 8
  %22 = load i8, ptr %21, align 1
  switch i8 %22, label %69 [
    i8 0, label %23
    i8 1, label %34
  ]

23:                                               ; preds = %19
  %24 = and i32 %20, -1025
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds %struct.sdhci_ops, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !8

29:                                               ; preds = %23
  tail call void %27(ptr noundef %3, i32 noundef %24, i32 noundef 40) #7
  br label %69

30:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %31 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 16
  %33 = getelementptr i8, ptr %32, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %24) #7, !srcloc !14
  br label %69

34:                                               ; preds = %19
  %35 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @scfg_device_ids, ptr noundef null) #7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %58, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @of_iomap(ptr noundef nonnull %35, i32 noundef 0) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %58, label %40

40:                                               ; preds = %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %41 = getelementptr i8, ptr %38, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 224) #7, !srcloc !14
  %42 = or i32 %20, 1024
  %43 = load ptr, ptr %8, align 4
  %44 = getelementptr inbounds %struct.sdhci_ops, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47, !prof !8

47:                                               ; preds = %40
  tail call void %45(ptr noundef %3, i32 noundef %42, i32 noundef 40) #7
  br label %52

48:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %49 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %50 = load ptr, ptr %49, align 16
  %51 = getelementptr i8, ptr %50, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %42) #7, !srcloc !14
  br label %52

52:                                               ; preds = %48, %47
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #7
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #7
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #7
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #7
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 16777344) #7, !srcloc !14
  tail call void @iounmap(ptr noundef nonnull %38) #7
  br label %69

58:                                               ; preds = %37, %34
  %59 = or i32 %20, 1024
  %60 = load ptr, ptr %8, align 4
  %61 = getelementptr inbounds %struct.sdhci_ops, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64, !prof !8

64:                                               ; preds = %58
  tail call void %62(ptr noundef %3, i32 noundef %59, i32 noundef 40) #7
  br label %69

65:                                               ; preds = %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %66 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %67 = load ptr, ptr %66, align 16
  %68 = getelementptr i8, ptr %67, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %59) #7, !srcloc !14
  br label %69

69:                                               ; preds = %65, %64, %52, %30, %29, %19, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esdhc_execute_tuning(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1, !annotation !17
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 61
  %10 = load i32, ptr %9, align 4
  %11 = udiv i32 %10, 3
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 21, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, %11
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  tail call void @esdhc_of_set_clock(ptr noundef %7, i32 noundef %11)
  br label %16

16:                                               ; preds = %15, %2
  tail call fastcc void @esdhc_tuning_block_enable(ptr noundef %7, i1 noundef zeroext true)
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sdhci_ops, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  tail call void %20(ptr noundef %7, i8 noundef zeroext 14, i32 noundef 46) #7
  br label %27

23:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %24 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 16
  %26 = getelementptr i8, ptr %25, i32 46
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 14) #7, !srcloc !19
  br label %27

27:                                               ; preds = %23, %22
  %28 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 16
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 8192
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.sdhci_esdhc, ptr %8, i32 0, i32 3
  %33 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %34 = getelementptr inbounds %struct.sdhci_esdhc, ptr %8, i32 0, i32 6
  %35 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 42, i32 0, i32 1
  %36 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 63
  %37 = getelementptr inbounds %struct.sdhci_esdhc, ptr %8, i32 0, i32 5
  %38 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %39 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %40 = getelementptr inbounds %struct.sdhci_esdhc, ptr %8, i32 0, i32 10
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 18
  br label %42

42:                                               ; preds = %207, %27
  %43 = phi i1 [ false, %207 ], [ true, %27 ]
  %44 = load i8, ptr %32, align 1, !range !20
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i1 true, i1 %31
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %12, align 4
  tail call void @esdhc_of_set_clock(ptr noundef %7, i32 noundef %48)
  br label %49

49:                                               ; preds = %47, %42
  %50 = load ptr, ptr %17, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53, !prof !8

53:                                               ; preds = %49
  %54 = tail call i32 %51(ptr noundef %7, i32 noundef 288) #7
  br label %59

55:                                               ; preds = %49
  %56 = load ptr, ptr %33, align 16
  %57 = getelementptr i8, ptr %56, i32 288
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %59

59:                                               ; preds = %55, %53
  %60 = phi i32 [ %54, %53 ], [ %58, %55 ]
  %61 = and i32 %60, -4
  %62 = or i32 %61, 2
  %63 = load ptr, ptr %17, align 4
  %64 = getelementptr inbounds %struct.sdhci_ops, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67, !prof !8

67:                                               ; preds = %59
  tail call void %65(ptr noundef %7, i32 noundef %62, i32 noundef 288) #7
  br label %71

68:                                               ; preds = %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %69 = load ptr, ptr %33, align 16
  %70 = getelementptr i8, ptr %69, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %62) #7, !srcloc !14
  br label %71

71:                                               ; preds = %68, %67
  %72 = tail call i32 @sdhci_execute_tuning(ptr noundef %0, i32 noundef %1) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %213

74:                                               ; preds = %71
  %75 = load i8, ptr %34, align 2, !range !20
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %35, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  call fastcc void @esdhc_tuning_window_ptr(ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %81 = load i8, ptr %5, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, ptr %6, align 1
  %84 = zext i8 %83 to i32
  %85 = sub nsw i32 %82, %84
  %86 = tail call i32 @llvm.abs.i32(i32 %85, i1 true)
  %87 = load i32, ptr %36, align 4
  %88 = shl i32 %87, 2
  %89 = or i32 %88, 2
  %90 = icmp ugt i32 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  store i32 -11, ptr %35, align 8
  br label %97

92:                                               ; preds = %80, %74
  %93 = load i32, ptr %35, align 8
  br label %94

94:                                               ; preds = %92, %77
  %95 = phi i32 [ %93, %92 ], [ %78, %77 ]
  %96 = icmp eq i32 %95, -11
  br i1 %96, label %97, label %210

97:                                               ; preds = %94, %91
  %98 = load i8, ptr %37, align 1, !range !20
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i8, ptr %34, align 2, !range !20
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %213, label %103

103:                                              ; preds = %100, %97
  br i1 %31, label %107, label %104

104:                                              ; preds = %103
  %105 = load i32, ptr %28, align 4
  %106 = or i32 %105, 8192
  store i32 %106, ptr %28, align 4
  br label %107

107:                                              ; preds = %104, %103
  %108 = load ptr, ptr %39, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load ptr, ptr %38, align 4
  br label %112

112:                                              ; preds = %110, %107
  %113 = phi ptr [ %111, %110 ], [ %108, %107 ]
  %114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %113) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !17
  %115 = load i8, ptr %37, align 1, !range !20
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load i32, ptr %36, align 4
  %119 = trunc i32 %118 to i8
  %120 = mul i8 %119, 5
  store i8 %120, ptr %5, align 1
  %121 = mul i8 %119, 3
  br label %149

122:                                              ; preds = %112
  call fastcc void @esdhc_tuning_window_ptr(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  tail call void @sdhci_reset(ptr noundef %7, i8 noundef zeroext 4) #7
  %123 = load ptr, ptr %17, align 4
  %124 = getelementptr inbounds %struct.sdhci_ops, ptr %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %128, label %127, !prof !8

127:                                              ; preds = %122
  tail call void %125(ptr noundef %7, i32 noundef -1, i32 noundef 48) #7
  br label %131

128:                                              ; preds = %122
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %129 = load ptr, ptr %33, align 16
  %130 = getelementptr i8, ptr %129, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 -1) #7, !srcloc !14
  br label %131

131:                                              ; preds = %128, %127
  %132 = load i8, ptr %3, align 1
  %133 = zext i8 %132 to i32
  %134 = load i8, ptr %4, align 1
  %135 = zext i8 %134 to i32
  %136 = sub nsw i32 %133, %135
  %137 = tail call i32 @llvm.abs.i32(i32 %136, i1 true) #7
  %138 = load i32, ptr %36, align 4
  %139 = shl i32 %138, 2
  %140 = or i32 %139, 2
  %141 = icmp ugt i32 %137, %140
  %142 = trunc i32 %138 to i8
  br i1 %141, label %143, label %146

143:                                              ; preds = %131
  %144 = shl i8 %142, 3
  store i8 %144, ptr %5, align 1
  %145 = shl i8 %142, 2
  br label %149

146:                                              ; preds = %131
  %147 = mul i8 %142, 5
  store i8 %147, ptr %5, align 1
  %148 = mul i8 %142, 3
  br label %149

149:                                              ; preds = %146, %143, %117
  %150 = phi i8 [ %120, %117 ], [ %147, %146 ], [ %144, %143 ]
  %151 = phi i8 [ %121, %117 ], [ %148, %146 ], [ %145, %143 ]
  store i8 %151, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %152 = zext i8 %150 to i32
  %153 = shl nuw nsw i32 %152, 8
  %154 = and i32 %153, 32512
  %155 = and i8 %151, 127
  %156 = zext i8 %155 to i32
  %157 = or i32 %154, %156
  %158 = load ptr, ptr %17, align 4
  %159 = getelementptr inbounds %struct.sdhci_ops, ptr %158, i32 0, i32 3
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162, !prof !8

162:                                              ; preds = %149
  tail call void %160(ptr noundef %7, i32 noundef %157, i32 noundef 296) #7
  br label %166

163:                                              ; preds = %149
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %164 = load ptr, ptr %33, align 16
  %165 = getelementptr i8, ptr %164, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %157) #7, !srcloc !14
  br label %166

166:                                              ; preds = %163, %162
  %167 = load ptr, ptr %17, align 4
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %172, label %170, !prof !8

170:                                              ; preds = %166
  %171 = tail call i32 %168(ptr noundef %7, i32 noundef 288) #7
  br label %176

172:                                              ; preds = %166
  %173 = load ptr, ptr %33, align 16
  %174 = getelementptr i8, ptr %173, i32 288
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %176

176:                                              ; preds = %172, %170
  %177 = phi i32 [ %171, %170 ], [ %175, %172 ]
  %178 = or i32 %177, 3
  %179 = load ptr, ptr %17, align 4
  %180 = getelementptr inbounds %struct.sdhci_ops, ptr %179, i32 0, i32 3
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %184, label %183, !prof !8

183:                                              ; preds = %176
  tail call void %181(ptr noundef %7, i32 noundef %178, i32 noundef 288) #7
  br label %187

184:                                              ; preds = %176
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %185 = load ptr, ptr %33, align 16
  %186 = getelementptr i8, ptr %185, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %178) #7, !srcloc !14
  br label %187

187:                                              ; preds = %184, %183
  store i8 1, ptr %40, align 2
  %188 = tail call i32 @sdhci_execute_tuning(ptr noundef %0, i32 noundef %1) #7
  store i8 0, ptr %40, align 2
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %213

190:                                              ; preds = %187
  %191 = load i32, ptr %35, align 8
  %192 = icmp eq i32 %191, -11
  %193 = and i1 %43, %192
  br i1 %193, label %194, label %210

194:                                              ; preds = %190
  br i1 %31, label %198, label %195

195:                                              ; preds = %194
  %196 = load i32, ptr %28, align 4
  %197 = or i32 %196, 8192
  store i32 %197, ptr %28, align 4
  br label %198

198:                                              ; preds = %195, %194
  %199 = load i32, ptr %41, align 4
  %200 = load i32, ptr %36, align 4
  %201 = add i32 %200, 1
  %202 = udiv i32 %199, %201
  tail call void @esdhc_of_set_clock(ptr noundef %7, i32 noundef %202)
  %203 = load ptr, ptr %39, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %207

205:                                              ; preds = %198
  %206 = load ptr, ptr %38, align 4
  br label %207

207:                                              ; preds = %205, %198
  %208 = phi ptr [ %206, %205 ], [ %203, %198 ]
  %209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %208) #8
  br label %42

210:                                              ; preds = %190, %94
  %211 = phi i32 [ %191, %190 ], [ %95, %94 ]
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %210, %187, %100, %71
  %214 = phi i32 [ %211, %210 ], [ %72, %71 ], [ %188, %187 ], [ -11, %100 ]
  tail call fastcc void @esdhc_tuning_block_enable(ptr noundef %7, i1 noundef zeroext false)
  br label %237

215:                                              ; preds = %210
  br i1 %31, label %237, label %216

216:                                              ; preds = %215
  %217 = load ptr, ptr %17, align 4
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %222, label %220, !prof !8

220:                                              ; preds = %216
  %221 = tail call i32 %218(ptr noundef %7, i32 noundef 328) #7
  br label %226

222:                                              ; preds = %216
  %223 = load ptr, ptr %33, align 16
  %224 = getelementptr i8, ptr %223, i32 328
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %226

226:                                              ; preds = %222, %220
  %227 = phi i32 [ %221, %220 ], [ %225, %222 ]
  %228 = or i32 %227, 32768
  %229 = load ptr, ptr %17, align 4
  %230 = getelementptr inbounds %struct.sdhci_ops, ptr %229, i32 0, i32 3
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %234, label %233, !prof !8

233:                                              ; preds = %226
  tail call void %231(ptr noundef %7, i32 noundef %228, i32 noundef 328) #7
  br label %237

234:                                              ; preds = %226
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %235 = load ptr, ptr %33, align 16
  %236 = getelementptr i8, ptr %235, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 %228) #7, !srcloc !14
  br label %237

237:                                              ; preds = %234, %233, %215, %213
  %238 = phi i32 [ 0, %215 ], [ %214, %213 ], [ 0, %233 ], [ 0, %234 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  ret i32 %238
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esdhc_hs400_prepare_ddr(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  tail call fastcc void @esdhc_tuning_block_enable(ptr noundef %2, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse_voltage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esdhc_le_readl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 68
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  br i1 %3, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %5, i32 276
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %9 = and i32 %8, -8
  br label %33

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %5, i32 %1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %13 = icmp ne i32 %1, 64
  %14 = and i32 %12, 1048576
  %15 = icmp eq i32 %14, 0
  %16 = or i1 %13, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %19 = load i8, ptr %18, align 4
  %20 = icmp ugt i8 %19, 18
  %21 = or i32 %12, 524288
  %22 = select i1 %20, i32 %21, i32 %12
  br label %33

23:                                               ; preds = %10
  %24 = icmp eq i32 %1, 36
  br i1 %24, label %25, label %33

25:                                               ; preds = %23
  %26 = and i32 %12, 1048575
  %27 = lshr i32 %12, 4
  %28 = and i32 %27, 15728640
  %29 = or i32 %28, %26
  %30 = shl i32 %12, 1
  %31 = and i32 %30, 16777216
  %32 = or i32 %29, %31
  br label %33

33:                                               ; preds = %25, %23, %17, %6
  %34 = phi i32 [ %32, %25 ], [ %9, %6 ], [ %12, %23 ], [ %22, %17 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @esdhc_le_readw(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = and i32 %1, -4
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 %3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %9 = icmp eq i32 %1, 12
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 2
  %12 = load i16, ptr %11, align 8
  br label %25

13:                                               ; preds = %2
  %14 = shl i32 %1, 3
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %1, 254
  %17 = select i1 %16, i32 0, i32 %15
  %18 = lshr i32 %7, %17
  %19 = trunc i32 %18 to i16
  br i1 %16, label %20, label %25

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.sdhci_esdhc, ptr %8, i32 0, i32 2
  %22 = load i8, ptr %21, align 2, !range !20
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i16 %19, i16 4865
  br label %25

25:                                               ; preds = %20, %13, %10
  %26 = phi i16 [ %12, %10 ], [ %19, %13 ], [ %24, %20 ]
  ret i16 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @esdhc_le_readb(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = and i32 %1, -4
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 %3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %8 = shl i32 %1, 3
  %9 = and i32 %8, 24
  %10 = lshr i32 %7, %9
  %11 = icmp eq i32 %1, 40
  %12 = lshr i32 %7, 5
  %13 = and i32 %12, 24
  %14 = and i32 %10, 231
  %15 = or i32 %14, %13
  %16 = select i1 %11, i32 %15, i32 %10
  %17 = trunc i32 %16 to i8
  ret i8 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_le_writel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 52
  %5 = or i32 %1, 4
  %6 = select i1 %4, i32 %5, i32 %1
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr i8, ptr %8, i32 %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #7, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_le_writew(ptr nocapture noundef %0, i16 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %5 = and i32 %2, -4
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr i8, ptr %7, i32 %5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  switch i32 %2, label %19 [
    i32 12, label %10
    i32 14, label %12
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 2
  store i16 %1, ptr %11, align 8
  br label %35

12:                                               ; preds = %3
  %13 = zext i16 %1 to i32
  %14 = shl nuw i32 %13, 16
  %15 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 2
  %16 = load i16, ptr %15, align 8
  %17 = zext i16 %16 to i32
  %18 = or i32 %14, %17
  br label %31

19:                                               ; preds = %3
  %20 = shl i32 %2, 3
  %21 = and i32 %20, 16
  %22 = shl nuw i32 65535, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %9, %23
  %25 = zext i16 %1 to i32
  %26 = shl nuw i32 %25, %21
  %27 = or i32 %24, %26
  %28 = icmp eq i32 %2, 4
  %29 = and i32 %27, -28673
  %30 = select i1 %28, i32 %29, i32 %27
  br label %31

31:                                               ; preds = %19, %12
  %32 = phi i32 [ %18, %12 ], [ %30, %19 ]
  %33 = load ptr, ptr %6, align 16
  %34 = getelementptr i8, ptr %33, i32 %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #7, !srcloc !14
  br label %35

35:                                               ; preds = %31, %10
  %36 = phi i32 [ %9, %10 ], [ %32, %31 ]
  %37 = icmp ne i32 %5, 60
  %38 = and i32 %9, 4194304
  %39 = icmp ne i32 %38, 0
  %40 = or i1 %37, %39
  %41 = and i32 %36, 4194304
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %53, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.sdhci_esdhc, ptr %4, i32 0, i32 10
  %46 = load i8, ptr %45, align 2, !range !20
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #7
  %50 = or i32 %36, 8388608
  %51 = load ptr, ptr %6, align 16
  %52 = getelementptr i8, ptr %51, i32 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #7, !srcloc !14
  br label %53

53:                                               ; preds = %48, %44, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_le_writeb(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = and i32 %2, -4
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 %4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  switch i32 %2, label %24 [
    i32 41, label %33
    i32 40, label %9
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %9
  %15 = zext i8 %1 to i32
  %16 = shl nuw nsw i32 %15, 5
  %17 = and i32 %16, 768
  %18 = and i32 %8, -1024
  %19 = and i32 %15, 230
  %20 = and i32 %8, 24
  %21 = or i32 %17, %19
  %22 = or i32 %21, %20
  %23 = or i32 %22, %18
  br label %33

24:                                               ; preds = %3
  %25 = shl i32 %2, 3
  %26 = and i32 %25, 24
  %27 = shl nuw i32 255, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %8, %28
  %30 = zext i8 %1 to i32
  %31 = shl nuw i32 %30, %26
  %32 = or i32 %29, %31
  br label %33

33:                                               ; preds = %24, %14, %9, %3
  %34 = phi i32 [ %23, %14 ], [ %32, %24 ], [ %8, %3 ], [ %8, %9 ]
  %35 = load ptr, ptr %5, align 16
  %36 = getelementptr i8, ptr %35, i32 %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #7, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_of_set_clock(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 57
  store i32 0, ptr %8, align 4
  br label %352

9:                                                ; preds = %2
  %10 = load i8, ptr %3, align 4
  %11 = icmp ult i8 %10, 19
  %12 = select i1 %11, i32 2, i32 1
  %13 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 37
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.mmc_card, ptr %16, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 28, i32 7
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26, %22, %18, %9
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 28, i32 7
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = getelementptr %struct.esdhc_clk_fixup, ptr %32, i32 0, i32 1, i32 %37
  br label %39

39:                                               ; preds = %34, %26
  %40 = phi ptr [ %38, %34 ], [ %24, %26 ]
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %30
  %43 = phi i32 [ 0, %30 ], [ %41, %39 ]
  %44 = add i32 %43, -1
  %45 = icmp ult i32 %44, %1
  %46 = select i1 %45, i32 %43, i32 %1
  %47 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 18
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %49, %42
  %50 = phi i32 [ %12, %42 ], [ %56, %49 ]
  %51 = udiv i32 %48, %50
  %52 = lshr i32 %51, 4
  %53 = icmp ugt i32 %52, %46
  %54 = icmp ult i32 %50, 256
  %55 = select i1 %53, i1 %54, i1 false
  %56 = shl nuw nsw i32 %50, 1
  br i1 %55, label %49, label %57

57:                                               ; preds = %57, %49
  %58 = phi i32 [ %63, %57 ], [ 1, %49 ]
  %59 = udiv i32 %51, %58
  %60 = icmp ugt i32 %59, %46
  %61 = icmp ult i32 %58, 16
  %62 = and i1 %61, %60
  %63 = add nuw nsw i32 %58, 1
  br i1 %62, label %57, label %64

64:                                               ; preds = %57
  %65 = mul i32 %58, %50
  %66 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 10
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.sdhci_esdhc, ptr %3, i32 0, i32 3
  %68 = load i8, ptr %67, align 1, !range !20
  %69 = icmp ne i8 %68, 0
  %70 = icmp eq i32 %1, 200000000
  %71 = and i1 %70, %69
  br i1 %71, label %72, label %105

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 28, i32 7
  %74 = load i8, ptr %73, align 4
  %75 = icmp eq i8 %74, 10
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 8192
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %105, label %81

81:                                               ; preds = %76, %72
  %82 = icmp ult i32 %65, 5
  br i1 %82, label %99, label %83

83:                                               ; preds = %81
  %84 = icmp ult i32 %65, 9
  br i1 %84, label %99, label %85

85:                                               ; preds = %83
  %86 = icmp ult i32 %65, 13
  br i1 %86, label %99, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 1, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  br label %94

94:                                               ; preds = %91, %87
  %95 = phi ptr [ %93, %91 ], [ %89, %87 ]
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %95) #8
  %97 = load i32, ptr %47, align 4
  %98 = load ptr, ptr %13, align 8
  br label %99

99:                                               ; preds = %94, %85, %83, %81
  %100 = phi ptr [ %98, %94 ], [ %14, %81 ], [ %14, %83 ], [ %14, %85 ]
  %101 = phi i32 [ %97, %94 ], [ %48, %81 ], [ %48, %83 ], [ %48, %85 ]
  %102 = phi i32 [ %58, %94 ], [ 1, %81 ], [ 2, %83 ], [ 3, %85 ]
  %103 = phi i32 [ %50, %94 ], [ 4, %81 ], [ 4, %83 ], [ 4, %85 ]
  %104 = mul i32 %103, %102
  store i32 %104, ptr %66, align 4
  br label %105

105:                                              ; preds = %99, %76, %64
  %106 = phi ptr [ %100, %99 ], [ %14, %76 ], [ %14, %64 ]
  %107 = phi i32 [ %104, %99 ], [ %65, %76 ], [ %65, %64 ]
  %108 = phi i32 [ %101, %99 ], [ %48, %76 ], [ %48, %64 ]
  %109 = phi i32 [ %102, %99 ], [ %58, %76 ], [ %58, %64 ]
  %110 = phi i32 [ %103, %99 ], [ %50, %76 ], [ %50, %64 ]
  %111 = udiv i32 %108, %107
  %112 = getelementptr inbounds %struct.mmc_host, ptr %106, i32 0, i32 57
  store i32 %111, ptr %112, align 4
  tail call fastcc void @esdhc_clock_enable(ptr noundef %0, i1 noundef zeroext false)
  %113 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117, !prof !8

117:                                              ; preds = %105
  %118 = tail call i32 %115(ptr noundef %0, i32 noundef 44) #7
  br label %124

119:                                              ; preds = %105
  %120 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %121 = load ptr, ptr %120, align 16
  %122 = getelementptr i8, ptr %121, i32 44
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %124

124:                                              ; preds = %119, %117
  %125 = phi i32 [ %118, %117 ], [ %123, %119 ]
  %126 = and i32 %125, -65521
  %127 = shl nuw nsw i32 %109, 4
  %128 = add nsw i32 %127, -16
  %129 = shl i32 %110, 7
  %130 = and i32 %129, -256
  %131 = or i32 %130, %128
  %132 = or i32 %131, %126
  %133 = load ptr, ptr %113, align 4
  %134 = getelementptr inbounds %struct.sdhci_ops, ptr %133, i32 0, i32 3
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %138, label %137, !prof !8

137:                                              ; preds = %124
  tail call void %135(ptr noundef %0, i32 noundef %132, i32 noundef 44) #7
  br label %142

138:                                              ; preds = %124
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %139 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %140 = load ptr, ptr %139, align 16
  %141 = getelementptr i8, ptr %140, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %132) #7, !srcloc !14
  br label %142

142:                                              ; preds = %138, %137
  %143 = tail call i64 @ktime_get() #7
  %144 = add i64 %143, 20000000
  %145 = load i8, ptr %3, align 4
  %146 = icmp ugt i8 %145, 18
  br i1 %146, label %147, label %180

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  br label %149

149:                                              ; preds = %177, %147
  %150 = tail call i64 @ktime_get() #7
  %151 = icmp sgt i64 %150, %144
  %152 = load ptr, ptr %113, align 4
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155, !prof !8

155:                                              ; preds = %149
  %156 = tail call i32 %153(ptr noundef %0, i32 noundef 36) #7
  br label %161

157:                                              ; preds = %149
  %158 = load ptr, ptr %148, align 16
  %159 = getelementptr i8, ptr %158, i32 36
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %161

161:                                              ; preds = %157, %155
  %162 = phi i32 [ %156, %155 ], [ %160, %157 ]
  %163 = and i32 %162, 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %161
  br i1 %151, label %166, label %177

166:                                              ; preds = %165
  %167 = load ptr, ptr %13, align 8
  %168 = getelementptr inbounds %struct.mmc_host, ptr %167, i32 0, i32 1, i32 3
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.mmc_host, ptr %167, i32 0, i32 1
  %173 = load ptr, ptr %172, align 4
  br label %174

174:                                              ; preds = %171, %166
  %175 = phi ptr [ %173, %171 ], [ %169, %166 ]
  %176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %175) #8
  br label %180

177:                                              ; preds = %165
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %178 = load i8, ptr %3, align 4
  %179 = icmp ugt i8 %178, 18
  br i1 %179, label %149, label %180

180:                                              ; preds = %177, %174, %161, %142
  %181 = load ptr, ptr %13, align 8
  %182 = getelementptr inbounds %struct.mmc_host, ptr %181, i32 0, i32 28, i32 7
  %183 = load i8, ptr %182, align 4
  %184 = icmp eq i8 %183, 10
  %185 = and i1 %70, %184
  br i1 %185, label %186, label %352

186:                                              ; preds = %180
  %187 = load ptr, ptr %113, align 4
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %192, label %190, !prof !8

190:                                              ; preds = %186
  %191 = tail call i32 %188(ptr noundef %0, i32 noundef 288) #7
  br label %197

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %194 = load ptr, ptr %193, align 16
  %195 = getelementptr i8, ptr %194, i32 288
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %195) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %197

197:                                              ; preds = %192, %190
  %198 = phi i32 [ %191, %190 ], [ %196, %192 ]
  %199 = or i32 %198, 16
  %200 = load ptr, ptr %113, align 4
  %201 = getelementptr inbounds %struct.sdhci_ops, ptr %200, i32 0, i32 3
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %205, label %204, !prof !8

204:                                              ; preds = %197
  tail call void %202(ptr noundef %0, i32 noundef %199, i32 noundef 288) #7
  br label %209

205:                                              ; preds = %197
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %206 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %207 = load ptr, ptr %206, align 16
  %208 = getelementptr i8, ptr %207, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 %199) #7, !srcloc !14
  br label %209

209:                                              ; preds = %205, %204
  %210 = load ptr, ptr %113, align 4
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %215, label %213, !prof !8

213:                                              ; preds = %209
  %214 = tail call i32 %211(ptr noundef %0, i32 noundef 324) #7
  br label %220

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %217 = load ptr, ptr %216, align 16
  %218 = getelementptr i8, ptr %217, i32 324
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %220

220:                                              ; preds = %215, %213
  %221 = phi i32 [ %214, %213 ], [ %219, %215 ]
  %222 = or i32 %221, 32768
  %223 = load ptr, ptr %113, align 4
  %224 = getelementptr inbounds %struct.sdhci_ops, ptr %223, i32 0, i32 3
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %228, label %227, !prof !8

227:                                              ; preds = %220
  tail call void %225(ptr noundef %0, i32 noundef %222, i32 noundef 324) #7
  br label %232

228:                                              ; preds = %220
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %229 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %230 = load ptr, ptr %229, align 16
  %231 = getelementptr i8, ptr %230, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %222) #7, !srcloc !14
  br label %232

232:                                              ; preds = %228, %227
  tail call fastcc void @esdhc_clock_enable(ptr noundef %0, i1 noundef zeroext true)
  %233 = load ptr, ptr %113, align 4
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %238, label %236, !prof !8

236:                                              ; preds = %232
  %237 = tail call i32 %234(ptr noundef %0, i32 noundef 352) #7
  br label %243

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %240 = load ptr, ptr %239, align 16
  %241 = getelementptr i8, ptr %240, i32 352
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %241) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %243

243:                                              ; preds = %238, %236
  %244 = phi i32 [ %237, %236 ], [ %242, %238 ]
  %245 = load ptr, ptr %13, align 8
  %246 = getelementptr inbounds %struct.mmc_host, ptr %245, i32 0, i32 57
  %247 = load i32, ptr %246, align 4
  %248 = icmp eq i32 %247, 200000000
  %249 = select i1 %248, i32 -2013265920, i32 -2147483648
  %250 = or i32 %249, %244
  %251 = load ptr, ptr %113, align 4
  %252 = getelementptr inbounds %struct.sdhci_ops, ptr %251, i32 0, i32 3
  %253 = load ptr, ptr %252, align 4
  %254 = icmp eq ptr %253, null
  br i1 %254, label %256, label %255, !prof !8

255:                                              ; preds = %243
  tail call void %253(ptr noundef %0, i32 noundef %250, i32 noundef 352) #7
  br label %260

256:                                              ; preds = %243
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %257 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %258 = load ptr, ptr %257, align 16
  %259 = getelementptr i8, ptr %258, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %250) #7, !srcloc !14
  br label %260

260:                                              ; preds = %256, %255
  %261 = or i32 %250, 1073741824
  %262 = load ptr, ptr %113, align 4
  %263 = getelementptr inbounds %struct.sdhci_ops, ptr %262, i32 0, i32 3
  %264 = load ptr, ptr %263, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %267, label %266, !prof !8

266:                                              ; preds = %260
  tail call void %264(ptr noundef %0, i32 noundef %261, i32 noundef 352) #7
  br label %271

267:                                              ; preds = %260
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %268 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %269 = load ptr, ptr %268, align 16
  %270 = getelementptr i8, ptr %269, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 %261) #7, !srcloc !14
  br label %271

271:                                              ; preds = %267, %266
  %272 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %272(i32 noundef 214748) #7
  %273 = and i32 %250, -1073741825
  %274 = load ptr, ptr %113, align 4
  %275 = getelementptr inbounds %struct.sdhci_ops, ptr %274, i32 0, i32 3
  %276 = load ptr, ptr %275, align 4
  %277 = icmp eq ptr %276, null
  br i1 %277, label %279, label %278, !prof !8

278:                                              ; preds = %271
  tail call void %276(ptr noundef %0, i32 noundef %273, i32 noundef 352) #7
  br label %283

279:                                              ; preds = %271
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %280 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %281 = load ptr, ptr %280, align 16
  %282 = getelementptr i8, ptr %281, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 %273) #7, !srcloc !14
  br label %283

283:                                              ; preds = %279, %278
  %284 = tail call i64 @ktime_get() #7
  %285 = add i64 %284, 20000000
  %286 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  br label %287

287:                                              ; preds = %314, %283
  %288 = load ptr, ptr %113, align 4
  %289 = load ptr, ptr %288, align 4
  %290 = icmp eq ptr %289, null
  br i1 %290, label %293, label %291, !prof !8

291:                                              ; preds = %287
  %292 = tail call i32 %289(ptr noundef %0, i32 noundef 368) #7
  br label %297

293:                                              ; preds = %287
  %294 = load ptr, ptr %286, align 16
  %295 = getelementptr i8, ptr %294, i32 368
  %296 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %295) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %297

297:                                              ; preds = %293, %291
  %298 = phi i32 [ %292, %291 ], [ %296, %293 ]
  %299 = and i32 %298, 134217728
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %315

301:                                              ; preds = %297
  %302 = tail call i64 @ktime_get() #7
  %303 = icmp sgt i64 %302, %285
  br i1 %303, label %304, label %314

304:                                              ; preds = %301
  %305 = load ptr, ptr %113, align 4
  %306 = load ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %310, label %308, !prof !8

308:                                              ; preds = %304
  %309 = tail call i32 %306(ptr noundef %0, i32 noundef 368) #7
  br label %315

310:                                              ; preds = %304
  %311 = load ptr, ptr %286, align 16
  %312 = getelementptr i8, ptr %311, i32 368
  %313 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %312) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %315

314:                                              ; preds = %301
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  br label %287

315:                                              ; preds = %310, %308, %297
  %316 = phi i32 [ %309, %308 ], [ %313, %310 ], [ %298, %297 ]
  %317 = and i32 %316, 134217728
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %330

319:                                              ; preds = %315
  %320 = load ptr, ptr %13, align 8
  %321 = getelementptr inbounds %struct.mmc_host, ptr %320, i32 0, i32 1, i32 3
  %322 = load ptr, ptr %321, align 4
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %327

324:                                              ; preds = %319
  %325 = getelementptr inbounds %struct.mmc_host, ptr %320, i32 0, i32 1
  %326 = load ptr, ptr %325, align 4
  br label %327

327:                                              ; preds = %324, %319
  %328 = phi ptr [ %326, %324 ], [ %322, %319 ]
  %329 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %328) #8
  br label %330

330:                                              ; preds = %327, %315
  %331 = load ptr, ptr %113, align 4
  %332 = load ptr, ptr %331, align 4
  %333 = icmp eq ptr %332, null
  br i1 %333, label %336, label %334, !prof !8

334:                                              ; preds = %330
  %335 = tail call i32 %332(ptr noundef %0, i32 noundef 288) #7
  br label %340

336:                                              ; preds = %330
  %337 = load ptr, ptr %286, align 16
  %338 = getelementptr i8, ptr %337, i32 288
  %339 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %338) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %340

340:                                              ; preds = %336, %334
  %341 = phi i32 [ %335, %334 ], [ %339, %336 ]
  %342 = or i32 %341, 64
  %343 = load ptr, ptr %113, align 4
  %344 = getelementptr inbounds %struct.sdhci_ops, ptr %343, i32 0, i32 3
  %345 = load ptr, ptr %344, align 4
  %346 = icmp eq ptr %345, null
  br i1 %346, label %348, label %347, !prof !8

347:                                              ; preds = %340
  tail call void %345(ptr noundef %0, i32 noundef %342, i32 noundef 288) #7
  br label %351

348:                                              ; preds = %340
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %349 = load ptr, ptr %286, align 16
  %350 = getelementptr i8, ptr %349, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %350, i32 %342) #7, !srcloc !14
  br label %351

351:                                              ; preds = %348, %347
  tail call fastcc void @esdhc_clock_enable(ptr noundef %0, i1 noundef zeroext false)
  tail call fastcc void @esdhc_flush_async_fifo(ptr noundef %0)
  br label %352

352:                                              ; preds = %351, %180, %5
  %353 = xor i1 %4, true
  tail call fastcc void @esdhc_clock_enable(ptr noundef %0, i1 noundef zeroext %353)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esdhc_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %4 = getelementptr inbounds %struct.sdhci_esdhc, ptr %3, i32 0, i32 9
  %5 = load i8, ptr %4, align 1, !range !20
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %53, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !8

13:                                               ; preds = %7
  %14 = tail call zeroext i16 %11(ptr noundef %0, i32 noundef 14) #7
  br label %20

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr i8, ptr %17, i32 14
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i16 [ %14, %13 ], [ %19, %15 ]
  %22 = and i16 %21, 16128
  %23 = icmp eq i16 %22, 6400
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds %struct.sdhci_ops, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29, !prof !8

29:                                               ; preds = %24
  %30 = tail call zeroext i16 %27(ptr noundef %0, i32 noundef 6) #7
  br label %36

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %32, align 16
  %34 = getelementptr i8, ptr %33, i32 6
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %34) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %36

36:                                               ; preds = %31, %29
  %37 = phi i16 [ %30, %29 ], [ %35, %31 ]
  %38 = icmp eq i16 %37, 0
  %39 = and i32 %1, 2
  %40 = icmp eq i32 %39, 0
  %41 = or i1 %40, %38
  br i1 %41, label %53, label %42

42:                                               ; preds = %36
  %43 = and i32 %1, -3
  %44 = load ptr, ptr %8, align 4
  %45 = getelementptr inbounds %struct.sdhci_ops, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48, !prof !8

48:                                               ; preds = %42
  tail call void %46(ptr noundef %0, i32 noundef 2, i32 noundef 48) #7
  br label %53

49:                                               ; preds = %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %50 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %51 = load ptr, ptr %50, align 16
  %52 = getelementptr i8, ptr %51, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 2) #7, !srcloc !14
  br label %53

53:                                               ; preds = %49, %48, %36, %20, %2
  %54 = phi i32 [ %1, %36 ], [ %1, %20 ], [ %1, %2 ], [ %43, %48 ], [ %43, %49 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esdhc_of_enable_dma(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @of_device_is_compatible(ptr noundef %6, ptr noundef nonnull @.str.13) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 8
  %11 = tail call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.14) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9, %1
  %14 = tail call i32 @dma_set_mask(ptr noundef %4, i64 noundef 1099511627775) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  %17 = tail call i32 @dma_set_coherent_mask(ptr noundef %4, i64 noundef 1099511627775) #7
  br label %18

18:                                               ; preds = %16, %9
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !8

23:                                               ; preds = %18
  %24 = tail call i32 %21(ptr noundef %0, i32 noundef 1036) #7
  br label %30

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %27 = load ptr, ptr %26, align 16
  %28 = getelementptr i8, ptr %27, i32 1036
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %30

30:                                               ; preds = %25, %23
  %31 = phi i32 [ %24, %23 ], [ %29, %25 ]
  %32 = load ptr, ptr %5, align 8
  %33 = tail call zeroext i1 @of_dma_is_coherent(ptr noundef %32) #7
  %34 = and i32 %31, -65
  %35 = select i1 %33, i32 64, i32 0
  %36 = or i32 %35, %34
  %37 = load ptr, ptr %19, align 4
  %38 = getelementptr inbounds %struct.sdhci_ops, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41, !prof !8

41:                                               ; preds = %30
  tail call void %39(ptr noundef %0, i32 noundef %36, i32 noundef 1036) #7
  br label %46

42:                                               ; preds = %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %43 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %44 = load ptr, ptr %43, align 16
  %45 = getelementptr i8, ptr %44, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %36) #7, !srcloc !14
  br label %46

46:                                               ; preds = %42, %41, %13
  %47 = phi i32 [ %14, %13 ], [ 0, %41 ], [ 0, %42 ]
  ret i32 %47
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @esdhc_of_get_max_clock(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ %3, %1 ]
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @esdhc_of_get_min_clock(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ %3, %1 ]
  %10 = lshr i32 %9, 12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_pltfm_set_bus_width(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %2
  %8 = tail call i32 %5(ptr noundef %0, i32 noundef 40) #7
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr i8, ptr %11, i32 40
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ %8, %7 ], [ %13, %9 ]
  %16 = and i32 %15, -7
  switch i32 %1, label %21 [
    i32 3, label %17
    i32 2, label %19
  ]

17:                                               ; preds = %14
  %18 = or i32 %16, 4
  br label %21

19:                                               ; preds = %14
  %20 = or i32 %16, 2
  br label %21

21:                                               ; preds = %19, %17, %14
  %22 = phi i32 [ %16, %14 ], [ %20, %19 ], [ %18, %17 ]
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.sdhci_ops, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !8

27:                                               ; preds = %21
  tail call void %25(ptr noundef %0, i32 noundef %22, i32 noundef 40) #7
  br label %32

28:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %29 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %30 = load ptr, ptr %29, align 16
  %31 = getelementptr i8, ptr %30, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %22) #7, !srcloc !14
  br label %32

32:                                               ; preds = %28, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_reset(ptr noundef %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 7
  %5 = load i8, ptr %4, align 4, !range !20
  %6 = icmp eq i8 %5, 0
  %7 = and i8 %1, 4
  %8 = icmp eq i8 %7, 0
  %9 = or i1 %8, %6
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #7
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #7
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #7
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #7
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #7
  br label %21

21:                                               ; preds = %15, %10, %2
  %22 = zext i8 %1 to i32
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %21
  %26 = load i8, ptr %3, align 4
  %27 = icmp ult i8 %26, 19
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !8

33:                                               ; preds = %28
  %34 = tail call i32 %31(ptr noundef %0, i32 noundef 40) #7
  br label %40

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %37 = load ptr, ptr %36, align 16
  %38 = getelementptr i8, ptr %37, i32 40
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi i32 [ %34, %33 ], [ %39, %35 ]
  %42 = and i32 %41, 6
  br label %44

43:                                               ; preds = %21
  tail call void @sdhci_reset(ptr noundef %0, i8 noundef zeroext %1) #7
  br label %96

44:                                               ; preds = %40, %25
  %45 = phi i32 [ 0, %25 ], [ %42, %40 ]
  tail call void @sdhci_reset(ptr noundef %0, i8 noundef zeroext %1) #7
  %46 = load i8, ptr %3, align 4
  %47 = icmp ult i8 %46, 19
  br i1 %47, label %48, label %96

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53, !prof !8

53:                                               ; preds = %48
  %54 = tail call i32 %51(ptr noundef %0, i32 noundef 40) #7
  br label %60

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %57 = load ptr, ptr %56, align 16
  %58 = getelementptr i8, ptr %57, i32 40
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %60

60:                                               ; preds = %55, %53
  %61 = phi i32 [ %54, %53 ], [ %59, %55 ]
  %62 = and i32 %61, -7
  %63 = or i32 %62, %45
  %64 = load ptr, ptr %49, align 4
  %65 = getelementptr inbounds %struct.sdhci_ops, ptr %64, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68, !prof !8

68:                                               ; preds = %60
  tail call void %66(ptr noundef %0, i32 noundef %63, i32 noundef 40) #7
  br label %73

69:                                               ; preds = %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %70 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %71 = load ptr, ptr %70, align 16
  %72 = getelementptr i8, ptr %71, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %63) #7, !srcloc !14
  br label %73

73:                                               ; preds = %69, %68
  %74 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  %75 = load i32, ptr %74, align 64
  %76 = load ptr, ptr %49, align 4
  %77 = getelementptr inbounds %struct.sdhci_ops, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80, !prof !8

80:                                               ; preds = %73
  tail call void %78(ptr noundef %0, i32 noundef %75, i32 noundef 52) #7
  br label %85

81:                                               ; preds = %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %82 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %83 = load ptr, ptr %82, align 16
  %84 = getelementptr i8, ptr %83, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %75) #7, !srcloc !14
  br label %85

85:                                               ; preds = %81, %80
  %86 = load i32, ptr %74, align 64
  %87 = load ptr, ptr %49, align 4
  %88 = getelementptr inbounds %struct.sdhci_ops, ptr %87, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91, !prof !8

91:                                               ; preds = %85
  tail call void %89(ptr noundef %0, i32 noundef %86, i32 noundef 56) #7
  br label %96

92:                                               ; preds = %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %93 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %94 = load ptr, ptr %93, align 16
  %95 = getelementptr i8, ptr %94, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %86) #7, !srcloc !14
  br label %96

96:                                               ; preds = %92, %91, %44, %43
  %97 = and i32 %22, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %154, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.sdhci_esdhc, ptr %3, i32 0, i32 1
  %101 = load i8, ptr %100, align 1
  %102 = icmp ugt i8 %101, 1
  br i1 %102, label %103, label %154

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108, !prof !8

108:                                              ; preds = %103
  %109 = tail call i32 %106(ptr noundef %0, i32 noundef 288) #7
  br label %115

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %112 = load ptr, ptr %111, align 16
  %113 = getelementptr i8, ptr %112, i32 288
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %115

115:                                              ; preds = %110, %108
  %116 = phi i32 [ %109, %108 ], [ %114, %110 ]
  %117 = and i32 %116, -5
  %118 = load ptr, ptr %104, align 4
  %119 = getelementptr inbounds %struct.sdhci_ops, ptr %118, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122, !prof !8

122:                                              ; preds = %115
  tail call void %120(ptr noundef %0, i32 noundef %117, i32 noundef 288) #7
  br label %127

123:                                              ; preds = %115
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %124 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %125 = load ptr, ptr %124, align 16
  %126 = getelementptr i8, ptr %125, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %117) #7, !srcloc !14
  br label %127

127:                                              ; preds = %123, %122
  %128 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 6
  %129 = load i8, ptr %128, align 4, !range !20
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %154, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr %104, align 4
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135, !prof !8

135:                                              ; preds = %131
  %136 = tail call i32 %133(ptr noundef %0, i32 noundef 356) #7
  br label %142

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %139 = load ptr, ptr %138, align 16
  %140 = getelementptr i8, ptr %139, i32 356
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %142

142:                                              ; preds = %137, %135
  %143 = phi i32 [ %136, %135 ], [ %141, %137 ]
  %144 = and i32 %143, 2147483647
  %145 = load ptr, ptr %104, align 4
  %146 = getelementptr inbounds %struct.sdhci_ops, ptr %145, i32 0, i32 3
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149, !prof !8

149:                                              ; preds = %142
  tail call void %147(ptr noundef %0, i32 noundef %144, i32 noundef 356) #7
  br label %154

150:                                              ; preds = %142
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %151 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %152 = load ptr, ptr %151, align 16
  %153 = getelementptr i8, ptr %152, i32 356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %144) #7, !srcloc !14
  br label %154

154:                                              ; preds = %150, %149, %127, %99, %96
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_set_uhs_signaling(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %2
  %8 = tail call i32 %5(ptr noundef %0, i32 noundef 288) #7
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr i8, ptr %11, i32 288
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ %8, %7 ], [ %13, %9 ]
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %134, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !8

22:                                               ; preds = %18
  %23 = tail call i32 %20(ptr noundef %0, i32 noundef 328) #7
  br label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 16
  %27 = getelementptr i8, ptr %26, i32 328
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %29

29:                                               ; preds = %24, %22
  %30 = phi i32 [ %23, %22 ], [ %28, %24 ]
  %31 = and i32 %30, -32769
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr inbounds %struct.sdhci_ops, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36, !prof !8

36:                                               ; preds = %29
  tail call void %34(ptr noundef %0, i32 noundef %31, i32 noundef 328) #7
  br label %41

37:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %38 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %39 = load ptr, ptr %38, align 16
  %40 = getelementptr i8, ptr %39, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %31) #7, !srcloc !14
  br label %41

41:                                               ; preds = %37, %36
  %42 = load ptr, ptr %3, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !8

45:                                               ; preds = %41
  %46 = tail call i32 %43(ptr noundef %0, i32 noundef 324) #7
  br label %52

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %49 = load ptr, ptr %48, align 16
  %50 = getelementptr i8, ptr %49, i32 324
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %52

52:                                               ; preds = %47, %45
  %53 = phi i32 [ %46, %45 ], [ %51, %47 ]
  %54 = and i32 %53, -32769
  %55 = load ptr, ptr %3, align 4
  %56 = getelementptr inbounds %struct.sdhci_ops, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59, !prof !8

59:                                               ; preds = %52
  tail call void %57(ptr noundef %0, i32 noundef %54, i32 noundef 324) #7
  br label %64

60:                                               ; preds = %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %61 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %62 = load ptr, ptr %61, align 16
  %63 = getelementptr i8, ptr %62, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %54) #7, !srcloc !14
  br label %64

64:                                               ; preds = %60, %59
  tail call fastcc void @esdhc_clock_enable(ptr noundef %0, i1 noundef zeroext false)
  %65 = load ptr, ptr %3, align 4
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68, !prof !8

68:                                               ; preds = %64
  %69 = tail call i32 %66(ptr noundef %0, i32 noundef 288) #7
  br label %75

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %72 = load ptr, ptr %71, align 16
  %73 = getelementptr i8, ptr %72, i32 288
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %75

75:                                               ; preds = %70, %68
  %76 = phi i32 [ %69, %68 ], [ %74, %70 ]
  %77 = and i32 %76, -17
  %78 = load ptr, ptr %3, align 4
  %79 = getelementptr inbounds %struct.sdhci_ops, ptr %78, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82, !prof !8

82:                                               ; preds = %75
  tail call void %80(ptr noundef %0, i32 noundef %77, i32 noundef 288) #7
  br label %87

83:                                               ; preds = %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %84 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %85 = load ptr, ptr %84, align 16
  %86 = getelementptr i8, ptr %85, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %77) #7, !srcloc !14
  br label %87

87:                                               ; preds = %83, %82
  tail call fastcc void @esdhc_clock_enable(ptr noundef %0, i1 noundef zeroext true)
  %88 = load ptr, ptr %3, align 4
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91, !prof !8

91:                                               ; preds = %87
  %92 = tail call i32 %89(ptr noundef %0, i32 noundef 352) #7
  br label %98

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %95 = load ptr, ptr %94, align 16
  %96 = getelementptr i8, ptr %95, i32 352
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %98

98:                                               ; preds = %93, %91
  %99 = phi i32 [ %92, %91 ], [ %97, %93 ]
  %100 = and i32 %99, 2013265919
  %101 = load ptr, ptr %3, align 4
  %102 = getelementptr inbounds %struct.sdhci_ops, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105, !prof !8

105:                                              ; preds = %98
  tail call void %103(ptr noundef %0, i32 noundef %100, i32 noundef 352) #7
  br label %110

106:                                              ; preds = %98
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %107 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %108 = load ptr, ptr %107, align 16
  %109 = getelementptr i8, ptr %108, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %100) #7, !srcloc !14
  br label %110

110:                                              ; preds = %106, %105
  %111 = load ptr, ptr %3, align 4
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114, !prof !8

114:                                              ; preds = %110
  %115 = tail call i32 %112(ptr noundef %0, i32 noundef 288) #7
  br label %121

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %118 = load ptr, ptr %117, align 16
  %119 = getelementptr i8, ptr %118, i32 288
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %121

121:                                              ; preds = %116, %114
  %122 = phi i32 [ %115, %114 ], [ %120, %116 ]
  %123 = and i32 %122, -65
  %124 = load ptr, ptr %3, align 4
  %125 = getelementptr inbounds %struct.sdhci_ops, ptr %124, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128, !prof !8

128:                                              ; preds = %121
  tail call void %126(ptr noundef %0, i32 noundef %123, i32 noundef 288) #7
  br label %133

129:                                              ; preds = %121
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %130 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %131 = load ptr, ptr %130, align 16
  %132 = getelementptr i8, ptr %131, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %123) #7, !srcloc !14
  br label %133

133:                                              ; preds = %129, %128
  tail call fastcc void @esdhc_tuning_block_enable(ptr noundef %0, i1 noundef zeroext false)
  br label %134

134:                                              ; preds = %133, %14
  %135 = icmp eq i32 %1, 10
  br i1 %135, label %136, label %137

136:                                              ; preds = %134
  tail call fastcc void @esdhc_tuning_block_enable(ptr noundef %0, i1 noundef zeroext true)
  br label %138

137:                                              ; preds = %134
  tail call void @sdhci_set_uhs_signaling(ptr noundef %0, i32 noundef %1) #7
  br label %138

138:                                              ; preds = %137, %136
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_of_adma_workaround(ptr noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 6
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %33

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 19
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 36
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 5
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %10, align 8
  %14 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %17, 524288
  %21 = add i32 %20, %19
  %22 = and i32 %21, -524288
  %23 = sub i32 %22, %17
  store i32 %23, ptr %18, align 4
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sdhci_ops, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !8

29:                                               ; preds = %9
  tail call void %27(ptr noundef %0, i32 noundef %22, i32 noundef 0) #7
  br label %33

30:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %22) #7, !srcloc !14
  br label %33

33:                                               ; preds = %30, %29, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @esdhc_clock_enable(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = icmp ult i8 %4, 19
  %6 = select i1 %5, i32 15, i32 8
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !8

11:                                               ; preds = %2
  %12 = tail call i32 %9(ptr noundef %0, i32 noundef 44) #7
  br label %18

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 16
  %16 = getelementptr i8, ptr %15, i32 44
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %18

18:                                               ; preds = %13, %11
  %19 = phi i32 [ %12, %11 ], [ %17, %13 ]
  %20 = or i32 %19, %6
  %21 = xor i32 %6, -1
  %22 = and i32 %19, %21
  %23 = select i1 %1, i32 %20, i32 %22
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr inbounds %struct.sdhci_ops, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !8

28:                                               ; preds = %18
  tail call void %26(ptr noundef %0, i32 noundef %23, i32 noundef 44) #7
  br label %33

29:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %30 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr i8, ptr %31, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %23) #7, !srcloc !14
  br label %33

33:                                               ; preds = %29, %28
  %34 = tail call i64 @ktime_get() #7
  %35 = add i64 %34, 20000000
  %36 = load i8, ptr %3, align 4
  %37 = icmp ugt i8 %36, 18
  br i1 %37, label %38, label %72

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  br label %40

40:                                               ; preds = %69, %38
  %41 = tail call i64 @ktime_get() #7
  %42 = icmp sgt i64 %41, %35
  %43 = load ptr, ptr %7, align 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !8

46:                                               ; preds = %40
  %47 = tail call i32 %44(ptr noundef %0, i32 noundef 36) #7
  br label %52

48:                                               ; preds = %40
  %49 = load ptr, ptr %39, align 16
  %50 = getelementptr i8, ptr %49, i32 36
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %52

52:                                               ; preds = %48, %46
  %53 = phi i32 [ %47, %46 ], [ %51, %48 ]
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  br i1 %42, label %57, label %69

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.mmc_host, ptr %59, i32 0, i32 1, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.mmc_host, ptr %59, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %57
  %67 = phi ptr [ %65, %63 ], [ %61, %57 ]
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %67) #8
  br label %72

69:                                               ; preds = %56
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %70 = load i8, ptr %3, align 4
  %71 = icmp ugt i8 %70, 18
  br i1 %71, label %40, label %72

72:                                               ; preds = %69, %66, %52, %33
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @esdhc_flush_async_fifo(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = tail call i32 %4(ptr noundef %0, i32 noundef 1036) #7
  br label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr i8, ptr %10, i32 1036
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %13

13:                                               ; preds = %8, %6
  %14 = phi i32 [ %7, %6 ], [ %12, %8 ]
  %15 = or i32 %14, 262144
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.sdhci_ops, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !8

20:                                               ; preds = %13
  tail call void %18(ptr noundef %0, i32 noundef %15, i32 noundef 1036) #7
  br label %25

21:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 16
  %24 = getelementptr i8, ptr %23, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %15) #7, !srcloc !14
  br label %25

25:                                               ; preds = %21, %20
  %26 = tail call i64 @ktime_get() #7
  %27 = add i64 %26, 20000000
  %28 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  br label %29

29:                                               ; preds = %58, %25
  %30 = tail call i64 @ktime_get() #7
  %31 = icmp sgt i64 %30, %27
  %32 = load ptr, ptr %2, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !8

35:                                               ; preds = %29
  %36 = tail call i32 %33(ptr noundef %0, i32 noundef 1036) #7
  br label %41

37:                                               ; preds = %29
  %38 = load ptr, ptr %28, align 16
  %39 = getelementptr i8, ptr %38, i32 1036
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi i32 [ %36, %35 ], [ %40, %37 ]
  %43 = and i32 %42, 262144
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %41
  br i1 %31, label %46, label %58

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.mmc_host, ptr %48, i32 0, i32 1, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.mmc_host, ptr %48, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %46
  %56 = phi ptr [ %54, %52 ], [ %50, %46 ]
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %56) #8
  br label %59

58:                                               ; preds = %45
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  br label %29

59:                                               ; preds = %55, %41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_dma_is_coherent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @esdhc_tuning_block_enable(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  tail call fastcc void @esdhc_clock_enable(ptr noundef %0, i1 noundef zeroext false)
  tail call fastcc void @esdhc_flush_async_fifo(ptr noundef %0)
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %2
  %8 = tail call i32 %5(ptr noundef %0, i32 noundef 288) #7
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr i8, ptr %11, i32 288
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ %8, %7 ], [ %13, %9 ]
  %16 = and i32 %15, -5
  %17 = select i1 %1, i32 4, i32 0
  %18 = or i32 %16, %17
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.sdhci_ops, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !8

23:                                               ; preds = %14
  tail call void %21(ptr noundef %0, i32 noundef %18, i32 noundef 288) #7
  br label %28

24:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %25 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 16
  %27 = getelementptr i8, ptr %26, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %18) #7, !srcloc !14
  br label %28

28:                                               ; preds = %24, %23
  tail call fastcc void @esdhc_clock_enable(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esdhc_be_readl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 68
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  br i1 %3, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %5, i32 276
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %9 = and i32 %8, -117440513
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  br label %35

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %5, i32 %1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !11
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %15 = icmp ne i32 %1, 64
  %16 = and i32 %14, 1048576
  %17 = icmp eq i32 %16, 0
  %18 = or i1 %15, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %21 = load i8, ptr %20, align 4
  %22 = icmp ugt i8 %21, 18
  %23 = or i32 %14, 524288
  %24 = select i1 %22, i32 %23, i32 %14
  br label %35

25:                                               ; preds = %11
  %26 = icmp eq i32 %1, 36
  br i1 %26, label %27, label %35

27:                                               ; preds = %25
  %28 = and i32 %14, 1048575
  %29 = lshr i32 %14, 4
  %30 = and i32 %29, 15728640
  %31 = or i32 %30, %28
  %32 = shl i32 %14, 1
  %33 = and i32 %32, 16777216
  %34 = or i32 %31, %33
  br label %35

35:                                               ; preds = %27, %25, %19, %6
  %36 = phi i32 [ %34, %27 ], [ %10, %6 ], [ %14, %25 ], [ %24, %19 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @esdhc_be_readw(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = and i32 %1, -4
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 %3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %9 = icmp eq i32 %1, 12
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 2
  %12 = load i16, ptr %11, align 8
  br label %26

13:                                               ; preds = %2
  %14 = tail call i32 @llvm.bswap.i32(i32 %7)
  %15 = shl i32 %1, 3
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %1, 254
  %18 = select i1 %17, i32 0, i32 %16
  %19 = lshr i32 %14, %18
  %20 = trunc i32 %19 to i16
  br i1 %17, label %21, label %26

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.sdhci_esdhc, ptr %8, i32 0, i32 2
  %23 = load i8, ptr %22, align 2, !range !20
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i16 %20, i16 4865
  br label %26

26:                                               ; preds = %21, %13, %10
  %27 = phi i16 [ %12, %10 ], [ %20, %13 ], [ %25, %21 ]
  ret i16 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @esdhc_be_readb(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = and i32 %1, -4
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 %3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !11
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %9 = shl i32 %1, 3
  %10 = and i32 %9, 24
  %11 = lshr i32 %8, %10
  %12 = icmp eq i32 %1, 40
  %13 = lshr i32 %8, 5
  %14 = and i32 %13, 24
  %15 = and i32 %11, 231
  %16 = or i32 %15, %14
  %17 = select i1 %12, i32 %16, i32 %11
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_be_writel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 52
  %5 = or i32 %1, 4
  %6 = select i1 %4, i32 %5, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr i8, ptr %9, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #7, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_be_writew(ptr nocapture noundef %0, i16 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %5 = and i32 %2, -4
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr i8, ptr %7, i32 %5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !11
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !28
  switch i32 %2, label %20 [
    i32 12, label %11
    i32 14, label %13
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 2
  store i16 %1, ptr %12, align 8
  br label %37

13:                                               ; preds = %3
  %14 = zext i16 %1 to i32
  %15 = shl nuw i32 %14, 16
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 2
  %17 = load i16, ptr %16, align 8
  %18 = zext i16 %17 to i32
  %19 = or i32 %15, %18
  br label %32

20:                                               ; preds = %3
  %21 = shl i32 %2, 3
  %22 = and i32 %21, 16
  %23 = shl nuw i32 65535, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %10, %24
  %26 = zext i16 %1 to i32
  %27 = shl nuw i32 %26, %22
  %28 = or i32 %25, %27
  %29 = icmp eq i32 %2, 4
  %30 = and i32 %28, -28673
  %31 = select i1 %29, i32 %30, i32 %28
  br label %32

32:                                               ; preds = %20, %13
  %33 = phi i32 [ %19, %13 ], [ %31, %20 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = load ptr, ptr %6, align 16
  %36 = getelementptr i8, ptr %35, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #7, !srcloc !14
  br label %37

37:                                               ; preds = %32, %11
  %38 = phi i32 [ %10, %11 ], [ %33, %32 ]
  %39 = icmp ne i32 %5, 60
  %40 = and i32 %10, 4194304
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 true, i1 %41
  %43 = and i32 %38, 4194304
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.sdhci_esdhc, ptr %4, i32 0, i32 10
  %48 = load i8, ptr %47, align 2, !range !20
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #7
  %52 = or i32 %38, 8388608
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = load ptr, ptr %6, align 16
  %55 = getelementptr i8, ptr %54, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #7, !srcloc !14
  br label %56

56:                                               ; preds = %50, %46, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_be_writeb(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = and i32 %2, -4
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 %4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !11
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  switch i32 %2, label %25 [
    i32 41, label %34
    i32 40, label %10
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = zext i8 %1 to i32
  %17 = shl nuw nsw i32 %16, 5
  %18 = and i32 %17, 768
  %19 = and i32 %9, -1024
  %20 = and i32 %16, 230
  %21 = and i32 %9, 24
  %22 = or i32 %18, %20
  %23 = or i32 %22, %21
  %24 = or i32 %23, %19
  br label %34

25:                                               ; preds = %3
  %26 = shl i32 %2, 3
  %27 = and i32 %26, 24
  %28 = shl nuw i32 255, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %9, %29
  %31 = zext i8 %1 to i32
  %32 = shl nuw i32 %31, %27
  %33 = or i32 %30, %32
  br label %34

34:                                               ; preds = %25, %15, %10, %3
  %35 = phi i32 [ %24, %15 ], [ %33, %25 ], [ %9, %3 ], [ %9, %10 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = load ptr, ptr %5, align 16
  %38 = getelementptr i8, ptr %37, i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #7, !srcloc !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_execute_tuning(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @esdhc_tuning_window_ptr(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !8

8:                                                ; preds = %3
  %9 = tail call i32 %6(ptr noundef %0, i32 noundef 288) #7
  br label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr i8, ptr %12, i32 288
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ %9, %8 ], [ %14, %10 ]
  %17 = and i32 %16, -3841
  %18 = or i32 %17, 2048
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.sdhci_ops, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !8

23:                                               ; preds = %15
  tail call void %21(ptr noundef %0, i32 noundef %18, i32 noundef 288) #7
  br label %28

24:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %25 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 16
  %27 = getelementptr i8, ptr %26, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %18) #7, !srcloc !14
  br label %28

28:                                               ; preds = %24, %23
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #7
  %30 = load ptr, ptr %4, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !8

33:                                               ; preds = %28
  %34 = tail call i32 %31(ptr noundef %0, i32 noundef 288) #7
  br label %40

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %37 = load ptr, ptr %36, align 16
  %38 = getelementptr i8, ptr %37, i32 288
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi i32 [ %34, %33 ], [ %39, %35 ]
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr inbounds %struct.sdhci_ops, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46, !prof !8

46:                                               ; preds = %40
  tail call void %44(ptr noundef %0, i32 noundef %41, i32 noundef 288) #7
  br label %51

47:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %48 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %49 = load ptr, ptr %48, align 16
  %50 = getelementptr i8, ptr %49, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %41) #7, !srcloc !14
  br label %51

51:                                               ; preds = %47, %46
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #7
  %53 = load ptr, ptr %4, align 4
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56, !prof !8

56:                                               ; preds = %51
  %57 = tail call i32 %54(ptr noundef %0, i32 noundef 292) #7
  br label %63

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %60 = load ptr, ptr %59, align 16
  %61 = getelementptr i8, ptr %60, i32 292
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %63

63:                                               ; preds = %58, %56
  %64 = load ptr, ptr %4, align 4
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67, !prof !8

67:                                               ; preds = %63
  %68 = tail call i32 %65(ptr noundef %0, i32 noundef 292) #7
  br label %74

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %71 = load ptr, ptr %70, align 16
  %72 = getelementptr i8, ptr %71, i32 292
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %74

74:                                               ; preds = %69, %67
  %75 = phi i32 [ %68, %67 ], [ %73, %69 ]
  %76 = trunc i32 %75 to i8
  store i8 %76, ptr %2, align 1
  %77 = lshr i32 %75, 8
  %78 = trunc i32 %77 to i8
  store i8 %78, ptr %1, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esdhc_of_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !8

8:                                                ; preds = %1
  %9 = tail call i32 %6(ptr noundef %3, i32 noundef 40) #7
  br label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr i8, ptr %12, i32 40
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ %9, %8 ], [ %14, %10 ]
  store i32 %16, ptr @esdhc_proctl, align 4
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 73
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.mmc_host, ptr %22, i32 0, i32 29
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 8
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.mmc_host, ptr %22, i32 0, i32 32
  store i32 1, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %20, %15
  %30 = tail call i32 @sdhci_suspend_host(ptr noundef %3) #7
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esdhc_of_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @sdhci_resume_host(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = tail call i32 @esdhc_of_enable_dma(ptr noundef %3)
  %8 = load i32, ptr @esdhc_proctl, align 4
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sdhci_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !8

14:                                               ; preds = %6
  tail call void %12(ptr noundef %3, i32 noundef %8, i32 noundef 40) #7
  br label %19

15:                                               ; preds = %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 4
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %8) #7, !srcloc !14
  br label %19

19:                                               ; preds = %15, %14, %1
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i64 400107}
!10 = !{i64 2153483056}
!11 = !{i64 400945}
!12 = !{i64 2153482505}
!13 = !{i64 2153480836}
!14 = !{i64 400527}
!15 = !{i64 2153500059}
!16 = !{i64 2153501740}
!17 = !{!"auto-init"}
!18 = !{i64 2153481898}
!19 = !{i64 400330}
!20 = !{i8 0, i8 2}
!21 = !{i64 2148612545}
!22 = !{i64 2148613767}
!23 = !{i64 2153488101}
!24 = !{i64 2153488498}
!25 = !{i64 2153488927}
!26 = !{i64 2153489336}
!27 = !{i64 2153489560}
!28 = !{i64 2153490084}
!29 = !{i64 2153490303}
!30 = !{i64 2153491201}
!31 = !{i64 2153492319}
!32 = !{i64 2153492533}
