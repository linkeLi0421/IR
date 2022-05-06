; ModuleID = '/llk/IR/drivers/mmc/host/sdhci-esdhc-imx.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-esdhc-imx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.esdhc_soc_data = type { i32 }
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [56 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr }
%struct.pltfm_imx_data = type { i32, ptr, ptr, ptr, ptr, %struct.esdhc_platform_data, ptr, ptr, ptr, i32, i32, i32, %struct.pm_qos_request }
%struct.esdhc_platform_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }

@__initcall__kmod_sdhci_esdhc_imx__286_1924_sdhci_esdhc_imx_driver_init6 = internal global ptr @sdhci_esdhc_imx_driver_init, section ".initcall6.init", align 4
@sdhci_esdhc_imx_driver = internal global %struct.platform_driver { ptr @sdhci_esdhc_imx_probe, ptr @sdhci_esdhc_imx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @imx_esdhc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_esdhc_pmops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sdhci_esdhc_imx_driver_exit = internal global ptr @sdhci_esdhc_imx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description287 = internal constant [66 x i8] c"sdhci_esdhc_imx.description=SDHCI driver for Freescale i.MX eSDHC\00", section ".modinfo", align 1
@__UNIQUE_ID_author288 = internal constant [60 x i8] c"sdhci_esdhc_imx.author=Wolfram Sang <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file289 = internal constant [54 x i8] c"sdhci_esdhc_imx.file=drivers/mmc/host/sdhci-esdhc-imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [31 x i8] c"sdhci_esdhc_imx.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"sdhci-esdhc-imx\00", align 1
@imx_esdhc_dt_ids = internal constant [16 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @esdhc_imx25_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx35-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @esdhc_imx35_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx51-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @esdhc_imx51_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @esdhc_imx53_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx6sx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sl-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx6sl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sll-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx6sll_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx6q_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ull-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx6ull_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx7d_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx7ulp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qxp-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx8qxp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mm-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx8mm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imxrt1050-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imxrt1050_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,s32g2-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_s32g2_data }, %struct.of_device_id zeroinitializer], align 4
@sdhci_esdhc_pmops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_esdhc_suspend, ptr @sdhci_esdhc_resume, ptr @sdhci_esdhc_suspend, ptr @sdhci_esdhc_resume, ptr @sdhci_esdhc_suspend, ptr @sdhci_esdhc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_esdhc_runtime_suspend, ptr @sdhci_esdhc_runtime_resume, ptr null }, align 4
@sdhci_esdhc_imx_pdata = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_esdhc_ops, i32 1695858816, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"per\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"could not get pinctrl\0A\00", align 1
@sdhci_esdhc_ops = internal global %struct.sdhci_ops { ptr @esdhc_readl_le, ptr @esdhc_readw_le, ptr @esdhc_readb_le, ptr @esdhc_writel_le, ptr @esdhc_writew_le, ptr @esdhc_writeb_le, ptr @esdhc_pltfm_set_clock, ptr null, ptr @esdhc_cqhci_irq, ptr null, ptr null, ptr @esdhc_pltfm_get_max_clock, ptr @esdhc_pltfm_get_min_clock, ptr null, ptr @esdhc_get_max_timeout_count, ptr @esdhc_set_timeout, ptr @esdhc_pltfm_set_bus_width, ptr null, ptr @esdhc_pltfm_get_ro, ptr @esdhc_reset, ptr null, ptr @esdhc_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @esdhc_dump_debug_regs }, align 4
@esdhc_cqhci_ops = internal constant %struct.cqhci_host_ops { ptr @esdhc_sdhci_dumpregs, ptr null, ptr null, ptr @esdhc_cqe_enable, ptr @sdhci_cqe_disable, ptr null, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = private unnamed_addr constant [65 x i8] c"warning! RESET_ALL never complete before sending tuning command\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"%s: card clock still not gate off in 100us!.\0A\00", align 1
@__func__.esdhc_wait_for_card_clock_gate_off = private unnamed_addr constant [35 x i8] c"esdhc_wait_for_card_clock_gate_off\00", align 1
@esdhc_imx25_data = internal constant %struct.esdhc_soc_data { i32 128 }, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"card clock still not stable in 100us!.\0A\00", align 1
@esdhc_imx53_data = internal constant %struct.esdhc_soc_data { i32 2 }, align 4
@.str.8 = private unnamed_addr constant [85 x i8] c"warning! HS400 strobe DLL status REF/SLV not lock in 50us, STROBE DLL status is %x!\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Warning! clear execute tuning bit failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"cmd debug status\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"data debug status\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"trans debug status\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"dma debug status\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"adma debug status\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"fifo debug status\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"async fifo debug status\00", align 1
@__const.esdhc_dump_debug_regs.debug_status = private unnamed_addr constant [7 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 4
@.str.17 = private unnamed_addr constant [72 x i8] c"\013%s: sdhci-esdhc-imx: ========= ESDHC IMX DEBUG STATUS DUMP =========\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"\013%s: sdhci-esdhc-imx: %s:  0x%04x\0A\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"CQE may get stuck because the Buffer Read Enable bit is set\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"failed to exit halt state when enable CQE\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"fsl,wp-controller\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"wp-gpios\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"fsl,tuning-step\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"fsl,tuning-start-tap\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"fsl,strobe-dll-delay-target\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"no-1-8-v\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"fsl,delay-line\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"state_100mhz\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"state_200mhz\00", align 1
@esdhc_imx35_data = internal constant %struct.esdhc_soc_data { i32 128 }, align 4
@esdhc_imx51_data = internal constant %struct.esdhc_soc_data zeroinitializer, align 4
@usdhc_imx6sx_data = internal constant %struct.esdhc_soc_data { i32 82280 }, align 4
@usdhc_imx6sl_data = internal constant %struct.esdhc_soc_data { i32 66024 }, align 4
@usdhc_imx6sll_data = internal constant %struct.esdhc_soc_data { i32 17256 }, align 4
@usdhc_imx6q_data = internal constant %struct.esdhc_soc_data { i32 65560 }, align 4
@usdhc_imx6ull_data = internal constant %struct.esdhc_soc_data { i32 17768 }, align 4
@usdhc_imx7d_data = internal constant %struct.esdhc_soc_data { i32 82792 }, align 4
@usdhc_imx7ulp_data = internal global %struct.esdhc_soc_data { i32 25448 }, align 4
@usdhc_imx8qxp_data = internal global %struct.esdhc_soc_data { i32 52072 }, align 4
@usdhc_imx8mm_data = internal global %struct.esdhc_soc_data { i32 19304 }, align 4
@usdhc_imxrt1050_data = internal global %struct.esdhc_soc_data { i32 392 }, align 4
@usdhc_s32g2_data = internal global %struct.esdhc_soc_data { i32 133976 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description287, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_sdhci_esdhc_imx_driver_exit, ptr @__initcall__kmod_sdhci_esdhc_imx__286_1924_sdhci_esdhc_imx_driver_init6, ptr @sdhci_esdhc_imx_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_imx_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_esdhc_imx_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sdhci_esdhc_imx_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_esdhc_imx_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_imx_probe(ptr noundef %0) #2 {
  %2 = tail call ptr @sdhci_pltfm_init(ptr noundef %0, ptr noundef nonnull @sdhci_esdhc_imx_pdata, i32 noundef 96) #9
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %211

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 81
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 1, i32 11, i32 5
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %10 = tail call ptr @device_get_match_data(ptr noundef %9) #9
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 1, i32 11, i32 9
  store ptr %10, ptr %11, align 4
  %12 = load i32, ptr %10, align 4
  %13 = and i32 %12, 8192
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 1, i32 11, i32 23
  tail call void @cpu_latency_qos_add_request(ptr noundef %16, i32 noundef 0) #9
  br label %17

17:                                               ; preds = %15, %6
  %18 = tail call ptr @devm_clk_get(ptr noundef %9, ptr noundef nonnull @.str.1) #9
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 1, i32 11, i32 17
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = ptrtoint ptr %18 to i32
  br label %202

23:                                               ; preds = %17
  %24 = tail call ptr @devm_clk_get(ptr noundef %9, ptr noundef nonnull @.str.2) #9
  %25 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 1, i32 11, i32 18
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = ptrtoint ptr %24 to i32
  br label %202

29:                                               ; preds = %23
  %30 = tail call ptr @devm_clk_get(ptr noundef %9, ptr noundef nonnull @.str.3) #9
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 1, i32 11, i32 19
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = ptrtoint ptr %30 to i32
  br label %202

35:                                               ; preds = %29
  store ptr %30, ptr %7, align 64
  %36 = tail call i32 @clk_get_rate(ptr noundef %30) #9
  %37 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 1, i32 1
  store i32 %36, ptr %37, align 4
  %38 = load ptr, ptr %31, align 4
  %39 = tail call i32 @clk_prepare(ptr noundef %38) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %202

41:                                               ; preds = %35
  %42 = tail call i32 @clk_enable(ptr noundef %38) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @clk_unprepare(ptr noundef %38) #9
  br label %202

45:                                               ; preds = %41
  %46 = load ptr, ptr %19, align 4
  %47 = tail call i32 @clk_prepare(ptr noundef %46) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %199

49:                                               ; preds = %45
  %50 = tail call i32 @clk_enable(ptr noundef %46) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %196

52:                                               ; preds = %49
  %53 = load ptr, ptr %25, align 4
  %54 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %193

56:                                               ; preds = %52
  %57 = tail call ptr @devm_pinctrl_get(ptr noundef %9) #9
  %58 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 1, i32 11, i32 6
  store ptr %57, ptr %58, align 4
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 10
  %62 = load ptr, ptr %61, align 8
  %63 = load ptr, ptr %62, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.4) #10
  br label %64

64:                                               ; preds = %60, %56
  %65 = load ptr, ptr %11, align 4
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %100, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = or i32 %71, 8
  store i32 %72, ptr %70, align 8
  %73 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 10
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 16
  %76 = load i32, ptr %75, align 8
  %77 = or i32 %76, 6144
  store i32 %77, ptr %75, align 8
  %78 = load ptr, ptr %73, align 8
  %79 = getelementptr inbounds %struct.mmc_host, ptr %78, i32 0, i32 16
  %80 = load i32, ptr %79, align 8
  %81 = or i32 %80, 268435456
  store i32 %81, ptr %79, align 8
  %82 = load ptr, ptr %11, align 4
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 256
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %69
  %87 = load i32, ptr %70, align 8
  %88 = or i32 %87, 64
  store i32 %88, ptr %70, align 8
  br label %89

89:                                               ; preds = %86, %69
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %90 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 4
  %91 = load ptr, ptr %90, align 16
  %92 = getelementptr i8, ptr %91, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %93 = load ptr, ptr %90, align 16
  %94 = getelementptr i8, ptr %93, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %95 = load ptr, ptr %90, align 16
  %96 = getelementptr i8, ptr %95, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 0) #9, !srcloc !9
  %97 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 11, i32 12
  store ptr @usdhc_execute_tuning, ptr %97, align 4
  %98 = load ptr, ptr %11, align 4
  %99 = load i32, ptr %98, align 4
  br label %100

100:                                              ; preds = %89, %64
  %101 = phi i32 [ %99, %89 ], [ %66, %64 ]
  %102 = phi ptr [ %98, %89 ], [ %65, %64 ]
  %103 = and i32 %101, 16
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  store ptr @esdhc_executing_tuning, ptr getelementptr inbounds (%struct.sdhci_ops, ptr @sdhci_esdhc_ops, i32 0, i32 20), align 4
  %106 = load i32, ptr %102, align 4
  br label %107

107:                                              ; preds = %105, %100
  %108 = phi i32 [ %106, %105 ], [ %101, %100 ]
  %109 = and i32 %108, 128
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = or i32 %113, 64
  store i32 %114, ptr %112, align 4
  %115 = load i32, ptr %102, align 4
  br label %116

116:                                              ; preds = %111, %107
  %117 = phi i32 [ %115, %111 ], [ %108, %107 ]
  %118 = and i32 %117, 512
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 10
  %122 = load ptr, ptr %121, align 8
  %123 = getelementptr inbounds %struct.mmc_host, ptr %122, i32 0, i32 17
  %124 = load i32, ptr %123, align 4
  %125 = or i32 %124, 98304
  store i32 %125, ptr %123, align 4
  %126 = load ptr, ptr %11, align 4
  %127 = load i32, ptr %126, align 4
  br label %128

128:                                              ; preds = %120, %116
  %129 = phi i32 [ %127, %120 ], [ %117, %116 ]
  %130 = phi ptr [ %126, %120 ], [ %102, %116 ]
  %131 = and i32 %129, 65536
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 2
  %135 = load i32, ptr %134, align 8
  %136 = or i32 %135, 16384
  store i32 %136, ptr %134, align 8
  %137 = load i32, ptr %130, align 4
  br label %138

138:                                              ; preds = %133, %128
  %139 = phi i32 [ %137, %133 ], [ %129, %128 ]
  %140 = and i32 %139, 2048
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 10
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.mmc_host, ptr %144, i32 0, i32 17
  %146 = load i32, ptr %145, align 4
  %147 = or i32 %146, 1048576
  store i32 %147, ptr %145, align 4
  %148 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 11, i32 18
  store ptr @esdhc_hs400_enhanced_strobe, ptr %148, align 4
  %149 = load ptr, ptr %11, align 4
  %150 = load i32, ptr %149, align 4
  br label %151

151:                                              ; preds = %142, %138
  %152 = phi i32 [ %150, %142 ], [ %139, %138 ]
  %153 = and i32 %152, 4096
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %171, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 10
  %157 = load ptr, ptr %156, align 8
  %158 = getelementptr inbounds %struct.mmc_host, ptr %157, i32 0, i32 17
  %159 = load i32, ptr %158, align 4
  %160 = or i32 %159, 25165824
  store i32 %160, ptr %158, align 4
  %161 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 116, i32 noundef 3520) #9
  %162 = icmp eq ptr %161, null
  br i1 %162, label %190, label %163

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 4
  %165 = load ptr, ptr %164, align 16
  %166 = getelementptr i8, ptr %165, i32 256
  %167 = getelementptr inbounds %struct.cqhci_host, ptr %161, i32 0, i32 1
  store ptr %166, ptr %167, align 4
  store ptr @esdhc_cqhci_ops, ptr %161, align 4
  %168 = load ptr, ptr %156, align 8
  %169 = tail call i32 @cqhci_init(ptr noundef nonnull %161, ptr noundef %168, i1 noundef zeroext false) #9
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %190

