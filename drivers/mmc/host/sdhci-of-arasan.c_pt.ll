; ModuleID = '/llk/IR/drivers/mmc/host/sdhci-of-arasan.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-of-arasan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_arasan_of_data = type { ptr, ptr, ptr }
%struct.sdhci_arasan_soc_ctl_map = type { %struct.sdhci_arasan_soc_ctl_field, %struct.sdhci_arasan_soc_ctl_field, %struct.sdhci_arasan_soc_ctl_field, i8 }
%struct.sdhci_arasan_soc_ctl_field = type { i32, i16, i16 }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.sdhci_arasan_clk_ops = type { ptr, ptr }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.sdhci_arasan_clk_data = type { %struct.clk_hw, ptr, %struct.clk_hw, ptr, [11 x i32], [11 x i32], ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.sdhci_arasan_data = type { ptr, ptr, ptr, i8, i8, %struct.sdhci_arasan_clk_data, ptr, ptr, ptr, i32 }
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr }

@__initcall__kmod_sdhci_of_arasan__273_1765_sdhci_arasan_driver_init6 = internal global ptr @sdhci_arasan_driver_init, section ".initcall6.init", align 4
@sdhci_arasan_driver = internal global %struct.platform_driver { ptr @sdhci_arasan_probe, ptr @sdhci_arasan_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_arasan_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sdhci_arasan_driver_exit = internal global ptr @sdhci_arasan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description274 = internal constant [67 x i8] c"sdhci_of_arasan.description=Driver for the Arasan SDHCI Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author275 = internal constant [69 x i8] c"sdhci_of_arasan.author=Soeren Brinkmann <soren.brinkmann@xilinx.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file276 = internal constant [54 x i8] c"sdhci_of_arasan.file=drivers/mmc/host/sdhci-of-arasan\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [28 x i8] c"sdhci_of_arasan.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"sdhci-arasan\00", align 1
@sdhci_arasan_of_match = internal constant [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-sdhci-5.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_arasan_rk3399_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-sdhci-5.1-emmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intel_lgm_emmc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-sdhci-5.1-sdxc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intel_lgm_sdxc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-sdhci-5.1-emmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intel_keembay_emmc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-sdhci-5.1-sd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intel_keembay_sd_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-sdhci-5.1-sdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intel_keembay_sdio_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,thunderbay-sdhci-5.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_arasan_thunderbay_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arasan,sdhci-8.9a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_arasan_generic_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arasan,sdhci-5.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_arasan_generic_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arasan,sdhci-4.9a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_arasan_generic_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynqmp-8.9a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_arasan_zynqmp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,versal-8.9a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_arasan_versal_data }, %struct.of_device_id zeroinitializer], align 4
@sdhci_arasan_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_arasan_suspend, ptr @sdhci_arasan_resume, ptr @sdhci_arasan_suspend, ptr @sdhci_arasan_resume, ptr @sdhci_arasan_suspend, ptr @sdhci_arasan_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"arasan,soc-ctl-syscon\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Can't get syscon\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"clk_ahb\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"clk_ahb clock not found.\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"clk_xin\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"clk_xin clock not found.\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Unable to enable AHB clock.\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Failed to set SD clock rate\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Unable to enable SD clock.\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"xlnx,fails-without-test-cd\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"xlnx,int-clock-stable-broken\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"rockchip,rk3399-sdhci-5.1\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"intel,keembay-sdhci-5.1-emmc\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"intel,keembay-sdhci-5.1-sd\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"intel,keembay-sdhci-5.1-sdio\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"intel,thunderbay-sdhci-5.1\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"xlnx,zynqmp-8.9a\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"parsing dt failed.\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"arasan,sdhci-5.1\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"phy_arasan\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"No phy for arasan,sdhci-5.1.\0A\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"phy_init err.\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"disable-cqe-dcmd\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"\014%s: Have regmap, but no soc-ctl-syscon\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"\014%s: Regmap write fail: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"DT has #clock-cells but no clock-output-names\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"Failed to add sdcard clock provider\0A\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"Failed to add sample clock provider\0A\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"xlnx,mio-bank\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"xlnx,versal-8.9a\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"clk-phase-legacy\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"clk-phase-mmc-hs\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"clk-phase-sd-hs\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"clk-phase-uhs-sdr12\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"clk-phase-uhs-sdr25\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"clk-phase-uhs-sdr50\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"clk-phase-uhs-sdr104\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"clk-phase-uhs-ddr50\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"clk-phase-mmc-ddr52\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"clk-phase-mmc-hs200\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"clk-phase-mmc-hs400\00", align 1
@sdhci_arasan_cqhci_ops = internal constant %struct.cqhci_host_ops { ptr @sdhci_arasan_dumpregs, ptr null, ptr null, ptr @sdhci_arasan_cqe_enable, ptr @sdhci_cqe_disable, ptr null, ptr null, ptr null }, align 4
@sdhci_arasan_rk3399_data = internal global %struct.sdhci_arasan_of_data { ptr @rk3399_soc_ctl_map, ptr @sdhci_arasan_cqe_pdata, ptr @arasan_clk_ops }, align 4
@intel_lgm_emmc_data = internal global %struct.sdhci_arasan_of_data { ptr @intel_lgm_emmc_soc_ctl_map, ptr @sdhci_arasan_cqe_pdata, ptr @arasan_clk_ops }, align 4
@intel_lgm_sdxc_data = internal global %struct.sdhci_arasan_of_data { ptr @intel_lgm_sdxc_soc_ctl_map, ptr @sdhci_arasan_cqe_pdata, ptr @arasan_clk_ops }, align 4
@intel_keembay_emmc_data = internal global %struct.sdhci_arasan_of_data { ptr @intel_keembay_soc_ctl_map, ptr @sdhci_keembay_emmc_pdata, ptr @arasan_clk_ops }, align 4
@intel_keembay_sd_data = internal global %struct.sdhci_arasan_of_data { ptr @intel_keembay_soc_ctl_map, ptr @sdhci_keembay_sd_pdata, ptr @arasan_clk_ops }, align 4
@intel_keembay_sdio_data = internal global %struct.sdhci_arasan_of_data { ptr @intel_keembay_soc_ctl_map, ptr @sdhci_keembay_sdio_pdata, ptr @arasan_clk_ops }, align 4
@sdhci_arasan_thunderbay_data = internal constant %struct.sdhci_arasan_of_data { ptr @thunderbay_soc_ctl_map, ptr @sdhci_arasan_thunderbay_pdata, ptr @arasan_clk_ops }, align 4
@sdhci_arasan_generic_data = internal global %struct.sdhci_arasan_of_data { ptr null, ptr @sdhci_arasan_pdata, ptr @arasan_clk_ops }, align 4
@sdhci_arasan_zynqmp_data = internal global %struct.sdhci_arasan_of_data { ptr null, ptr @sdhci_arasan_zynqmp_pdata, ptr @zynqmp_clk_ops }, align 4
@sdhci_arasan_versal_data = internal global %struct.sdhci_arasan_of_data { ptr null, ptr @sdhci_arasan_zynqmp_pdata, ptr @versal_clk_ops }, align 4
@rk3399_soc_ctl_map = internal constant %struct.sdhci_arasan_soc_ctl_map { %struct.sdhci_arasan_soc_ctl_field { i32 61440, i16 8, i16 8 }, %struct.sdhci_arasan_soc_ctl_field { i32 61484, i16 8, i16 0 }, %struct.sdhci_arasan_soc_ctl_field zeroinitializer, i8 1 }, align 4
@sdhci_arasan_cqe_pdata = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_arasan_cqe_ops, i32 33554432, i32 32776 }, align 4
@arasan_clk_ops = internal constant %struct.sdhci_arasan_clk_ops { ptr @arasan_sdcardclk_ops, ptr @arasan_sampleclk_ops }, align 4
@sdhci_arasan_cqe_ops = internal constant %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_set_clock, ptr @sdhci_set_power_and_bus_voltage, ptr @sdhci_arasan_cqhci_irq, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_arasan_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.45 = private unnamed_addr constant [28 x i8] c"\013%s: Cannot power on phy.\0A\00", align 1
@arasan_sdcardclk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_sdcardclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@arasan_sampleclk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_sampleclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@intel_lgm_emmc_soc_ctl_map = internal constant %struct.sdhci_arasan_soc_ctl_map { %struct.sdhci_arasan_soc_ctl_field { i32 160, i16 8, i16 2 }, %struct.sdhci_arasan_soc_ctl_field { i32 0, i16 -1, i16 -1 }, %struct.sdhci_arasan_soc_ctl_field zeroinitializer, i8 0 }, align 4
@intel_lgm_sdxc_soc_ctl_map = internal constant %struct.sdhci_arasan_soc_ctl_map { %struct.sdhci_arasan_soc_ctl_field { i32 128, i16 8, i16 2 }, %struct.sdhci_arasan_soc_ctl_field { i32 0, i16 -1, i16 -1 }, %struct.sdhci_arasan_soc_ctl_field zeroinitializer, i8 0 }, align 4
@intel_keembay_soc_ctl_map = internal constant %struct.sdhci_arasan_soc_ctl_map { %struct.sdhci_arasan_soc_ctl_field { i32 0, i16 8, i16 14 }, %struct.sdhci_arasan_soc_ctl_field { i32 4, i16 8, i16 14 }, %struct.sdhci_arasan_soc_ctl_field { i32 4, i16 1, i16 24 }, i8 0 }, align 4
@sdhci_keembay_emmc_pdata = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_arasan_cqe_ops, i32 101188480, i32 35592 }, align 4
@sdhci_keembay_sd_pdata = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_arasan_ops, i32 101188480, i32 33560 }, align 4
@sdhci_arasan_ops = internal constant %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_set_clock, ptr @sdhci_set_power_and_bus_voltage, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_arasan_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sdhci_keembay_sdio_pdata = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_arasan_ops, i32 101188480, i32 33289 }, align 4
@thunderbay_soc_ctl_map = internal constant %struct.sdhci_arasan_soc_ctl_map { %struct.sdhci_arasan_soc_ctl_field { i32 0, i16 8, i16 14 }, %struct.sdhci_arasan_soc_ctl_field { i32 4, i16 8, i16 14 }, %struct.sdhci_arasan_soc_ctl_field { i32 4, i16 1, i16 24 }, i8 0 }, align 4
@sdhci_arasan_thunderbay_pdata = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_arasan_cqe_ops, i32 100663296, i32 35080 }, align 4
@sdhci_arasan_pdata = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_arasan_ops, i32 33554432, i32 33032 }, align 4
@sdhci_arasan_zynqmp_pdata = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_arasan_ops, i32 0, i32 33032 }, align 4
@zynqmp_clk_ops = internal constant %struct.sdhci_arasan_clk_ops { ptr @zynqmp_sdcardclk_ops, ptr @zynqmp_sampleclk_ops }, align 4
@zynqmp_sdcardclk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_sdcardclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_zynqmp_sdcardclk_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@zynqmp_sampleclk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_sampleclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_zynqmp_sampleclk_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.46 = private unnamed_addr constant [34 x i8] c"\013Error setting Output Tap Delay\0A\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"\013Error setting Input Tap Delay\0A\00", align 1
@versal_clk_ops = internal constant %struct.sdhci_arasan_clk_ops { ptr @versal_sdcardclk_ops, ptr @versal_sampleclk_ops }, align 4
@versal_sdcardclk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_sdcardclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_versal_sdcardclk_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@versal_sampleclk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_sampleclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_versal_sampleclk_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.49 = private unnamed_addr constant [23 x i8] c"Cannot power off phy.\0A\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"Cannot resume host.\0A\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"Cannot enable AHB clock.\0A\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"Cannot enable SD clock.\0A\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"Cannot power on phy.\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description274, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_license277, ptr @__exitcall_sdhci_arasan_driver_exit, ptr @__initcall__kmod_sdhci_of_arasan__273_1765_sdhci_arasan_driver_init6, ptr @sdhci_arasan_driver_exit], section "llvm.metadata"
@switch.table.sdhci_versal_sdcardclk_set_phase = private unnamed_addr constant [9 x i32] [i32 30, i32 30, i32 0, i32 30, i32 15, i32 8, i32 30, i32 30, i32 8], align 4
@switch.table.sdhci_versal_sampleclk_set_phase = private unnamed_addr constant [9 x i32] [i32 120, i32 120, i32 0, i32 120, i32 60, i32 30, i32 120, i32 120, i32 30], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdhci_arasan_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_arasan_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sdhci_arasan_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_arasan_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_arasan_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x i32], align 8
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i32], align 8
  %5 = alloca [2 x i32], align 8
  %6 = alloca [2 x i32], align 8
  %7 = alloca [2 x i32], align 8
  %8 = alloca [2 x i32], align 8
  %9 = alloca [2 x i32], align 8
  %10 = alloca [2 x i32], align 8
  %11 = alloca [2 x i32], align 8
  %12 = alloca [2 x i32], align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.clk_init_data, align 4
  %15 = alloca ptr, align 4
  %16 = alloca %struct.clk_init_data, align 4
  %17 = alloca ptr, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.of_phandle_args, align 4
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = tail call ptr @of_device_get_match_data(ptr noundef %20) #8
  %24 = getelementptr inbounds %struct.sdhci_arasan_of_data, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call ptr @sdhci_pltfm_init(ptr noundef %0, ptr noundef %25, i32 noundef 160) #8
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = ptrtoint ptr %26 to i32
  br label %531

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 0, i32 81
  %32 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 5
  store ptr %26, ptr %32, align 4
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 15
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.sdhci_arasan_of_data, ptr %23, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 13, i32 1
  store ptr %36, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %19) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %19, i8 0, i32 72, i1 false) #8, !annotation !8
  %38 = call i32 @__of_parse_phandle_with_args(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %19) #8
  %39 = icmp ne i32 %38, 0
  %40 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %19) #8
  %41 = icmp eq ptr %40, null
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %30
  %44 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %40) #8
  %45 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 14
  store ptr %44, ptr %45, align 4
  call void @of_node_put(ptr noundef nonnull %40) #8
  %46 = load ptr, ptr %45, align 4
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = ptrtoint ptr %46 to i32
  %50 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %20, i32 noundef %49, ptr noundef nonnull @.str.2) #8
  br label %529

