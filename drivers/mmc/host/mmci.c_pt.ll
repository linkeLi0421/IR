; ModuleID = '/llk/IR/drivers/mmc/host/mmci.c_pt.bc'
source_filename = "../drivers/mmc/host/mmci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.variant_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i8, i32, i32, i32, i8, i32, ptr }
%struct.mmci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmci_host = type { i32, ptr, ptr, ptr, %struct.mmc_command, ptr, ptr, ptr, i8, ptr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, %struct.timer_list, i32, i32, %struct.sg_mapping_iter, i32, ptr, i8, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.mmci_dmae_priv = type { ptr, ptr, ptr, ptr, %struct.mmci_dmae_next }
%struct.mmci_dmae_next = type { ptr, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmci_platform_data = type { i32, ptr, ptr }
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

@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Deferred probe for TX channel ignored\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"DMA channels RX %s, TX %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"error during DMA transfer!\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"buggy DMA detected. Taking evasive action.\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"drivers/mmc/host/mmci.c\00", align 1
@__initcall__kmod_armmmci__283_2464_mmci_driver_init6 = internal global ptr @mmci_driver_init, section ".initcall6.init", align 4
@mmci_driver = internal global %struct.amba_driver { %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmci_dev_pm_ops, ptr null, ptr null }, ptr @mmci_probe, ptr @mmci_remove, ptr null, ptr @mmci_ids }, align 4
@__exitcall_mmci_driver_exit = internal global ptr @mmci_driver_exit, section ".exitcall.exit", align 4
@__param_str_fmax = internal constant [13 x i8] c"armmmci.fmax\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@fmax = internal global i32 515633, align 4
@__param_fmax = internal constant %struct.kernel_param { ptr @__param_str_fmax, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @fmax } }, section "__param", align 4
@__UNIQUE_ID_fmaxtype284 = internal constant [27 x i8] c"armmmci.parmtype=fmax:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_description285 = internal constant [77 x i8] c"armmmci.description=ARM PrimeCell PL180/181 Multimedia Card Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file286 = internal constant [38 x i8] c"armmmci.file=drivers/mmc/host/armmmci\00", section ".modinfo", align 1
@__UNIQUE_ID_license287 = internal constant [20 x i8] c"armmmci.license=GPL\00", section ".modinfo", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"mmci-pl18x\00", align 1
@mmci_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmci_runtime_suspend, ptr @mmci_runtime_resume, ptr null }, align 4
@mmci_ids = internal constant [15 x %struct.amba_id] [%struct.amba_id { i32 266624, i32 -15728641, ptr @variant_arm }, %struct.amba_id { i32 17043840, i32 -15728641, ptr @variant_arm_extended_fifo }, %struct.amba_id { i32 33821056, i32 -15728641, ptr @variant_arm_extended_fifo_hwfc }, %struct.amba_id { i32 266625, i32 1048575, ptr @variant_arm }, %struct.amba_id { i32 1573248, i32 16777215, ptr @variant_u300 }, %struct.amba_id { i32 270008704, i32 -251658241, ptr @variant_nomadik }, %struct.amba_id { i32 2621824, i32 16777215, ptr @variant_nomadik }, %struct.amba_id { i32 4718976, i32 -251658241, ptr @variant_ux500 }, %struct.amba_id { i32 273154432, i32 -251658241, ptr @variant_ux500v2 }, %struct.amba_id { i32 8913280, i32 16777215, ptr @variant_stm32 }, %struct.amba_id { i32 269824384, i32 -251658241, ptr @variant_stm32_sdmmc }, %struct.amba_id { i32 2437504, i32 -251658241, ptr @variant_stm32_sdmmcv2 }, %struct.amba_id { i32 539308416, i32 -251658241, ptr @variant_stm32_sdmmcv2 }, %struct.amba_id { i32 332160, i32 1048575, ptr @variant_qcom }, %struct.amba_id zeroinitializer], align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"No plat data or DT found\0A\00", align 1
@mmci_ops = internal global %struct.mmc_host_ops { ptr @mmci_post_request, ptr @mmci_pre_request, ptr @mmci_request, ptr null, ptr @mmci_set_ios, ptr @mmc_gpio_get_ro, ptr @mmci_get_cd, ptr null, ptr null, ptr null, ptr @mmci_sig_volt_switch, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"failed to get pinctrl\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"opendrain\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Can't select opendrain pins\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"failed to de-assert reset\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Platform OCR mask is ignored\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"wp\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"mmci-pl18x (cmd)\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"mmci-pl18x (pio)\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"%s: PL%03x manf %x rev%u at 0x%08llx irq %d,%d (pio)\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"unsupported block size (%d bytes)\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"platform ios_handler failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"failed to enable vqmmc regulator\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Error setting clock rate (%d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Voltage switch failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"st,sig-dir-dat0\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"st,sig-dir-dat2\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"st,sig-dir-dat31\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"st,sig-dir-dat74\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"st,sig-dir-cmd\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"st,sig-pin-fbclk\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"st,sig-dir\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"st,neg-edge\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"st,use-ckin\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"mmc-cap-mmc-highspeed\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"mmc-cap-sd-highspeed\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"st,cmd\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"st,ck\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"st,ckin\00", align 1
@.str.39 = private unnamed_addr constant [73 x i8] c"Level translator inoperable, CK signal not detected on CKIN, disabling.\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"stray MCI_DATABLOCKEND interrupt\0A\00", align 1
@variant_arm = internal global %struct.variant_data { i32 0, i32 0, i32 0, i32 0, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 16, i32 64, i32 32, i32 0, i32 0, i32 0, i32 11, i8 0, i32 2, i32 100000000, i8 0, i32 0, i32 0, i32 0, i8 48, i32 2146304, i32 512, i32 128, i8 0, i32 0, ptr @mmci_variant_init }, align 4
@variant_arm_extended_fifo = internal global %struct.variant_data { i32 0, i32 0, i32 0, i32 0, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 16, i32 512, i32 256, i32 0, i32 0, i32 0, i32 11, i8 0, i32 2, i32 100000000, i8 0, i32 0, i32 0, i32 0, i8 32, i32 2146304, i32 512, i32 128, i8 0, i32 0, ptr @mmci_variant_init }, align 4
@variant_arm_extended_fifo_hwfc = internal global %struct.variant_data { i32 0, i32 4096, i32 0, i32 0, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 16, i32 512, i32 256, i32 0, i32 0, i32 0, i32 11, i8 0, i32 2, i32 100000000, i8 0, i32 0, i32 0, i32 0, i8 32, i32 2146304, i32 512, i32 128, i8 0, i32 0, ptr @mmci_variant_init }, align 4
@variant_u300 = internal global %struct.variant_data { i32 0, i32 8192, i32 4096, i32 0, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 16, i32 64, i32 32, i32 0, i32 0, i32 2048, i32 11, i8 16, i32 3, i32 100000000, i8 3, i32 0, i32 0, i32 0, i8 33, i32 2146304, i32 512, i32 64, i8 0, i32 0, ptr @mmci_variant_init }, align 4
@variant_nomadik = internal global %struct.variant_data { i32 256, i32 0, i32 4096, i32 0, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 24, i32 64, i32 32, i32 0, i32 0, i32 2048, i32 11, i8 48, i32 3, i32 100000000, i8 3, i32 0, i32 0, i32 0, i8 33, i32 2146304, i32 512, i32 64, i8 0, i32 0, ptr @mmci_variant_init }, align 4
@variant_ux500 = internal global %struct.variant_data { i32 256, i32 16384, i32 4096, i32 8192, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 24, i32 120, i32 32, i32 0, i32 0, i32 2048, i32 11, i8 51, i32 3, i32 100000000, i8 7, i32 16384, i32 16777216, i32 16777216, i8 33, i32 2146304, i32 512, i32 64, i8 0, i32 0, ptr @ux500_variant_init }, align 4
@variant_ux500v2 = internal global %struct.variant_data { i32 256, i32 16384, i32 4096, i32 8192, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 24, i32 120, i32 32, i32 0, i32 32768, i32 2048, i32 11, i8 51, i32 3, i32 100000000, i8 7, i32 16384, i32 16777216, i32 16777216, i8 33, i32 2146304, i32 512, i32 64, i8 0, i32 0, ptr @ux500v2_variant_init }, align 4
@variant_stm32 = internal global %struct.variant_data { i32 256, i32 16384, i32 4096, i32 8192, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 24, i32 128, i32 32, i32 0, i32 0, i32 2048, i32 11, i8 48, i32 3, i32 48000000, i8 2, i32 0, i32 0, i32 0, i8 1, i32 2146304, i32 0, i32 0, i8 0, i32 0, ptr @mmci_variant_init }, align 4
@variant_stm32_sdmmc = internal global %struct.variant_data { i32 0, i32 0, i32 0, i32 0, i32 4096, i32 768, i32 256, i32 512, i32 128, i32 25, i32 64, i32 32, i32 64, i32 0, i32 2048, i32 14, i8 77, i32 0, i32 208000000, i8 12, i32 0, i32 1048576, i32 2097152, i8 0, i32 49152, i32 0, i32 0, i8 0, i32 8160, ptr @sdmmc_variant_init }, align 4
@variant_stm32_sdmmcv2 = internal global %struct.variant_data { i32 0, i32 0, i32 0, i32 0, i32 4096, i32 768, i32 256, i32 512, i32 128, i32 25, i32 64, i32 32, i32 64, i32 0, i32 2048, i32 14, i8 77, i32 0, i32 267000000, i8 12, i32 0, i32 1048576, i32 2097152, i8 0, i32 49152, i32 0, i32 0, i8 1, i32 131040, ptr @sdmmc_variant_init }, align 4
@variant_qcom = internal global %struct.variant_data { i32 256, i32 36864, i32 3072, i32 0, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 24, i32 64, i32 32, i32 4096, i32 49152, i32 0, i32 11, i8 1, i32 2, i32 208000000, i8 0, i32 0, i32 0, i32 0, i8 46, i32 2146304, i32 512, i32 128, i8 0, i32 0, ptr @qcom_variant_init }, align 4
@mmci_variant_ops = internal global %struct.mmci_host_ops { ptr null, ptr @mmci_dmae_prep_data, ptr @mmci_dmae_unprep_data, ptr @mmci_get_dctrl_cfg, ptr @mmci_dmae_get_next_data, ptr @mmci_dmae_setup, ptr @mmci_dmae_release, ptr @mmci_dmae_start, ptr @mmci_dmae_finalize, ptr @mmci_dmae_error, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_description285, ptr @__UNIQUE_ID_file286, ptr @__UNIQUE_ID_fmaxtype284, ptr @__UNIQUE_ID_license287, ptr @__exitcall_mmci_driver_exit, ptr @__initcall__kmod_armmmci__283_2464_mmci_driver_init6, ptr @__param_fmax, ptr @mmci_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmci_write_clkreg(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %7 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %1) #12, !srcloc !9
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmci_write_pwrreg(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  %7 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %1) #12, !srcloc !9
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmci_dmae_setup(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 64
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 24, i32 noundef 3520) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %127, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 38
  store ptr %5, ptr %8, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = load ptr, ptr %9, align 64
  %11 = tail call ptr @dma_request_chan(ptr noundef %10, ptr noundef nonnull @.str) #12
  %12 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %5, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = ptrtoint ptr %11 to i32
  br label %124

16:                                               ; preds = %7
  %17 = load ptr, ptr %2, align 4
  %18 = load ptr, ptr %17, align 64
  %19 = tail call ptr @dma_request_chan(ptr noundef %18, ptr noundef nonnull @.str.1) #12
  %20 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %5, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = icmp eq ptr %19, inttoptr (i32 -517 to ptr)
  br i1 %23, label %24, label %31

24:                                               ; preds = %22
  %25 = load ptr, ptr %2, align 4
  %26 = load ptr, ptr %25, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.2) #13
  br label %31

27:                                               ; preds = %16
  %28 = load ptr, ptr %12, align 4
  %29 = icmp eq ptr %28, null
  %30 = icmp eq ptr %19, null
  br i1 %29, label %48, label %34

31:                                               ; preds = %24, %22
  store ptr null, ptr %20, align 4
  %32 = load ptr, ptr %12, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %60, label %35

34:                                               ; preds = %27
  br i1 %30, label %35, label %37

35:                                               ; preds = %34, %31
  %36 = phi ptr [ %28, %34 ], [ %32, %31 ]
  store ptr %36, ptr %20, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi ptr [ %28, %34 ], [ %36, %35 ]
  %39 = phi ptr [ %19, %34 ], [ %36, %35 ]
  %40 = getelementptr inbounds %struct.dma_chan, ptr %38, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dma_chan_dev, ptr %41, i32 0, i32 1, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.dma_chan_dev, ptr %41, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  br label %49

48:                                               ; preds = %27
  br i1 %30, label %60, label %49

49:                                               ; preds = %48, %45, %37
  %50 = phi ptr [ @.str.3, %48 ], [ %47, %45 ], [ %43, %37 ]
  %51 = phi ptr [ %19, %48 ], [ %39, %45 ], [ %39, %37 ]
  %52 = getelementptr inbounds %struct.dma_chan, ptr %51, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dma_chan_dev, ptr %53, i32 0, i32 1, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.dma_chan_dev, ptr %53, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %49, %48, %31
  %61 = phi ptr [ @.str.3, %48 ], [ %50, %49 ], [ %50, %57 ], [ @.str.3, %31 ]
  %62 = phi ptr [ @.str.3, %48 ], [ %55, %49 ], [ %59, %57 ], [ @.str.3, %31 ]
  %63 = load ptr, ptr %2, align 4
  %64 = load ptr, ptr %63, align 64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.4, ptr noundef %61, ptr noundef %62) #13
  %65 = load ptr, ptr %20, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %85, label %67