171:                                              ; preds = %163, %151
  %172 = tail call fastcc i32 @sdhci_esdhc_imx_probe_dt(ptr noundef %0, ptr noundef %2, ptr noundef %8)
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %190

174:                                              ; preds = %171
  tail call fastcc void @sdhci_esdhc_imx_hwinit(ptr noundef %2)
  %175 = tail call i32 @sdhci_add_host(ptr noundef %2) #9
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 10
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.mmc_host, ptr %179, i32 0, i32 19
  %181 = load i32, ptr %180, align 4
  %182 = and i32 %181, 3
  %183 = icmp eq i32 %182, 3
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  tail call void @device_set_wakeup_capable(ptr noundef %9, i1 noundef zeroext true) #9
  br label %185

185:                                              ; preds = %184, %177
  %186 = tail call i32 @__pm_runtime_set_status(ptr noundef %9, i32 noundef 0) #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %9, i32 noundef 50) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %9, i1 noundef zeroext true) #9
  %187 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %188 = load i16, ptr %187, align 8
  %189 = or i16 %188, 256
  store i16 %189, ptr %187, align 8
  tail call void @pm_runtime_enable(ptr noundef %9) #9
  br label %211

190:                                              ; preds = %174, %171, %163, %155
  %191 = phi i32 [ %169, %163 ], [ %172, %171 ], [ %175, %174 ], [ -12, %155 ]
  %192 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %192) #9
  tail call void @clk_unprepare(ptr noundef %192) #9
  br label %193

193:                                              ; preds = %190, %52
  %194 = phi i32 [ %54, %52 ], [ %191, %190 ]
  %195 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %195) #9
  br label %196

196:                                              ; preds = %193, %49
  %197 = phi ptr [ %195, %193 ], [ %46, %49 ]
  %198 = phi i32 [ %194, %193 ], [ %50, %49 ]
  tail call void @clk_unprepare(ptr noundef %197) #9
  br label %199

199:                                              ; preds = %196, %45
  %200 = phi i32 [ %47, %45 ], [ %198, %196 ]
  %201 = load ptr, ptr %31, align 4
  tail call void @clk_disable(ptr noundef %201) #9
  tail call void @clk_unprepare(ptr noundef %201) #9
  br label %202

202:                                              ; preds = %199, %44, %35, %33, %27, %21
  %203 = phi i32 [ %22, %21 ], [ %28, %27 ], [ %34, %33 ], [ %200, %199 ], [ %42, %44 ], [ %39, %35 ]
  %204 = load ptr, ptr %11, align 4
  %205 = load i32, ptr %204, align 4
  %206 = and i32 %205, 8192
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 1, i32 11, i32 23
  tail call void @cpu_latency_qos_remove_request(ptr noundef %209) #9
  br label %210

210:                                              ; preds = %208, %202
  tail call void @sdhci_pltfm_free(ptr noundef %0) #9
  br label %211

211:                                              ; preds = %210, %185, %4
  %212 = phi i32 [ %5, %4 ], [ %203, %210 ], [ 0, %185 ]
  ret i32 %212
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_imx_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #9
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr i8, ptr %7, i32 48
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %10 = icmp eq i32 %9, -1
  %11 = zext i1 %10 to i32
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #9
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #9, !srcloc !15
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #9, !srcloc !16
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  br label %17

17:                                               ; preds = %16, %1
  tail call void @sdhci_remove_host(ptr noundef %3, i32 noundef %11) #9
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 19
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %19) #9
  tail call void @clk_unprepare(ptr noundef %19) #9
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 17
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #9
  tail call void @clk_unprepare(ptr noundef %21) #9
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 18
  %23 = load ptr, ptr %22, align 4
  tail call void @clk_disable(ptr noundef %23) #9
  tail call void @clk_unprepare(ptr noundef %23) #9
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 8192
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 23
  tail call void @cpu_latency_qos_remove_request(ptr noundef %30) #9
  br label %31