51:                                               ; preds = %43, %30
  call void @sdhci_get_property(ptr noundef %0) #8
  %52 = call ptr @devm_clk_get(ptr noundef %20, ptr noundef nonnull @.str.3) #8
  %53 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 6
  store ptr %52, ptr %53, align 4
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = ptrtoint ptr %52 to i32
  %57 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %20, i32 noundef %56, ptr noundef nonnull @.str.4) #8
  br label %529

58:                                               ; preds = %51
  %59 = call ptr @devm_clk_get(ptr noundef %20, ptr noundef nonnull @.str.5) #8
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = ptrtoint ptr %59 to i32
  %63 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %20, i32 noundef %62, ptr noundef nonnull @.str.6) #8
  br label %529

64:                                               ; preds = %58
  %65 = load ptr, ptr %53, align 4
  %66 = call i32 @clk_prepare(ptr noundef %65) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = call i32 @clk_enable(ptr noundef %65) #8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  call void @clk_unprepare(ptr noundef %65) #8
  br label %72

72:                                               ; preds = %71, %64
  %73 = phi i32 [ %69, %71 ], [ %66, %64 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.7) #9
  br label %529

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = call i32 @clk_get_rate(ptr noundef %59) #8
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %75, align 4
  %83 = call i32 @clk_set_rate(ptr noundef %59, i32 noundef %82) #8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.8) #9
  br label %526

86:                                               ; preds = %81, %78, %74
  %87 = call i32 @clk_prepare(ptr noundef %59) #8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = call i32 @clk_enable(ptr noundef %59) #8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  call void @clk_unprepare(ptr noundef %59) #8
  br label %93

93:                                               ; preds = %92, %86
  %94 = phi i32 [ %90, %92 ], [ %87, %86 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.9) #9
  br label %526

