; ModuleID = '/llk/IR/arch/arm/mach-omap2/pdata-quirks.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/pdata-quirks.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pcs_pdata = type { i32, ptr }
%struct.twl4030_gpio_platform_data = type { i8, i8, i32, i32, i32, ptr, ptr }
%struct.pdata_init = type { ptr, ptr }
%struct.of_dev_auxdata = type { ptr, i32, ptr, ptr }
%struct.omap_sr_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr }
%struct.iommu_platform_data = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_hsmmc_platform_data = type { ptr, i32, i8, i16, i32, i32, i8, i32, ptr, ptr, i32 }
%struct.emac_platform_data = type { [6 x i8], i32, i32, i32, i32, i32, ptr, i8, i8, i8, ptr, ptr }
%struct.ti_sysc_platform_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_prm_platform_data = type { ptr, ptr, ptr }
%struct.omap_system_dma_plat_info = type opaque
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.gpio = type { i32, i32, ptr }
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
%struct.ti_sysc_cookie = type { ptr, ptr }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }

@pcs_pdata = internal global %struct.pcs_pdata zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"twl4030-gpio\00", align 1
@twl_gpio_auxdata = internal global %struct.twl4030_gpio_platform_data zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ti,omap2420\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ti,omap3\00", align 1
@auxdata_quirks = internal global [2 x %struct.pdata_init] [%struct.pdata_init { ptr @.str.3, ptr @omap3_sbc_t3730_twl_init }, %struct.pdata_init zeroinitializer], section ".init.data", align 4
@omap_auxdata_lookup = internal global [21 x %struct.of_dev_auxdata] [%struct.of_dev_auxdata { ptr @.str.7, i32 1560281088, ptr @.str.8, ptr @omap3_iommu_pdata }, %struct.of_dev_auxdata { ptr @.str.7, i32 1208734720, ptr @.str.9, ptr @omap3_iommu_isp_pdata }, %struct.of_dev_auxdata { ptr @.str.10, i32 1208791040, ptr @.str.11, ptr getelementptr (i8, ptr @omap_sr_pdata, i64 52) }, %struct.of_dev_auxdata { ptr @.str.12, i32 1208782848, ptr @.str.13, ptr @omap_sr_pdata }, %struct.of_dev_auxdata { ptr @.str.14, i32 1208598528, ptr @.str.15, ptr @mmc_pdata }, %struct.of_dev_auxdata { ptr @.str.14, i32 1208696832, ptr @.str.16, ptr getelementptr (i8, ptr @mmc_pdata, i64 40) }, %struct.of_dev_auxdata { ptr @.str.17, i32 1543700480, ptr @.str.18, ptr null }, %struct.of_dev_auxdata { ptr @.str.19, i32 1543503872, ptr @.str.20, ptr @am35xx_emac_pdata }, %struct.of_dev_auxdata { ptr @.str.21, i32 0, ptr null, ptr @rx51_secure_rng_call }, %struct.of_dev_auxdata { ptr @.str.22, i32 1242411008, ptr @.str.23, ptr getelementptr (i8, ptr @omap_sr_pdata, i64 104) }, %struct.of_dev_auxdata { ptr @.str.24, i32 1242419200, ptr @.str.25, ptr getelementptr (i8, ptr @omap_sr_pdata, i64 52) }, %struct.of_dev_auxdata { ptr @.str.26, i32 1242402816, ptr @.str.27, ptr @omap_sr_pdata }, %struct.of_dev_auxdata { ptr @.str.28, i32 1087377408, ptr @.str.29, ptr @dra7_ipu1_dsp_iommu_pdata }, %struct.of_dev_auxdata { ptr @.str.28, i32 1095766016, ptr @.str.30, ptr @dra7_ipu1_dsp_iommu_pdata }, %struct.of_dev_auxdata { ptr @.str.31, i32 1485316096, ptr @.str.32, ptr @dra7_ipu1_dsp_iommu_pdata }, %struct.of_dev_auxdata { ptr @.str.33, i32 0, ptr null, ptr @omap_auxdata_lookup }, %struct.of_dev_auxdata { ptr @.str.34, i32 0, ptr null, ptr @ti_sysc_pdata }, %struct.of_dev_auxdata { ptr @.str.35, i32 0, ptr null, ptr @pcs_pdata }, %struct.of_dev_auxdata { ptr @.str.36, i32 0, ptr null, ptr @ti_prm_pdata }, %struct.of_dev_auxdata { ptr @.str.37, i32 0, ptr null, ptr @dma_plat_info }, %struct.of_dev_auxdata zeroinitializer], align 4
@pdata_quirks = internal global [13 x %struct.pdata_init] [%struct.pdata_init { ptr @.str.39, ptr @omap3_sbc_t3517_legacy_init }, %struct.pdata_init { ptr @.str.40, ptr @omap3_sbc_t3530_legacy_init }, %struct.pdata_init { ptr @.str.3, ptr @omap3_sbc_t3730_legacy_init }, %struct.pdata_init { ptr @.str.41, ptr @nokia_n900_legacy_init }, %struct.pdata_init { ptr @.str.42, ptr @hsmmc2_internal_input_clk }, %struct.pdata_init { ptr @.str.43, ptr @hsmmc2_internal_input_clk }, %struct.pdata_init { ptr @.str.44, ptr @omap3_logicpd_torpedo_init }, %struct.pdata_init { ptr @.str.45, ptr @omap3_evm_legacy_init }, %struct.pdata_init { ptr @.str.46, ptr @am3517_evm_legacy_init }, %struct.pdata_init { ptr @.str.47, ptr @omap3_tao3530_legacy_init }, %struct.pdata_init { ptr @.str.48, ptr @omap3_pandora_legacy_init }, %struct.pdata_init { ptr @.str.49, ptr @omap3_pandora_legacy_init }, %struct.pdata_init zeroinitializer], section ".init.data", align 4
@omap_sr_pdata = dso_local global [3 x %struct.omap_sr_data] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"compulab,omap3-sbc-t3730\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"wlan pwr\00", align 1
@pdata_quirks_init_nodes = internal unnamed_addr constant [2 x ptr] [ptr @.str.5, ptr @.str.6], align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"prcm\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"prm\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ti,omap2-iommu\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"5d000000.mmu\00", align 1
@omap3_iommu_pdata = internal global %struct.iommu_platform_data { ptr @.str.38, ptr @omap_device_assert_hardreset, ptr @omap_device_deassert_hardreset, ptr @omap_device_enable, ptr @omap_device_idle, ptr null }, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"480bd400.mmu\00", align 1
@omap3_iommu_isp_pdata = internal global %struct.iommu_platform_data { ptr null, ptr null, ptr null, ptr @omap_device_enable, ptr @omap_device_idle, ptr null }, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"ti,omap3-smartreflex-core\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"480cb000.smartreflex\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"ti,omap3-smartreflex-mpu-iva\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"480c9000.smartreflex\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"ti,omap3-hsmmc\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"4809c000.mmc\00", align 1
@mmc_pdata = internal global [2 x %struct.omap_hsmmc_platform_data] zeroinitializer, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"480b4000.mmc\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"ti,davinci_mdio\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"davinci_mdio.0\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"ti,am3517-emac\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"davinci_emac.0\00", align 1
@am35xx_emac_pdata = internal global %struct.emac_platform_data { [6 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, i8 0, i8 0, ptr @am35xx_enable_emac_int, ptr @am35xx_disable_emac_int }, align 4
@.str.21 = private unnamed_addr constant [19 x i8] c"nokia,n900-rom-rng\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"ti,omap4-smartreflex-iva\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"4a0db000.smartreflex\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"ti,omap4-smartreflex-core\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"4a0dd000.smartreflex\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"ti,omap4-smartreflex-mpu\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"4a0d9000.smartreflex\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"ti,dra7-dsp-iommu\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"40d01000.mmu\00", align 1
@dra7_ipu1_dsp_iommu_pdata = internal global %struct.iommu_platform_data { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_iommu_set_pwrdm_constraint }, align 4
@.str.30 = private unnamed_addr constant [13 x i8] c"41501000.mmu\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"ti,dra7-iommu\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"58882000.mmu\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"simple-pm-bus\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"ti,sysc\00", align 1
@ti_sysc_pdata = internal global %struct.ti_sysc_platform_data { ptr @omap_auxdata_lookup, ptr @ti_sysc_soc_type_gp, ptr @ti_sysc_clkdm_init, ptr @ti_sysc_clkdm_deny_idle, ptr @ti_sysc_clkdm_allow_idle, ptr @omap_hwmod_init_module, ptr @ti_sysc_enable_module, ptr @ti_sysc_idle_module, ptr @ti_sysc_shutdown_module }, align 4
@.str.35 = private unnamed_addr constant [15 x i8] c"pinctrl-single\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"ti,omap-prm-inst\00", align 1
@ti_prm_pdata = internal global %struct.ti_prm_platform_data { ptr @clkdm_deny_idle, ptr @clkdm_allow_idle, ptr @clkdm_lookup }, align 4
@.str.37 = private unnamed_addr constant [13 x i8] c"ti,omap-sdma\00", align 1
@dma_plat_info = external dso_local global %struct.omap_system_dma_plat_info, align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"mmu\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"compulab,omap3-sbc-t3517\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"compulab,omap3-sbc-t3530\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"nokia,omap3-n900\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"nokia,omap3-n9\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"nokia,omap3-n950\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"logicpd,dm3730-torpedo-devkit\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"ti,omap3-evm-37xx\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"ti,am3517-evm\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"technexion,omap3-tao3530\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"openpandora,omap3-pandora-600mhz\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"openpandora,omap3-pandora-1ghz\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"cm-t3517 usb hub\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"sb-t35 usb hub\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c"\013SBC-T3x: %s reset gpio request failed: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cm_t3517_wlan_gpios = internal global [2 x %struct.gpio] [%struct.gpio { i32 56, i32 2, ptr @.str.4 }, %struct.gpio { i32 4, i32 2, ptr @.str.54 }], section ".init.data", align 4
@.str.53 = private unnamed_addr constant [46 x i8] c"\013SBC-T3517: wl12xx gpios request failed: %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"xcvr noe\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.57 = private unnamed_addr constant [48 x i8] c"\016RX-51: Enabling ARM errata 430973 workaround\0A\00", align 1
@pandora_backlight = internal global %struct.platform_device { ptr @.str.58, i32 -1, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, align 8
@.str.58 = private unnamed_addr constant [18 x i8] c"pandora-backlight\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap_pcs_legacy_init(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  store i32 %0, ptr @pcs_pdata, align 4
  store ptr %1, ptr getelementptr inbounds (%struct.pcs_pdata, ptr @pcs_pdata, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @omap_auxdata_legacy_init(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %10, %9 ], [ %7, %5 ]
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str, ptr noundef %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store ptr @twl_gpio_auxdata, ptr %2, align 4
  br label %16

16:                                               ; preds = %15, %11, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @pdata_quirks_init(ptr noundef %0) local_unnamed_addr #3 section ".init.text" {
  %2 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4, %1
  tail call void @omap_sdrc_init(ptr noundef null, ptr noundef null) #9
  br label %8

8:                                                ; preds = %7, %4
  %9 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #9
  tail call fastcc void @pdata_quirks_check(ptr noundef nonnull @auxdata_quirks)
  tail call fastcc void @pdata_quirks_init_clocks(ptr noundef %0) #10
  %10 = tail call i32 @of_platform_populate(ptr noundef null, ptr noundef %0, ptr noundef nonnull @omap_auxdata_lookup, ptr noundef null) #9
  tail call fastcc void @pdata_quirks_check(ptr noundef nonnull @pdata_quirks)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_sdrc_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pdata_quirks_check(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %14, %1
  %5 = phi ptr [ %16, %14 ], [ %2, %1 ]
  %6 = phi ptr [ %15, %14 ], [ %0, %1 ]
  %7 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull %5) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pdata_init, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void %11() #9
  br label %14

14:                                               ; preds = %13, %9, %4
  %15 = getelementptr %struct.pdata_init, ptr %6, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %4

18:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @pdata_quirks_init_clocks(ptr noundef %0) unnamed_addr #3 section ".init.text" {
  br label %2

2:                                                ; preds = %11, %1
  %3 = phi i1 [ true, %1 ], [ false, %11 ]
  %4 = phi i32 [ 0, %1 ], [ 1, %11 ]
  %5 = getelementptr [2 x ptr], ptr @pdata_quirks_init_nodes, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef %6) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @of_platform_populate(ptr noundef nonnull %7, ptr noundef %0, ptr noundef nonnull @omap_auxdata_lookup, ptr noundef null) #9
  br label %11

11:                                               ; preds = %9, %2
  br i1 %3, label %2, label %12

12:                                               ; preds = %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal void @omap3_sbc_t3730_twl_init() #6 section ".init.text" {
  store ptr @omap3_sbc_t3730_twl_callback, ptr getelementptr inbounds (%struct.twl4030_gpio_platform_data, ptr @twl_gpio_auxdata, i32 0, i32 5), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_sbc_t3730_twl_callback(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = add i32 %1, 2
  %5 = tail call i32 @gpio_request_one(i32 noundef %4, i32 noundef 2, ptr noundef nonnull @.str.4) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call ptr @gpio_to_desc(i32 noundef %1) #9
  br label %9

9:                                                ; preds = %7, %3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request_one(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rx51_secure_rng_call(i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_device_assert_hardreset(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_device_deassert_hardreset(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_device_enable(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_device_idle(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am35xx_enable_emac_int() #5 {
  %1 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1428) #9
  %2 = or i32 %1, 15
  tail call void @omap_ctrl_writel(i32 noundef %2, i16 noundef zeroext 1428) #9
  %3 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1428) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am35xx_disable_emac_int() #5 {
  %1 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1428) #9
  %2 = or i32 %1, 10
  tail call void @omap_ctrl_writel(i32 noundef %2, i16 noundef zeroext 1428) #9
  %3 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1428) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_ctrl_readl(i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_ctrl_writel(i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @omap_iommu_set_pwrdm_constraint(ptr nocapture noundef readnone %0, i1 noundef zeroext %1, ptr nocapture noundef readnone %2) #7 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @ti_sysc_soc_type_gp() #5 {
  %1 = tail call i32 @omap_type() #9
  %2 = icmp eq i32 %1, 3
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_sysc_clkdm_init(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) #5 {
  %5 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ti_sysc_cookie, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  br label %23

9:                                                ; preds = %4
  %10 = tail call ptr @__clk_get_hw(ptr noundef %1) #9
  %11 = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %10) #9
  %12 = icmp ne ptr %10, null
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.clk_hw_omap, ptr %10, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @clkdm_lookup(ptr noundef nonnull %16) #9
  br label %20

20:                                               ; preds = %18, %14, %9
  %21 = phi ptr [ null, %9 ], [ %19, %18 ], [ null, %14 ]
  %22 = getelementptr inbounds %struct.ti_sysc_cookie, ptr %3, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %20, %6
  %24 = phi ptr [ %8, %6 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.ti_sysc_cookie, ptr %3, i32 0, i32 1
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %42, label %29

29:                                               ; preds = %27
  %30 = tail call ptr @__clk_get_hw(ptr noundef %2) #9
  %31 = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %30) #9
  %32 = icmp ne ptr %30, null
  %33 = and i1 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.clk_hw_omap, ptr %30, i32 0, i32 9
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = tail call ptr @clkdm_lookup(ptr noundef nonnull %36) #9
  br label %40

40:                                               ; preds = %38, %34, %29
  %41 = phi ptr [ null, %29 ], [ %39, %38 ], [ null, %34 ]
  store ptr %41, ptr %25, align 4
  br label %42

42:                                               ; preds = %40, %27
  %43 = phi ptr [ %41, %40 ], [ null, %27 ]
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, i32 -19, i32 0
  br label %46

46:                                               ; preds = %42, %23
  %47 = phi i32 [ 0, %23 ], [ %45, %42 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ti_sysc_clkdm_deny_idle(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.ti_sysc_cookie, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @clkdm_deny_idle(ptr noundef nonnull %4) #9
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ti_sysc_clkdm_allow_idle(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.ti_sysc_cookie, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @clkdm_allow_idle(ptr noundef nonnull %4) #9
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_init_module(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_sysc_enable_module(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @omap_hwmod_enable(ptr noundef nonnull %3) #9
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ -22, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_sysc_idle_module(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @omap_hwmod_idle(ptr noundef nonnull %3) #9
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ -22, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_sysc_shutdown_module(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @omap_hwmod_shutdown(ptr noundef nonnull %3) #9
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ -22, %2 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @omap2_clk_is_hw_omap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_deny_idle(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_allow_idle(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_idle(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_shutdown(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap3_sbc_t3517_legacy_init() #3 section ".init.text" {
  tail call fastcc void @omap3_sbc_t3x_usb_hub_init(i32 noundef 152, ptr noundef nonnull @.str.50) #10
  tail call fastcc void @omap3_sbc_t3x_usb_hub_init(i32 noundef 98, ptr noundef nonnull @.str.51) #10
  tail call fastcc void @am35xx_emac_reset() #10
  tail call void @hsmmc2_internal_input_clk() #10
  tail call fastcc void @omap3_sbc_t3517_wifi_init() #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap3_sbc_t3530_legacy_init() #3 section ".init.text" {
  tail call fastcc void @omap3_sbc_t3x_usb_hub_init(i32 noundef 167, ptr noundef nonnull @.str.51) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap3_sbc_t3730_legacy_init() #3 section ".init.text" {
  tail call fastcc void @omap3_sbc_t3x_usb_hub_init(i32 noundef 167, ptr noundef nonnull @.str.51) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @nokia_n900_legacy_init() #3 section ".init.text" {
  tail call void @hsmmc2_internal_input_clk() #10
  store ptr @.str.55, ptr getelementptr inbounds ([2 x %struct.omap_hsmmc_platform_data], ptr @mmc_pdata, i32 0, i32 0, i32 9), align 4
  store ptr @.str.56, ptr getelementptr inbounds ([2 x %struct.omap_hsmmc_platform_data], ptr @mmc_pdata, i32 0, i32 1, i32 9), align 4
  %1 = tail call i32 @omap_type() #9
  %2 = icmp eq i32 %1, 3
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #11
  %5 = tail call i32 @rx51_secure_update_aux_cr(i32 noundef 64, i32 noundef 0) #9
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hsmmc2_internal_input_clk() #3 section ".init.text" {
  %1 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 728) #9
  %2 = or i32 %1, 64
  tail call void @omap_ctrl_writel(i32 noundef %2, i16 noundef zeroext 728) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap3_logicpd_torpedo_init() #3 section ".init.text" {
  tail call fastcc void @omap3_gpio126_127_129() #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap3_evm_legacy_init() #3 section ".init.text" {
  tail call void @hsmmc2_internal_input_clk() #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @am3517_evm_legacy_init() #3 section ".init.text" {
  tail call fastcc void @am35xx_emac_reset() #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap3_tao3530_legacy_init() #3 section ".init.text" {
  tail call void @hsmmc2_internal_input_clk() #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap3_pandora_legacy_init() #3 section ".init.text" {
  %1 = tail call i32 @platform_device_register(ptr noundef nonnull @pandora_backlight) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap3_sbc_t3x_usb_hub_init(i32 noundef %0, ptr noundef %1) unnamed_addr #3 section ".init.text" {
  %3 = tail call i32 @gpio_request_one(i32 noundef %0, i32 noundef 0, ptr noundef %1) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %1, i32 noundef %3) #11
  br label %11

7:                                                ; preds = %2
  %8 = tail call ptr @gpio_to_desc(i32 noundef %0) #9
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #9
  %10 = tail call ptr @gpio_to_desc(i32 noundef %0) #9
  tail call void @gpiod_set_raw_value(ptr noundef %10, i32 noundef 1) #9
  tail call void @msleep(i32 noundef 1) #9
  br label %11

11:                                               ; preds = %7, %5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @am35xx_emac_reset() unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1432) #9
  %2 = and i32 %1, -3
  tail call void @omap_ctrl_writel(i32 noundef %2, i16 noundef zeroext 1432) #9
  %3 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1432) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap3_sbc_t3517_wifi_init() unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @gpio_request_array(ptr noundef nonnull @cm_t3517_wlan_gpios, i32 noundef 2) #9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %1) #11
  br label %12

5:                                                ; preds = %0
  %6 = load i32, ptr @cm_t3517_wlan_gpios, align 4
  %7 = tail call ptr @gpio_to_desc(i32 noundef %6) #9
  %8 = load i32, ptr getelementptr inbounds ([2 x %struct.gpio], ptr @cm_t3517_wlan_gpios, i32 0, i32 1), align 4
  %9 = tail call ptr @gpio_to_desc(i32 noundef %8) #9
  tail call void @msleep(i32 noundef 100) #9
  %10 = load i32, ptr getelementptr inbounds ([2 x %struct.gpio], ptr @cm_t3517_wlan_gpios, i32 0, i32 1), align 4
  %11 = tail call ptr @gpio_to_desc(i32 noundef %10) #9
  tail call void @gpiod_set_raw_value(ptr noundef %11, i32 noundef 0) #9
  br label %12

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request_array(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rx51_secure_update_aux_cr(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap3_gpio126_127_129() unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1312) #9
  %2 = and i32 %1, -769
  %3 = or i32 %2, 512
  tail call void @omap_ctrl_writel(i32 noundef %3, i16 noundef zeroext 1312) #9
  %4 = tail call i32 @omap_rev() #9
  %5 = and i32 %4, -1048576
  %6 = icmp eq i32 %5, 909115392
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 2652) #9
  %9 = or i32 %8, 64
  tail call void @omap_ctrl_writel(i32 noundef %9, i16 noundef zeroext 2652) #9
  br label %10

10:                                               ; preds = %7, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

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