31:                                               ; preds = %29, %17
  tail call void @sdhci_pltfm_free(ptr noundef %0) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #9
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usdhc_execute_tuning(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 35, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @sdhci_execute_tuning(ptr noundef %0, i32 noundef %1) #9
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esdhc_executing_tuning(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  br label %4

4:                                                ; preds = %9, %2
  %5 = phi i32 [ 0, %2 ], [ %10, %9 ]
  tail call fastcc void @esdhc_prepare_tuning(ptr noundef %0, i32 noundef %5)
  %6 = load ptr, ptr %3, align 8
  %7 = tail call i32 @mmc_send_tuning(ptr noundef %6, i32 noundef %1, ptr noundef null) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = add nuw nsw i32 %5, 1
  %11 = icmp eq i32 %10, 127
  br i1 %11, label %12, label %4

12:                                               ; preds = %9, %4
  %13 = phi i32 [ %5, %4 ], [ 127, %9 ]
  br label %14

14:                                               ; preds = %18, %12
  %15 = phi i32 [ %13, %12 ], [ %16, %18 ]
  %16 = add nuw nsw i32 %15, 1
  %17 = icmp ult i32 %15, 126
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  tail call fastcc void @esdhc_prepare_tuning(ptr noundef %0, i32 noundef %16)
  %19 = load ptr, ptr %3, align 8
  %20 = tail call i32 @mmc_send_tuning(ptr noundef %19, i32 noundef %1, ptr noundef null) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %14, label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %16, %14 ], [ %15, %18 ]
  %24 = add i32 %23, %13
  %25 = sdiv i32 %24, 2
  tail call fastcc void @esdhc_prepare_tuning(ptr noundef %0, i32 noundef %25)
  %26 = load ptr, ptr %3, align 8
  %27 = tail call i32 @mmc_send_tuning(ptr noundef %26, i32 noundef %1, ptr noundef null) #9
  %28 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %29 = load ptr, ptr %28, align 16
  %30 = getelementptr i8, ptr %29, i32 40
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !18
  %32 = and i32 %31, 6
  %33 = icmp eq i32 %32, 2
  %34 = select i1 %33, i32 64, i32 96
  %35 = icmp eq i32 %32, 4
  %36 = select i1 %35, i32 80, i32 %34
  %37 = load ptr, ptr %28, align 16
  %38 = getelementptr i8, ptr %37, i32 200
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %40 = and i32 %39, -113
  %41 = or i32 %40, %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %41) #9, !srcloc !9
  %42 = load ptr, ptr %28, align 16
  %43 = getelementptr i8, ptr %42, i32 72
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  %45 = and i32 %44, -20971521
  %46 = or i32 %45, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %47 = load ptr, ptr %28, align 16
  %48 = getelementptr i8, ptr %47, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #9, !srcloc !9
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_hs400_enhanced_strobe(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 72
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %7 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 10
  %8 = load i8, ptr %7, align 1, !range !24
  %9 = icmp eq i8 %8, 0
  %10 = and i32 %6, -134217729
  %11 = select i1 %9, i32 0, i32 134217728
  %12 = or i32 %11, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %13 = load ptr, ptr %3, align 16
  %14 = getelementptr i8, ptr %13, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_esdhc_imx_probe_dt(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pltfm_imx_data, ptr %2, i32 0, i32 5
  %7 = tail call ptr @of_get_property(ptr noundef %5, ptr noundef nonnull @.str.21, ptr noundef null) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  store i32 1, ptr %6, align 4
  br label %10

10:                                               ; preds = %9, %3
  %11 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.22, ptr noundef null) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i32 2, ptr %6, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = getelementptr inbounds %struct.pltfm_imx_data, ptr %2, i32 0, i32 5, i32 4
  %16 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.23, ptr noundef %15, i32 noundef 1, i32 noundef 0) #9
  %17 = getelementptr inbounds %struct.pltfm_imx_data, ptr %2, i32 0, i32 5, i32 5
  %18 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.24, ptr noundef %17, i32 noundef 1, i32 noundef 0) #9
  %19 = getelementptr inbounds %struct.pltfm_imx_data, ptr %2, i32 0, i32 5, i32 6
  %20 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.25, ptr noundef %19, i32 noundef 1, i32 noundef 0) #9
  %21 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.26, ptr noundef null) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = or i32 %25, 4
  store i32 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %23, %14
  %28 = getelementptr inbounds %struct.pltfm_imx_data, ptr %2, i32 0, i32 5, i32 3
  %29 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.27, ptr noundef %28, i32 noundef 1, i32 noundef 0) #9
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, ptr %28, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 63
  %36 = tail call i32 @mmc_of_parse_voltage(ptr noundef %34, ptr noundef %35) #9
  %37 = getelementptr inbounds %struct.pltfm_imx_data, ptr %2, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.pltfm_imx_data, ptr %2, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = tail call ptr @pinctrl_lookup_state(ptr noundef %44, ptr noundef nonnull @.str.28) #9
  %48 = getelementptr inbounds %struct.pltfm_imx_data, ptr %2, i32 0, i32 2
  store ptr %47, ptr %48, align 4
  %49 = load ptr, ptr %43, align 4
  %50 = tail call ptr @pinctrl_lookup_state(ptr noundef %49, ptr noundef nonnull @.str.29) #9
  %51 = getelementptr inbounds %struct.pltfm_imx_data, ptr %2, i32 0, i32 3
  store ptr %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %46, %42, %32
  %53 = load ptr, ptr %33, align 8
  %54 = tail call i32 @mmc_of_parse(ptr noundef %53) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load ptr, ptr %33, align 8
  %58 = tail call i32 @mmc_gpio_get_cd(ptr noundef %57) #9
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, -32769
  store i32 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %60, %56, %52
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdhci_esdhc_imx_hwinit(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 62
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %121, label %11

11:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr i8, ptr %13, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 272633920) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  %15 = load ptr, ptr %12, align 16
  %16 = getelementptr i8, ptr %15, i32 40
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !28
  %18 = or i32 %17, 134217728
  %19 = load ptr, ptr %12, align 16
  %20 = getelementptr i8, ptr %19, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !9
  %21 = load ptr, ptr %6, align 4
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 131072
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !29
  tail call void @arm_heavy_mb() #9
  %26 = load ptr, ptr %12, align 16
  %27 = getelementptr i8, ptr %26, i32 108
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !30
  %29 = and i32 %28, -129
  %30 = load ptr, ptr %12, align 16
  %31 = getelementptr i8, ptr %30, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #9, !srcloc !9
  br label %32

32:                                               ; preds = %25, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !31
  tail call void @arm_heavy_mb() #9
  %33 = load ptr, ptr %12, align 16
  %34 = getelementptr i8, ptr %33, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #9, !srcloc !9
  %35 = load ptr, ptr %6, align 4
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 4096
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr %12, align 16
  %41 = getelementptr i8, ptr %40, i32 200
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !32
  %43 = or i32 %42, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %44 = load ptr, ptr %12, align 16
  %45 = getelementptr i8, ptr %44, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #9, !srcloc !9
  %46 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, -16385
  store i32 %48, ptr %46, align 4
  %49 = load ptr, ptr %6, align 4
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %39, %32
  %52 = phi i32 [ %50, %39 ], [ %36, %32 ]
  %53 = and i32 %52, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %12, align 16
  %57 = getelementptr i8, ptr %56, i32 204
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !34
  %59 = or i32 %58, 16777217
  %60 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 15
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  %63 = and i32 %59, -128
  %64 = or i32 %63, %61
  %65 = select i1 %62, i32 %59, i32 %64
  %66 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 14
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  %69 = and i32 %65, -458881
  %70 = shl i32 %67, 16
  %71 = or i32 %69, %70
  %72 = select i1 %68, i32 %65, i32 %71
  %73 = or i32 %72, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !35
  tail call void @arm_heavy_mb() #9
  %74 = load ptr, ptr %12, align 16
  %75 = getelementptr i8, ptr %74, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #9, !srcloc !9
  br label %86

76:                                               ; preds = %51
  %77 = and i32 %52, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %12, align 16
  %81 = getelementptr i8, ptr %80, i32 204
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !36
  %83 = and i32 %82, -16777217
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  %84 = load ptr, ptr %12, align 16
  %85 = getelementptr i8, ptr %84, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #9, !srcloc !9
  br label %86

86:                                               ; preds = %79, %76, %55
  %87 = icmp eq ptr %5, null
  br i1 %87, label %121, label %88

88:                                               ; preds = %86
  %89 = load ptr, ptr %5, align 4
  %90 = getelementptr inbounds %struct.cqhci_host_ops, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93, !prof !38

93:                                               ; preds = %88
  %94 = tail call i32 %91(ptr noundef nonnull %5, i32 noundef 16) #9
  br label %100

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr i8, ptr %97, i32 16
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #9, !srcloc !12
  br label %100

100:                                              ; preds = %95, %93
  %101 = phi i32 [ %94, %93 ], [ %99, %95 ]
  %102 = load ptr, ptr %5, align 4
  %103 = getelementptr inbounds %struct.cqhci_host_ops, ptr %102, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106, !prof !38

106:                                              ; preds = %100
  tail call void %104(ptr noundef nonnull %5, i32 noundef %101, i32 noundef 16) #9
  br label %111

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr i8, ptr %109, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %101) #9, !srcloc !9
  br label %111

111:                                              ; preds = %107, %106
  %112 = load ptr, ptr %5, align 4
  %113 = getelementptr inbounds %struct.cqhci_host_ops, ptr %112, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116, !prof !38

116:                                              ; preds = %111
  tail call void %114(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 12) #9
  br label %121

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr i8, ptr %119, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 1) #9, !srcloc !9
  br label %121

121:                                              ; preds = %117, %116, %86, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @sdhci_execute_tuning(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @esdhc_prepare_tuning(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #9
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %8 = and i32 %7, 16777215
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %9) #9, !srcloc !9
  %10 = tail call i64 @ktime_get() #9
  %11 = add i64 %10, 100000
  %12 = load ptr, ptr %4, align 16
  %13 = getelementptr i8, ptr %12, i32 47
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #9, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !40
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %20, %2
  %18 = tail call i64 @ktime_get() #9
  %19 = icmp sgt i64 %18, %11
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %21 = load ptr, ptr %4, align 16
  %22 = getelementptr i8, ptr %21, i32 47
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #9, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !40
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %36, label %17

26:                                               ; preds = %17
  %27 = load ptr, ptr %4, align 16
  %28 = getelementptr i8, ptr %27, i32 47
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %28) #9, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !41
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %34, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.5) #10
  br label %36

36:                                               ; preds = %32, %26, %20, %2
  %37 = load ptr, ptr %4, align 16
  %38 = getelementptr i8, ptr %37, i32 72
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !42
  %40 = or i32 %39, 46137344
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !43
  tail call void @arm_heavy_mb() #9
  %41 = load ptr, ptr %4, align 16
  %42 = getelementptr i8, ptr %41, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !44
  tail call void @arm_heavy_mb() #9
  %43 = shl i32 %1, 8
  %44 = load ptr, ptr %4, align 16
  %45 = getelementptr i8, ptr %44, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #9, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esdhc_readl_le(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !45
  %7 = add i32 %1, -36
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 30)
  switch i32 %8, label %83 [
    i32 0, label %9
    i32 7, label %17
    i32 8, label %30
    i32 9, label %60
    i32 3, label %67
  ], !prof !46

9:                                                ; preds = %2
  %10 = and i32 %6, 1048575
  %11 = lshr i32 %6, 4
  %12 = and i32 %11, 15728640
  %13 = or i32 %12, %10
  %14 = shl i32 %6, 1
  %15 = and i32 %14, 16777216
  %16 = or i32 %13, %15
  br label %83

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 64
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %6, -65536
  %24 = select i1 %22, i32 %6, i32 %23
  %25 = and i32 %24, 1048576
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %83, label %27

27:                                               ; preds = %17
  %28 = and i32 %24, -1572865
  %29 = or i32 %28, 524288
  br label %83

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %83, label %36

36:                                               ; preds = %30
  %37 = and i32 %33, 64
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %3, align 16
  %41 = getelementptr i8, ptr %40, i32 64
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !47
  %43 = and i32 %42, 65535
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i32 [ %43, %39 ], [ 40967, %36 ]
  %46 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 7
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  %50 = or i1 %48, %49
  %51 = and i32 %45, 65530
  %52 = select i1 %50, i32 %51, i32 %45
  %53 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 8
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  %57 = or i1 %55, %56
  %58 = and i32 %52, 65533
  %59 = select i1 %57, i32 %58, i32 %52
  br label %83

60:                                               ; preds = %2
  %61 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %62 = load ptr, ptr %61, align 4
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 %6, i32 16777215
  br label %83

67:                                               ; preds = %2
  %68 = and i32 %6, 268435456
  %69 = icmp eq i32 %68, 0
  %70 = and i32 %6, -301989889
  %71 = or i32 %70, 33554432
  %72 = select i1 %69, i32 %6, i32 %71
  %73 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 21
  %74 = load i32, ptr %73, align 4
  %75 = icmp ne i32 %74, 2
  %76 = and i32 %72, 1
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %67
  %80 = and i32 %72, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %81 = load ptr, ptr %3, align 16
  %82 = getelementptr i8, ptr %81, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 1) #9, !srcloc !9
  store i32 0, ptr %73, align 4
  br label %83