95:                                               ; preds = %89
  %96 = call ptr @of_find_property(ptr noundef %22, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 16
  %100 = load i32, ptr %99, align 4
  %101 = or i32 %100, 1
  store i32 %101, ptr %99, align 4
  br label %102

102:                                              ; preds = %98, %95
  %103 = call ptr @of_find_property(ptr noundef %22, ptr noundef nonnull @.str.11, ptr noundef null) #8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 16
  %107 = load i32, ptr %106, align 4
  %108 = or i32 %107, 2
  store i32 %108, ptr %106, align 4
  br label %109

109:                                              ; preds = %105, %102
  store ptr %59, ptr %31, align 64
  %110 = call i32 @of_device_is_compatible(ptr noundef %22, ptr noundef nonnull @.str.12) #8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %133, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %34, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %133, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 14
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 0, i32 10
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.mmc_host, ptr %121, i32 0, i32 1, i32 3
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.mmc_host, ptr %121, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  br label %128

128:                                              ; preds = %125, %119
  %129 = phi ptr [ %127, %125 ], [ %123, %119 ]
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %129) #9
  br label %133

131:                                              ; preds = %115
  %132 = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_map, ptr %113, i32 0, i32 1
  call fastcc void @sdhci_arasan_syscon_write(ptr noundef %26, ptr noundef %132, i32 noundef 0) #8
  br label %133

133:                                              ; preds = %131, %128, %112, %109
  %134 = call i32 @of_device_is_compatible(ptr noundef %22, ptr noundef nonnull @.str.13) #8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = call i32 @of_device_is_compatible(ptr noundef %22, ptr noundef nonnull @.str.14) #8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = call i32 @of_device_is_compatible(ptr noundef %22, ptr noundef nonnull @.str.15) #8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = call i32 @of_device_is_compatible(ptr noundef %22, ptr noundef nonnull @.str.16) #8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %192, label %145

145:                                              ; preds = %142, %139, %136, %133
  %146 = load ptr, ptr %34, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %186, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 14
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %164

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 0, i32 10
  %154 = load ptr, ptr %153, align 8
  %155 = getelementptr inbounds %struct.mmc_host, ptr %154, i32 0, i32 1, i32 3
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.mmc_host, ptr %154, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  br label %161

161:                                              ; preds = %158, %152
  %162 = phi ptr [ %160, %158 ], [ %156, %152 ]
  %163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %162) #9
  br label %166

164:                                              ; preds = %148
  %165 = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_map, ptr %146, i32 0, i32 1
  call fastcc void @sdhci_arasan_syscon_write(ptr noundef %26, ptr noundef %165, i32 noundef 0) #8
  br label %166

166:                                              ; preds = %164, %161
  %167 = load ptr, ptr %34, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %186, label %169

169:                                              ; preds = %166
  %170 = load ptr, ptr %149, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %184

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 0, i32 10
  %174 = load ptr, ptr %173, align 8
  %175 = getelementptr inbounds %struct.mmc_host, ptr %174, i32 0, i32 1, i32 3
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.mmc_host, ptr %174, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  br label %181

181:                                              ; preds = %178, %172
  %182 = phi ptr [ %180, %178 ], [ %176, %172 ]
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %182) #9
  br label %186

184:                                              ; preds = %169
  %185 = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_map, ptr %167, i32 0, i32 2
  call fastcc void @sdhci_arasan_syscon_write(ptr noundef %26, ptr noundef %185, i32 noundef 0) #8
  br label %186

186:                                              ; preds = %184, %181, %166, %145
  %187 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 0, i32 10
  %188 = load ptr, ptr %187, align 8
  %189 = getelementptr inbounds %struct.mmc_host, ptr %188, i32 0, i32 16
  %190 = load i32, ptr %189, align 8
  %191 = or i32 %190, 512
  store i32 %191, ptr %189, align 8
  br label %192

192:                                              ; preds = %186, %142
  %193 = load ptr, ptr %34, align 4
  %194 = load ptr, ptr %31, align 64
  %195 = call i32 @clk_get_rate(ptr noundef %194) #8
  %196 = add i32 %195, 500000
  %197 = zext i32 %196 to i64
  %198 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %197) #10, !srcloc !9
  %199 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %197, i64 %198, i32 0) #10, !srcloc !10
  %200 = extractvalue { i64, i32 } %199, 0
  %201 = lshr i64 %200, 18
  %202 = trunc i64 %201 to i32
  %203 = icmp eq ptr %193, null
  br i1 %203, label %221, label %204

204:                                              ; preds = %192
  %205 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 14
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %220

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 0, i32 10
  %210 = load ptr, ptr %209, align 8
  %211 = getelementptr inbounds %struct.mmc_host, ptr %210, i32 0, i32 1, i32 3
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.mmc_host, ptr %210, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  br label %217

217:                                              ; preds = %214, %208
  %218 = phi ptr [ %216, %214 ], [ %212, %208 ]
  %219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %218) #9
  br label %221

220:                                              ; preds = %204
  call fastcc void @sdhci_arasan_syscon_write(ptr noundef %26, ptr noundef nonnull %193, i32 noundef %202) #8
  br label %221

221:                                              ; preds = %220, %217, %192
  %222 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #8
  store i32 0, ptr %18, align 4
  %223 = call i32 @of_property_read_variable_u32_array(ptr noundef %222, ptr noundef nonnull @.str.26, ptr noundef nonnull %18, i32 noundef 1, i32 noundef 0) #8
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %287, label %225

225:                                              ; preds = %221
  %226 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %16) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %16, i8 0, i32 28, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #8
  %227 = call i32 @of_property_read_string_helper(ptr noundef %226, ptr noundef nonnull @.str.27, ptr noundef nonnull %16, i32 noundef 1, i32 noundef 0) #8
  %228 = icmp sgt i32 %227, -1
  br i1 %228, label %229, label %248

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 9
  %231 = call ptr @__clk_get_name(ptr noundef %59) #8
  store ptr %231, ptr %17, align 4
  %232 = getelementptr inbounds %struct.clk_init_data, ptr %16, i32 0, i32 2
  store ptr %17, ptr %232, align 4
  %233 = getelementptr inbounds %struct.clk_init_data, ptr %16, i32 0, i32 5
  store i8 1, ptr %233, align 4
  %234 = getelementptr inbounds %struct.clk_init_data, ptr %16, i32 0, i32 6
  store i32 64, ptr %234, align 4
  %235 = load ptr, ptr %37, align 4
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.clk_init_data, ptr %16, i32 0, i32 1
  store ptr %236, ptr %237, align 4
  %238 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 11
  store ptr %16, ptr %238, align 4
  %239 = call ptr @devm_clk_register(ptr noundef %20, ptr noundef %230) #8
  %240 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 12
  store ptr %239, ptr %240, align 4
  %241 = icmp ugt ptr %239, inttoptr (i32 -4096 to ptr)
  br i1 %241, label %251, label %242

242:                                              ; preds = %229
  store ptr null, ptr %238, align 4
  %243 = call i32 @of_clk_add_provider(ptr noundef %226, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %239) #8
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %16) #8
  %246 = load i32, ptr %18, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %287, label %253

248:                                              ; preds = %242, %225
  %249 = phi ptr [ @.str.28, %225 ], [ @.str.29, %242 ]
  %250 = phi i32 [ %227, %225 ], [ %243, %242 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull %249) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #8
  br label %524

251:                                              ; preds = %229
  %252 = ptrtoint ptr %239 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %16) #8
  br label %288

253:                                              ; preds = %245
  %254 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %14) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %14, i8 0, i32 28, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  %255 = call i32 @of_property_read_string_helper(ptr noundef %254, ptr noundef nonnull @.str.27, ptr noundef nonnull %14, i32 noundef 1, i32 noundef 1) #8
  %256 = icmp sgt i32 %255, -1
  br i1 %256, label %257, label %275