67:                                               ; preds = %60
  %68 = load ptr, ptr %65, align 4
  %69 = getelementptr inbounds %struct.dma_device, ptr %68, i32 0, i32 15
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 20
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load i32, ptr %72, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74, %67
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i32 [ 65536, %77 ], [ %75, %74 ]
  %80 = load ptr, ptr %2, align 4
  %81 = getelementptr inbounds %struct.mmc_host, ptr %80, i32 0, i32 20
  %82 = load i32, ptr %81, align 8
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 %79, ptr %81, align 8
  br label %85

85:                                               ; preds = %84, %78, %60
  %86 = load ptr, ptr %12, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %106, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %86, align 4
  %90 = getelementptr inbounds %struct.dma_device, ptr %89, i32 0, i32 15
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 20
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %88
  %96 = load i32, ptr %93, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %88
  br label %99

99:                                               ; preds = %98, %95
  %100 = phi i32 [ 65536, %98 ], [ %96, %95 ]
  %101 = load ptr, ptr %2, align 4
  %102 = getelementptr inbounds %struct.mmc_host, ptr %101, i32 0, i32 20
  %103 = load i32, ptr %102, align 8
  %104 = icmp ult i32 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i32 %100, ptr %102, align 8
  br label %106

106:                                              ; preds = %105, %99, %85
  %107 = load ptr, ptr %20, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr %12, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %127

112:                                              ; preds = %109, %106
  %113 = load ptr, ptr %8, align 4
  %114 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  tail call void @dma_release_channel(ptr noundef nonnull %115) #12
  br label %118

118:                                              ; preds = %117, %112
  %119 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %113, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  tail call void @dma_release_channel(ptr noundef nonnull %120) #12
  br label %123

123:                                              ; preds = %122, %118
  store ptr null, ptr %119, align 4
  br label %124

124:                                              ; preds = %123, %14
  %125 = phi ptr [ %114, %123 ], [ %12, %14 ]
  %126 = phi i32 [ -22, %123 ], [ %15, %14 ]
  store ptr null, ptr %125, align 4
  br label %127

127:                                              ; preds = %124, %109, %1
  %128 = phi i32 [ -12, %1 ], [ 0, %109 ], [ %126, %124 ]
  ret i32 %128
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmci_dmae_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @dma_release_channel(ptr noundef nonnull %5) #12
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @dma_release_channel(ptr noundef nonnull %10) #12
  br label %13

13:                                               ; preds = %12, %8
  store ptr null, ptr %9, align 4
  store ptr null, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmci_dmae_error(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 37
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %46, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 38
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5) #13
  %12 = load ptr, ptr %8, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 47
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  %18 = tail call i32 %15(ptr noundef %12) #12
  br label %19

19:                                               ; preds = %17, %6
  %20 = load i8, ptr %2, align 4
  %21 = and i8 %20, -3
  store i8 %21, ptr %2, align 4
  store ptr null, ptr %8, align 4
  %22 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %8, i32 0, i32 3
  store ptr null, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mmc_data, ptr %24, i32 0, i32 13
  store i32 0, ptr %25, align 4
  %26 = load ptr, ptr %23, align 4
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr inbounds %struct.mmc_data, ptr %26, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 512
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %27, i32 0, i32 1
  %33 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %27, i32 0, i32 2
  %34 = select i1 %31, ptr %33, ptr %32
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.mmc_data, ptr %26, i32 0, i32 12
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mmc_data, ptr %26, i32 0, i32 10
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %29, 256
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %38, ptr noundef %40, i32 noundef %42, i32 noundef %45, i32 noundef 0) #12
  br label %46

46:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmci_dmae_finalize(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 37
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %89, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 52
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %14 = and i32 %13, 2097152
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %16, %9
  %17 = phi i32 [ %19, %16 ], [ 0, %9 ]
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #12
  %19 = add nuw nsw i32 %17, 1
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr i8, ptr %20, i32 52
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %23 = and i32 %22, 2097152
  %24 = icmp eq i32 %23, 0
  %25 = icmp ugt i32 %17, 98
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %27, label %16

27:                                               ; preds = %16
  br i1 %24, label %46, label %28

28:                                               ; preds = %27
  %29 = load i8, ptr %5, align 4
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 24
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.mmci_host_ops, ptr %34, i32 0, i32 9
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void %38(ptr noundef %0) #12
  br label %41

41:                                               ; preds = %40, %36, %32, %28
  %42 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %41
  store i32 -5, ptr %42, align 4
  br label %70

46:                                               ; preds = %27, %9
  %47 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %46
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 512
  %55 = icmp eq i32 %54, 0
  %56 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %51, i32 0, i32 1
  %57 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %51, i32 0, i32 2
  %58 = select i1 %55, ptr %57, ptr %56
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.dma_device, ptr %60, i32 0, i32 15
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %53, 256
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %62, ptr noundef %64, i32 noundef %66, i32 noundef %69, i32 noundef 0) #12
  br label %85

70:                                               ; preds = %45, %41
  %71 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %72, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.6) #13
  %74 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 24
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.mmci_host_ops, ptr %75, i32 0, i32 6
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void %79(ptr noundef %0) #12
  br label %82

82:                                               ; preds = %81, %77, %70
  %83 = load i8, ptr %5, align 4
  %84 = and i8 %83, -2
  store i8 %84, ptr %5, align 4
  br label %85

85:                                               ; preds = %82, %50, %46
  %86 = load i8, ptr %5, align 4
  %87 = and i8 %86, -3
  store i8 %87, ptr %5, align 4
  store ptr null, ptr %4, align 4
  %88 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %4, i32 0, i32 3
  store ptr null, ptr %88, align 4
  br label %89

89:                                               ; preds = %85, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmci_dmae_prep_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 38
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 37
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %3
  br i1 %2, label %12, label %15

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %5, i32 0, i32 4, i32 1
  %14 = tail call fastcc i32 @_mmci_dmae_prep_data(ptr noundef %0, ptr noundef %1, ptr noundef %13, ptr noundef %6)
  br label %25

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %5, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %15
  %23 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %5, i32 0, i32 3
  %24 = tail call fastcc i32 @_mmci_dmae_prep_data(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %23)
  br label %25

25:                                               ; preds = %22, %18, %12, %3
  %26 = phi i32 [ %14, %12 ], [ %24, %22 ], [ -22, %3 ], [ 0, %18 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_mmci_dmae_prep_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.dma_slave_config, align 4
  %6 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 38
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #12
  %10 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %11 = load i32, ptr %0, align 4
  %12 = add i32 %11, 128
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 3
  store i32 4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 4
  store i32 4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 5
  %17 = getelementptr inbounds %struct.variant_data, ptr %9, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 2
  store i32 %19, ptr %16, align 4
  %20 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 6
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 8
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 10
  store ptr null, ptr %22, align 4
  %23 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 11
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %4
  store i32 2, ptr %5, align 4
  %29 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %7, i32 0, i32 1
  br label %32

30:                                               ; preds = %4
  store i32 1, ptr %5, align 4
  %31 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %7, i32 0, i32 2
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ 2, %28 ], [ 1, %30 ]
  %34 = phi ptr [ %29, %28 ], [ %31, %30 ]
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %105, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = mul i32 %41, %39
  %43 = getelementptr inbounds %struct.variant_data, ptr %9, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = icmp ugt i32 %42, %44
  br i1 %45, label %46, label %105

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.variant_data, ptr %9, i32 0, i32 16
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 2
  %50 = icmp eq i8 %49, 0
  %51 = tail call i32 @llvm.ctpop.i32(i32 %39) #12, !range !13
  %52 = icmp eq i32 %51, 1
  %53 = select i1 %50, i1 true, i1 %52
  br i1 %53, label %54, label %105

54:                                               ; preds = %46
  %55 = load ptr, ptr %35, align 4
  %56 = getelementptr inbounds %struct.dma_device, ptr %55, i32 0, i32 15
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %25, 256
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 2, i32 1
  %65 = tail call i32 @dma_map_sg_attrs(ptr noundef %57, ptr noundef %59, i32 noundef %61, i32 noundef %64, i32 noundef 0) #12
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %105, label %67

67:                                               ; preds = %54
  %68 = load ptr, ptr %8, align 4
  %69 = getelementptr inbounds %struct.variant_data, ptr %68, i32 0, i32 23
  %70 = load i8, ptr %69, align 4
  %71 = and i8 %70, 8
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, i32 2, i32 3
  %74 = load ptr, ptr %35, align 4
  %75 = getelementptr inbounds %struct.dma_device, ptr %74, i32 0, i32 44
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %67
  %79 = call i32 %76(ptr noundef nonnull %35, ptr noundef nonnull %5) #12
  %80 = load ptr, ptr %35, align 4
  %81 = load i32, ptr %5, align 4
  br label %82

82:                                               ; preds = %78, %67
  %83 = phi i32 [ %81, %78 ], [ %33, %67 ]
  %84 = phi ptr [ %80, %78 ], [ %74, %67 ]
  %85 = load ptr, ptr %58, align 4
  %86 = icmp eq ptr %84, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.dma_device, ptr %84, i32 0, i32 39
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = call ptr %89(ptr noundef nonnull %35, ptr noundef %85, i32 noundef %65, i32 noundef %83, i32 noundef %73, ptr noundef null) #12
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load ptr, ptr %58, align 4
  br label %97

96:                                               ; preds = %91
  store ptr %35, ptr %2, align 4
  store ptr %92, ptr %3, align 4
  br label %105

97:                                               ; preds = %94, %87, %82
  %98 = phi ptr [ %95, %94 ], [ %85, %82 ], [ %85, %87 ]
  %99 = load ptr, ptr %56, align 4
  %100 = load i32, ptr %60, align 4
  %101 = load i32, ptr %24, align 4
  %102 = and i32 %101, 256
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, i32 2, i32 1
  call void @dma_unmap_sg_attrs(ptr noundef %99, ptr noundef %98, i32 noundef %100, i32 noundef %104, i32 noundef 0) #12
  br label %105

105:                                              ; preds = %97, %96, %54, %46, %37, %32
  %106 = phi i32 [ 0, %96 ], [ -12, %97 ], [ -22, %32 ], [ -22, %37 ], [ -22, %54 ], [ -22, %46 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #12
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmci_dmae_start(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 37
  %6 = load i8, ptr %5, align 4
  %7 = or i8 %6, 2
  store i8 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %9) #12
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8, ptr %5, align 4
  %16 = and i8 %15, -3
  store i8 %16, ptr %5, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load ptr, ptr %4, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 50
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %18) #12
  %22 = load i32, ptr %1, align 4
  %23 = or i32 %22, 8
  store i32 %23, ptr %1, align 4
  br label %24

24:                                               ; preds = %17, %14
  %25 = tail call i32 @llvm.smin.i32(i32 %12, i32 0) #12
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmci_dmae_get_next_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 37
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %4, i32 0, i32 4, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !14

21:                                               ; preds = %17, %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1025, i32 noundef 9, ptr noundef null) #12
  br label %22

22:                                               ; preds = %21, %17, %10
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %4, i32 0, i32 3
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %4, i32 0, i32 4, i32 1
  %26 = load ptr, ptr %25, align 4
  store ptr %26, ptr %4, align 4
  store ptr null, ptr %5, align 4
  store ptr null, ptr %25, align 4
  br label %27

27:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmci_dmae_unprep_data(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 38
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 37
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %58, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %5, i32 0, i32 1
  %16 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %5, i32 0, i32 2
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %12, 256
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %21, ptr noundef %23, i32 noundef %25, i32 noundef %28, i32 noundef 0) #12
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %5, i32 0, i32 4
  %32 = load i32, ptr %11, align 4
  %33 = and i32 %32, 512
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr %16, ptr %15
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 47
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  %42 = tail call i32 %39(ptr noundef %36) #12
  br label %43

43:                                               ; preds = %41, %30
  %44 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %5, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %31, align 4
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store ptr null, ptr %44, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %5, i32 0, i32 4, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8, ptr %6, align 4
  %56 = and i8 %55, -3
  store i8 %56, ptr %6, align 4
  store ptr null, ptr %5, align 4
  br label %57

57:                                               ; preds = %54, %49
  store ptr null, ptr %31, align 4
  store ptr null, ptr %51, align 4
  br label %58

58:                                               ; preds = %57, %10, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mmci_driver_init() #4 section ".init.text" {
  %1 = tail call i32 @amba_driver_register(ptr noundef nonnull @mmci_driver) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mmci_driver_exit() #4 section ".exit.text" {
  tail call void @amba_driver_unregister(ptr noundef nonnull @mmci_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmci_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.amba_id, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ne ptr %4, null
  %10 = icmp ne ptr %6, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9) #13
  br label %416

13:                                               ; preds = %2
  br i1 %9, label %17, label %14

14:                                               ; preds = %13
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 12, i32 noundef 3520) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %416, label %17

17:                                               ; preds = %14, %13
  %18 = phi ptr [ %4, %13 ], [ %15, %14 ]
  %19 = tail call ptr @mmc_alloc_host(i32 noundef 256, ptr noundef %0) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %416, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 68
  %23 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 7
  store ptr %19, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 11, i32 2
  store ptr @mmci_ops, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 3
  store ptr @mmci_ops, ptr %25, align 4
  %26 = tail call i32 @mmc_of_parse(ptr noundef nonnull %19) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %414