83:                                               ; preds = %79, %67, %60, %44, %30, %27, %17, %9, %2
  %84 = phi i32 [ %80, %79 ], [ %72, %67 ], [ %66, %60 ], [ %29, %27 ], [ %24, %17 ], [ %16, %9 ], [ %6, %30 ], [ %59, %44 ], [ %6, %2 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @esdhc_readw_le(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  switch i32 %1, label %65 [
    i32 254, label %3
    i32 62, label %9
    i32 12, label %44
  ], !prof !49

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %65, label %71

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr i8, ptr %11, i32 192
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !50
  %14 = trunc i32 %13 to i16
  %15 = shl i16 %14, 2
  %16 = and i16 %15, 8
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %9
  %23 = and i32 %19, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %10, align 16
  %27 = getelementptr i8, ptr %26, i32 72
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !51
  br label %36

29:                                               ; preds = %22
  %30 = and i32 %19, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %10, align 16
  %34 = getelementptr i8, ptr %33, i32 60
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !52
  br label %36

36:                                               ; preds = %32, %29, %25, %9
  %37 = phi i32 [ %28, %25 ], [ %35, %32 ], [ %13, %29 ], [ %13, %9 ]
  %38 = lshr i32 %37, 16
  %39 = trunc i32 %38 to i16
  %40 = and i16 %39, 64
  %41 = or i16 %40, %16
  %42 = and i16 %39, 128
  %43 = or i16 %41, %42
  br label %71

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  %50 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %51 = load ptr, ptr %50, align 16
  br i1 %49, label %62, label %52

52:                                               ; preds = %44
  %53 = getelementptr i8, ptr %51, i32 72
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !53
  %55 = trunc i32 %54 to i16
  %56 = and i16 %55, 183
  %57 = and i32 %54, 128
  %58 = icmp eq i32 %57, 0
  %59 = and i16 %55, 55
  %60 = or i16 %59, 8
  %61 = select i1 %58, i16 %56, i16 %60
  br label %71

62:                                               ; preds = %44
  %63 = getelementptr i8, ptr %51, i32 12
  %64 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %63) #9, !srcloc !54
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !55
  br label %71

65:                                               ; preds = %3, %2
  %66 = phi i32 [ 252, %3 ], [ %1, %2 ]
  %67 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %68 = load ptr, ptr %67, align 16
  %69 = getelementptr i8, ptr %68, i32 %66
  %70 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %69) #9, !srcloc !54
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !56
  br label %71

71:                                               ; preds = %65, %62, %52, %36, %3
  %72 = phi i16 [ %43, %36 ], [ %70, %65 ], [ 2, %3 ], [ %61, %52 ], [ %64, %62 ]
  ret i16 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @esdhc_readb_le(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 40
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  br i1 %3, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %5, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !57
  %9 = lshr i32 %8, 5
  %10 = and i32 %9, 24
  %11 = shl i32 %8, 3
  %12 = and i32 %11, 32
  %13 = and i32 %8, 3
  %14 = or i32 %13, %10
  %15 = or i32 %14, %12
  %16 = trunc i32 %15 to i8
  br label %20

17:                                               ; preds = %2
  %18 = getelementptr i8, ptr %5, i32 %1
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #9, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !58
  br label %20

20:                                               ; preds = %17, %6
  %21 = phi i8 [ %16, %6 ], [ %19, %17 ]
  ret i8 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_writel_le(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  switch i32 %2, label %30 [
    i32 56, label %4
    i32 52, label %4
    i32 48, label %4
  ]

4:                                                ; preds = %3, %3, %3
  %5 = and i32 %1, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 16
  %16 = getelementptr i8, ptr %15, i32 40
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !59
  %18 = and i32 %17, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !60
  tail call void @arm_heavy_mb() #9
  %19 = load ptr, ptr %14, align 16
  %20 = getelementptr i8, ptr %19, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !9
  %21 = or i32 %17, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !61
  tail call void @arm_heavy_mb() #9
  %22 = load ptr, ptr %14, align 16
  %23 = getelementptr i8, ptr %22, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #9, !srcloc !9
  br label %24

24:                                               ; preds = %13, %7, %4
  %25 = and i32 %1, 33554432
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = and i32 %1, -301989889
  %29 = or i32 %28, 268435456
  br label %30

30:                                               ; preds = %27, %24, %3
  %31 = phi i32 [ %29, %27 ], [ %1, %24 ], [ %1, %3 ]
  %32 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %2, 48
  %36 = and i32 %31, 2
  %37 = and i32 %36, %34
  %38 = icmp ne i32 %37, 0
  %39 = and i1 %35, %38
  br i1 %39, label %40, label %54, !prof !62

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %42 = load ptr, ptr %41, align 16
  %43 = getelementptr i8, ptr %42, i32 192
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !63
  %45 = and i32 %44, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  %46 = load ptr, ptr %41, align 16
  %47 = getelementptr i8, ptr %46, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #9, !srcloc !9
  %48 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 21
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !65
  tail call void @arm_heavy_mb() #9
  %52 = load ptr, ptr %41, align 16
  %53 = getelementptr i8, ptr %52, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 213909504) #9, !srcloc !9
  store i32 2, ptr %48, align 4
  br label %54

54:                                               ; preds = %51, %40, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %55 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %56 = load ptr, ptr %55, align 16
  %57 = getelementptr i8, ptr %56, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %31) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_writew_le(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  switch i32 %2, label %226 [
    i32 44, label %5
    i32 62, label %47
    i32 12, label %105
    i32 14, label %192
    i32 4, label %224
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr i8, ptr %7, i32 192
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !67
  %10 = and i32 %9, -257
  %11 = shl i16 %1, 6
  %12 = and i16 %11, 256
  %13 = zext i16 %12 to i32
  %14 = or i32 %10, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !68
  tail call void @arm_heavy_mb() #9
  %15 = load ptr, ptr %6, align 16
  %16 = getelementptr i8, ptr %15, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #9, !srcloc !9
  %17 = icmp eq i16 %12, 0
  br i1 %17, label %18, label %241

18:                                               ; preds = %5
  %19 = tail call i64 @ktime_get() #9
  %20 = add i64 %19, 100000
  %21 = load ptr, ptr %6, align 16
  %22 = getelementptr i8, ptr %21, i32 36
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !69
  %24 = and i32 %23, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %33, %18
  %27 = tail call i64 @ktime_get() #9
  %28 = icmp sgt i64 %27, %20
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load ptr, ptr %6, align 16
  %31 = getelementptr i8, ptr %30, i32 36
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !70
  br label %39

33:                                               ; preds = %26
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #9
  %34 = load ptr, ptr %6, align 16
  %35 = getelementptr i8, ptr %34, i32 36
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !69
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %26, label %39

39:                                               ; preds = %33, %29, %18
  %40 = phi i32 [ %32, %29 ], [ %23, %18 ], [ %36, %33 ]
  %41 = and i32 %40, 128
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %241

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %45, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.esdhc_wait_for_card_clock_gate_off) #10
  br label %241

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %49 = load ptr, ptr %48, align 16
  %50 = getelementptr i8, ptr %49, i32 192
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !71
  %52 = zext i16 %1 to i32
  %53 = and i32 %51, -3
  %54 = lshr i32 %52, 2
  %55 = and i32 %54, 2
  %56 = or i32 %53, %55
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %57 = load ptr, ptr %48, align 16
  %58 = getelementptr i8, ptr %57, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #9, !srcloc !9
  %59 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %60 = load ptr, ptr %59, align 4
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %241, label %64

64:                                               ; preds = %47
  %65 = load ptr, ptr %48, align 16
  %66 = getelementptr i8, ptr %65, i32 60
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !73
  %68 = load ptr, ptr %48, align 16
  %69 = getelementptr i8, ptr %68, i32 72
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !74
  %71 = and i32 %52, 128
  %72 = icmp eq i32 %71, 0
  %73 = and i32 %67, -8388609
  %74 = and i32 %70, -50331649
  %75 = select i1 %72, i32 %74, i32 %70
  %76 = shl nuw nsw i32 %71, 16
  %77 = or i32 %73, %76
  %78 = and i32 %52, 64
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %64
  %81 = or i32 %77, 4194304
  %82 = or i32 %75, 50331648
  %83 = load ptr, ptr %48, align 16
  %84 = getelementptr i8, ptr %83, i32 40
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !18
  %86 = and i32 %85, 6
  %87 = icmp eq i32 %86, 2
  %88 = select i1 %87, i32 64, i32 96
  %89 = icmp eq i32 %86, 4
  %90 = select i1 %89, i32 80, i32 %88
  %91 = load ptr, ptr %48, align 16
  %92 = getelementptr i8, ptr %91, i32 200
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %94 = and i32 %93, -113
  %95 = or i32 %94, %90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %95) #9, !srcloc !9
  br label %98

96:                                               ; preds = %64
  %97 = and i32 %77, -4194305
  br label %98

98:                                               ; preds = %96, %80
  %99 = phi i32 [ %82, %80 ], [ %75, %96 ]
  %100 = phi i32 [ %81, %80 ], [ %97, %96 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %101 = load ptr, ptr %48, align 16
  %102 = getelementptr i8, ptr %101, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %103 = load ptr, ptr %48, align 16
  %104 = getelementptr i8, ptr %103, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %99) #9, !srcloc !9
  br label %241

105:                                              ; preds = %3
  %106 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %107 = load ptr, ptr %106, align 4
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 2
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %137, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 33
  %113 = load ptr, ptr %112, align 4
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 53
  br i1 %115, label %116, label %137

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.mmc_command, ptr %113, i32 0, i32 7
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.mmc_data, ptr %118, i32 0, i32 3
  %120 = load i32, ptr %119, align 4
  %121 = icmp ugt i32 %120, 1
  br i1 %121, label %122, label %137

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.mmc_data, ptr %118, i32 0, i32 6
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 512
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %129 = load ptr, ptr %128, align 16
  %130 = getelementptr i8, ptr %129, i32 192
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !77
  %132 = or i32 %131, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !78
  tail call void @arm_heavy_mb() #9
  %133 = load ptr, ptr %128, align 16
  %134 = getelementptr i8, ptr %133, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #9, !srcloc !9
  %135 = load ptr, ptr %106, align 4
  %136 = load i32, ptr %135, align 4
  br label %137