257:                                              ; preds = %253
  %258 = call ptr @__clk_get_name(ptr noundef %59) #8
  store ptr %258, ptr %15, align 4
  %259 = getelementptr inbounds %struct.clk_init_data, ptr %14, i32 0, i32 2
  store ptr %15, ptr %259, align 4
  %260 = getelementptr inbounds %struct.clk_init_data, ptr %14, i32 0, i32 5
  store i8 1, ptr %260, align 4
  %261 = getelementptr inbounds %struct.clk_init_data, ptr %14, i32 0, i32 6
  store i32 64, ptr %261, align 4
  %262 = load ptr, ptr %37, align 4
  %263 = getelementptr inbounds %struct.sdhci_arasan_clk_ops, ptr %262, i32 0, i32 1
  %264 = load ptr, ptr %263, align 4
  %265 = getelementptr inbounds %struct.clk_init_data, ptr %14, i32 0, i32 1
  store ptr %264, ptr %265, align 4
  %266 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 13
  %267 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 15
  store ptr %14, ptr %267, align 4
  %268 = call ptr @devm_clk_register(ptr noundef %20, ptr noundef %266) #8
  %269 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 16
  store ptr %268, ptr %269, align 4
  %270 = icmp ugt ptr %268, inttoptr (i32 -4096 to ptr)
  br i1 %270, label %278, label %271

271:                                              ; preds = %257
  store ptr null, ptr %267, align 4
  %272 = call i32 @of_clk_add_provider(ptr noundef %254, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %268) #8
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %14) #8
  br label %287

275:                                              ; preds = %271, %253
  %276 = phi ptr [ @.str.28, %253 ], [ @.str.30, %271 ]
  %277 = phi i32 [ %255, %253 ], [ %272, %271 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull %276) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %14) #8
  br label %280

278:                                              ; preds = %257
  %279 = ptrtoint ptr %268 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %14) #8
  br label %280

280:                                              ; preds = %278, %275
  %281 = phi i32 [ %277, %275 ], [ %279, %278 ]
  %282 = load ptr, ptr %21, align 8
  %283 = call ptr @of_find_property(ptr noundef %282, ptr noundef nonnull @.str.26, ptr noundef null) #8
  %284 = icmp eq ptr %283, null
  br i1 %284, label %288, label %285

285:                                              ; preds = %280
  %286 = load ptr, ptr %21, align 8
  call void @of_clk_del_provider(ptr noundef %286) #8
  br label %288

287:                                              ; preds = %274, %245, %221
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #8
  br label %291