28:                                               ; preds = %21
  %29 = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.25, ptr noundef null) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 10, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, 16
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.26, ptr noundef null) #12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 10, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 4
  store i32 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.27, ptr noundef null) #12
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 10, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, 32
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.28, ptr noundef null) #12
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 10, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = or i32 %54, 256
  store i32 %55, ptr %53, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.29, ptr noundef null) #12
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 10, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %61, 8
  store i32 %62, ptr %60, align 4
  br label %63

63:                                               ; preds = %59, %56
  %64 = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.30, ptr noundef null) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 10, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = or i32 %68, 128
  store i32 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %66, %63
  %71 = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.31, ptr noundef null) #12
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 10, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = or i32 %75, 16
  store i32 %76, ptr %74, align 4
  br label %77

77:                                               ; preds = %73, %70
  %78 = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef null) #12
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 10, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = or i32 %82, 65536
  store i32 %83, ptr %81, align 4
  br label %84

84:                                               ; preds = %80, %77
  %85 = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.33, ptr noundef null) #12
  %86 = icmp eq ptr %85, null
  br i1 %86, label %116, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %19, align 64
  %89 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 10, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = or i32 %90, 1048576
  store i32 %91, ptr %89, align 4
  %92 = tail call ptr @gpiod_get(ptr noundef %88, ptr noundef nonnull @.str.36, i32 noundef 7) #12
  %93 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %114, label %94

94:                                               ; preds = %87
  %95 = tail call ptr @gpiod_get(ptr noundef %88, ptr noundef nonnull @.str.37, i32 noundef 7) #12
  %96 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %113, label %97

97:                                               ; preds = %94
  %98 = tail call ptr @gpiod_get(ptr noundef %88, ptr noundef nonnull @.str.38, i32 noundef 1) #12
  %99 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %112, label %100

100:                                              ; preds = %97
  %101 = tail call i32 @gpiod_get_value(ptr noundef %98) #12
  %102 = icmp eq i32 %101, 0
  tail call void @gpiod_set_value(ptr noundef %95, i32 noundef 0) #12
  %103 = tail call i32 @gpiod_get_value(ptr noundef %98) #12
  %104 = icmp ne i32 %103, 0
  %105 = tail call i32 @gpiod_direction_input(ptr noundef %92) #12
  %106 = tail call i32 @gpiod_direction_input(ptr noundef %95) #12
  %107 = select i1 %102, i1 true, i1 %104
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, ptr %89, align 4
  %110 = and i32 %109, -1048577
  store i32 %110, ptr %89, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.39) #13
  br label %111

111:                                              ; preds = %108, %100
  tail call void @gpiod_put(ptr noundef %98) #12
  br label %112

112:                                              ; preds = %111, %97
  tail call void @gpiod_put(ptr noundef %95) #12
  br label %113

113:                                              ; preds = %112, %94
  tail call void @gpiod_put(ptr noundef %92) #12
  br label %114

114:                                              ; preds = %113, %87
  %115 = tail call i32 @pinctrl_select_default_state(ptr noundef %88) #12
  br label %116

116:                                              ; preds = %114, %84
  %117 = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.34, ptr noundef null) #12
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 16
  %121 = load i32, ptr %120, align 8
  %122 = or i32 %121, 2
  store i32 %122, ptr %120, align 8
  br label %123

123:                                              ; preds = %119, %116
  %124 = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.35, ptr noundef null) #12
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 16
  %128 = load i32, ptr %127, align 8
  %129 = or i32 %128, 4
  store i32 %129, ptr %127, align 8
  br label %130

130:                                              ; preds = %126, %123
  %131 = getelementptr inbounds %struct.variant_data, ptr %8, i32 0, i32 26
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %130
  %135 = tail call ptr @devm_pinctrl_get(ptr noundef %0) #12
  %136 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 11, i32 5
  store ptr %135, ptr %136, align 4
  %137 = icmp ugt ptr %135, inttoptr (i32 -4096 to ptr)
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10) #13
  %139 = load ptr, ptr %136, align 4
  %140 = ptrtoint ptr %139 to i32
  br label %414

141:                                              ; preds = %134
  %142 = tail call ptr @pinctrl_lookup_state(ptr noundef %135, ptr noundef nonnull @.str.11) #12
  %143 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 11, i32 5, i32 1
  store ptr %142, ptr %143, align 4
  %144 = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load ptr, ptr %19, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.12) #13
  %147 = load ptr, ptr %143, align 4
  %148 = ptrtoint ptr %147 to i32
  br label %414

149:                                              ; preds = %141, %130
  %150 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 4
  %151 = load i32, ptr %150, align 8
  %152 = lshr i32 %151, 12
  %153 = trunc i32 %152 to i8
  %154 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 11, i32 5, i32 1, i32 1
  store i8 %153, ptr %154, align 4
  %155 = load i32, ptr %150, align 8
  %156 = lshr i32 %155, 20
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 15
  %159 = getelementptr inbounds %struct.mmci_host, ptr %22, i32 0, i32 30
  %160 = load i8, ptr %159, align 1
  %161 = and i8 %160, -16
  %162 = or i8 %158, %161
  store i8 %162, ptr %159, align 1
  %163 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef null) #12
  %164 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 8
  store ptr %163, ptr %164, align 4
  %165 = icmp ugt ptr %163, inttoptr (i32 -4096 to ptr)
  br i1 %165, label %166, label %168

166:                                              ; preds = %149
  %167 = ptrtoint ptr %163 to i32
  br label %414

168:                                              ; preds = %149
  %169 = tail call i32 @clk_prepare(ptr noundef %163) #12
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %414

171:                                              ; preds = %168
  %172 = tail call i32 @clk_enable(ptr noundef %163) #12
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  tail call void @clk_unprepare(ptr noundef %163) #12
  br label %414

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.variant_data, ptr %8, i32 0, i32 23
  %177 = load i8, ptr %176, align 4
  %178 = and i8 %177, 4
  %179 = icmp eq i8 %178, 0
  %180 = select i1 %179, ptr @mmci_get_rx_fifocnt, ptr @mmci_qcom_get_rx_fifocnt
  %181 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 11, i32 10, i32 1, i32 1
  store ptr %180, ptr %181, align 4
  %182 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 11, i32 1
  store ptr %18, ptr %182, align 4
  %183 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 11, i32 4
  store ptr %8, ptr %183, align 4
  %184 = load ptr, ptr %164, align 4
  %185 = tail call i32 @clk_get_rate(ptr noundef %184) #12
  %186 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 9, i32 3
  store i32 %185, ptr %186, align 4
  %187 = getelementptr inbounds %struct.variant_data, ptr %8, i32 0, i32 18
  %188 = load i32, ptr %187, align 4
  %189 = icmp ugt i32 %185, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %175
  %191 = load ptr, ptr %164, align 4
  %192 = tail call i32 @clk_set_rate(ptr noundef %191, i32 noundef %188) #12
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %411, label %194

194:                                              ; preds = %190
  %195 = load ptr, ptr %164, align 4
  %196 = tail call i32 @clk_get_rate(ptr noundef %195) #12
  store i32 %196, ptr %186, align 4
  br label %197

197:                                              ; preds = %194, %175
  %198 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  %199 = load i32, ptr %198, align 8
  store i32 %199, ptr %22, align 4
  %200 = tail call ptr @devm_ioremap_resource(ptr noundef %0, ptr noundef %198) #12
  %201 = getelementptr inbounds %struct.mmci_host, ptr %22, i32 0, i32 1
  store ptr %200, ptr %201, align 4
  %202 = icmp ugt ptr %200, inttoptr (i32 -4096 to ptr)
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  %204 = ptrtoint ptr %200 to i32
  br label %411

205:                                              ; preds = %197
  %206 = getelementptr inbounds %struct.variant_data, ptr %8, i32 0, i32 29
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %205
  tail call void %207(ptr noundef %22) #12
  br label %210

210:                                              ; preds = %209, %205
  %211 = getelementptr inbounds %struct.variant_data, ptr %8, i32 0, i32 16
  %212 = load i8, ptr %211, align 4
  %213 = and i8 %212, 32
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %210
  %216 = load i32, ptr %186, align 4
  %217 = add i32 %216, 256
  %218 = udiv i32 %217, 257
  br label %237

219:                                              ; preds = %210
  %220 = and i8 %212, 64
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %219
  %223 = load i32, ptr %186, align 4
  %224 = add i32 %223, 2045
  %225 = udiv i32 %224, 2046
  br label %237

226:                                              ; preds = %219
  %227 = load i8, ptr %176, align 4
  %228 = and i8 %227, 2
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %226
  %231 = load ptr, ptr %164, align 4
  %232 = tail call i32 @clk_round_rate(ptr noundef %231, i32 noundef 100000) #12
  br label %237

233:                                              ; preds = %226
  %234 = load i32, ptr %186, align 4
  %235 = add i32 %234, 511
  %236 = lshr i32 %235, 9
  br label %237

237:                                              ; preds = %233, %230, %222, %215
  %238 = phi i32 [ %225, %222 ], [ %236, %233 ], [ %232, %230 ], [ %218, %215 ]
  %239 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 5
  store i32 %238, ptr %239, align 4
  %240 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 6
  %241 = load i32, ptr %240, align 16
  %242 = icmp eq i32 %241, 0
  %243 = load i8, ptr %176, align 4
  %244 = and i8 %243, 2
  %245 = icmp eq i8 %244, 0
  br i1 %242, label %253, label %246

246:                                              ; preds = %237
  br i1 %245, label %250, label %247

247:                                              ; preds = %246
  %248 = load i32, ptr %187, align 4
  %249 = tail call i32 @llvm.umin.i32(i32 %248, i32 %241)
  br label %260

250:                                              ; preds = %246
  %251 = load i32, ptr %186, align 4
  %252 = tail call i32 @llvm.umin.i32(i32 %251, i32 %241)
  br label %260

253:                                              ; preds = %237
  br i1 %245, label %256, label %254

254:                                              ; preds = %253
  %255 = load i32, ptr @fmax, align 4
  br label %260

256:                                              ; preds = %253
  %257 = load i32, ptr %186, align 4
  %258 = load i32, ptr @fmax, align 4
  %259 = tail call i32 @llvm.umin.i32(i32 %257, i32 %258)
  br label %260

260:                                              ; preds = %256, %254, %250, %247
  %261 = phi i32 [ %249, %247 ], [ %252, %250 ], [ %255, %254 ], [ %259, %256 ]
  store i32 %261, ptr %240, align 16
  %262 = tail call ptr @__devm_reset_control_get(ptr noundef %0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #12
  %263 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 9, i32 1
  store ptr %262, ptr %263, align 4
  %264 = icmp ugt ptr %262, inttoptr (i32 -4096 to ptr)
  br i1 %264, label %265, label %267

265:                                              ; preds = %260
  %266 = ptrtoint ptr %262 to i32
  br label %411

267:                                              ; preds = %260
  %268 = tail call i32 @reset_control_deassert(ptr noundef %262) #12
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %272, label %270

270:                                              ; preds = %267
  %271 = load ptr, ptr %19, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %271, ptr noundef nonnull @.str.13) #13
  br label %272

272:                                              ; preds = %270, %267
  %273 = tail call i32 @mmc_regulator_get_supply(ptr noundef nonnull %19) #12
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %411

275:                                              ; preds = %272
  %276 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 8
  %277 = load i32, ptr %276, align 8
  %278 = icmp eq i32 %277, 0
  %279 = load i32, ptr %18, align 4
  br i1 %278, label %280, label %281

280:                                              ; preds = %275
  store i32 %279, ptr %276, align 8
  br label %285

281:                                              ; preds = %275
  %282 = icmp eq i32 %279, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %281
  %284 = load ptr, ptr %19, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %284, ptr noundef nonnull @.str.14) #13
  br label %285

285:                                              ; preds = %283, %281, %280
  %286 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 16
  %287 = load i32, ptr %286, align 8
  %288 = or i32 %287, 1073741824
  store i32 %288, ptr %286, align 8
  %289 = getelementptr inbounds %struct.variant_data, ptr %8, i32 0, i32 19
  %290 = load i8, ptr %289, align 4
  %291 = and i8 %290, 4
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %306, label %293

293:                                              ; preds = %285
  store ptr @mmci_card_busy, ptr getelementptr inbounds (%struct.mmc_host_ops, ptr @mmci_ops, i32 0, i32 11), align 4
  %294 = getelementptr inbounds %struct.variant_data, ptr %8, i32 0, i32 20
  %295 = load i32, ptr %294, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %302, label %297

297:                                              ; preds = %293
  %298 = load ptr, ptr %183, align 4
  %299 = getelementptr inbounds %struct.variant_data, ptr %298, i32 0, i32 20
  %300 = load i32, ptr %299, align 4
  tail call fastcc void @mmci_write_datactrlreg(ptr noundef %22, i32 noundef %300)
  %301 = load i32, ptr %286, align 8
  br label %302

302:                                              ; preds = %297, %293
  %303 = phi i32 [ %301, %297 ], [ %288, %293 ]
  %304 = or i32 %303, 512
  store i32 %304, ptr %286, align 8
  %305 = load i8, ptr %289, align 4
  br label %306

306:                                              ; preds = %302, %285
  %307 = phi i32 [ %304, %302 ], [ %288, %285 ]
  %308 = phi i8 [ %305, %302 ], [ %290, %285 ]
  %309 = and i8 %308, 8
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %306
  %312 = or i32 %307, 4194304
  store i32 %312, ptr %286, align 8
  br label %313