137:                                              ; preds = %127, %122, %116, %111, %105
  %138 = phi i32 [ %136, %127 ], [ %108, %122 ], [ %108, %116 ], [ %108, %111 ], [ %108, %105 ]
  %139 = and i32 %138, 8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %190, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %143 = load ptr, ptr %142, align 16
  %144 = getelementptr i8, ptr %143, i32 72
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !79
  %146 = and i16 %1, 8
  %147 = icmp eq i16 %146, 0
  %148 = and i16 %1, -137
  %149 = or i16 %148, 128
  %150 = select i1 %147, i16 %1, i16 %149
  %151 = zext i16 %150 to i32
  %152 = and i32 %145, -184
  %153 = or i32 %152, %151
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !80
  tail call void @arm_heavy_mb() #9
  %154 = load ptr, ptr %142, align 16
  %155 = getelementptr i8, ptr %154, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %153) #9, !srcloc !9
  %156 = load ptr, ptr %142, align 16
  %157 = getelementptr i8, ptr %156, i32 68
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !81
  %159 = and i32 %151, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %184

161:                                              ; preds = %141
  %162 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.sdhci_ops, ptr %163, i32 0, i32 2
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167, !prof !38

167:                                              ; preds = %161
  %168 = tail call zeroext i8 %165(ptr noundef %0, i32 noundef 40) #9
  br label %173

169:                                              ; preds = %161
  %170 = load ptr, ptr %142, align 16
  %171 = getelementptr i8, ptr %170, i32 40
  %172 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %171) #9, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !82
  br label %173

173:                                              ; preds = %169, %167
  %174 = phi i8 [ %168, %167 ], [ %172, %169 ]
  %175 = and i8 %174, -25
  %176 = load ptr, ptr %162, align 4
  %177 = getelementptr inbounds %struct.sdhci_ops, ptr %176, i32 0, i32 5
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %181, label %180, !prof !38

180:                                              ; preds = %173
  tail call void %178(ptr noundef %0, i8 noundef zeroext %175, i32 noundef 40) #9
  br label %184

181:                                              ; preds = %173
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %182 = load ptr, ptr %142, align 16
  %183 = getelementptr i8, ptr %182, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %183, i8 %175) #9, !srcloc !84
  br label %184

184:                                              ; preds = %181, %180, %141
  %185 = phi i32 [ 4194368, %141 ], [ 8388736, %180 ], [ 8388736, %181 ]
  %186 = and i32 %158, -16711936
  %187 = or i32 %185, %186
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !85
  tail call void @arm_heavy_mb() #9
  %188 = load ptr, ptr %142, align 16
  %189 = getelementptr i8, ptr %188, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %187) #9, !srcloc !9
  br label %241

190:                                              ; preds = %137
  %191 = zext i16 %1 to i32
  store i32 %191, ptr %4, align 4
  br label %241

192:                                              ; preds = %3
  %193 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 33
  %194 = load ptr, ptr %193, align 4
  %195 = load i32, ptr %194, align 4
  %196 = icmp eq i32 %195, 12
  %197 = or i16 %1, 192
  %198 = select i1 %196, i16 %197, i16 %1
  %199 = icmp eq i32 %195, 23
  %200 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %201 = load ptr, ptr %200, align 4
  br i1 %199, label %202, label %208

202:                                              ; preds = %192
  %203 = load i32, ptr %201, align 4
  %204 = and i32 %203, 2
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 21
  store i32 1, ptr %207, align 4
  br label %208

208:                                              ; preds = %206, %202, %192
  %209 = load i32, ptr %201, align 4
  %210 = and i32 %209, 8
  %211 = icmp eq i32 %210, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  %212 = zext i16 %198 to i32
  %213 = shl nuw i32 %212, 16
  br i1 %211, label %218, label %214

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %216 = load ptr, ptr %215, align 16
  %217 = getelementptr i8, ptr %216, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 %213) #9, !srcloc !9
  br label %241

218:                                              ; preds = %208
  %219 = load i32, ptr %4, align 4
  %220 = or i32 %219, %213
  %221 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %222 = load ptr, ptr %221, align 16
  %223 = getelementptr i8, ptr %222, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 %220) #9, !srcloc !9
  br label %241

224:                                              ; preds = %3
  %225 = and i16 %1, -28673
  br label %226

226:                                              ; preds = %224, %3
  %227 = phi i16 [ %1, %3 ], [ %225, %224 ]
  %228 = zext i16 %227 to i32
  %229 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %230 = load ptr, ptr %229, align 16
  %231 = and i32 %2, -4
  %232 = getelementptr i8, ptr %230, i32 %231
  %233 = shl i32 %2, 3
  %234 = and i32 %233, 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %232) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %236 = shl i32 65535, %234
  %237 = xor i32 %236, -1
  %238 = and i32 %235, %237
  %239 = shl i32 %228, %234
  %240 = or i32 %238, %239
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %240) #9, !srcloc !9
  br label %241

241:                                              ; preds = %226, %218, %214, %190, %184, %98, %47, %43, %39, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_writeb_le(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2) #2 {
  switch i32 %2, label %29 [
    i32 41, label %75
    i32 40, label %4
    i32 47, label %21
  ]

4:                                                ; preds = %3
  %5 = zext i8 %1 to i32
  %6 = and i32 %5, 1
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @esdhc_imx25_data
  %10 = shl nuw nsw i32 %5, 5
  %11 = and i32 %10, 768
  %12 = select i1 %9, i32 0, i32 %11
  %13 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %17 = and i32 %16, -65522
  %18 = or i32 %6, %12
  %19 = or i32 %18, %17
  %20 = or i32 %19, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %20) #9, !srcloc !9
  br label %75

21:                                               ; preds = %3
  %22 = and i8 %1, 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 16
  %27 = getelementptr i8, ptr %26, i32 40
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !86
  br label %29

29:                                               ; preds = %24, %21, %3
  %30 = phi i32 [ 0, %3 ], [ %28, %24 ], [ 0, %21 ]
  %31 = zext i8 %1 to i32
  %32 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %32, align 16
  %34 = and i32 %2, -4
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = shl i32 %2, 3
  %37 = and i32 %36, 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %39 = shl nuw i32 255, %37
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = shl nuw i32 %31, %37
  %43 = or i32 %41, %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %43) #9, !srcloc !9
  %44 = icmp eq i32 %2, 47
  br i1 %44, label %45, label %75

45:                                               ; preds = %29
  %46 = and i32 %31, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %32, align 16
  %50 = getelementptr i8, ptr %49, i32 44
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %52 = or i32 %51, 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %52) #9, !srcloc !9
  %53 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %48
  %59 = load ptr, ptr %32, align 16
  %60 = getelementptr i8, ptr %59, i32 72
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !87
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !88
  tail call void @arm_heavy_mb() #9
  %62 = and i32 %61, 62914560
  %63 = load ptr, ptr %32, align 16
  %64 = getelementptr i8, ptr %63, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #9, !srcloc !9
  %65 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 22
  store i32 0, ptr %65, align 4
  br label %75

66:                                               ; preds = %45
  %67 = and i32 %31, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %32, align 16
  %71 = getelementptr i8, ptr %70, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %73 = and i32 %72, -256
  %74 = or i32 %73, %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %74) #9, !srcloc !9
  br label %75

75:                                               ; preds = %69, %66, %58, %48, %29, %4, %3
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_pltfm_set_clock(ptr noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 22
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %50, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 16
  %17 = getelementptr i8, ptr %16, i32 192
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !89
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %19 = and i32 %18, -257
  %20 = load ptr, ptr %15, align 16
  %21 = getelementptr i8, ptr %20, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #9, !srcloc !9
  %22 = tail call i64 @ktime_get() #9
  %23 = add i64 %22, 100000
  %24 = load ptr, ptr %15, align 16
  %25 = getelementptr i8, ptr %24, i32 36
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !69
  %27 = and i32 %26, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %36, %14
  %30 = tail call i64 @ktime_get() #9
  %31 = icmp sgt i64 %30, %23
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load ptr, ptr %15, align 16
  %34 = getelementptr i8, ptr %33, i32 36
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !70
  br label %42

36:                                               ; preds = %29
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #9
  %37 = load ptr, ptr %15, align 16
  %38 = getelementptr i8, ptr %37, i32 36
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !69
  %40 = and i32 %39, 128
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %29, label %42

42:                                               ; preds = %36, %32, %14
  %43 = phi i32 [ %35, %32 ], [ %26, %14 ], [ %39, %36 ]
  %44 = and i32 %43, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr %48, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.esdhc_wait_for_card_clock_gate_off) #10
  br label %50

50:                                               ; preds = %46, %42, %2
  %51 = icmp eq i32 %1, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.mmc_host, ptr %54, i32 0, i32 57
  store i32 0, ptr %55, align 4
  br label %204

56:                                               ; preds = %50
  %57 = load ptr, ptr %9, align 4
  %58 = icmp eq ptr %57, @esdhc_imx53_data
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %61 = load ptr, ptr %60, align 16
  %62 = getelementptr i8, ptr %61, i32 96
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !91
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %64 = or i32 %63, 1024
  %65 = load ptr, ptr %60, align 16
  %66 = getelementptr i8, ptr %65, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #9, !srcloc !9
  %67 = load ptr, ptr %60, align 16
  %68 = getelementptr i8, ptr %67, i32 96
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !93
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %70 = load ptr, ptr %60, align 16
  %71 = getelementptr i8, ptr %70, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %63) #9, !srcloc !9
  %72 = and i32 %69, 1024
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 1, i32 2
  br label %75

75:                                               ; preds = %59, %56
  %76 = phi i32 [ 1, %56 ], [ %74, %59 ]
  %77 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81, !prof !38

81:                                               ; preds = %75
  %82 = tail call i32 %79(ptr noundef %0, i32 noundef 44) #9
  br label %88

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %85 = load ptr, ptr %84, align 16
  %86 = getelementptr i8, ptr %85, i32 44
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !95
  br label %88

88:                                               ; preds = %83, %81
  %89 = phi i32 [ %82, %81 ], [ %87, %83 ]
  %90 = and i32 %89, -65528
  %91 = load ptr, ptr %77, align 4
  %92 = getelementptr inbounds %struct.sdhci_ops, ptr %91, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95, !prof !38

95:                                               ; preds = %88
  tail call void %93(ptr noundef %0, i32 noundef %90, i32 noundef 44) #9
  br label %100