288:                                              ; preds = %285, %280, %251
  %289 = phi i32 [ %252, %251 ], [ %281, %280 ], [ %281, %285 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #8
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %524

291:                                              ; preds = %288, %287
  %292 = call i32 @of_device_is_compatible(ptr noundef %22, ptr noundef nonnull @.str.17) #8
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %302, label %294

294:                                              ; preds = %291
  %295 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 0, i32 11, i32 12
  store ptr @arasan_zynqmp_execute_tuning, ptr %295, align 4
  %296 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 16
  %297 = load i32, ptr %296, align 4
  %298 = or i32 %297, 4
  store i32 %298, ptr %296, align 4
  %299 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 0, i32 1
  %300 = load i32, ptr %299, align 4
  %301 = or i32 %300, 268435456
  store i32 %301, ptr %299, align 4
  br label %302

302:                                              ; preds = %294, %291
  %303 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  store i32 0, ptr %13, align 4
  %304 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 12
  store ptr @sdhci_arasan_set_clk_delays, ptr %304, align 4
  %305 = load ptr, ptr %21, align 8
  %306 = call i32 @of_device_is_compatible(ptr noundef %305, ptr noundef nonnull @.str.17) #8
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %336, label %308

308:                                              ; preds = %302
  %309 = load ptr, ptr %21, align 8
  %310 = call i32 @of_property_read_variable_u32_array(ptr noundef %309, ptr noundef nonnull @.str.32, ptr noundef nonnull %13, i32 noundef 1, i32 noundef 0) #8
  %311 = load i32, ptr %13, align 4
  %312 = icmp eq i32 %311, 2
  %313 = select i1 %312, i32 90, i32 135
  %314 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 17
  store i32 0, ptr %314, align 4
  %315 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 1
  store i32 0, ptr %315, align 4
  %316 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 18
  store i32 63, ptr %316, align 4
  %317 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 2
  store i32 72, ptr %317, align 4
  %318 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 19
  store i32 63, ptr %318, align 4
  %319 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 3
  store i32 60, ptr %319, align 4
  %320 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 20
  store i32 0, ptr %320, align 4
  %321 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 4
  store i32 0, ptr %321, align 4
  %322 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 21
  store i32 63, ptr %322, align 4
  %323 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 5
  store i32 60, ptr %323, align 4
  %324 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 22
  store i32 0, ptr %324, align 4
  %325 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 6
  store i32 72, ptr %325, align 4
  %326 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 23
  store i32 0, ptr %326, align 4
  %327 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 7
  store i32 %313, ptr %327, align 4
  %328 = getelementptr %struct.sdhci_arasan_clk_data, ptr %303, i32 0, i32 4, i32 7
  store i32 183, ptr %328, align 4
  %329 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 8
  store i32 48, ptr %329, align 4
  %330 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 12
  store i32 54, ptr %330, align 4
  %331 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 9
  store i32 72, ptr %331, align 4
  %332 = getelementptr %struct.sdhci_arasan_clk_data, ptr %303, i32 0, i32 4, i32 9
  store i32 0, ptr %332, align 4
  %333 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 10
  store i32 %313, ptr %333, align 4
  %334 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13
  store i32 0, ptr %334, align 4
  %335 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 11
  store i32 0, ptr %335, align 4
  br label %336

336:                                              ; preds = %308, %302
  %337 = load ptr, ptr %21, align 8
  %338 = call i32 @of_device_is_compatible(ptr noundef %337, ptr noundef nonnull @.str.33) #8
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %363, label %340

340:                                              ; preds = %336
  %341 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 17
  store i32 0, ptr %341, align 4
  %342 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 1
  store i32 0, ptr %342, align 4
  %343 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 18
  store i32 132, ptr %343, align 4
  %344 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 2
  store i32 60, ptr %344, align 4
  %345 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 19
  store i32 132, ptr %345, align 4
  %346 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 3
  store i32 48, ptr %346, align 4
  %347 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 20
  store i32 0, ptr %347, align 4
  %348 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 4
  store i32 0, ptr %348, align 4
  %349 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 21
  store i32 132, ptr %349, align 4
  %350 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 5
  store i32 48, ptr %350, align 4
  %351 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 22
  store i32 0, ptr %351, align 4
  %352 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 6
  store i32 72, ptr %352, align 4
  %353 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 23
  store i32 0, ptr %353, align 4
  %354 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 7
  store i32 90, ptr %354, align 4
  %355 = getelementptr %struct.sdhci_arasan_clk_data, ptr %303, i32 0, i32 4, i32 7
  store i32 162, ptr %355, align 4
  %356 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 8
  store i32 36, ptr %356, align 4
  %357 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 12
  store i32 90, ptr %357, align 4
  %358 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 9
  store i32 60, ptr %358, align 4
  %359 = getelementptr %struct.sdhci_arasan_clk_data, ptr %303, i32 0, i32 4, i32 9
  store i32 0, ptr %359, align 4
  %360 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 10
  store i32 90, ptr %360, align 4
  %361 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13
  store i32 0, ptr %361, align 4
  %362 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 11
  store i32 0, ptr %362, align 4
  br label %363

363:                                              ; preds = %340, %336
  %364 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 0, ptr %12, align 8
  %365 = call i32 @of_property_read_variable_u32_array(ptr noundef %364, ptr noundef nonnull @.str.34, ptr noundef nonnull %12, i32 noundef 2, i32 noundef 0) #8
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %373, label %367

367:                                              ; preds = %363
  %368 = load i32, ptr %12, align 8
  %369 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 17
  store i32 %368, ptr %369, align 4
  %370 = getelementptr inbounds [2 x i32], ptr %12, i32 0, i32 1
  %371 = load i32, ptr %370, align 4
  %372 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 1
  store i32 %371, ptr %372, align 4
  br label %373

373:                                              ; preds = %367, %363
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  %374 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 0, ptr %11, align 8
  %375 = call i32 @of_property_read_variable_u32_array(ptr noundef %374, ptr noundef nonnull @.str.35, ptr noundef nonnull %11, i32 noundef 2, i32 noundef 0) #8
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %383, label %377

377:                                              ; preds = %373
  %378 = load i32, ptr %11, align 8
  %379 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 18
  store i32 %378, ptr %379, align 4
  %380 = getelementptr inbounds [2 x i32], ptr %11, i32 0, i32 1
  %381 = load i32, ptr %380, align 4
  %382 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 2
  store i32 %381, ptr %382, align 4
  br label %383

383:                                              ; preds = %377, %373
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  %384 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 0, ptr %10, align 8
  %385 = call i32 @of_property_read_variable_u32_array(ptr noundef %384, ptr noundef nonnull @.str.36, ptr noundef nonnull %10, i32 noundef 2, i32 noundef 0) #8
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %393, label %387

387:                                              ; preds = %383
  %388 = load i32, ptr %10, align 8
  %389 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 19
  store i32 %388, ptr %389, align 4
  %390 = getelementptr inbounds [2 x i32], ptr %10, i32 0, i32 1
  %391 = load i32, ptr %390, align 4
  %392 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 3
  store i32 %391, ptr %392, align 4
  br label %393

393:                                              ; preds = %387, %383
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  %394 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  store i64 0, ptr %9, align 8
  %395 = call i32 @of_property_read_variable_u32_array(ptr noundef %394, ptr noundef nonnull @.str.37, ptr noundef nonnull %9, i32 noundef 2, i32 noundef 0) #8
  %396 = icmp slt i32 %395, 0
  br i1 %396, label %403, label %397

397:                                              ; preds = %393
  %398 = load i32, ptr %9, align 8
  %399 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 20
  store i32 %398, ptr %399, align 4
  %400 = getelementptr inbounds [2 x i32], ptr %9, i32 0, i32 1
  %401 = load i32, ptr %400, align 4
  %402 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 4
  store i32 %401, ptr %402, align 4
  br label %403

403:                                              ; preds = %397, %393
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  %404 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  store i64 0, ptr %8, align 8
  %405 = call i32 @of_property_read_variable_u32_array(ptr noundef %404, ptr noundef nonnull @.str.38, ptr noundef nonnull %8, i32 noundef 2, i32 noundef 0) #8
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %413, label %407

407:                                              ; preds = %403
  %408 = load i32, ptr %8, align 8
  %409 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 21
  store i32 %408, ptr %409, align 4
  %410 = getelementptr inbounds [2 x i32], ptr %8, i32 0, i32 1
  %411 = load i32, ptr %410, align 4
  %412 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 5
  store i32 %411, ptr %412, align 4
  br label %413

413:                                              ; preds = %407, %403
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  %414 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store i64 0, ptr %7, align 8
  %415 = call i32 @of_property_read_variable_u32_array(ptr noundef %414, ptr noundef nonnull @.str.39, ptr noundef nonnull %7, i32 noundef 2, i32 noundef 0) #8
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %423, label %417

417:                                              ; preds = %413
  %418 = load i32, ptr %7, align 8
  %419 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 22
  store i32 %418, ptr %419, align 4
  %420 = getelementptr inbounds [2 x i32], ptr %7, i32 0, i32 1
  %421 = load i32, ptr %420, align 4
  %422 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 6
  store i32 %421, ptr %422, align 4
  br label %423

423:                                              ; preds = %417, %413
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  %424 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8
  %425 = call i32 @of_property_read_variable_u32_array(ptr noundef %424, ptr noundef nonnull @.str.40, ptr noundef nonnull %6, i32 noundef 2, i32 noundef 0) #8
  %426 = icmp slt i32 %425, 0
  br i1 %426, label %433, label %427

427:                                              ; preds = %423
  %428 = load i32, ptr %6, align 8
  %429 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 23
  store i32 %428, ptr %429, align 4
  %430 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  %431 = load i32, ptr %430, align 4
  %432 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 7
  store i32 %431, ptr %432, align 4
  br label %433

433:                                              ; preds = %427, %423
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  %434 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 0, ptr %5, align 8
  %435 = call i32 @of_property_read_variable_u32_array(ptr noundef %434, ptr noundef nonnull @.str.41, ptr noundef nonnull %5, i32 noundef 2, i32 noundef 0) #8
  %436 = icmp slt i32 %435, 0
  br i1 %436, label %443, label %437

437:                                              ; preds = %433
  %438 = load i32, ptr %5, align 8
  %439 = getelementptr %struct.sdhci_arasan_clk_data, ptr %303, i32 0, i32 4, i32 7
  store i32 %438, ptr %439, align 4
  %440 = getelementptr inbounds [2 x i32], ptr %5, i32 0, i32 1
  %441 = load i32, ptr %440, align 4
  %442 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 8
  store i32 %441, ptr %442, align 4
  br label %443

443:                                              ; preds = %437, %433
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  %444 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8
  %445 = call i32 @of_property_read_variable_u32_array(ptr noundef %444, ptr noundef nonnull @.str.42, ptr noundef nonnull %4, i32 noundef 2, i32 noundef 0) #8
  %446 = icmp slt i32 %445, 0
  br i1 %446, label %453, label %447

447:                                              ; preds = %443
  %448 = load i32, ptr %4, align 8
  %449 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 12
  store i32 %448, ptr %449, align 4
  %450 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %451 = load i32, ptr %450, align 4
  %452 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 9
  store i32 %451, ptr %452, align 4
  br label %453

453:                                              ; preds = %447, %443
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  %454 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8
  %455 = call i32 @of_property_read_variable_u32_array(ptr noundef %454, ptr noundef nonnull @.str.43, ptr noundef nonnull %3, i32 noundef 2, i32 noundef 0) #8
  %456 = icmp slt i32 %455, 0
  br i1 %456, label %463, label %457

457:                                              ; preds = %453
  %458 = load i32, ptr %3, align 8
  %459 = getelementptr %struct.sdhci_arasan_clk_data, ptr %303, i32 0, i32 4, i32 9
  store i32 %458, ptr %459, align 4
  %460 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %461 = load i32, ptr %460, align 4
  %462 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 10
  store i32 %461, ptr %462, align 4
  br label %463

463:                                              ; preds = %457, %453
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %464 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8
  %465 = call i32 @of_property_read_variable_u32_array(ptr noundef %464, ptr noundef nonnull @.str.44, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #8
  %466 = icmp slt i32 %465, 0
  br i1 %466, label %473, label %467

467:                                              ; preds = %463
  %468 = load i32, ptr %2, align 8
  %469 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13
  store i32 %468, ptr %469, align 4
  %470 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %471 = load i32, ptr %470, align 4
  %472 = getelementptr %struct.sdhci_host, ptr %26, i32 1, i32 13, i32 11
  store i32 %471, ptr %472, align 4
  br label %473

473:                                              ; preds = %467, %463
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  %474 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 0, i32 10
  %475 = load ptr, ptr %474, align 8
  %476 = call i32 @mmc_of_parse(ptr noundef %475) #8
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %480, label %478

478:                                              ; preds = %473
  %479 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %20, i32 noundef %476, ptr noundef nonnull @.str.18) #8
  br label %517

480:                                              ; preds = %473
  %481 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 1, i32 11, i32 7
  store ptr inttoptr (i32 -19 to ptr), ptr %481, align 4
  %482 = call i32 @of_device_is_compatible(ptr noundef %22, ptr noundef nonnull @.str.19) #8
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %509, label %484

484:                                              ; preds = %480
  %485 = call ptr @devm_phy_get(ptr noundef %20, ptr noundef nonnull @.str.20) #8
  store ptr %485, ptr %481, align 4
  %486 = icmp ugt ptr %485, inttoptr (i32 -4096 to ptr)
  br i1 %486, label %487, label %490

487:                                              ; preds = %484
  %488 = ptrtoint ptr %485 to i32
  %489 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %20, i32 noundef %488, ptr noundef nonnull @.str.21) #8
  br label %517

490:                                              ; preds = %484
  %491 = call i32 @phy_init(ptr noundef %485) #8
  %492 = icmp slt i32 %491, 0
  br i1 %492, label %493, label %494

493:                                              ; preds = %490
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.22) #9
  br label %517