313:                                              ; preds = %311, %306
  %314 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 0, i32 1, i32 1
  store i32 12, ptr %314, align 4
  %315 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 0, i32 2
  store i32 0, ptr %315, align 4
  %316 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 0, i32 7
  store i32 29, ptr %316, align 4
  %317 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 19
  %318 = load i32, ptr %317, align 4
  %319 = or i32 %318, 1
  store i32 %319, ptr %317, align 4
  %320 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 21
  store i16 128, ptr %320, align 4
  %321 = getelementptr inbounds %struct.variant_data, ptr %8, i32 0, i32 9
  %322 = load i32, ptr %321, align 4
  %323 = shl nsw i32 -1, %322
  %324 = xor i32 %323, -1
  %325 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 23
  store i32 %324, ptr %325, align 16
  %326 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 20
  store i32 %324, ptr %326, align 8
  %327 = getelementptr inbounds %struct.variant_data, ptr %8, i32 0, i32 15
  %328 = load i32, ptr %327, align 4
  %329 = shl nuw i32 1, %328
  %330 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 24
  store i32 %329, ptr %330, align 4
  %331 = load i32, ptr %327, align 4
  %332 = lshr i32 %324, %331
  %333 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 25
  store i32 %332, ptr %333, align 8
  %334 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 9, i32 2
  store i32 0, ptr %334, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %335 = load ptr, ptr %201, align 4
  %336 = getelementptr i8, ptr %335, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %336, i32 0) #12, !srcloc !9
  %337 = load i8, ptr %176, align 4
  %338 = and i8 %337, 32
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %343, label %340

340:                                              ; preds = %313
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %341 = load ptr, ptr %201, align 4
  %342 = getelementptr i8, ptr %341, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %342, i32 0) #12, !srcloc !9
  br label %343

343:                                              ; preds = %340, %313
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !17
  tail call void @arm_heavy_mb() #12
  %344 = load ptr, ptr %201, align 4
  %345 = getelementptr i8, ptr %344, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %345, i32 4095) #12, !srcloc !9
  br i1 %10, label %352, label %346

346:                                              ; preds = %343
  %347 = tail call i32 @mmc_gpiod_request_cd(ptr noundef nonnull %19, ptr noundef nonnull @.str.15, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #12
  %348 = icmp eq i32 %347, -517
  br i1 %348, label %411, label %349

349:                                              ; preds = %346
  %350 = tail call i32 @mmc_gpiod_request_ro(ptr noundef nonnull %19, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0) #12
  %351 = icmp eq i32 %350, -517
  br i1 %351, label %411, label %352

352:                                              ; preds = %349, %343
  %353 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 7
  %354 = load i32, ptr %353, align 8
  %355 = tail call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %354, ptr noundef nonnull @mmci_irq, ptr noundef nonnull @mmci_irq_thread, i32 noundef 128, ptr noundef nonnull @.str.17, ptr noundef %22) #12
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %411

357:                                              ; preds = %352
  %358 = getelementptr %struct.amba_device, ptr %0, i32 0, i32 7, i32 1
  %359 = load i32, ptr %358, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %357
  %362 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 9
  %363 = load i8, ptr %362, align 4
  %364 = or i8 %363, 1
  store i8 %364, ptr %362, align 4
  br label %368

365:                                              ; preds = %357
  %366 = tail call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %359, ptr noundef nonnull @mmci_pio_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.18, ptr noundef %22) #12
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %411

368:                                              ; preds = %365, %361
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !18
  tail call void @arm_heavy_mb() #12
  %369 = getelementptr inbounds %struct.variant_data, ptr %8, i32 0, i32 25
  %370 = load i32, ptr %369, align 4
  %371 = or i32 %370, 255
  %372 = load ptr, ptr %201, align 4
  %373 = getelementptr i8, ptr %372, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %373, i32 %371) #12, !srcloc !9
  %374 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %19, ptr %374, align 8
  %375 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 1, i32 3
  %376 = load ptr, ptr %375, align 4
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %381

378:                                              ; preds = %368
  %379 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 1
  %380 = load ptr, ptr %379, align 4
  br label %381

381:                                              ; preds = %378, %368
  %382 = phi ptr [ %380, %378 ], [ %376, %368 ]
  %383 = load i32, ptr %150, align 8
  %384 = and i32 %383, 4095
  %385 = lshr i32 %383, 12
  %386 = and i32 %385, 255
  %387 = lshr i32 %383, 20
  %388 = and i32 %387, 15
  %389 = load i32, ptr %198, align 8
  %390 = zext i32 %389 to i64
  %391 = load i32, ptr %353, align 8
  %392 = load i32, ptr %358, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %382, i32 noundef %384, i32 noundef %386, i32 noundef %388, i64 noundef %390, i32 noundef %391, i32 noundef %392) #13
  %393 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 11, i32 3
  %394 = load ptr, ptr %393, align 4
  %395 = icmp eq ptr %394, null
  br i1 %395, label %408, label %396

396:                                              ; preds = %381
  %397 = getelementptr inbounds %struct.mmci_host_ops, ptr %394, i32 0, i32 5
  %398 = load ptr, ptr %397, align 4
  %399 = icmp eq ptr %398, null
  br i1 %399, label %408, label %400

400:                                              ; preds = %396
  %401 = tail call i32 %398(ptr noundef %22) #12
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %408

403:                                              ; preds = %400
  %404 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 11, i32 11, i32 1
  store i32 1, ptr %404, align 4
  %405 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 1, i32 1, i32 11, i32 10, i32 2
  %406 = load i8, ptr %405, align 4
  %407 = or i8 %406, 1
  store i8 %407, ptr %405, align 4
  br label %408

408:                                              ; preds = %403, %400, %396, %381
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %0, i32 noundef 50) #12
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %0, i1 noundef zeroext true) #12
  %409 = tail call i32 @mmc_add_host(ptr noundef nonnull %19) #12
  %410 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #12
  br label %416

411:                                              ; preds = %365, %352, %349, %346, %272, %265, %203, %190
  %412 = phi i32 [ %192, %190 ], [ %204, %203 ], [ %266, %265 ], [ %273, %272 ], [ %355, %352 ], [ %366, %365 ], [ -517, %346 ], [ -517, %349 ]
  %413 = load ptr, ptr %164, align 4
  tail call void @clk_disable(ptr noundef %413) #12
  tail call void @clk_unprepare(ptr noundef %413) #12
  br label %414

414:                                              ; preds = %411, %174, %168, %166, %145, %138, %21
  %415 = phi i32 [ %167, %166 ], [ %412, %411 ], [ %140, %138 ], [ %148, %145 ], [ %26, %21 ], [ %172, %174 ], [ %169, %168 ]
  tail call void @mmc_free_host(ptr noundef nonnull %19) #12
  br label %416

416:                                              ; preds = %414, %408, %17, %14, %12
  %417 = phi i32 [ %415, %414 ], [ 0, %408 ], [ -22, %12 ], [ -12, %14 ], [ -12, %17 ]
  ret i32 %417
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmci_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 68
  %7 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 11, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #12
  tail call void @mmc_remove_host(ptr noundef nonnull %3) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !19
  tail call void @arm_heavy_mb() #12
  %10 = getelementptr inbounds %struct.mmci_host, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #12, !srcloc !9
  %13 = getelementptr inbounds %struct.variant_data, ptr %8, i32 0, i32 23
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 32
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !20
  tail call void @arm_heavy_mb() #12
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr i8, ptr %18, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #12, !srcloc !9
  br label %20

20:                                               ; preds = %17, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !22
  tail call void @arm_heavy_mb() #12
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr i8, ptr %23, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #12, !srcloc !9
  %25 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 11, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.mmci_host_ops, ptr %26, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void %30(ptr noundef %6) #12
  br label %33

33:                                               ; preds = %32, %28, %20
  %34 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 11, i32 10, i32 2
  %35 = load i8, ptr %34, align 4
  %36 = and i8 %35, -2
  store i8 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 8
  %38 = load ptr, ptr %37, align 4
  tail call void @clk_disable(ptr noundef %38) #12
  tail call void @clk_unprepare(ptr noundef %38) #12
  tail call void @mmc_free_host(ptr noundef nonnull %3) #12
  br label %39

39:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmci_runtime_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 68
  %7 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #12
  %8 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 9, i32 2
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !23
  tail call void @arm_heavy_mb() #12
  %10 = getelementptr inbounds %struct.mmci_host, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #12, !srcloc !9
  %13 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 11, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.variant_data, ptr %14, i32 0, i32 23
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !24
  tail call void @arm_heavy_mb() #12
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr i8, ptr %20, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !25
  tail call void @arm_heavy_mb() #12
  %22 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !26
  tail call void @arm_heavy_mb() #12
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #12, !srcloc !9
  br label %25

25:                                               ; preds = %19, %5
  %26 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, 25000000
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  %30 = select i1 %28, i32 6442440, i32 214748
  tail call void %29(i32 noundef %30) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #12
  %31 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 8
  %32 = load ptr, ptr %31, align 4
  tail call void @clk_disable(ptr noundef %32) #12
  tail call void @clk_unprepare(ptr noundef %32) #12
  br label %33

33:                                               ; preds = %25, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmci_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 68
  %7 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = tail call i32 @clk_enable(ptr noundef %8) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %8) #12
  br label %15

15:                                               ; preds = %14, %11, %5
  %16 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 9, i32 2
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #12
  %18 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 11, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.variant_data, ptr %19, i32 0, i32 23
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !27
  tail call void @arm_heavy_mb() #12
  %25 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 10, i32 1, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.mmci_host, ptr %6, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !28
  tail call void @arm_heavy_mb() #12
  %30 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 10, i32 2, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr i8, ptr %32, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !29
  tail call void @arm_heavy_mb() #12
  %34 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 10, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #12, !srcloc !9
  br label %37

37:                                               ; preds = %24, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !30
  tail call void @arm_heavy_mb() #12
  %38 = load ptr, ptr %18, align 4
  %39 = getelementptr inbounds %struct.variant_data, ptr %38, i32 0, i32 25
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 255
  %42 = getelementptr inbounds %struct.mmci_host, ptr %6, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %41) #12, !srcloc !9
  %45 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 10
  %46 = load i32, ptr %45, align 4
  %47 = icmp ult i32 %46, 25000000
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  %49 = select i1 %47, i32 6442440, i32 214748
  tail call void %48(i32 noundef %49) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #12
  %50 = tail call i32 @pinctrl_select_default_state(ptr noundef %0) #12
  br label %51

51:                                               ; preds = %37, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @mmci_qcom_get_rx_fifocnt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = and i32 %1, 32768
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.variant_data, ptr %8, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  br label %14