96:                                               ; preds = %88
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %97 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %98 = load ptr, ptr %97, align 16
  %99 = getelementptr i8, ptr %98, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %90) #9, !srcloc !9
  br label %100

100:                                              ; preds = %96, %95
  %101 = load ptr, ptr %9, align 4
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 1024
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load i32, ptr %5, align 4
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, i32 150000000, i32 45000000
  %109 = tail call i32 @llvm.umin.i32(i32 %108, i32 %1)
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i32 [ %109, %105 ], [ %1, %100 ]
  %112 = shl nuw nsw i32 %8, 4
  br label %113

113:                                              ; preds = %113, %110
  %114 = phi i32 [ %76, %110 ], [ %120, %113 ]
  %115 = mul i32 %112, %114
  %116 = udiv i32 %4, %115
  %117 = icmp ugt i32 %116, %111
  %118 = icmp slt i32 %114, 256
  %119 = select i1 %117, i1 %118, i1 false
  %120 = shl i32 %114, 1
  br i1 %119, label %113, label %121

121:                                              ; preds = %113
  %122 = mul i32 %114, %8
  br label %123

123:                                              ; preds = %123, %121
  %124 = phi i32 [ %130, %123 ], [ 1, %121 ]
  %125 = mul i32 %122, %124
  %126 = udiv i32 %4, %125
  %127 = icmp ugt i32 %126, %111
  %128 = icmp ult i32 %124, 16
  %129 = select i1 %127, i1 %128, i1 false
  %130 = add nuw nsw i32 %124, 1
  br i1 %129, label %123, label %131

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.mmc_host, ptr %133, i32 0, i32 57
  store i32 %126, ptr %134, align 4
  %135 = load ptr, ptr %77, align 4
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138, !prof !38

138:                                              ; preds = %131
  %139 = tail call i32 %136(ptr noundef %0, i32 noundef 44) #9
  br label %145

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %142 = load ptr, ptr %141, align 16
  %143 = getelementptr i8, ptr %142, i32 44
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !95
  br label %145

145:                                              ; preds = %140, %138
  %146 = phi i32 [ %139, %138 ], [ %144, %140 ]
  %147 = shl nuw nsw i32 %124, 4
  %148 = add nsw i32 %147, -16
  %149 = shl i32 %114, 7
  %150 = and i32 %149, -256
  %151 = or i32 %150, %148
  %152 = or i32 %151, %146
  %153 = or i32 %152, 7
  %154 = load ptr, ptr %77, align 4
  %155 = getelementptr inbounds %struct.sdhci_ops, ptr %154, i32 0, i32 3
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %159, label %158, !prof !38

158:                                              ; preds = %145
  tail call void %156(ptr noundef %0, i32 noundef %153, i32 noundef 44) #9
  br label %163

159:                                              ; preds = %145
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %160 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %161 = load ptr, ptr %160, align 16
  %162 = getelementptr i8, ptr %161, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %153) #9, !srcloc !9
  br label %163

163:                                              ; preds = %159, %158
  %164 = tail call i64 @ktime_get() #9
  %165 = add i64 %164, 100000
  %166 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %167 = load ptr, ptr %166, align 16
  %168 = getelementptr i8, ptr %167, i32 36
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !97
  %170 = and i32 %169, 8
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %179, %163
  %173 = tail call i64 @ktime_get() #9
  %174 = icmp sgt i64 %173, %165
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load ptr, ptr %166, align 16
  %177 = getelementptr i8, ptr %176, i32 36
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !98
  br label %185

179:                                              ; preds = %172
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #9
  %180 = load ptr, ptr %166, align 16
  %181 = getelementptr i8, ptr %180, i32 36
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !97
  %183 = and i32 %182, 8
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %172, label %185

185:                                              ; preds = %179, %175, %163
  %186 = phi i32 [ %178, %175 ], [ %169, %163 ], [ %182, %179 ]
  %187 = and i32 %186, 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load ptr, ptr %132, align 8
  %191 = load ptr, ptr %190, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %191, ptr noundef nonnull @.str.7) #10
  br label %192

192:                                              ; preds = %189, %185
  %193 = load ptr, ptr %9, align 4
  %194 = load i32, ptr %193, align 4
  %195 = and i32 %194, 8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %204, label %197

197:                                              ; preds = %192
  %198 = load ptr, ptr %166, align 16
  %199 = getelementptr i8, ptr %198, i32 192
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %199) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !99
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %201 = or i32 %200, 256
  %202 = load ptr, ptr %166, align 16
  %203 = getelementptr i8, ptr %202, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %201) #9, !srcloc !9
  br label %204

204:                                              ; preds = %197, %192, %52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esdhc_cqhci_irq(ptr noundef %0, i32 noundef %1) #2 {
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @esdhc_pltfm_get_max_clock(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @esdhc_pltfm_get_min_clock(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 12
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @esdhc_get_max_timeout_count(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 134217728, i32 536870912
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_set_timeout(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 917504, i32 983040
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr i8, ptr %10, i32 44
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %13 = and i32 %12, -983041
  %14 = or i32 %13, %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %14) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_pltfm_set_bus_width(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 2
  %4 = select i1 %3, i32 2, i32 0
  %5 = icmp eq i32 %1, 3
  %6 = select i1 %5, i32 4, i32 %4
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %11 = and i32 %10, -7
  %12 = or i32 %11, %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %12) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esdhc_pltfm_get_ro(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 10
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %16 [
    i32 2, label %4
    i32 1, label %8
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @mmc_gpio_get_ro(ptr noundef %6) #9
  br label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr i8, ptr %10, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !101
  %13 = lshr i32 %12, 19
  %14 = and i32 %13, 1
  %15 = xor i32 %14, 1
  br label %16

16:                                               ; preds = %8, %4, %1
  %17 = phi i32 [ %15, %8 ], [ %7, %4 ], [ -38, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_reset(ptr noundef %0, i8 noundef zeroext %1) #2 {
  tail call void @sdhci_reset(ptr noundef %0, i8 noundef zeroext %1) #9
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  %4 = load i32, ptr %3, align 64
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sdhci_ops, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !38

10:                                               ; preds = %2
  tail call void %8(ptr noundef %0, i32 noundef %4, i32 noundef 52) #9
  br label %15

11:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr i8, ptr %13, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %4) #9, !srcloc !9
  br label %15

15:                                               ; preds = %11, %10
  %16 = load i32, ptr %3, align 64
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.sdhci_ops, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !38

21:                                               ; preds = %15
  tail call void %19(ptr noundef %0, i32 noundef %16, i32 noundef 56) #9
  br label %26

22:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %23 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %24 = load ptr, ptr %23, align 16
  %25 = getelementptr i8, ptr %24, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %16) #9, !srcloc !9
  br label %26

26:                                               ; preds = %22, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_set_uhs_signaling(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 72
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !102
  %7 = and i32 %6, -67108873
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 22
  store i32 0, ptr %8, align 4
  switch i32 %1, label %112 [
    i32 3, label %9
    i32 4, label %9
    i32 5, label %9
    i32 6, label %9
    i32 1, label %9
    i32 9, label %9
    i32 7, label %12
    i32 8, label %12
    i32 10, label %29
  ]

9:                                                ; preds = %2, %2, %2, %2, %2, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %10 = load ptr, ptr %3, align 16
  %11 = getelementptr i8, ptr %10, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %7) #9, !srcloc !9
  br label %173

12:                                               ; preds = %2, %2
  %13 = or i32 %7, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %14 = load ptr, ptr %3, align 16
  %15 = getelementptr i8, ptr %14, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #9, !srcloc !9
  store i32 1, ptr %8, align 4
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %173, label %19

19:                                               ; preds = %12
  %20 = shl i32 %17, 9
  %21 = or i32 %20, 256
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, @esdhc_imx53_data
  %25 = zext i1 %24 to i32
  %26 = shl i32 %21, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %27 = load ptr, ptr %3, align 16
  %28 = getelementptr i8, ptr %27, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #9, !srcloc !9
  br label %173

29:                                               ; preds = %2
  %30 = or i32 %6, 67108872
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %31 = load ptr, ptr %3, align 16
  %32 = getelementptr i8, ptr %31, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #9, !srcloc !9
  store i32 1, ptr %8, align 4
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.sdhci_ops, ptr %34, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  %38 = load i32, ptr %37, align 4
  tail call void %36(ptr noundef %0, i32 noundef %38) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %39 = load ptr, ptr %3, align 16
  %40 = getelementptr i8, ptr %39, i32 192
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !108
  %42 = and i32 %41, -257
  %43 = load ptr, ptr %3, align 16
  %44 = getelementptr i8, ptr %43, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #9, !srcloc !9
  %45 = tail call i64 @ktime_get() #9
  %46 = add i64 %45, 100000
  %47 = load ptr, ptr %3, align 16
  %48 = getelementptr i8, ptr %47, i32 36
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !69
  %50 = and i32 %49, 128
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %59, %29
  %53 = tail call i64 @ktime_get() #9
  %54 = icmp sgt i64 %53, %46
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load ptr, ptr %3, align 16
  %57 = getelementptr i8, ptr %56, i32 36
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !70
  br label %65

59:                                               ; preds = %52
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #9
  %60 = load ptr, ptr %3, align 16
  %61 = getelementptr i8, ptr %60, i32 36
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !69
  %63 = and i32 %62, 128
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %52, label %65

65:                                               ; preds = %59, %55, %29
  %66 = phi i32 [ %58, %55 ], [ %49, %29 ], [ %62, %59 ]
  %67 = and i32 %66, 128
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %71 = load ptr, ptr %70, align 8
  %72 = load ptr, ptr %71, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.esdhc_wait_for_card_clock_gate_off) #10
  br label %73

73:                                               ; preds = %69, %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %74 = load ptr, ptr %3, align 16
  %75 = getelementptr i8, ptr %74, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 2) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %76 = load ptr, ptr %3, align 16
  %77 = getelementptr i8, ptr %76, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 0) #9, !srcloc !9
  %78 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 16
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  %81 = shl i32 %79, 3
  %82 = or i32 %81, 4194305
  %83 = select i1 %80, i32 4194361, i32 %82
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !111
  tail call void @arm_heavy_mb() #9
  %84 = load ptr, ptr %3, align 16
  %85 = getelementptr i8, ptr %84, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #9, !srcloc !9
  %86 = tail call i64 @ktime_get() #9
  %87 = add i64 %86, 50000
  %88 = load ptr, ptr %3, align 16
  %89 = getelementptr i8, ptr %88, i32 116
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !112
  %91 = and i32 %90, 3
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %173, label %93

93:                                               ; preds = %96, %73
  %94 = tail call i64 @ktime_get() #9
  %95 = icmp sgt i64 %94, %87
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #9
  %97 = load ptr, ptr %3, align 16
  %98 = getelementptr i8, ptr %97, i32 116
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !112
  %100 = and i32 %99, 3
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %173, label %93

102:                                              ; preds = %93
  %103 = load ptr, ptr %3, align 16
  %104 = getelementptr i8, ptr %103, i32 116
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !113
  %106 = and i32 %105, 3
  %107 = icmp eq i32 %106, 3
  br i1 %107, label %173, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %110 = load ptr, ptr %109, align 8
  %111 = load ptr, ptr %110, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.8, i32 noundef %105) #10
  br label %173