494:                                              ; preds = %490
  %495 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 0, i32 11, i32 18
  store ptr @sdhci_arasan_hs400_enhanced_strobe, ptr %495, align 4
  %496 = getelementptr inbounds %struct.sdhci_host, ptr %26, i32 0, i32 11, i32 10
  store ptr @sdhci_arasan_voltage_switch, ptr %496, align 4
  %497 = getelementptr inbounds %struct.sdhci_arasan_data, ptr %32, i32 0, i32 4
  store i8 1, ptr %497, align 1
  %498 = load ptr, ptr %474, align 8
  %499 = getelementptr inbounds %struct.mmc_host, ptr %498, i32 0, i32 17
  %500 = load i32, ptr %499, align 4
  %501 = or i32 %500, 8388608
  store i32 %501, ptr %499, align 4
  %502 = call ptr @of_find_property(ptr noundef %22, ptr noundef nonnull @.str.23, ptr noundef null) #8
  %503 = icmp eq ptr %502, null
  br i1 %503, label %504, label %509

504:                                              ; preds = %494
  %505 = load ptr, ptr %474, align 8
  %506 = getelementptr inbounds %struct.mmc_host, ptr %505, i32 0, i32 17
  %507 = load i32, ptr %506, align 4
  %508 = or i32 %507, 16777216
  store i32 %508, ptr %506, align 4
  br label %509

509:                                              ; preds = %504, %494, %480
  %510 = call fastcc i32 @sdhci_arasan_add_host(ptr noundef %32)
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %531, label %512

512:                                              ; preds = %509
  %513 = load ptr, ptr %481, align 4
  %514 = icmp ugt ptr %513, inttoptr (i32 -4096 to ptr)
  br i1 %514, label %517, label %515

515:                                              ; preds = %512
  %516 = call i32 @phy_exit(ptr noundef %513) #8
  br label %517

517:                                              ; preds = %515, %512, %493, %487, %478
  %518 = phi i32 [ %479, %478 ], [ %489, %487 ], [ %491, %493 ], [ %510, %512 ], [ %510, %515 ]
  %519 = load ptr, ptr %21, align 8
  %520 = call ptr @of_find_property(ptr noundef %519, ptr noundef nonnull @.str.26, ptr noundef null) #8
  %521 = icmp eq ptr %520, null
  br i1 %521, label %524, label %522

522:                                              ; preds = %517
  %523 = load ptr, ptr %21, align 8
  call void @of_clk_del_provider(ptr noundef %523) #8
  br label %524

524:                                              ; preds = %522, %517, %288, %248
  %525 = phi i32 [ %289, %288 ], [ %250, %248 ], [ %518, %517 ], [ %518, %522 ]
  call void @clk_disable(ptr noundef %59) #8
  call void @clk_unprepare(ptr noundef %59) #8
  br label %526

526:                                              ; preds = %524, %93, %85
  %527 = phi i32 [ %83, %85 ], [ %94, %93 ], [ %525, %524 ]
  %528 = load ptr, ptr %53, align 4
  call void @clk_disable(ptr noundef %528) #8
  call void @clk_unprepare(ptr noundef %528) #8
  br label %529

529:                                              ; preds = %526, %72, %61, %55, %48
  %530 = phi i32 [ %50, %48 ], [ %57, %55 ], [ %63, %61 ], [ %73, %72 ], [ %527, %526 ]
  call void @sdhci_pltfm_free(ptr noundef %0) #8
  br label %531

531:                                              ; preds = %529, %509, %28
  %532 = phi i32 [ %29, %28 ], [ %530, %529 ], [ 0, %509 ]
  ret i32 %532
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_arasan_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 8
  %11 = load i8, ptr %10, align 4, !range !11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @phy_power_off(ptr noundef %7) #8
  %15 = load ptr, ptr %6, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %15, %13 ], [ %7, %9 ]
  %18 = tail call i32 @phy_exit(ptr noundef %17) #8
  br label %19

19:                                               ; preds = %16, %1
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %21 = load ptr, ptr %20, align 8
  %22 = tail call ptr @of_find_property(ptr noundef %21, ptr noundef nonnull @.str.26, ptr noundef null) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %20, align 8
  tail call void @of_clk_del_provider(ptr noundef %25) #8
  br label %26

26:                                               ; preds = %24, %19
  %27 = tail call i32 @sdhci_pltfm_unregister(ptr noundef %0) #8
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret i32 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arasan_zynqmp_execute_tuning(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 62
  %5 = tail call ptr @clk_hw_get_name(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 7
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 7
  br i1 %8, label %88, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sdhci_ops, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !12

15:                                               ; preds = %9
  %16 = tail call zeroext i16 %13(ptr noundef %3, i32 noundef 44) #8
  br label %22

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 16
  %20 = getelementptr i8, ptr %19, i32 44
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi i16 [ %16, %15 ], [ %21, %17 ]
  %24 = and i16 %23, -6
  %25 = load ptr, ptr %10, align 4
  %26 = getelementptr inbounds %struct.sdhci_ops, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !12

29:                                               ; preds = %22
  tail call void %27(ptr noundef %3, i16 noundef zeroext %24, i32 noundef 44) #8
  br label %34

30:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %31 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 16
  %33 = getelementptr i8, ptr %32, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 %24) #8, !srcloc !16
  br label %34

34:                                               ; preds = %30, %29
  %35 = load ptr, ptr %10, align 4
  %36 = getelementptr inbounds %struct.sdhci_ops, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39, !prof !12

39:                                               ; preds = %34
  %40 = tail call zeroext i16 %37(ptr noundef %3, i32 noundef 44) #8
  br label %46

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %43 = load ptr, ptr %42, align 16
  %44 = getelementptr i8, ptr %43, i32 44
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %44) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  br label %46

46:                                               ; preds = %41, %39
  %47 = phi i16 [ %40, %39 ], [ %45, %41 ]
  tail call void @sdhci_enable_clk(ptr noundef %3, i16 noundef zeroext %47) #8
  %48 = tail call i32 @sdhci_execute_tuning(ptr noundef %0, i32 noundef %1) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %46
  %51 = load ptr, ptr %10, align 4
  %52 = getelementptr inbounds %struct.sdhci_ops, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55, !prof !12

55:                                               ; preds = %50
  %56 = tail call zeroext i16 %53(ptr noundef %3, i32 noundef 44) #8
  br label %62

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %59 = load ptr, ptr %58, align 16
  %60 = getelementptr i8, ptr %59, i32 44
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %60) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  br label %62

62:                                               ; preds = %57, %55
  %63 = phi i16 [ %56, %55 ], [ %61, %57 ]
  %64 = and i16 %63, -6
  %65 = load ptr, ptr %10, align 4
  %66 = getelementptr inbounds %struct.sdhci_ops, ptr %65, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69, !prof !12

69:                                               ; preds = %62
  tail call void %67(ptr noundef %3, i16 noundef zeroext %64, i32 noundef 44) #8
  br label %74

70:                                               ; preds = %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %71 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %72 = load ptr, ptr %71, align 16
  %73 = getelementptr i8, ptr %72, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %73, i16 %64) #8, !srcloc !16
  br label %74

74:                                               ; preds = %70, %69
  %75 = load ptr, ptr %10, align 4
  %76 = getelementptr inbounds %struct.sdhci_ops, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79, !prof !12

79:                                               ; preds = %74
  %80 = tail call zeroext i16 %77(ptr noundef %3, i32 noundef 44) #8
  br label %86

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %83 = load ptr, ptr %82, align 16
  %84 = getelementptr i8, ptr %83, i32 44
  %85 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %84) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  br label %86

86:                                               ; preds = %81, %79
  %87 = phi i16 [ %80, %79 ], [ %85, %81 ]
  tail call void @sdhci_enable_clk(ptr noundef %3, i16 noundef zeroext %87) #8
  br label %88

88:                                               ; preds = %86, %46, %2
  %89 = phi i32 [ 0, %86 ], [ 0, %2 ], [ %48, %46 ]
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_arasan_hs400_enhanced_strobe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !12

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %3, i32 noundef 120) #8
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr i8, ptr %12, i32 120
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ %9, %8 ], [ %14, %10 ]
  %17 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 10
  %18 = load i8, ptr %17, align 1, !range !11
  %19 = and i32 %16, -2
  %20 = zext i8 %18 to i32
  %21 = or i32 %19, %20
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.sdhci_ops, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !12

26:                                               ; preds = %15
  tail call void %24(ptr noundef %3, i32 noundef %21, i32 noundef 120) #8
  br label %31

27:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %28 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 16
  %30 = getelementptr i8, ptr %29, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %21) #8, !srcloc !20
  br label %31