11:                                               ; preds = %3
  %12 = lshr i32 %1, 19
  %13 = and i32 %12, 4
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi i32 [ %10, %6 ], [ %13, %11 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmci_get_rx_fifocnt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 72
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !31
  %8 = mul i32 %7, -4
  %9 = add i32 %8, %2
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmci_card_busy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 2
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %5 = getelementptr inbounds %struct.mmci_host, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !32
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.variant_data, ptr %10, i32 0, i32 21
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %8
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #12
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmci_write_datactrlreg(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 18
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.variant_data, ptr %6, i32 0, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %4
  %10 = or i32 %9, %1
  %11 = icmp eq i32 %4, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  store i32 %10, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !33
  tail call void @arm_heavy_mb() #12
  %13 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %10) #12, !srcloc !9
  br label %16

16:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpiod_request_cd(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpiod_request_ro(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmci_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 33
  store i32 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 8
  %7 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 20
  %8 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 25
  %9 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 5
  %10 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 3
  br label %11

11:                                               ; preds = %64, %2
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 52
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !34
  %15 = load i8, ptr %6, align 4
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %11
  %19 = load i32, ptr %7, align 4
  %20 = and i32 %19, %14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @mmci_pio_irq(i32 noundef %0, ptr noundef %1)
  br label %24

24:                                               ; preds = %22, %18
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds %struct.variant_data, ptr %25, i32 0, i32 24
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %14, %28
  br label %30

30:                                               ; preds = %24, %11
  %31 = phi i32 [ %29, %24 ], [ %14, %11 ]
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr i8, ptr %32, i32 60
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !35
  %35 = and i32 %34, %31
  %36 = load ptr, ptr %8, align 4
  %37 = getelementptr inbounds %struct.variant_data, ptr %36, i32 0, i32 19
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, 4
  %40 = icmp eq i8 %39, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  br i1 %40, label %49, label %41

41:                                               ; preds = %30
  %42 = load ptr, ptr %8, align 4
  %43 = getelementptr inbounds %struct.variant_data, ptr %42, i32 0, i32 22
  %44 = load i32, ptr %43, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %35, %45
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr i8, ptr %47, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #12, !srcloc !9
  br label %52

49:                                               ; preds = %30
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr i8, ptr %50, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %35) #12, !srcloc !9
  br label %52

52:                                               ; preds = %49, %41
  %53 = load ptr, ptr %8, align 4
  %54 = getelementptr inbounds %struct.variant_data, ptr %53, i32 0, i32 23
  %55 = load i8, ptr %54, align 4
  %56 = and i8 %55, 16
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %9, align 4
  tail call fastcc void @mmci_data_irq(ptr noundef %1, ptr noundef %59, i32 noundef %35)
  %60 = load ptr, ptr %10, align 4
  tail call fastcc void @mmci_cmd_irq(ptr noundef %1, ptr noundef %60, i32 noundef %35)
  br label %64

61:                                               ; preds = %52
  %62 = load ptr, ptr %10, align 4
  tail call fastcc void @mmci_cmd_irq(ptr noundef %1, ptr noundef %62, i32 noundef %35)
  %63 = load ptr, ptr %9, align 4
  tail call fastcc void @mmci_data_irq(ptr noundef %1, ptr noundef %63, i32 noundef %35)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load ptr, ptr %8, align 4
  %66 = getelementptr inbounds %struct.variant_data, ptr %65, i32 0, i32 21
  %67 = load i32, ptr %66, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %35, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %11

71:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !36
  %72 = load i16, ptr %3, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !37
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !38
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !39
  %74 = load i32, ptr %4, align 4
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmci_irq_thread(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @reset_control_assert(ptr noundef nonnull %4) #12
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 429496) #12
  %9 = load ptr, ptr %3, align 4
  %10 = tail call i32 @reset_control_deassert(ptr noundef %9) #12
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 10
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !40
  tail call void @arm_heavy_mb() #12
  %14 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 16
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !41
  tail call void @arm_heavy_mb() #12
  %19 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 14
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !42
  tail call void @arm_heavy_mb() #12
  %22 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 25
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.variant_data, ptr %23, i32 0, i32 25
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 255
  %27 = load ptr, ptr %16, align 4
  %28 = getelementptr i8, ptr %27, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #12, !srcloc !9
  %29 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 33
  store i32 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !43
  tail call void @arm_heavy_mb() #12
  %32 = load ptr, ptr %16, align 4
  %33 = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #12, !srcloc !9
  %34 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !14

37:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/mmci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 600, 0\0A.popsection", ""() #12, !srcloc !44
  unreachable

38:                                               ; preds = %11
  store ptr null, ptr %30, align 4
  %39 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 3
  store ptr null, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  tail call void @mmc_request_done(ptr noundef %41, ptr noundef %31) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #12
  %42 = load i32, ptr %29, align 4
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmci_pio_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 34
  %5 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !45
  %11 = and i32 %10, 2113536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %110, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 34, i32 1
  %15 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 34, i32 2
  %16 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 35
  %17 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 36
  %18 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 34, i32 3
  br label %19

19:                                               ; preds = %106, %13
  %20 = phi i32 [ %10, %13 ], [ %107, %106 ]
  %21 = call zeroext i1 @sg_miter_next(ptr noundef %4) #12
  br i1 %21, label %22, label %110

22:                                               ; preds = %19
  %23 = load ptr, ptr %14, align 4
  %24 = load i32, ptr %15, align 4
  %25 = and i32 %20, 8192
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %68, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr i8, ptr %28, i32 52
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #12, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !46
  %31 = load i32, ptr %16, align 4
  %32 = getelementptr i8, ptr %28, i32 128
  br label %33

33:                                               ; preds = %58, %27
  %34 = phi i32 [ %31, %27 ], [ %59, %58 ]
  %35 = phi i32 [ %30, %27 ], [ %60, %58 ]
  %36 = phi ptr [ %23, %27 ], [ %55, %58 ]
  %37 = phi i32 [ %24, %27 ], [ %56, %58 ]
  %38 = load ptr, ptr %17, align 4
  %39 = call i32 %38(ptr noundef %1, i32 noundef %35, i32 noundef %34) #12
  %40 = call i32 @llvm.umin.i32(i32 %39, i32 %37) #12
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %63, label %42

42:                                               ; preds = %33
  %43 = and i32 %40, 3
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45, !prof !14

45:                                               ; preds = %42
  %46 = icmp ult i32 %40, 4
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !47
  call void @__raw_readsl(ptr noundef %32, ptr noundef nonnull %3, i32 noundef 1) #12
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr nonnull align 4 %3, i32 %40, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %53

48:                                               ; preds = %45
  %49 = lshr i32 %40, 2
  call void @__raw_readsl(ptr noundef %32, ptr noundef %36, i32 noundef %49) #12
  %50 = and i32 %40, -4
  br label %53

51:                                               ; preds = %42
  %52 = lshr i32 %40, 2
  call void @__raw_readsl(ptr noundef %32, ptr noundef %36, i32 noundef %52) #12
  br label %53

53:                                               ; preds = %51, %48, %47
  %54 = phi i32 [ %40, %47 ], [ %50, %48 ], [ %40, %51 ]
  %55 = getelementptr i8, ptr %36, i32 %54
  %56 = sub i32 %37, %54
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = sub i32 %34, %54
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #12, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !48
  %61 = and i32 %60, 2097152
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %33

63:                                               ; preds = %58, %53, %33
  %64 = phi ptr [ %55, %58 ], [ %55, %53 ], [ %36, %33 ]
  %65 = ptrtoint ptr %64 to i32
  %66 = ptrtoint ptr %23 to i32
  %67 = sub i32 %65, %66
  br label %68

68:                                               ; preds = %63, %22
  %69 = phi i32 [ %67, %63 ], [ 0, %22 ]
  %70 = and i32 %20, 4096
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %101, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %5, align 4
  %74 = load ptr, ptr %7, align 4
  %75 = getelementptr i8, ptr %74, i32 52
  %76 = getelementptr inbounds %struct.variant_data, ptr %73, i32 0, i32 10
  %77 = getelementptr inbounds %struct.variant_data, ptr %73, i32 0, i32 11
  %78 = getelementptr i8, ptr %74, i32 128
  br label %79

79:                                               ; preds = %93, %72
  %80 = phi ptr [ %23, %72 ], [ %90, %93 ]
  %81 = phi i32 [ %20, %72 ], [ %94, %93 ]
  %82 = phi i32 [ %24, %72 ], [ %91, %93 ]
  %83 = and i32 %81, 262144
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, ptr %77, ptr %76
  %86 = load i32, ptr %85, align 4
  %87 = call i32 @llvm.umin.i32(i32 %82, i32 %86) #12
  %88 = add i32 %87, 3
  %89 = lshr i32 %88, 2
  call void @__raw_writesl(ptr noundef %78, ptr noundef %80, i32 noundef %89) #12
  %90 = getelementptr i8, ptr %80, i32 %87
  %91 = sub i32 %82, %87
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %79
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #12, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !49
  %95 = and i32 %94, 16384
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %79

97:                                               ; preds = %93, %79
  %98 = ptrtoint ptr %90 to i32
  %99 = ptrtoint ptr %23 to i32
  %100 = sub i32 %98, %99
  br label %101

101:                                              ; preds = %97, %68
  %102 = phi i32 [ %100, %97 ], [ %69, %68 ]
  store i32 %102, ptr %18, align 4
  %103 = load i32, ptr %16, align 4
  %104 = sub i32 %103, %102
  store i32 %104, ptr %16, align 4
  %105 = icmp eq i32 %24, %102
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #12, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !50
  %108 = and i32 %107, 2113536
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %19

110:                                              ; preds = %106, %101, %19, %2
  %111 = phi i32 [ %10, %2 ], [ %107, %106 ], [ %20, %19 ], [ %20, %101 ]
  call void @sg_miter_stop(ptr noundef %4) #12
  %112 = and i32 %111, 8192
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %144, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 35
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.variant_data, ptr %6, i32 0, i32 11
  %118 = load i32, ptr %117, align 4
  %119 = icmp ult i32 %116, %118
  br i1 %119, label %120, label %144

120:                                              ; preds = %114
  %121 = load ptr, ptr %7, align 4
  %122 = load ptr, ptr %5, align 4
  %123 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 8
  %124 = load i8, ptr %123, align 4
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %120
  %128 = getelementptr i8, ptr %121, i32 60
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #12, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !51
  %130 = getelementptr inbounds %struct.variant_data, ptr %122, i32 0, i32 24
  %131 = load i32, ptr %130, align 4
  %132 = xor i32 %131, -1
  %133 = and i32 %129, %132
  %134 = or i32 %133, 2097152
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !52
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %134) #12, !srcloc !9
  br label %135

135:                                              ; preds = %127, %120
  %136 = getelementptr inbounds %struct.variant_data, ptr %122, i32 0, i32 23
  %137 = load i8, ptr %136, align 4
  %138 = and i8 %137, 32
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %135
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !53
  call void @arm_heavy_mb() #12
  %141 = getelementptr i8, ptr %121, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 2097152) #12, !srcloc !9
  br label %142

142:                                              ; preds = %140, %135
  %143 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 20
  store i32 2097152, ptr %143, align 4
  br label %144

144:                                              ; preds = %142, %114, %110
  %145 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 35
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %174

148:                                              ; preds = %144
  %149 = load ptr, ptr %7, align 4
  %150 = load ptr, ptr %5, align 4
  %151 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 8
  %152 = load i8, ptr %151, align 4
  %153 = and i8 %152, 1
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %148
  %156 = getelementptr i8, ptr %149, i32 60
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #12, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !51
  %158 = getelementptr inbounds %struct.variant_data, ptr %150, i32 0, i32 24
  %159 = load i32, ptr %158, align 4
  %160 = xor i32 %159, -1
  %161 = and i32 %157, %160
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !52
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %161) #12, !srcloc !9
  br label %162

162:                                              ; preds = %155, %148
  %163 = getelementptr inbounds %struct.variant_data, ptr %150, i32 0, i32 23
  %164 = load i8, ptr %163, align 4
  %165 = and i8 %164, 32
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %162
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !53
  call void @arm_heavy_mb() #12
  %168 = getelementptr i8, ptr %149, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 0) #12, !srcloc !9
  br label %169

169:                                              ; preds = %167, %162
  %170 = getelementptr inbounds %struct.mmci_host, ptr %1, i32 0, i32 20
  store i32 0, ptr %170, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !54
  call void @arm_heavy_mb() #12
  %171 = getelementptr i8, ptr %8, i32 60
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #12, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !55
  %173 = or i32 %172, 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %173) #12, !srcloc !9
  br label %174

174:                                              ; preds = %169, %144
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmci_post_request(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %5 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mmci_host_ops, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %4, ptr noundef nonnull %6, i32 noundef %2) #12
  br label %21

21:                                               ; preds = %20, %16, %12
  store i32 0, ptr %9, align 4
  br label %22

22:                                               ; preds = %21, %8, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmci_pre_request(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %55, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !14

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1109, i32 noundef 9, ptr noundef null) #12
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #12, !range !13
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.variant_data, ptr %19, i32 0, i32 16
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.20, i32 noundef %14) #13
  br label %55

28:                                               ; preds = %17, %12
  %29 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %55, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = tail call i32 %33(ptr noundef %3, ptr noundef nonnull %5) #12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load ptr, ptr %29, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %38, %32
  %42 = phi ptr [ %39, %38 ], [ %30, %32 ]
  %43 = getelementptr inbounds %struct.mmci_host_ops, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = tail call i32 %44(ptr noundef %3, ptr noundef nonnull %5, i1 noundef zeroext true) #12
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 11, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  %53 = icmp slt i32 %52, 0
  %54 = select i1 %53, i32 1, i32 %52
  store i32 %54, ptr %8, align 4
  br label %55

55:                                               ; preds = %49, %46, %41, %38, %35, %28, %24, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmci_request(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !14

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1700, i32 noundef 9, ptr noundef null) #12
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %10, null
  br i1 %13, label %37, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #12, !range !13
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.variant_data, ptr %12, i32 0, i32 16
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.20, i32 noundef %16) #13
  br label %37

28:                                               ; preds = %19, %14
  %29 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call i32 %33(ptr noundef %3, ptr noundef nonnull %10) #12
  br label %37

37:                                               ; preds = %35, %32, %28, %24, %8
  %38 = phi i32 [ %36, %35 ], [ -22, %24 ], [ 0, %8 ], [ 0, %32 ], [ 0, %28 ]
  %39 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mmc_command, ptr %40, i32 0, i32 5
  store i32 %38, ptr %41, align 4
  %42 = load ptr, ptr %39, align 4
  %43 = getelementptr inbounds %struct.mmc_command, ptr %42, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  tail call void @mmc_request_done(ptr noundef %0, ptr noundef %1) #12
  br label %92

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 2
  %49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %48) #12
  store ptr %1, ptr %4, align 4
  %50 = load ptr, ptr %9, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %85, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.mmc_data, ptr %50, i32 0, i32 13
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 11, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %54, %58
  br i1 %59, label %61, label %60, !prof !14

60:                                               ; preds = %56
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 534, i32 noundef 9, ptr noundef null) #12
  br label %61

61:                                               ; preds = %60, %56, %52
  %62 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.mmci_host_ops, ptr %63, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void %67(ptr noundef %3, ptr noundef nonnull %50) #12
  br label %70

70:                                               ; preds = %69, %65, %61
  %71 = load ptr, ptr %9, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %85, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %11, align 4
  %75 = getelementptr inbounds %struct.variant_data, ptr %74, i32 0, i32 16
  %76 = load i8, ptr %75, align 4
  %77 = and i8 %76, 4
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.mmc_data, ptr %71, i32 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 512
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79, %73
  tail call fastcc void @mmci_start_data(ptr noundef %3, ptr noundef nonnull %71)
  br label %85

85:                                               ; preds = %84, %79, %70, %47
  %86 = load ptr, ptr %1, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  tail call fastcc void @mmci_start_command(ptr noundef %3, ptr noundef nonnull %86)
  br label %91

89:                                               ; preds = %85
  %90 = load ptr, ptr %39, align 4
  tail call fastcc void @mmci_start_command(ptr noundef %3, ptr noundef %90)
  br label %91

91:                                               ; preds = %89, %88
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %48, i32 noundef %49) #12
  br label %92

92:                                               ; preds = %91, %46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmci_set_ios(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmci_platform_data, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 64
  %13 = tail call i32 %9(ptr noundef %12, ptr noundef %1) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.21) #13
  br label %17