112:                                              ; preds = %2
  %113 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 9
  %114 = load ptr, ptr %113, align 4
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %173, label %118

118:                                              ; preds = %112
  %119 = and i32 %115, 16
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr %3, align 16
  %123 = getelementptr i8, ptr %122, i32 72
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !114
  %125 = and i32 %124, -41943041
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %126 = load ptr, ptr %3, align 16
  %127 = getelementptr i8, ptr %126, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %125) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  %128 = load ptr, ptr %3, align 16
  %129 = getelementptr i8, ptr %128, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 0) #9, !srcloc !9
  br label %173

130:                                              ; preds = %118
  %131 = and i32 %115, 32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %173, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr %3, align 16
  %135 = getelementptr i8, ptr %134, i32 60
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !117
  %137 = and i32 %136, -12582913
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !118
  tail call void @arm_heavy_mb() #9
  %138 = load ptr, ptr %3, align 16
  %139 = getelementptr i8, ptr %138, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %137) #9, !srcloc !9
  %140 = tail call i64 @ktime_get() #9
  %141 = add i64 %140, 50000
  %142 = load ptr, ptr %3, align 16
  %143 = getelementptr i8, ptr %142, i32 60
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !119
  %145 = and i32 %144, 4194304
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %166, label %147

147:                                              ; preds = %150, %133
  %148 = tail call i64 @ktime_get() #9
  %149 = icmp sgt i64 %148, %141
  br i1 %149, label %156, label %150

150:                                              ; preds = %147
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #9
  %151 = load ptr, ptr %3, align 16
  %152 = getelementptr i8, ptr %151, i32 60
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !119
  %154 = and i32 %153, 4194304
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %166, label %147

156:                                              ; preds = %147
  %157 = load ptr, ptr %3, align 16
  %158 = getelementptr i8, ptr %157, i32 60
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !120
  %160 = and i32 %159, 4194304
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %164 = load ptr, ptr %163, align 8
  %165 = load ptr, ptr %164, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %165, ptr noundef nonnull @.str.9) #10
  br label %166

166:                                              ; preds = %162, %156, %150, %133
  %167 = load ptr, ptr %3, align 16
  %168 = getelementptr i8, ptr %167, i32 48
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !121
  %170 = or i32 %169, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %171 = load ptr, ptr %3, align 16
  %172 = getelementptr i8, ptr %171, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %170) #9, !srcloc !9
  br label %173

173:                                              ; preds = %166, %130, %121, %112, %108, %102, %96, %73, %19, %12, %9
  %174 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 6
  %175 = load ptr, ptr %174, align 4
  %176 = icmp ugt ptr %175, inttoptr (i32 -4096 to ptr)
  br i1 %176, label %195, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 7
  %179 = load ptr, ptr %178, align 4
  %180 = icmp ugt ptr %179, inttoptr (i32 -4096 to ptr)
  br i1 %180, label %195, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 8
  %183 = load ptr, ptr %182, align 4
  %184 = icmp ugt ptr %183, inttoptr (i32 -4096 to ptr)
  br i1 %184, label %195, label %185

185:                                              ; preds = %181
  switch i32 %1, label %187 [
    i32 5, label %192
    i32 7, label %192
    i32 6, label %186
    i32 9, label %186
    i32 10, label %186
  ]

186:                                              ; preds = %185, %185, %185
  br label %192

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %189 = load ptr, ptr %188, align 8
  %190 = load ptr, ptr %189, align 64
  %191 = tail call i32 @pinctrl_select_default_state(ptr noundef %190) #9
  br label %195

192:                                              ; preds = %186, %185, %185
  %193 = phi ptr [ %183, %186 ], [ %179, %185 ], [ %179, %185 ]
  %194 = tail call i32 @pinctrl_select_state(ptr noundef %175, ptr noundef %193) #9
  br label %195

195:                                              ; preds = %192, %187, %181, %177, %173
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_dump_debug_regs(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %11) #10
  %13 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  br label %14

14:                                               ; preds = %30, %10
  %15 = phi i32 [ 0, %10 ], [ %16, %30 ]
  %16 = add nuw nsw i32 %15, 1
  %17 = load ptr, ptr %13, align 16
  %18 = getelementptr i8, ptr %17, i32 192
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %20 = and i32 %19, -251658241
  %21 = shl i32 %16, 24
  %22 = or i32 %20, %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %22) #9, !srcloc !9
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 1, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %14
  %31 = phi ptr [ %29, %27 ], [ %25, %14 ]
  %32 = getelementptr [7 x ptr], ptr @__const.esdhc_dump_debug_regs.debug_status, i32 0, i32 %15
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %13, align 16
  %35 = getelementptr i8, ptr %34, i32 194
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %35) #9, !srcloc !54
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !123
  %37 = zext i16 %36 to i32
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %31, ptr noundef %33, i32 noundef %37) #10
  %39 = icmp eq i32 %16, 7
  br i1 %39, label %40, label %14

40:                                               ; preds = %30
  %41 = load ptr, ptr %13, align 16
  %42 = getelementptr i8, ptr %41, i32 192
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %44 = and i32 %43, -251658241
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %44) #9, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sdhci_cqe_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_irq(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_sdhci_dumpregs(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  tail call void @sdhci_dumpregs(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esdhc_cqe_enable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 62
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !38

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %2, i32 noundef 36) #9
  br label %16

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr i8, ptr %13, i32 36
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !95
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ %10, %9 ], [ %15, %11 ]
  %18 = and i32 %17, 2048
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  br label %22

22:                                               ; preds = %50, %20
  %23 = phi i32 [ 10, %20 ], [ %51, %50 ]
  %24 = load ptr, ptr %5, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !38

27:                                               ; preds = %22
  %28 = tail call i32 %25(ptr noundef %2, i32 noundef 32) #9
  br label %33

29:                                               ; preds = %22
  %30 = load ptr, ptr %21, align 16
  %31 = getelementptr i8, ptr %30, i32 32
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !95
  br label %33

33:                                               ; preds = %29, %27
  %34 = load ptr, ptr %5, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !38

37:                                               ; preds = %33
  %38 = tail call i32 %35(ptr noundef %2, i32 noundef 36) #9
  br label %43

39:                                               ; preds = %33
  %40 = load ptr, ptr %21, align 16
  %41 = getelementptr i8, ptr %40, i32 36
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !95
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i32 [ %38, %37 ], [ %42, %39 ]
  %45 = icmp eq i32 %23, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr %48, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.19) #10
  br label %55

50:                                               ; preds = %43
  %51 = add nsw i32 %23, -1
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #9
  %53 = and i32 %44, 2048
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %22

55:                                               ; preds = %50, %46, %16
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr inbounds %struct.sdhci_ops, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60, !prof !38

60:                                               ; preds = %55
  %61 = tail call zeroext i16 %58(ptr noundef %2, i32 noundef 12) #9
  br label %67

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %64 = load ptr, ptr %63, align 16
  %65 = getelementptr i8, ptr %64, i32 12
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %65) #9, !srcloc !54
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !124
  br label %67

67:                                               ; preds = %62, %60
  %68 = phi i16 [ %61, %60 ], [ %66, %62 ]
  %69 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 16
  %70 = load i32, ptr %69, align 4
  %71 = trunc i32 %70 to i16
  %72 = lshr i16 %71, 2
  %73 = and i16 %72, 1
  %74 = or i16 %73, %68
  %75 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 8192
  %78 = icmp eq i32 %77, 0
  %79 = or i16 %74, 2
  %80 = select i1 %78, i16 %79, i16 %74
  %81 = load ptr, ptr %5, align 4
  %82 = getelementptr inbounds %struct.sdhci_ops, ptr %81, i32 0, i32 4
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85, !prof !38

85:                                               ; preds = %67
  tail call void %83(ptr noundef %2, i16 noundef zeroext %80, i32 noundef 12) #9
  br label %90

86:                                               ; preds = %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !125
  tail call void @arm_heavy_mb() #9
  %87 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %88 = load ptr, ptr %87, align 16
  %89 = getelementptr i8, ptr %88, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %89, i16 %80) #9, !srcloc !126
  br label %90

90:                                               ; preds = %86, %85
  %91 = load ptr, ptr %4, align 4
  %92 = getelementptr inbounds %struct.cqhci_host_ops, ptr %91, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95, !prof !38

95:                                               ; preds = %90
  tail call void %93(ptr noundef %4, i32 noundef 0, i32 noundef 12) #9
  br label %100

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr i8, ptr %98, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 0) #9, !srcloc !9
  br label %100

100:                                              ; preds = %96, %95
  %101 = load ptr, ptr %4, align 4
  %102 = getelementptr inbounds %struct.cqhci_host_ops, ptr %101, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105, !prof !38

105:                                              ; preds = %100
  %106 = tail call i32 %103(ptr noundef %4, i32 noundef 12) #9
  br label %112

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr i8, ptr %109, i32 12
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #9, !srcloc !12
  br label %112

112:                                              ; preds = %107, %105
  %113 = phi i32 [ %106, %105 ], [ %111, %107 ]
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %117 = load ptr, ptr %116, align 8
  %118 = load ptr, ptr %117, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.20) #10
  br label %119