31:                                               ; preds = %27, %26
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sdhci_arasan_voltage_switch(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 8
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 1
  %6 = select i1 %5, i32 0, i32 -22
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_arasan_add_host(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sdhci_arasan_data, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 1, !range !11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 @sdhci_add_host(ptr noundef %2) #8
  br label %39

8:                                                ; preds = %1
  %9 = tail call i32 @sdhci_setup_host(ptr noundef %2) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 10
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 64
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef 116, i32 noundef 3520) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 4
  %19 = load ptr, ptr %18, align 16
  %20 = getelementptr i8, ptr %19, i32 512
  %21 = getelementptr inbounds %struct.cqhci_host, ptr %15, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store ptr @sdhci_arasan_cqhci_ops, ptr %15, align 4
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 4096
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.cqhci_host, ptr %15, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, 1
  store i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %17
  %31 = load ptr, ptr %12, align 8
  %32 = tail call i32 @cqhci_init(ptr noundef nonnull %15, ptr noundef %31, i1 noundef zeroext %25) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = tail call i32 @__sdhci_add_host(ptr noundef %2) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34, %30, %11
  %38 = phi i32 [ %32, %30 ], [ %35, %34 ], [ -12, %11 ]
  tail call void @sdhci_cleanup_host(ptr noundef %2) #8
  br label %39

39:                                               ; preds = %37, %34, %8, %6
  %40 = phi i32 [ %38, %37 ], [ %7, %6 ], [ %9, %8 ], [ 0, %34 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdhci_arasan_syscon_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %1, align 4
  %7 = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_field, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_field, ptr %1, i32 0, i32 2
  %10 = load i16, ptr %9, align 2
  %11 = sext i16 %10 to i32
  %12 = icmp slt i16 %10, 0
  br i1 %12, label %52, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_map, ptr %15, i32 0, i32 3
  %17 = load i8, ptr %16, align 4, !range !11
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %13
  %20 = shl i32 %2, %11
  %21 = zext i16 %8 to i32
  %22 = sub nsw i32 31, %21
  %23 = lshr i32 -1, %22
  %24 = add nsw i32 %11, 16
  %25 = shl i32 %23, %24
  %26 = or i32 %25, %20
  %27 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %6, i32 noundef %26) #8
  br label %37

28:                                               ; preds = %13
  %29 = shl nsw i32 -1, %11
  %30 = zext i16 %8 to i32
  %31 = add nsw i32 %30, %11
  %32 = sub nsw i32 31, %31
  %33 = lshr i32 -1, %32
  %34 = and i32 %33, %29
  %35 = shl i32 %2, %11
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %6, i32 noundef %34, i32 noundef %35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %37

37:                                               ; preds = %28, %19
  %38 = phi i32 [ %27, %19 ], [ %36, %28 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.mmc_host, ptr %42, i32 0, i32 1, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.mmc_host, ptr %42, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %40
  %50 = phi ptr [ %48, %46 ], [ %44, %40 ]
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %50, i32 noundef %38) #9
  br label %52

52:                                               ; preds = %49, %37, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_execute_tuning(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_clk(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_arasan_set_clk_delays(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 5
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 64
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.sdhci_arasan_data, ptr %2, i32 0, i32 5, i32 4, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @clk_set_phase(ptr noundef %4, i32 noundef %8) #8
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %5, align 8
  %13 = getelementptr %struct.sdhci_arasan_data, ptr %2, i32 0, i32 5, i32 5, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @clk_set_phase(ptr noundef %11, i32 noundef %14) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_phase(ptr noundef, i32 noundef) local_unnamed_addr #1

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
define internal void @sdhci_arasan_dumpregs(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  tail call void @sdhci_dumpregs(ptr noundef %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_arasan_cqe_enable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !12

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %2, i32 noundef 36) #8
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr i8, ptr %11, i32 36
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
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
  br i1 %23, label %26, label %24, !prof !12

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef %2, i32 noundef 32) #8
  br label %30

26:                                               ; preds = %20
  %27 = load ptr, ptr %19, align 16
  %28 = getelementptr i8, ptr %27, i32 32
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  br label %30

30:                                               ; preds = %26, %24
  %31 = load ptr, ptr %3, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34, !prof !12

34:                                               ; preds = %30
  %35 = tail call i32 %32(ptr noundef %2, i32 noundef 36) #8
  br label %40

36:                                               ; preds = %30
  %37 = load ptr, ptr %19, align 16
  %38 = getelementptr i8, ptr %37, i32 36
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #8, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i32 [ %35, %34 ], [ %39, %36 ]
  %42 = and i32 %41, 2048
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %20

44:                                               ; preds = %40, %14
  tail call void @sdhci_cqe_enable(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_disable(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_dumpregs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_arasan_set_clock(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 8
  %8 = load i8, ptr %7, align 4, !range !11
  %9 = icmp eq i8 %8, 0
  %10 = icmp ult i32 %1, 400001
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %30

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 18
  %14 = load i32, ptr %13, align 4
  tail call void @sdhci_set_clock(ptr noundef %0, i32 noundef %14) #8
  %15 = load ptr, ptr %3, align 4
  %16 = tail call i32 @phy_power_on(ptr noundef %15) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 1, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi ptr [ %26, %24 ], [ %22, %18 ]
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %28) #9
  br label %76

30:                                               ; preds = %6
  %31 = icmp ult i32 %1, 400001
  %32 = select i1 %31, i1 true, i1 %9
  %33 = xor i1 %31, true
  br i1 %32, label %39, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @phy_power_off(ptr noundef %4) #8
  br label %36

36:                                               ; preds = %34, %12
  %37 = phi i8 [ 0, %34 ], [ 1, %12 ]
  %38 = xor i1 %11, true
  store i8 %37, ptr %7, align 4
  br label %39

39:                                               ; preds = %36, %30, %2
  %40 = phi i1 [ %33, %30 ], [ false, %2 ], [ %38, %36 ]
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 16
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  %45 = icmp eq i32 %1, 25000000
  %46 = select i1 %45, i32 19000000, i32 %1
  %47 = select i1 %44, i32 %1, i32 %46
  %48 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 12
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  tail call void %49(ptr noundef %0) #8
  br label %52

52:                                               ; preds = %51, %39
  tail call void @sdhci_set_clock(ptr noundef %0, i32 noundef %47) #8
  %53 = load i32, ptr %41, align 4
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @msleep(i32 noundef 20) #8
  br label %57

57:                                               ; preds = %56, %52
  br i1 %40, label %58, label %76

58:                                               ; preds = %57
  %59 = load ptr, ptr %3, align 4
  %60 = tail call i32 @phy_power_on(ptr noundef %59) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.mmc_host, ptr %64, i32 0, i32 1, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.mmc_host, ptr %64, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = phi ptr [ %70, %68 ], [ %66, %62 ]
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %72) #9
  br label %76

74:                                               ; preds = %58
  %75 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 8
  store i8 1, ptr %75, align 4
  br label %76

76:                                               ; preds = %74, %71, %57, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_power_and_bus_voltage(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_arasan_cqhci_irq(ptr noundef %0, i32 noundef %1) #2 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_arasan_reset(ptr noundef %0, i8 noundef zeroext %1) #2 {
  tail call void @sdhci_reset(ptr noundef %0, i8 noundef zeroext %1) #8
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 13, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !12

13:                                               ; preds = %7
  %14 = tail call zeroext i8 %11(ptr noundef %0, i32 noundef 40) #8
  br label %20

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr i8, ptr %17, i32 40
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #8, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i8 [ %14, %13 ], [ %19, %15 ]
  %22 = or i8 %21, -64
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr inbounds %struct.sdhci_ops, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !12

27:                                               ; preds = %20
  tail call void %25(ptr noundef %0, i8 noundef zeroext %22, i32 noundef 40) #8
  br label %32

28:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %29 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %30 = load ptr, ptr %29, align 16
  %31 = getelementptr i8, ptr %30, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %22) #8, !srcloc !24
  br label %32

32:                                               ; preds = %28, %27, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sdhci_cqe_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_irq(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sdhci_arasan_sdcardclk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 57
  %8 = load i32, ptr %7, align 4
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sdhci_arasan_sampleclk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 57
  %8 = load i32, ptr %7, align 4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_zynqmp_sdcardclk_set_phase(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @clk_hw_get_name(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 17
  %7 = load i32, ptr %6, align 64
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #9
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ -19, %9 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_zynqmp_sampleclk_set_phase(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @clk_hw_get_name(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 17
  %7 = load i32, ptr %6, align 64
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #9
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ -19, %9 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_versal_sdcardclk_set_phase(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 17
  %6 = load i32, ptr %5, align 64
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %59, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 64
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 9
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds [9 x i32], ptr @switch.table.sdhci_versal_sdcardclk_set_phase, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi i32 [ 0, %8 ], [ %15, %13 ]
  %18 = mul i32 %17, %1
  %19 = sdiv i32 %18, 360
  %20 = trunc i32 %19 to i8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %59, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !12

27:                                               ; preds = %22
  %28 = tail call i32 %25(ptr noundef %4, i32 noundef 61692) #8
  br label %34

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 4
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr i8, ptr %31, i32 61692
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %29 ]
  %36 = or i32 %35, 64
  %37 = load ptr, ptr %23, align 4
  %38 = getelementptr inbounds %struct.sdhci_ops, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41, !prof !12

41:                                               ; preds = %34
  tail call void %39(ptr noundef %4, i32 noundef %36, i32 noundef 61692) #8
  br label %46

42:                                               ; preds = %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %43 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 4
  %44 = load ptr, ptr %43, align 16
  %45 = getelementptr i8, ptr %44, i32 61692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %36) #8, !srcloc !20
  br label %46

46:                                               ; preds = %42, %41
  %47 = and i32 %36, -64
  %48 = and i32 %19, 255
  %49 = or i32 %47, %48
  %50 = load ptr, ptr %23, align 4
  %51 = getelementptr inbounds %struct.sdhci_ops, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54, !prof !12

54:                                               ; preds = %46
  tail call void %52(ptr noundef %4, i32 noundef %49, i32 noundef 61692) #8
  br label %59

55:                                               ; preds = %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %56 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 4
  %57 = load ptr, ptr %56, align 16
  %58 = getelementptr i8, ptr %57, i32 61692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %49) #8, !srcloc !20
  br label %59

59:                                               ; preds = %55, %54, %16, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_versal_sampleclk_set_phase(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 17
  %6 = load i32, ptr %5, align 64
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %81, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 64
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 9
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds [9 x i32], ptr @switch.table.sdhci_versal_sampleclk_set_phase, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi i32 [ 0, %8 ], [ %15, %13 ]
  %18 = mul i32 %17, %1
  %19 = sdiv i32 %18, 360
  %20 = trunc i32 %19 to i8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %81, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !12

27:                                               ; preds = %22
  %28 = tail call i32 %25(ptr noundef %4, i32 noundef 61688) #8
  br label %34

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 4
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr i8, ptr %31, i32 61688
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %29 ]
  %36 = or i32 %35, 512
  %37 = load ptr, ptr %23, align 4
  %38 = getelementptr inbounds %struct.sdhci_ops, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41, !prof !12

41:                                               ; preds = %34
  tail call void %39(ptr noundef %4, i32 noundef %36, i32 noundef 61688) #8
  br label %46

42:                                               ; preds = %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %43 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 4
  %44 = load ptr, ptr %43, align 16
  %45 = getelementptr i8, ptr %44, i32 61688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %36) #8, !srcloc !20
  br label %46

46:                                               ; preds = %42, %41
  %47 = or i32 %35, 768
  %48 = load ptr, ptr %23, align 4
  %49 = getelementptr inbounds %struct.sdhci_ops, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52, !prof !12

52:                                               ; preds = %46
  tail call void %50(ptr noundef %4, i32 noundef %47, i32 noundef 61688) #8
  br label %57

53:                                               ; preds = %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %54 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 4
  %55 = load ptr, ptr %54, align 16
  %56 = getelementptr i8, ptr %55, i32 61688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %47) #8, !srcloc !20
  br label %57

57:                                               ; preds = %53, %52
  %58 = and i32 %47, -256
  %59 = and i32 %19, 255
  %60 = or i32 %58, %59
  %61 = load ptr, ptr %23, align 4
  %62 = getelementptr inbounds %struct.sdhci_ops, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65, !prof !12

65:                                               ; preds = %57
  tail call void %63(ptr noundef %4, i32 noundef %60, i32 noundef 61688) #8
  br label %70

66:                                               ; preds = %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %67 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 4
  %68 = load ptr, ptr %67, align 16
  %69 = getelementptr i8, ptr %68, i32 61688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %60) #8, !srcloc !20
  br label %70

70:                                               ; preds = %66, %65
  %71 = and i32 %60, -513
  %72 = load ptr, ptr %23, align 4
  %73 = getelementptr inbounds %struct.sdhci_ops, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76, !prof !12

76:                                               ; preds = %70
  tail call void %74(ptr noundef %4, i32 noundef %71, i32 noundef 61688) #8
  br label %81

77:                                               ; preds = %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %78 = getelementptr inbounds %struct.sdhci_host, ptr %4, i32 0, i32 4
  %79 = load ptr, ptr %78, align 16
  %80 = getelementptr i8, ptr %79, i32 61688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %71) #8, !srcloc !20
  br label %81

81:                                               ; preds = %77, %76, %16, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_arasan_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 81
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 5
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 73
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 29
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 8
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 32
  store i32 1, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %9, %1
  %19 = getelementptr inbounds %struct.sdhci_arasan_data, ptr %5, i32 0, i32 4
  %20 = load i8, ptr %19, align 1, !range !11
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @cqhci_deactivate(ptr noundef %24) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %22, %18
  %28 = tail call i32 @sdhci_suspend_host(ptr noundef %3) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 8
  %36 = load i8, ptr %35, align 4, !range !11
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @phy_power_off(ptr noundef %32) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.49) #9
  %42 = tail call i32 @sdhci_resume_host(ptr noundef %3) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.50) #9
  br label %50

45:                                               ; preds = %38
  store i8 0, ptr %35, align 4
  br label %46

46:                                               ; preds = %45, %34, %30
  %47 = load ptr, ptr %4, align 64
  tail call void @clk_disable(ptr noundef %47) #8
  %48 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 6
  %49 = load ptr, ptr %48, align 4
  tail call void @clk_disable(ptr noundef %49) #8
  br label %50

50:                                               ; preds = %46, %44, %41, %27, %22
  %51 = phi i32 [ 0, %46 ], [ %25, %22 ], [ %28, %27 ], [ %39, %44 ], [ %39, %41 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_arasan_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 5
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_enable(ptr noundef %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.51) #9
  br label %44

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 81
  %12 = load ptr, ptr %11, align 64
  %13 = tail call i32 @clk_enable(ptr noundef %12) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.52) #9
  br label %44

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.mmc_host, ptr %22, i32 0, i32 57
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = tail call i32 @phy_power_on(ptr noundef %18) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.53) #9
  br label %44

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 8
  store i8 1, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %20, %16
  %33 = tail call i32 @sdhci_resume_host(ptr noundef %3) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.50) #9
  br label %44

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.sdhci_arasan_data, ptr %4, i32 0, i32 4
  %38 = load i8, ptr %37, align 1, !range !11
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %42 = load ptr, ptr %41, align 8
  %43 = tail call i32 @cqhci_resume(ptr noundef %42) #8
  br label %44

44:                                               ; preds = %40, %36, %35, %29, %15, %9
  %45 = phi i32 [ %7, %9 ], [ %13, %15 ], [ %33, %35 ], [ %43, %40 ], [ %27, %29 ], [ 0, %36 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_resume(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{i64 1217293, i64 1217320}
!10 = !{i64 1217988, i64 1218015, i64 1218048, i64 1218069, i64 1218096, i64 1218122}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 4906106}
!14 = !{i64 2154194563}
!15 = !{i64 2154192874}
!16 = !{i64 4905906}
!17 = !{i64 4906944}
!18 = !{i64 2154194012}
!19 = !{i64 2154192343}
!20 = !{i64 4906526}
!21 = !{i64 4906724}
!22 = !{i64 2154194982}
!23 = !{i64 2154193405}
!24 = !{i64 4906329}