17:                                               ; preds = %15, %11, %2
  %18 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 5
  %19 = load i8, ptr %18, align 2
  switch i8 %19, label %67 [
    i8 0, label %20
    i8 1, label %39
    i8 2, label %50
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54
  %22 = load ptr, ptr %21, align 4
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %0, ptr noundef %22, i16 noundef zeroext 0) #12
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %67, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11
  %32 = load i8, ptr %31, align 4
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %67, label %35

35:                                               ; preds = %30
  %36 = tail call i32 @regulator_disable(ptr noundef %28) #12
  %37 = load i8, ptr %31, align 4
  %38 = and i8 %37, -2
  store i8 %38, ptr %31, align 4
  br label %67

39:                                               ; preds = %17
  %40 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54
  %41 = load ptr, ptr %40, align 4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 1
  %45 = load i16, ptr %44, align 4
  %46 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %0, ptr noundef %41, i16 noundef zeroext %45) #12
  br label %47

47:                                               ; preds = %43, %39
  %48 = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 17
  %49 = load i32, ptr %48, align 4
  br label %67

50:                                               ; preds = %17
  %51 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %67, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = tail call i32 @regulator_enable(ptr noundef %52) #12
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.22) #13
  br label %67

64:                                               ; preds = %59
  %65 = load i8, ptr %55, align 4
  %66 = or i8 %65, 1
  store i8 %66, ptr %55, align 4
  br label %67

67:                                               ; preds = %64, %62, %54, %50, %47, %35, %30, %26, %17
  %68 = phi i32 [ 0, %17 ], [ %49, %47 ], [ 0, %26 ], [ 0, %35 ], [ 0, %30 ], [ 3, %62 ], [ 3, %64 ], [ 3, %54 ], [ 3, %50 ]
  %69 = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 19
  %70 = load i8, ptr %69, align 4
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %67
  %74 = load i8, ptr %18, align 2
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = or i32 %78, %68
  %80 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %81 = load i8, ptr %80, align 1
  switch i8 %81, label %86 [
    i8 2, label %82
    i8 0, label %84
  ]

82:                                               ; preds = %76
  %83 = and i32 %79, -257
  br label %86

84:                                               ; preds = %76
  %85 = and i32 %79, -293
  br label %86

86:                                               ; preds = %84, %82, %76, %73, %67
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ], [ %68, %73 ], [ %68, %67 ], [ %79, %76 ]
  %88 = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 26
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  %91 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 3
  %92 = load i8, ptr %91, align 4
  %93 = icmp eq i8 %92, 1
  br i1 %90, label %97, label %94

94:                                               ; preds = %86
  %95 = select i1 %93, i32 %89, i32 0
  %96 = or i32 %95, %87
  br label %107

97:                                               ; preds = %86
  br i1 %93, label %98, label %104

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 5
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 5, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = tail call i32 @pinctrl_select_state(ptr noundef %100, ptr noundef %102) #12
  br label %107

104:                                              ; preds = %97
  %105 = load ptr, ptr %0, align 64
  %106 = tail call i32 @pinctrl_select_default_state(ptr noundef %105) #12
  br label %107

107:                                              ; preds = %104, %98, %94
  %108 = phi i32 [ %87, %98 ], [ %87, %104 ], [ %96, %94 ]
  %109 = load i32, ptr %1, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i8, ptr %69, align 4
  %113 = and i8 %112, 2
  %114 = icmp eq i8 %113, 0
  %115 = and i32 %108, -4
  %116 = select i1 %114, i32 %108, i32 %115
  br label %117

117:                                              ; preds = %111, %107
  %118 = phi i32 [ %108, %107 ], [ %116, %111 ]
  %119 = load ptr, ptr %4, align 4
  %120 = getelementptr inbounds %struct.variant_data, ptr %119, i32 0, i32 23
  %121 = load i8, ptr %120, align 4
  %122 = and i8 %121, 2
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %141, label %124

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 3, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %109, %126
  br i1 %127, label %141, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 8
  %130 = load ptr, ptr %129, align 4
  %131 = tail call i32 @clk_set_rate(ptr noundef %130, i32 noundef %109) #12
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 7
  %135 = load ptr, ptr %134, align 4
  %136 = load ptr, ptr %135, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.23, i32 noundef %131) #13
  br label %141

137:                                              ; preds = %128
  %138 = load ptr, ptr %129, align 4
  %139 = tail call i32 @clk_get_rate(ptr noundef %138) #12
  %140 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 3
  store i32 %139, ptr %140, align 4
  br label %141

141:                                              ; preds = %137, %133, %124, %117
  %142 = load i32, ptr %1, align 4
  %143 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 3, i32 1
  store i32 %142, ptr %143, align 4
  %144 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 2
  %145 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %144) #12
  %146 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 3
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %155, label %149

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.mmci_host_ops, ptr %147, i32 0, i32 10
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = load i32, ptr %1, align 4
  tail call void %151(ptr noundef %3, i32 noundef %154) #12
  br label %236

155:                                              ; preds = %149, %141
  %156 = load i32, ptr %1, align 4
  %157 = load ptr, ptr %4, align 4
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10
  store i32 0, ptr %159, align 4
  %160 = icmp eq i32 %156, 0
  br i1 %160, label %200, label %161

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.variant_data, ptr %157, i32 0, i32 23
  %163 = load i8, ptr %162, align 4
  %164 = and i8 %163, 2
  %165 = icmp eq i8 %164, 0
  %166 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 3
  %167 = load i32, ptr %166, align 4
  br i1 %165, label %168, label %193

168:                                              ; preds = %161
  %169 = icmp ugt i32 %167, %156
  %170 = getelementptr inbounds %struct.variant_data, ptr %157, i32 0, i32 16
  %171 = load i8, ptr %170, align 4
  %172 = and i8 %171, 32
  %173 = icmp eq i8 %172, 0
  br i1 %169, label %176, label %174

174:                                              ; preds = %168
  %175 = select i1 %173, i32 1024, i32 9216
  br label %193

176:                                              ; preds = %168
  br i1 %173, label %185, label %177

177:                                              ; preds = %176
  %178 = add i32 %156, -1
  %179 = add i32 %178, %167
  %180 = udiv i32 %179, %156
  %181 = add i32 %180, -2
  %182 = tail call i32 @llvm.umin.i32(i32 %181, i32 255) #12
  %183 = add nuw nsw i32 %182, 2
  %184 = udiv i32 %167, %183
  br label %193

185:                                              ; preds = %176
  %186 = shl i32 %156, 1
  %187 = udiv i32 %167, %186
  %188 = add i32 %187, -1
  %189 = tail call i32 @llvm.umin.i32(i32 %188, i32 255) #12
  %190 = shl nuw nsw i32 %189, 1
  %191 = add nuw nsw i32 %190, 2
  %192 = udiv i32 %167, %191
  br label %193

193:                                              ; preds = %185, %177, %174, %161
  %194 = phi i32 [ %167, %174 ], [ %192, %185 ], [ %184, %177 ], [ %167, %161 ]
  %195 = phi i32 [ %175, %174 ], [ %189, %185 ], [ %182, %177 ], [ %158, %161 ]
  store i32 %194, ptr %159, align 4
  %196 = getelementptr inbounds %struct.variant_data, ptr %157, i32 0, i32 1
  %197 = load i32, ptr %196, align 4
  %198 = or i32 %195, %197
  %199 = or i32 %198, 256
  br label %200

200:                                              ; preds = %193, %155
  %201 = phi i32 [ %194, %193 ], [ 0, %155 ]
  %202 = phi i32 [ %199, %193 ], [ %158, %155 ]
  %203 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 7
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr inbounds %struct.mmc_host, ptr %204, i32 0, i32 57
  store i32 %201, ptr %205, align 4
  %206 = load ptr, ptr %203, align 4
  %207 = getelementptr inbounds %struct.mmc_host, ptr %206, i32 0, i32 28, i32 6
  %208 = load i8, ptr %207, align 1
  %209 = icmp eq i8 %208, 2
  %210 = or i32 %202, 2048
  %211 = select i1 %209, i32 %210, i32 %202
  %212 = icmp eq i8 %208, 3
  br i1 %212, label %213, label %217

213:                                              ; preds = %200
  %214 = getelementptr inbounds %struct.variant_data, ptr %157, i32 0, i32 2
  %215 = load i32, ptr %214, align 4
  %216 = or i32 %215, %211
  br label %217

217:                                              ; preds = %213, %200
  %218 = phi i32 [ %216, %213 ], [ %211, %200 ]
  %219 = getelementptr inbounds %struct.mmc_host, ptr %206, i32 0, i32 28, i32 7
  %220 = load i8, ptr %219, align 4
  %221 = add i8 %220, -7
  %222 = icmp ult i8 %221, 2
  br i1 %222, label %223, label %227

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct.variant_data, ptr %157, i32 0, i32 3
  %225 = load i32, ptr %224, align 4
  %226 = or i32 %225, %218
  br label %227

227:                                              ; preds = %223, %217
  %228 = phi i32 [ %226, %223 ], [ %218, %217 ]
  %229 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 1, i32 1
  %230 = load i32, ptr %229, align 4
  %231 = icmp eq i32 %230, %228
  br i1 %231, label %236, label %232

232:                                              ; preds = %227
  store i32 %228, ptr %229, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %233 = getelementptr inbounds %struct.mmci_host, ptr %3, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr i8, ptr %234, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %228) #12, !srcloc !9
  br label %236

236:                                              ; preds = %232, %227, %153
  %237 = load ptr, ptr %4, align 4
  %238 = getelementptr inbounds %struct.variant_data, ptr %237, i32 0, i32 19
  %239 = load i8, ptr %238, align 4
  %240 = and i8 %239, 4
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %255, label %242

242:                                              ; preds = %236
  %243 = and i8 %239, 8
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %252, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 57
  %247 = load i32, ptr %246, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %245
  %250 = udiv i32 %247, 1000
  %251 = udiv i32 -1, %250
  br label %252

252:                                              ; preds = %249, %245, %242
  %253 = phi i32 [ %251, %249 ], [ 0, %245 ], [ 0, %242 ]
  %254 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 26
  store i32 %253, ptr %254, align 4
  br label %255

255:                                              ; preds = %252, %236
  %256 = load ptr, ptr %146, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %263, label %258

258:                                              ; preds = %255
  %259 = getelementptr inbounds %struct.mmci_host_ops, ptr %256, i32 0, i32 11
  %260 = load ptr, ptr %259, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %263, label %262

262:                                              ; preds = %258
  tail call void %260(ptr noundef %3, i32 noundef %118) #12
  br label %270

263:                                              ; preds = %258, %255
  %264 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 0, i32 1
  %265 = load i32, ptr %264, align 4
  %266 = icmp eq i32 %265, %118
  br i1 %266, label %270, label %267

267:                                              ; preds = %263
  store i32 %118, ptr %264, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  %268 = getelementptr inbounds %struct.mmci_host, ptr %3, i32 0, i32 1
  %269 = load ptr, ptr %268, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %269, i32 %118) #12, !srcloc !9
  br label %270

270:                                              ; preds = %267, %263, %262
  %271 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10
  %272 = load i32, ptr %271, align 4
  %273 = icmp ult i32 %272, 25000000
  %274 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  %275 = select i1 %273, i32 6442440, i32 214748
  tail call void %274(i32 noundef %275) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %144, i32 noundef %145) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmci_get_cd(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @mmc_gpio_get_cd(ptr noundef %0) #12
  %5 = icmp eq i32 %4, -38
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmci_platform_data, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 64
  %14 = tail call i32 %8(ptr noundef %13) #12
  br label %15

15:                                               ; preds = %10, %6, %1
  %16 = phi i32 [ 1, %6 ], [ %14, %10 ], [ %4, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmci_sig_volt_switch(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %0, ptr noundef %1) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mmci_host_ops, ptr %8, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef %3, ptr noundef %1) #12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.24) #13
  br label %19

19:                                               ; preds = %17, %14, %10, %6, %2
  %20 = phi i32 [ %15, %17 ], [ %15, %14 ], [ 0, %10 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmci_start_data(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 5
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, %8
  %12 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 35
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  store i32 0, ptr %13, align 4
  %14 = load i32, ptr %1, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = zext i32 %17 to i64
  %19 = mul nuw i64 %18, %15
  %20 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %19, i32 0) #14, !srcloc !56
  %21 = extractvalue { i64, i32 } %20, 0
  %22 = extractvalue { i64, i32 } %20, 1
  %23 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %19, i64 %21, i32 %22) #14, !srcloc !57
  %24 = extractvalue { i64, i32 } %23, 0
  %25 = lshr i64 %24, 29
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %26
  %30 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !58
  tail call void @arm_heavy_mb() #12
  %32 = getelementptr i8, ptr %31, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %29) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !59
  tail call void @arm_heavy_mb() #12
  %33 = load i32, ptr %12, align 4
  %34 = getelementptr i8, ptr %31, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %33) #12, !srcloc !9
  %35 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 24
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.mmci_host_ops, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %0) #12
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr inbounds %struct.mmc_data, ptr %40, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = lshr i32 %42, 8
  %44 = and i32 %43, 2
  %45 = or i32 %44, %39
  %46 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.mmc_host, ptr %47, i32 0, i32 37
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %99, label %51

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.mmc_card, ptr %49, i32 0, i32 4
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %99

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 14
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, %45
  %59 = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 16
  %60 = load i8, ptr %59, align 4
  %61 = and i8 %60, 16
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %84, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 256
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %63
  %69 = load i32, ptr %12, align 4
  %70 = icmp ult i32 %69, 8
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = icmp eq i32 %69, 8
  br i1 %72, label %73, label %84

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 11
  %75 = load i32, ptr %74, align 4
  %76 = icmp ugt i32 %75, 50000000
  br i1 %76, label %77, label %84