119:                                              ; preds = %115, %112
  tail call void @sdhci_cqe_enable(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_disable(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_dumpregs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse_voltage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_suspend(ptr noundef %0) #2 {
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
  %11 = tail call i32 @cqhci_deactivate(ptr noundef %5) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 16384
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 73
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %4, align 8
  tail call void @mmc_retune_timer_stop(ptr noundef %24) #9
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 29
  %27 = load i16, ptr %26, align 8
  %28 = and i16 %27, 8
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 32
  store i32 1, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %23, %19, %13
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 73
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %struct.mmc_host, ptr %37, i32 0, i32 29
  %39 = load i16, ptr %38, align 8
  %40 = and i16 %39, 8
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.mmc_host, ptr %37, i32 0, i32 32
  store i32 1, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %36, %32
  %45 = tail call i32 @sdhci_suspend_host(ptr noundef %3) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load ptr, ptr %4, align 8
  %52 = tail call i32 @mmc_gpio_set_cd_wake(ptr noundef %51, i1 noundef zeroext true) #9
  br label %53

53:                                               ; preds = %50, %47, %44, %10
  %54 = phi i32 [ %52, %50 ], [ %11, %10 ], [ %45, %44 ], [ %48, %47 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  tail call fastcc void @sdhci_esdhc_imx_hwinit(ptr noundef %3)
  %7 = tail call i32 @sdhci_resume_host(ptr noundef %3) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 8388608
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = tail call i32 @cqhci_resume(ptr noundef %11) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load ptr, ptr %10, align 8
  br label %21

21:                                               ; preds = %19, %9
  %22 = phi ptr [ %20, %19 ], [ %11, %9 ]
  %23 = tail call i32 @mmc_gpio_set_cd_wake(ptr noundef %22, i1 noundef zeroext false) #9
  br label %24

24:                                               ; preds = %21, %16, %6, %1
  %25 = phi i32 [ %4, %1 ], [ %7, %6 ], [ %17, %16 ], [ %23, %21 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
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
  %11 = tail call i32 @cqhci_deactivate(ptr noundef %5) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %10, %1
  %14 = tail call i32 @sdhci_runtime_suspend_host(ptr noundef %3) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 73
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 29
  %23 = load i16, ptr %22, align 8
  %24 = and i16 %23, 8
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 32
  store i32 1, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %20, %16
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 57
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 20
  store i32 %31, ptr %32, align 4
  tail call void @esdhc_pltfm_set_clock(ptr noundef %3, i32 noundef 0)
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 19
  %34 = load ptr, ptr %33, align 4
  tail call void @clk_disable(ptr noundef %34) #9
  tail call void @clk_unprepare(ptr noundef %34) #9
  %35 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 17
  %36 = load ptr, ptr %35, align 4
  tail call void @clk_disable(ptr noundef %36) #9
  tail call void @clk_unprepare(ptr noundef %36) #9
  %37 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 18
  %38 = load ptr, ptr %37, align 4
  tail call void @clk_disable(ptr noundef %38) #9
  tail call void @clk_unprepare(ptr noundef %38) #9
  %39 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 8192
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 23
  tail call void @cpu_latency_qos_remove_request(ptr noundef %45) #9
  br label %46

46:                                               ; preds = %44, %28, %13, %10
  %47 = phi i32 [ %11, %10 ], [ %14, %13 ], [ 0, %44 ], [ 0, %28 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8192
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 23
  tail call void @cpu_latency_qos_add_request(ptr noundef %10, i32 noundef 0) #9
  %11 = load ptr, ptr %4, align 4
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i32 [ %12, %9 ], [ %6, %1 ]
  %15 = and i32 %14, 32768
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef %21) #9
  br label %23

23:                                               ; preds = %17, %13
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 18
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @clk_prepare(ptr noundef %25) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %78

28:                                               ; preds = %23
  %29 = tail call i32 @clk_enable(ptr noundef %25) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %75

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 19
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @clk_prepare(ptr noundef %33) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %31
  %37 = tail call i32 @clk_enable(ptr noundef %33) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 17
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @clk_prepare(ptr noundef %41) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = tail call i32 @clk_enable(ptr noundef %41) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 20
  %49 = load i32, ptr %48, align 4
  tail call void @esdhc_pltfm_set_clock(ptr noundef %3, i32 noundef %49)
  %50 = tail call i32 @sdhci_runtime_resume_host(ptr noundef %3, i32 noundef 0) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.mmc_host, ptr %54, i32 0, i32 17
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 8388608
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %86, label %59

59:                                               ; preds = %52
  %60 = tail call i32 @cqhci_resume(ptr noundef %54) #9
  br label %86

61:                                               ; preds = %47
  %62 = load ptr, ptr %40, align 4
  tail call void @clk_disable(ptr noundef %62) #9
  br label %63

63:                                               ; preds = %61, %44
  %64 = phi ptr [ %62, %61 ], [ %41, %44 ]
  %65 = phi i32 [ %50, %61 ], [ %45, %44 ]
  tail call void @clk_unprepare(ptr noundef %64) #9
  br label %66

66:                                               ; preds = %63, %39
  %67 = phi i32 [ %42, %39 ], [ %65, %63 ]
  %68 = load ptr, ptr %32, align 4
  tail call void @clk_disable(ptr noundef %68) #9
  br label %69

69:                                               ; preds = %66, %36
  %70 = phi ptr [ %68, %66 ], [ %33, %36 ]
  %71 = phi i32 [ %67, %66 ], [ %37, %36 ]
  tail call void @clk_unprepare(ptr noundef %70) #9
  br label %72

72:                                               ; preds = %69, %31
  %73 = phi i32 [ %34, %31 ], [ %71, %69 ]
  %74 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %74) #9
  br label %75

75:                                               ; preds = %72, %28
  %76 = phi ptr [ %74, %72 ], [ %25, %28 ]
  %77 = phi i32 [ %73, %72 ], [ %29, %28 ]
  tail call void @clk_unprepare(ptr noundef %76) #9
  br label %78

78:                                               ; preds = %75, %23
  %79 = phi i32 [ %26, %23 ], [ %77, %75 ]
  %80 = load ptr, ptr %4, align 4
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 8192
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 23
  tail call void @cpu_latency_qos_remove_request(ptr noundef %85) #9
  br label %86

86:                                               ; preds = %84, %78, %59, %52
  %87 = phi i32 [ %60, %59 ], [ 0, %52 ], [ %79, %84 ], [ %79, %78 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_timer_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_set_cd_wake(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_resume_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2153860392}
!9 = !{i64 462824}
!10 = !{i64 2153860715}
!11 = !{i64 2153861038}
!12 = !{i64 463242}
!13 = !{i64 2153862420}
!14 = !{i64 2148181695}
!15 = !{i64 680802, i64 2148170773, i64 2148170799, i64 2148170846, i64 2148170868, i64 2148170896, i64 2148170916}
!16 = !{i64 667371, i64 667396, i64 667418, i64 667434, i64 667446, i64 667466, i64 667490, i64 667506, i64 667518}
!17 = !{i64 2148181821}
!18 = !{i64 2153639097}
!19 = !{i64 2153632827}
!20 = !{i64 2153633303}
!21 = !{i64 2153836180}
!22 = !{i64 2153836392}
!23 = !{i64 2153837659}
!24 = !{i8 0, i8 2}
!25 = !{i64 2153837869}
!26 = !{i64 2153850929}
!27 = !{i64 2153851807}
!28 = !{i64 2153852296}
!29 = !{i64 2153853202}
!30 = !{i64 2153853711}
!31 = !{i64 2153853937}
!32 = !{i64 2153854497}
!33 = !{i64 2153854698}
!34 = !{i64 2153855264}
!35 = !{i64 2153855498}
!36 = !{i64 2153856056}
!37 = !{i64 2153856258}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 463022}
!40 = !{i64 2153832490}
!41 = !{i64 2153832697}
!42 = !{i64 2153833900}
!43 = !{i64 2153834122}
!44 = !{i64 2153834450}
!45 = !{i64 2153639519}
!46 = !{!"branch_weights", i32 -480270031, i32 1911165, i32 1910210, i32 1909255, i32 1908302, i32 1907348}
!47 = !{i64 2153640193}
!48 = !{i64 2153808533}
!49 = !{!"branch_weights", i32 -294967296, i32 2002000, i32 2001000, i32 2000000}
!50 = !{i64 2153811803}
!51 = !{i64 2153812246}
!52 = !{i64 2153812673}
!53 = !{i64 2153813103}
!54 = !{i64 462404}
!55 = !{i64 2153813476}
!56 = !{i64 2153813813}
!57 = !{i64 2153820229}
!58 = !{i64 2153820466}
!59 = !{i64 2153809121}
!60 = !{i64 2153809319}
!61 = !{i64 2153809650}
!62 = !{!"branch_weights", i32 1, i32 4001}
!63 = !{i64 2153810392}
!64 = !{i64 2153810591}
!65 = !{i64 2153810919}
!66 = !{i64 2153811238}
!67 = !{i64 2153814163}
!68 = !{i64 2153814384}
!69 = !{i64 2153637274}
!70 = !{i64 2153637614}
!71 = !{i64 2153814882}
!72 = !{i64 2153815103}
!73 = !{i64 2153815669}
!74 = !{i64 2153816014}
!75 = !{i64 2153816298}
!76 = !{i64 2153816615}
!77 = !{i64 2153817259}
!78 = !{i64 2153817458}
!79 = !{i64 2153817930}
!80 = !{i64 2153818144}
!81 = !{i64 2153818616}
!82 = !{i64 2153612736}
!83 = !{i64 2153611159}
!84 = !{i64 462627}
!85 = !{i64 2153818860}
!86 = !{i64 2153820862}
!87 = !{i64 2153821222}
!88 = !{i64 2153821442}
!89 = !{i64 2153822131}
!90 = !{i64 2153822345}
!91 = !{i64 2153822847}
!92 = !{i64 2153823146}
!93 = !{i64 2153823684}
!94 = !{i64 2153823876}
!95 = !{i64 2153611766}
!96 = !{i64 2153610097}
!97 = !{i64 2153827775}
!98 = !{i64 2153828115}
!99 = !{i64 2153829168}
!100 = !{i64 2153829380}
!101 = !{i64 2153829878}
!102 = !{i64 2153849068}
!103 = !{i64 2153849289}
!104 = !{i64 2153849619}
!105 = !{i64 2153849940}
!106 = !{i64 2153850279}
!107 = !{i64 2153839462}
!108 = !{i64 2153839954}
!109 = !{i64 2153840177}
!110 = !{i64 2153840508}
!111 = !{i64 2153840850}
!112 = !{i64 2153842404}
!113 = !{i64 2153842744}
!114 = !{i64 2153844153}
!115 = !{i64 2153844366}
!116 = !{i64 2153844689}
!117 = !{i64 2153845243}
!118 = !{i64 2153845456}
!119 = !{i64 2153846981}
!120 = !{i64 2153847321}
!121 = !{i64 2153848386}
!122 = !{i64 2153848590}
!123 = !{i64 2153635628}
!124 = !{i64 2153612317}
!125 = !{i64 2153610628}
!126 = !{i64 462204}