77:                                               ; preds = %73, %68
  %78 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 16
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %79, %82
  br label %90

84:                                               ; preds = %73, %71, %63, %55
  %85 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 16
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = or i32 %88, %86
  br label %90

90:                                               ; preds = %84, %77
  %91 = phi i32 [ %79, %77 ], [ %86, %84 ]
  %92 = phi i32 [ %83, %77 ], [ %89, %84 ]
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 16
  store i32 %92, ptr %95, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %96 = load ptr, ptr %30, align 4
  %97 = getelementptr i8, ptr %96, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %92) #12, !srcloc !9
  %98 = load ptr, ptr %46, align 4
  br label %99

99:                                               ; preds = %94, %90, %51, %2
  %100 = phi ptr [ %47, %51 ], [ %47, %2 ], [ %47, %90 ], [ %98, %94 ]
  %101 = phi i32 [ %45, %51 ], [ %45, %2 ], [ %58, %90 ], [ %58, %94 ]
  %102 = getelementptr inbounds %struct.mmc_host, ptr %100, i32 0, i32 28, i32 7
  %103 = load i8, ptr %102, align 4
  %104 = add i8 %103, -7
  %105 = icmp ult i8 %104, 2
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 13
  %108 = load i32, ptr %107, align 4
  %109 = or i32 %108, %101
  br label %110

110:                                              ; preds = %106, %99
  %111 = phi i32 [ %109, %106 ], [ %101, %99 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %111, ptr %3, align 4
  %112 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 37
  %113 = load i8, ptr %112, align 4
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %158, label %116

116:                                              ; preds = %110
  %117 = load ptr, ptr %6, align 4
  %118 = load ptr, ptr %35, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %158, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.mmci_host_ops, ptr %118, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %130, label %124

124:                                              ; preds = %120
  %125 = tail call i32 %122(ptr noundef %0, ptr noundef %117, i1 noundef zeroext false) #12
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %158

127:                                              ; preds = %124
  %128 = load ptr, ptr %35, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %158, label %130

130:                                              ; preds = %127, %120
  %131 = phi ptr [ %128, %127 ], [ %118, %120 ]
  %132 = getelementptr inbounds %struct.mmci_host_ops, ptr %131, i32 0, i32 7
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %158, label %135

135:                                              ; preds = %130
  %136 = call i32 %133(ptr noundef %0, ptr noundef nonnull %3) #12
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %135
  %139 = load i32, ptr %3, align 4
  %140 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 18
  %141 = load i32, ptr %140, align 4
  %142 = load ptr, ptr %4, align 4
  %143 = getelementptr inbounds %struct.variant_data, ptr %142, i32 0, i32 20
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, %141
  %146 = or i32 %145, %139
  %147 = icmp eq i32 %141, %146
  br i1 %147, label %151, label %148

148:                                              ; preds = %138
  store i32 %146, ptr %140, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !33
  call void @arm_heavy_mb() #12
  %149 = load ptr, ptr %30, align 4
  %150 = getelementptr i8, ptr %149, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %146) #12, !srcloc !9
  br label %151

151:                                              ; preds = %148, %138
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !60
  call void @arm_heavy_mb() #12
  %152 = load ptr, ptr %30, align 4
  %153 = getelementptr i8, ptr %152, i32 60
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #12, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !61
  %155 = or i32 %154, 256
  %156 = load ptr, ptr %30, align 4
  %157 = getelementptr i8, ptr %156, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %155) #12, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %218

158:                                              ; preds = %135, %130, %127, %124, %116, %110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %159 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %160, 512
  %162 = icmp eq i32 %161, 0
  %163 = select i1 %162, i32 5, i32 3
  %164 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 34
  %165 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %168 = load i32, ptr %167, align 4
  call void @sg_miter_start(ptr noundef %164, ptr noundef %166, i32 noundef %168, i32 noundef %163) #12
  %169 = load i32, ptr %159, align 4
  %170 = and i32 %169, 512
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %158
  %173 = load i32, ptr %12, align 4
  %174 = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 11
  %175 = load i32, ptr %174, align 4
  %176 = icmp ult i32 %173, %175
  %177 = select i1 %176, i32 2129920, i32 32768
  br label %178

178:                                              ; preds = %172, %158
  %179 = phi i32 [ %177, %172 ], [ 16384, %158 ]
  %180 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 18
  %181 = load i32, ptr %180, align 4
  %182 = load ptr, ptr %4, align 4
  %183 = getelementptr inbounds %struct.variant_data, ptr %182, i32 0, i32 20
  %184 = load i32, ptr %183, align 4
  %185 = and i32 %184, %181
  %186 = or i32 %185, %111
  %187 = icmp eq i32 %181, %186
  br i1 %187, label %191, label %188

188:                                              ; preds = %178
  store i32 %186, ptr %180, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !33
  call void @arm_heavy_mb() #12
  %189 = load ptr, ptr %30, align 4
  %190 = getelementptr i8, ptr %189, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %186) #12, !srcloc !9
  br label %191

191:                                              ; preds = %188, %178
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !62
  call void @arm_heavy_mb() #12
  %192 = getelementptr i8, ptr %31, i32 60
  %193 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #12, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !63
  %194 = and i32 %193, -257
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 %194) #12, !srcloc !9
  %195 = load ptr, ptr %30, align 4
  %196 = load ptr, ptr %4, align 4
  %197 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 8
  %198 = load i8, ptr %197, align 4
  %199 = and i8 %198, 1
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %209, label %201

201:                                              ; preds = %191
  %202 = getelementptr i8, ptr %195, i32 60
  %203 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #12, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !51
  %204 = getelementptr inbounds %struct.variant_data, ptr %196, i32 0, i32 24
  %205 = load i32, ptr %204, align 4
  %206 = xor i32 %205, -1
  %207 = and i32 %203, %206
  %208 = or i32 %207, %179
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !52
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %208) #12, !srcloc !9
  br label %209

209:                                              ; preds = %201, %191
  %210 = getelementptr inbounds %struct.variant_data, ptr %196, i32 0, i32 23
  %211 = load i8, ptr %210, align 4
  %212 = and i8 %211, 32
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %209
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !53
  call void @arm_heavy_mb() #12
  %215 = getelementptr i8, ptr %195, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 %179) #12, !srcloc !9
  br label %216

216:                                              ; preds = %214, %209
  %217 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 20
  store i32 %179, ptr %217, align 4
  br label %218

218:                                              ; preds = %216, %151
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmci_start_command(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !64
  %7 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.variant_data, ptr %8, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, %6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !65
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #12, !srcloc !9
  %14 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, 25000000
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  %18 = select i1 %16, i32 6442440, i32 214748
  tail call void %17(i32 noundef %18) #12
  %19 = load ptr, ptr %7, align 4
  br label %20

20:                                               ; preds = %13, %2
  %21 = phi ptr [ %19, %13 ], [ %8, %2 ]
  %22 = getelementptr inbounds %struct.variant_data, ptr %21, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = load i32, ptr %1, align 4
  %26 = icmp eq i32 %25, 12
  %27 = select i1 %26, i32 %23, i32 0
  %28 = select i1 %24, i32 0, i32 %27
  %29 = getelementptr inbounds %struct.variant_data, ptr %21, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %25, %28
  %32 = or i32 %31, %30
  %33 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %20
  %38 = and i32 %34, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.variant_data, ptr %21, i32 0, i32 5
  br label %49

42:                                               ; preds = %37
  %43 = and i32 %34, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.variant_data, ptr %21, i32 0, i32 6
  br label %49

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.variant_data, ptr %21, i32 0, i32 7
  br label %49

49:                                               ; preds = %47, %45, %40
  %50 = phi ptr [ %41, %40 ], [ %48, %47 ], [ %46, %45 ]
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, %32
  br label %53

53:                                               ; preds = %49, %20
  %54 = phi i32 [ %32, %20 ], [ %52, %49 ]
  %55 = getelementptr inbounds %struct.variant_data, ptr %21, i32 0, i32 19
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, 8
  %58 = icmp eq i8 %57, 0
  %59 = and i32 %34, 8
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %88, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 10000, ptr %63, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32 [ 10000, %66 ], [ %64, %62 ]
  %69 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.mmc_host, ptr %70, i32 0, i32 26
  %72 = load i32, ptr %71, align 4
  %73 = call i32 @llvm.umin.i32(i32 %68, i32 %72)
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 13
  %76 = load i32, ptr %75, align 4
  %77 = zext i32 %76 to i64
  %78 = mul nuw i64 %77, %74
  %79 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %78, i32 0) #14, !srcloc !56
  %80 = extractvalue { i64, i32 } %79, 0
  %81 = extractvalue { i64, i32 } %79, 1
  %82 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %78, i64 %80, i32 %81) #14, !srcloc !57
  %83 = extractvalue { i64, i32 } %82, 0
  %84 = lshr i64 %83, 9
  %85 = trunc i64 %84 to i32
  %86 = load ptr, ptr %3, align 4
  %87 = getelementptr i8, ptr %86, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #12, !srcloc !9
  br label %88

88:                                               ; preds = %67, %53
  %89 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 24
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.mmci_host_ops, ptr %90, i32 0, i32 13
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = load i32, ptr %1, align 4
  %96 = icmp eq i32 %95, 11
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  tail call void %92(ptr noundef %0) #12
  br label %98

98:                                               ; preds = %97, %94, %88
  %99 = load i32, ptr %33, align 4
  %100 = and i32 %99, 96
  %101 = icmp eq i32 %100, 32
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load ptr, ptr %7, align 4
  %104 = getelementptr inbounds %struct.variant_data, ptr %103, i32 0, i32 12
  %105 = load i32, ptr %104, align 4
  %106 = or i32 %105, %54
  br label %107

107:                                              ; preds = %102, %98
  %108 = phi i32 [ %106, %102 ], [ %54, %98 ]
  %109 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 3
  store ptr %1, ptr %109, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !66
  tail call void @arm_heavy_mb() #12
  %110 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %111) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !67
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %108) #12, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmci_data_irq(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %168, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.variant_data, ptr %7, i32 0, i32 25
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 58
  %11 = and i32 %10, %2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %79, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 37
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 24
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mmci_host_ops, ptr %20, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  tail call void %24(ptr noundef %0) #12
  %27 = load ptr, ptr %6, align 4
  br label %28

28:                                               ; preds = %26, %22, %18, %13
  %29 = phi ptr [ %7, %13 ], [ %7, %18 ], [ %7, %22 ], [ %27, %26 ]
  %30 = getelementptr inbounds %struct.variant_data, ptr %29, i32 0, i32 16
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 48
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !68
  %39 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = mul i32 %42, %40
  %44 = sub i32 %43, %38
  br label %45

45:                                               ; preds = %34, %28
  %46 = phi i32 [ %44, %34 ], [ 0, %28 ]
  %47 = and i32 %2, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = add i32 %46, -1
  br label %68

51:                                               ; preds = %45
  %52 = and i32 %2, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = and i32 %11, 512
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = and i32 %2, 16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = and i32 %2, 32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %6, align 4
  %65 = getelementptr inbounds %struct.variant_data, ptr %64, i32 0, i32 10
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 @llvm.usub.sat.i32(i32 %46, i32 %66)
  br label %68

68:                                               ; preds = %63, %57, %54, %51, %49
  %69 = phi i32 [ -5, %63 ], [ -84, %49 ], [ -110, %51 ], [ -70, %54 ], [ -5, %57 ]
  %70 = phi i32 [ %67, %63 ], [ %50, %49 ], [ %46, %51 ], [ %46, %54 ], [ %46, %57 ]
  %71 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  store i32 %69, ptr %71, align 4
  br label %72

72:                                               ; preds = %68, %60
  %73 = phi i32 [ %46, %60 ], [ %70, %68 ]
  %74 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = sub i32 0, %75
  %77 = and i32 %73, %76
  %78 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  store i32 %77, ptr %78, align 4
  br label %79

79:                                               ; preds = %72, %5
  %80 = and i32 %2, 1024
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %84, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.40) #13
  br label %86

86:                                               ; preds = %82, %79
  %87 = and i32 %2, 256
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %168, label %93

93:                                               ; preds = %89, %86
  %94 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 37
  %95 = load i8, ptr %94, align 4
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 24
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.mmci_host_ops, ptr %100, i32 0, i32 8
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  tail call void %104(ptr noundef %0, ptr noundef nonnull %1) #12
  br label %107

107:                                              ; preds = %106, %102, %98, %93
  tail call fastcc void @mmci_stop_data(ptr noundef %0)
  %108 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = mul i32 %115, %113
  %117 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  store i32 %116, ptr %117, align 4
  br label %118

118:                                              ; preds = %111, %107
  %119 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 8
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %146

122:                                              ; preds = %118
  %123 = load ptr, ptr %6, align 4
  %124 = getelementptr inbounds %struct.variant_data, ptr %123, i32 0, i32 8
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, i1 true, i1 %110
  br i1 %127, label %131, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 4
  %130 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 4, i32 5
  store i32 0, ptr %130, align 4
  tail call fastcc void @mmci_start_command(ptr noundef %0, ptr noundef %129) #12
  br label %168

131:                                              ; preds = %122
  %132 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 9
  %133 = load ptr, ptr %132, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !43
  tail call void @arm_heavy_mb() #12
  %134 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr i8, ptr %135, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 0) #12, !srcloc !9
  %137 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 5
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140, !prof !14

140:                                              ; preds = %131
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/mmci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 600, 0\0A.popsection", ""() #12, !srcloc !44
  unreachable

141:                                              ; preds = %131
  %142 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 2
  store ptr null, ptr %142, align 4
  %143 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 3
  store ptr null, ptr %143, align 4
  %144 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %145 = load ptr, ptr %144, align 4
  tail call void @mmc_request_done(ptr noundef %145, ptr noundef %133) #12
  br label %168

146:                                              ; preds = %118
  %147 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 2
  %148 = load ptr, ptr %147, align 4
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  %151 = xor i1 %110, true
  %152 = select i1 %150, i1 true, i1 %151
  br i1 %152, label %167, label %153

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 9
  %155 = load ptr, ptr %154, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !43
  tail call void @arm_heavy_mb() #12
  %156 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr i8, ptr %157, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 0) #12, !srcloc !9
  %159 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 5
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162, !prof !14

162:                                              ; preds = %153
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/mmci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 600, 0\0A.popsection", ""() #12, !srcloc !44
  unreachable

163:                                              ; preds = %153
  store ptr null, ptr %147, align 4
  %164 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 3
  store ptr null, ptr %164, align 4
  %165 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %166 = load ptr, ptr %165, align 4
  tail call void @mmc_request_done(ptr noundef %166, ptr noundef %155) #12
  br label %168

167:                                              ; preds = %146
  tail call fastcc void @mmci_start_command(ptr noundef %0, ptr noundef nonnull %120)
  br label %168

168:                                              ; preds = %167, %163, %141, %128, %89, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmci_cmd_irq(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %154, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %1
  %12 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 25
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.variant_data, ptr %17, i32 0, i32 19
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 8
  %21 = icmp eq i8 %20, 0
  %22 = or i32 %14, 5
  %23 = select i1 %21, i32 5, i32 %22
  %24 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 19
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, %2
  %27 = or i32 %23, 192
  %28 = and i32 %27, %26
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %154, label %30

30:                                               ; preds = %7
  %31 = and i8 %19, 4
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %15, i1 true, i1 %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 24
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.mmci_host_ops, ptr %36, i32 0, i32 12
  %38 = load ptr, ptr %37, align 4
  %39 = tail call zeroext i1 %38(ptr noundef %0, i32 noundef %2, i32 noundef %23) #12
  br i1 %39, label %40, label %154

40:                                               ; preds = %34, %30
  %41 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 3
  store ptr null, ptr %41, align 4
  %42 = and i32 %2, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  store i32 -110, ptr %45, align 4
  br label %81

46:                                               ; preds = %40
  %47 = and i32 %2, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %12, align 4
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  store i32 -84, ptr %54, align 4
  br label %81

55:                                               ; preds = %49, %46
  %56 = load ptr, ptr %16, align 4
  %57 = getelementptr inbounds %struct.variant_data, ptr %56, i32 0, i32 19
  %58 = load i8, ptr %57, align 4
  %59 = and i8 %58, 8
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, i1 true, i1 %15
  %62 = and i32 %2, 8
  %63 = icmp eq i32 %62, 0
  %64 = or i1 %63, %61
  br i1 %64, label %68, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  store i32 -110, ptr %66, align 4
  %67 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 33
  store i32 2, ptr %67, align 4
  br label %81

68:                                               ; preds = %55
  %69 = getelementptr i8, ptr %5, i32 20
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !69
  %71 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  store i32 %70, ptr %71, align 4
  %72 = getelementptr i8, ptr %5, i32 24
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !70
  %74 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 1
  store i32 %73, ptr %74, align 4
  %75 = getelementptr i8, ptr %5, i32 28
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !71
  %77 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 2
  store i32 %76, ptr %77, align 4
  %78 = getelementptr i8, ptr %5, i32 32
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !72
  %80 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 3
  store i32 %79, ptr %80, align 4
  br label %81

81:                                               ; preds = %68, %65, %53, %44
  br i1 %11, label %86, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 7
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %90

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %138, label %94

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %142, label %94

94:                                               ; preds = %90, %86, %82
  %95 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 5
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %124, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 37
  %100 = load i8, ptr %99, align 4
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 24
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.mmci_host_ops, ptr %105, i32 0, i32 9
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  tail call void %109(ptr noundef %0) #12
  br label %112

112:                                              ; preds = %111, %107, %103, %98
  tail call fastcc void @mmci_stop_data(ptr noundef %0)
  %113 = load ptr, ptr %16, align 4
  %114 = getelementptr inbounds %struct.variant_data, ptr %113, i32 0, i32 8
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 4
  %123 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 4, i32 5
  store i32 0, ptr %123, align 4
  tail call fastcc void @mmci_start_command(ptr noundef %0, ptr noundef %122) #12
  br label %154

124:                                              ; preds = %117, %112, %94
  %125 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 33
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %154, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !43
  tail call void @arm_heavy_mb() #12
  %130 = load ptr, ptr %4, align 4
  %131 = getelementptr i8, ptr %130, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 0) #12, !srcloc !9
  %132 = load ptr, ptr %95, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134, !prof !14

134:                                              ; preds = %128
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/mmci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 600, 0\0A.popsection", ""() #12, !srcloc !44
  unreachable

135:                                              ; preds = %128
  store ptr null, ptr %8, align 4
  store ptr null, ptr %41, align 4
  %136 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %137 = load ptr, ptr %136, align 4
  tail call void @mmc_request_done(ptr noundef %137, ptr noundef %129) #12
  br label %154

138:                                              ; preds = %86
  %139 = load ptr, ptr %8, align 4
  %140 = getelementptr inbounds %struct.mmc_request, ptr %139, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  tail call fastcc void @mmci_start_command(ptr noundef %0, ptr noundef %141)
  br label %154

142:                                              ; preds = %90
  %143 = load ptr, ptr %16, align 4
  %144 = getelementptr inbounds %struct.variant_data, ptr %143, i32 0, i32 16
  %145 = load i8, ptr %144, align 4
  %146 = and i8 %145, 4
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.mmc_data, ptr %84, i32 0, i32 6
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %150, 512
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  tail call fastcc void @mmci_start_data(ptr noundef %0, ptr noundef nonnull %84)
  br label %154

154:                                              ; preds = %153, %148, %142, %138, %135, %124, %121, %34, %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmci_stop_data(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, %3
  %9 = icmp eq i32 %3, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  store i32 %8, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !33
  tail call void @arm_heavy_mb() #12
  %11 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %8) #12, !srcloc !9
  %14 = load ptr, ptr %4, align 4
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi ptr [ %5, %1 ], [ %14, %10 ]
  %17 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 8
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %15
  %24 = getelementptr i8, ptr %18, i32 60
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !51
  %26 = getelementptr inbounds %struct.variant_data, ptr %16, i32 0, i32 24
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %25, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !52
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %29) #12, !srcloc !9
  br label %30

30:                                               ; preds = %23, %15
  %31 = getelementptr inbounds %struct.variant_data, ptr %16, i32 0, i32 23
  %32 = load i8, ptr %31, align 4
  %33 = and i8 %32, 32
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !53
  tail call void @arm_heavy_mb() #12
  %36 = getelementptr i8, ptr %18, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #12, !srcloc !9
  br label %37

37:                                               ; preds = %35, %30
  %38 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 20
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 5
  store ptr null, ptr %39, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @mmci_variant_init(ptr nocapture noundef writeonly %0) #7 {
  %2 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 24
  store ptr @mmci_variant_ops, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @mmci_get_dctrl_cfg(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true) #12, !range !13
  %7 = icmp eq i32 %5, 0
  %8 = shl nuw nsw i32 %6, 4
  %9 = or i32 %8, 1
  %10 = select i1 %7, i32 -15, i32 %9
  ret i32 %10
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @ux500_variant_init(ptr nocapture noundef writeonly %0) #10 {
  %2 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 24
  store ptr @mmci_variant_ops, ptr %2, align 4
  store ptr @ux500_busy_complete, ptr getelementptr inbounds (%struct.mmci_host_ops, ptr @mmci_variant_ops, i32 0, i32 12), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @ux500_busy_complete(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 19
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %2, %1
  %9 = or i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %5, i32 52
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !73
  %14 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 25
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.variant_data, ptr %15, i32 0, i32 21
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, %13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !74
  tail call void @arm_heavy_mb() #12
  %21 = getelementptr i8, ptr %5, i32 60
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !75
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr inbounds %struct.variant_data, ptr %23, i32 0, i32 22
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %26) #12, !srcloc !9
  %27 = and i32 %1, 192
  br label %52

28:                                               ; preds = %11
  %29 = load i32, ptr %6, align 4
  br label %30

30:                                               ; preds = %28, %3
  %31 = phi i32 [ %29, %28 ], [ %7, %3 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 25
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.variant_data, ptr %35, i32 0, i32 21
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, %1
  %39 = icmp eq i32 %38, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %40 = load ptr, ptr %34, align 4
  %41 = getelementptr inbounds %struct.variant_data, ptr %40, i32 0, i32 22
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %5, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %42) #12
  br i1 %39, label %44, label %55

44:                                               ; preds = %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !76
  tail call void @arm_heavy_mb() #12
  %45 = getelementptr i8, ptr %5, i32 60
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !77
  %47 = load ptr, ptr %34, align 4
  %48 = getelementptr inbounds %struct.variant_data, ptr %47, i32 0, i32 22
  %49 = load i32, ptr %48, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %46, %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %51) #12, !srcloc !9
  br label %52

52:                                               ; preds = %44, %20
  %53 = phi i32 [ 0, %44 ], [ %27, %20 ]
  %54 = phi i1 [ true, %44 ], [ false, %20 ]
  store i32 %53, ptr %6, align 4
  br label %55

55:                                               ; preds = %52, %33, %30
  %56 = phi i1 [ true, %30 ], [ false, %33 ], [ %54, %52 ]
  ret i1 %56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @ux500v2_variant_init(ptr nocapture noundef writeonly %0) #10 {
  %2 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 24
  store ptr @mmci_variant_ops, ptr %2, align 4
  store ptr @ux500_busy_complete, ptr getelementptr inbounds (%struct.mmci_host_ops, ptr @mmci_variant_ops, i32 0, i32 12), align 4
  store ptr @ux500v2_get_dctrl_cfg, ptr getelementptr inbounds (%struct.mmci_host_ops, ptr @mmci_variant_ops, i32 0, i32 3), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ux500v2_get_dctrl_cfg(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 16
  %7 = or i32 %6, 1
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdmmc_variant_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_variant_init(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

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
!8 = !{i64 2154126662}
!9 = !{i64 3667382}
!10 = !{i64 2154126984}
!11 = !{i64 3667800}
!12 = !{i64 2154140149}
!13 = !{i32 0, i32 33}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2154188124}
!16 = !{i64 2154188440}
!17 = !{i64 2154188760}
!18 = !{i64 2154189493}
!19 = !{i64 2154191330}
!20 = !{i64 2154191646}
!21 = !{i64 2154191962}
!22 = !{i64 2154192278}
!23 = !{i64 2154192948}
!24 = !{i64 2154193264}
!25 = !{i64 2154193580}
!26 = !{i64 2154193896}
!27 = !{i64 2154194578}
!28 = !{i64 2154194935}
!29 = !{i64 2154195297}
!30 = !{i64 2154195996}
!31 = !{i64 2154162337}
!32 = !{i64 2154125914}
!33 = !{i64 2154127311}
!34 = !{i64 2154167662}
!35 = !{i64 2154168005}
!36 = !{i64 2148987451}
!37 = !{i64 2148983275}
!38 = !{i64 2148983350, i64 2148983377, i64 2148983424, i64 2148983446, i64 2148983474, i64 2148983494}
!39 = !{i64 2149010454}
!40 = !{i64 2154170497}
!41 = !{i64 2154170849}
!42 = !{i64 2154171548}
!43 = !{i64 2154131201}
!44 = !{i64 2154131638, i64 2154132126, i64 2154131675, i64 2154131731, i64 2154131765, i64 2154131789, i64 2154131830, i64 2154131851, i64 2154131879, i64 2154131913}
!45 = !{i64 2154165153}
!46 = !{i64 2154162700}
!47 = !{!"auto-init"}
!48 = !{i64 2154163121}
!49 = !{i64 2154164818}
!50 = !{i64 2154166121}
!51 = !{i64 2154132700}
!52 = !{i64 2154132888}
!53 = !{i64 2154133203}
!54 = !{i64 2154166839}
!55 = !{i64 2154167306}
!56 = !{i64 465784, i64 465811, i64 465833, i64 465861}
!57 = !{i64 466192, i64 466219, i64 466252, i64 466273, i64 466300, i64 466326}
!58 = !{i64 2154149076}
!59 = !{i64 2154149401}
!60 = !{i64 2154130513}
!61 = !{i64 2154130998}
!62 = !{i64 2154150648}
!63 = !{i64 2154151117}
!64 = !{i64 2154152186}
!65 = !{i64 2154152370}
!66 = !{i64 2154158078}
!67 = !{i64 2154158396}
!68 = !{i64 2154158895}
!69 = !{i64 2154160937}
!70 = !{i64 2154161262}
!71 = !{i64 2154161587}
!72 = !{i64 2154161912}
!73 = !{i64 2154133939}
!74 = !{i64 2154134660}
!75 = !{i64 2154135159}
!76 = !{i64 2154136732}
!77 = !{i64 2154137232}
